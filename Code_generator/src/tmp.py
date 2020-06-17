from tensorflow.keras.layers import (Input, MaxPooling1D, Dropout,
                          BatchNormalization, Activation, Add,
                          Flatten)
from qkeras import QConv1D, QActivation, QDense, quantized_bits
from tensorflow.keras.models import Model
import numpy as np


class ResidualUnit(object):
    """Residual unit block (unidimensional).
    Parameters
    ----------
    n_samples_out: int
        Number of output samples.
    n_filters_out: int
        Number of output filters.
    kernel_initializer: str, otional
        Initializer for the weights matrices. See Keras initializers. By default it uses
        'he_normal'.
    dropout_rate: float [0, 1), optional
        Dropout rate used in all Dropout layers. Default is 0.8
    kernel_size: int, optional
        Kernel size for convolutional layers. Default is 17.
    preactivation: bool, optional
        When preactivation is true use full preactivation architecture proposed
        in [1]. Otherwise, use architecture proposed in the original ResNet
        paper [2]. By default it is true.
    postactivation_bn: bool, optional
        Defines if you use batch normalization before or after the activation layer (there
        seems to be some advantages in some cases:
        https://github.com/ducha-aiki/caffenet-benchmark/blob/master/batchnorm.md).
        If true, the batch normalization is used before the activation
        function, otherwise the activation comes first, as it is usually done.
        By default it is false.
    activation_function: string, optional
        Keras activation function to be used. By default 'relu'.
    References
    ----------
    .. [1] K. He, X. Zhang, S. Ren, and J. Sun, "Identity Mappings in Deep Residual Networks,"
           arXiv:1603.05027 [cs], Mar. 2016. https://arxiv.org/pdf/1603.05027.pdf.
    .. [2] K. He, X. Zhang, S. Ren, and J. Sun, "Deep Residual Learning for Image Recognition," in 2016 IEEE Conference
           on Computer Vision and Pattern Recognition (CVPR), 2016, pp. 770-778. https://arxiv.org/pdf/1512.03385.pdf
    """

    def __init__(self, n_samples_out, n_filters_out, kernel_initializer='he_normal',
                 dropout_rate=0.8, kernel_size=17, preactivation=True,
                 postactivation_bn=False, activation_function='relu'):
        self.n_samples_out = n_samples_out
        self.n_filters_out = n_filters_out
        self.kernel_initializer = kernel_initializer
        self.dropout_rate = dropout_rate
        self.kernel_size = kernel_size
        self.preactivation = preactivation
        self.postactivation_bn = postactivation_bn
        self.activation_function = activation_function

    def _skip_connection(self, y, downsample, n_filters_in):
        """Implement skip connection."""
        # Deal with downsampling
        if downsample > 1:
            y = MaxPooling1D(downsample, strides=downsample, padding='same')(y)
        elif downsample == 1:
            y = y
        else:
            raise ValueError("Number of samples should always decrease.")
        # Deal with n_filters dimension increase
        if n_filters_in != self.n_filters_out:
            # This is one of the two alternatives presented in ResNet paper
            # Other option is to just fill the matrix with zeros.
            y = QConv1D(self.n_filters_out, 1, padding='same', use_bias=False, kernel_initializer=self.kernel_initializer, kernel_quantizer=quantized_bits(bits=10, integer=2, symmetric=0, keep_negative=1), bias_quantizer=quantized_bits(bits=10, integer=2, symmetric=0, keep_negative=1))(y)
            y=QActivation("quantized_bits(bits=13, integer=2, symmetric=0, keep_negative=1)")(y)
        return y

    def _batch_norm_plus_activation(self, x):
        if self.postactivation_bn:
            x = Activation(self.activation_function)(x)
            x = BatchNormalization(center=False, scale=False)(x)
            x=QActivation("quantized_bits(bits=13, integer=2, symmetric=0, keep_negative=1)")(x)
        else:
            x = BatchNormalization()(x)
            x = Activation(self.activation_function)(x)
            x=QActivation("quantized_bits(bits=13, integer=2, symmetric=0, keep_negative=1)")(x)
        return x

    def __call__(self, inputs):
        """Residual unit."""
        x, y = inputs
        n_samples_in = y.shape[1]#.value     ### BEFORE THERE WAS NO COMMENT HERE
        downsample = n_samples_in // self.n_samples_out
        n_filters_in = y.shape[2]#.value     ### BEFORE THERE WAS NO COMMENT HERE
        y = self._skip_connection(y, downsample, n_filters_in)
        # 1st layer
        x = QConv1D(self.n_filters_out, self.kernel_size, padding='same',
                   use_bias=False, kernel_initializer=self.kernel_initializer, kernel_quantizer=quantized_bits(bits=10, integer=2, symmetric=0, keep_negative=1), bias_quantizer=quantized_bits(bits=10, integer=2, symmetric=0, keep_negative=1))(x)
        x=QActivation("quantized_bits(bits=13, integer=2, symmetric=0, keep_negative=1)")(x)
        x = self._batch_norm_plus_activation(x)
        if self.dropout_rate > 0:
            x = Dropout(self.dropout_rate)(x)

        # 2nd layer
        x = QConv1D(self.n_filters_out, self.kernel_size, strides=downsample,
                   padding='same', use_bias=False,
                   kernel_initializer=self.kernel_initializer, kernel_quantizer=quantized_bits(bits=10, integer=2, symmetric=0, keep_negative=1), bias_quantizer=quantized_bits(bits=10, integer=2, symmetric=0, keep_negative=1))(x)
        if self.preactivation:
            x = Add()([x, y])  # Sum skip connection and main connection
            y = x
            x = self._batch_norm_plus_activation(x)
            if self.dropout_rate > 0:
                x = Dropout(self.dropout_rate)(x)
        else:
            x = BatchNormalization()(x)
            x = Add()([x, y])  # Sum skip connection and main connection
            x = Activation(self.activation_function)(x)
            x=QActivation("quantized_bits(bits=13, integer=2, symmetric=0, keep_negative=1)")(x)
            if self.dropout_rate > 0:
                x = Dropout(self.dropout_rate)(x)
            y = x
        return [x, y]


# ----- Model ----- #
kernel_size = 16
kernel_initializer = 'he_normal'
signal = Input(shape=(4096, 12), dtype=np.float32, name='signal')
age_range = Input(shape=(6,), dtype=np.float32, name='age_range')
is_male = Input(shape=(1,), dtype=np.float32, name='is_male')
x = signal
x=QActivation("quantized_bits(bits=13, integer=2, symmetric=0, keep_negative=1)")(x)
x = QConv1D(64, kernel_size, padding='same', use_bias=False,
           kernel_initializer=kernel_initializer,kernel_quantizer=quantized_bits(bits=10, integer=2, symmetric=0, keep_negative=1), bias_quantizer=quantized_bits(bits=10, integer=2, symmetric=0, keep_negative=1))(x)
x = BatchNormalization()(x)
x = Activation('relu')(x)
x=QActivation("quantized_bits(bits=13, integer=2, symmetric=0, keep_negative=1)")(x)
x, y = ResidualUnit(512, 128, kernel_size=kernel_size,
                    kernel_initializer=kernel_initializer)([x, x])
x, y = ResidualUnit(128, 196, kernel_size=kernel_size,
                    kernel_initializer=kernel_initializer)([x, y])
x, y = ResidualUnit(32, 256, kernel_size=kernel_size,
                    kernel_initializer=kernel_initializer)([x, y])
x, _ = ResidualUnit(8, 320, kernel_size=kernel_size,
                    kernel_initializer=kernel_initializer)([x, y])
x = Flatten()(x)
diagn = QDense(5, activation='sigmoid', kernel_initializer=kernel_initializer,kernel_quantizer=quantized_bits(bits=10, integer=2, symmetric=0, keep_negative=1), bias_quantizer=quantized_bits(bits=10, integer=2, symmetric=0, keep_negative=1))(x)
model = Model(signal, diagn)
# ----------------- #


if __name__ == "__main__":
    model.summary()