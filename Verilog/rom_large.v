module rom_large(EN,data_add,I0x,I1x,I2x,I3x,I4x,I5x,I6x,I7x,I8x,I9x,I10x,I11x,I12x,I13x,I14x,I15x,I16x,I17x,I18x,I19x,I20x,I21x,I22x,I23x,I24x,I25x,I26x,I27x,I28x,I29x,I30x,I31x,I32x,I33x,I34x,I35x,I36x,I37x,I38x,I39x,I40x,I41x,I42x,I43x,I44x,I45x,I46x,I47x,I48x,I49x,I50x,I51x,I52x,I53x,I54x,I55x,I56x,I57x,I58x,I59x,I60x,I61x,I62x,I63x,I64x,I65x,I66x,I67x,I68x,I69x,I70x,I71x,I72x,I73x,I74x);
	input EN;
	input [2:0]data_add;
	output reg [23:0]I0x,I1x,I2x,I3x,I4x,I5x,I6x,I7x,I8x,I9x,I10x,I11x,I12x,I13x,I14x,I15x,I16x,I17x,I18x,I19x,I20x,I21x,I22x,I23x,I24x,I25x,I26x,I27x,I28x,I29x,I30x,I31x,I32x,I33x,I34x,I35x,I36x,I37x,I38x,I39x,I40x,I41x,I42x,I43x,I44x,I45x,I46x,I47x,I48x,I49x,I50x,I51x,I52x,I53x,I54x,I55x,I56x,I57x,I58x,I59x,I60x,I61x,I62x,I63x,I64x,I65x,I66x,I67x,I68x,I69x,I70x,I71x,I72x,I73x,I74x;
	always@(EN)
		begin
		case(data_add)
			3'b000:begin
				I0x <= 37;
				I1x <= 21;
				I2x <= 7;
				I3x <= 13;
				I4x <= 9;
				I5x <= 12;
				I6x <= 10;
				I7x <= 13;
				I8x <= 12;
				I9x <= 16;
				I10x <= 17;
				I11x <= 20;
				I12x <= 20;
				I13x <= 20;
				I14x <= 16;
				I15x <= 13;
				I16x <= 11;
				I17x <= 11;
				I18x <= 10;
				I19x <= 11;
				I20x <= 10;
				I21x <= 11;
				I22x <= 10;
				I23x <= 11;
				I24x <= 10;
				I25x <= 10;
				I26x <= 10;
				I27x <= 10;
				I28x <= 10;
				I29x <= 12;
				I30x <= 12;
				I31x <= 13;
				I32x <= 11;
				I33x <= 9;
				I34x <= 9;
				I35x <= 7;
				I36x <= 10;
				I37x <= 2;
				I38x <= 13;
				I39x <= 54;
				I40x <= 16;
				I41x <= 10;
				I42x <= 9;
				I43x <= 11;
				I44x <= 10;
				I45x <= 13;
				I46x <= 4;
				I47x <= 0;
				I48x <= 0;
				I49x <= 0;
				I50x <= 0;
				I51x <= 0;
				I52x <= 0;
				I53x <= 0;
				I54x <= 0;
				I55x <= 0;
				I56x <= 0;
				I57x <= 0;
				I58x <= 0;
				I59x <= 0;
				I60x <= 0;
				I61x <= 0;
				I62x <= 0;
				I63x <= 0;
				I64x <= 0;
				I65x <= 0;
				I66x <= 0;
				I67x <= 0;
				I68x <= 0;
				I69x <= 0;
				I70x <= 0;
				I71x <= 1;
				I72x <= -1;
				I73x <= 2;
				I74x <= -3;
			end
/*
			3'b001:begin
				I0x <= 35;
				I1x <= 12;
				I2x <= 7;
				I3x <= 17;
				I4x <= 14;
				I5x <= 17;
				I6x <= 16;
				I7x <= 18;
				I8x <= 18;
				I9x <= 21;
				I10x <= 22;
				I11x <= 24;
				I12x <= 25;
				I13x <= 26;
				I14x <= 22;
				I15x <= 17;
				I16x <= 14;
				I17x <= 14;
				I18x <= 14;
				I19x <= 14;
				I20x <= 14;
				I21x <= 15;
				I22x <= 14;
				I23x <= 13;
				I24x <= 13;
				I25x <= 13;
				I26x <= 13;
				I27x <= 12;
				I28x <= 14;
				I29x <= 19;
				I30x <= 23;
				I31x <= 17;
				I32x <= 13;
				I33x <= 10;
				I34x <= 10;
				I35x <= 10;
				I36x <= 13;
				I37x <= 13;
				I38x <= 47;
				I39x <= 18;
				I40x <= 2;
				I41x <= 16;
				I42x <= 14;
				I43x <= 16;
				I44x <= 0;
				I45x <= 0;
				I46x <= 0;
				I47x <= 0;
				I48x <= 0;
				I49x <= 0;
				I50x <= 0;
				I51x <= 0;
				I52x <= 0;
				I53x <= 0;
				I54x <= 0;
				I55x <= 0;
				I56x <= 0;
				I57x <= 0;
				I58x <= 0;
				I59x <= 0;
				I60x <= 0;
				I61x <= 0;
				I62x <= 0;
				I63x <= 0;
				I64x <= 0;
				I65x <= 0;
				I66x <= 0;
				I67x <= 0;
				I68x <= 0;
				I69x <= 0;
				I70x <= 0;
				I71x <= 1;
				I72x <= -1;
				I73x <= 1;
				I74x <= -3;
			end

			3'b010:begin
				I0x <= 44;
				I1x <= 24;
				I2x <= 0;
				I3x <= 10;
				I4x <= 4;
				I5x <= 9;
				I6x <= 7;
				I7x <= 10;
				I8x <= 9;
				I9x <= 12;
				I10x <= 12;
				I11x <= 17;
				I12x <= 19;
				I13x <= 23;
				I14x <= 23;
				I15x <= 21;
				I16x <= 14;
				I17x <= 11;
				I18x <= 8;
				I19x <= 8;
				I20x <= 7;
				I21x <= 7;
				I22x <= 7;
				I23x <= 8;
				I24x <= 7;
				I25x <= 8;
				I26x <= 7;
				I27x <= 7;
				I28x <= 7;
				I29x <= 7;
				I30x <= 7;
				I31x <= 7;
				I32x <= 7;
				I33x <= 7;
				I34x <= 6;
				I35x <= 6;
				I36x <= 6;
				I37x <= 6;
				I38x <= 6;
				I39x <= 6;
				I40x <= 6;
				I41x <= 6;
				I42x <= 7;
				I43x <= 7;
				I44x <= 10;
				I45x <= 14;
				I46x <= 16;
				I47x <= 13;
				I48x <= 9;
				I49x <= 5;
				I50x <= 7;
				I51x <= 4;
				I52x <= 48;
				I53x <= 43;
				I54x <= 2;
				I55x <= 10;
				I56x <= 7;
				I57x <= 11;
				I58x <= 9;
				I59x <= 11;
				I60x <= 12;
				I61x <= 9;
				I62x <= -2;
				I63x <= 1;
				I64x <= -1;
				I65x <= 1;
				I66x <= -1;
				I67x <= 1;
				I68x <= -1;
				I69x <= 1;
				I70x <= -1;
				I71x <= 2;
				I72x <= -2;
				I73x <= 3;
				I74x <= -5;
			end

			3'b011:begin
				I0x <= 41;
				I1x <= 25;
				I2x <= -3;
				I3x <= 8;
				I4x <= 3;
				I5x <= 7;
				I6x <= 5;
				I7x <= 9;
				I8x <= 7;
				I9x <= 11;
				I10x <= 11;
				I11x <= 15;
				I12x <= 18;
				I13x <= 23;
				I14x <= 22;
				I15x <= 21;
				I16x <= 14;
				I17x <= 11;
				I18x <= 8;
				I19x <= 8;
				I20x <= 7;
				I21x <= 7;
				I22x <= 7;
				I23x <= 8;
				I24x <= 7;
				I25x <= 8;
				I26x <= 7;
				I27x <= 8;
				I28x <= 7;
				I29x <= 8;
				I30x <= 7;
				I31x <= 7;
				I32x <= 7;
				I33x <= 10;
				I34x <= 13;
				I35x <= 17;
				I36x <= 14;
				I37x <= 11;
				I38x <= 5;
				I39x <= 8;
				I40x <= 2;
				I41x <= 23;
				I42x <= 61;
				I43x <= 15;
				I44x <= 4;
				I45x <= 9;
				I46x <= 8;
				I47x <= 9;
				I48x <= 10;
				I49x <= 11;
				I50x <= 12;
				I51x <= 14;
				I52x <= 15;
				I53x <= 19;
				I54x <= 22;
				I55x <= 26;
				I56x <= 25;
				I57x <= 22;
				I58x <= 16;
				I59x <= 13;
				I60x <= 10;
				I61x <= 10;
				I62x <= 0;
				I63x <= 0;
				I64x <= 0;
				I65x <= 0;
				I66x <= 0;
				I67x <= 0;
				I68x <= 0;
				I69x <= 1;
				I70x <= -1;
				I71x <= 1;
				I72x <= -2;
				I73x <= 2;
				I74x <= -5;
			end

			3'b100:begin
				I0x <= 36;
				I1x <= 22;
				I2x <= 12;
				I3x <= 16;
				I4x <= 14;
				I5x <= 16;
				I6x <= 16;
				I7x <= 17;
				I8x <= 18;
				I9x <= 20;
				I10x <= 22;
				I11x <= 24;
				I12x <= 25;
				I13x <= 24;
				I14x <= 19;
				I15x <= 16;
				I16x <= 15;
				I17x <= 15;
				I18x <= 14;
				I19x <= 14;
				I20x <= 15;
				I21x <= 14;
				I22x <= 14;
				I23x <= 14;
				I24x <= 14;
				I25x <= 14;
				I26x <= 14;
				I27x <= 14;
				I28x <= 14;
				I29x <= 13;
				I30x <= 14;
				I31x <= 13;
				I32x <= 15;
				I33x <= 15;
				I34x <= 17;
				I35x <= 16;
				I36x <= 14;
				I37x <= 11;
				I38x <= 12;
				I39x <= 10;
				I40x <= 14;
				I41x <= 3;
				I42x <= 21;
				I43x <= 54;
				I44x <= 14;
				I45x <= 13;
				I46x <= 12;
				I47x <= 13;
				I48x <= 13;
				I49x <= 14;
				I50x <= 15;
				I51x <= 10;
				I52x <= -2;
				I53x <= 1;
				I54x <= -1;
				I55x <= 0;
				I56x <= 0;
				I57x <= 0;
				I58x <= 0;
				I59x <= 0;
				I60x <= 0;
				I61x <= 0;
				I62x <= 0;
				I63x <= 0;
				I64x <= 0;
				I65x <= 0;
				I66x <= 0;
				I67x <= 0;
				I68x <= 0;
				I69x <= 1;
				I70x <= -1;
				I71x <= 1;
				I72x <= -1;
				I73x <= 2;
				I74x <= -3;
			end

			3'b101:begin
				I0x <= 44;
				I1x <= 30;
				I2x <= 4;
				I3x <= 14;
				I4x <= 8;
				I5x <= 13;
				I6x <= 9;
				I7x <= 14;
				I8x <= 12;
				I9x <= 18;
				I10x <= 19;
				I11x <= 25;
				I12x <= 28;
				I13x <= 33;
				I14x <= 32;
				I15x <= 26;
				I16x <= 18;
				I17x <= 17;
				I18x <= 12;
				I19x <= 13;
				I20x <= 12;
				I21x <= 13;
				I22x <= 12;
				I23x <= 14;
				I24x <= 11;
				I25x <= 15;
				I26x <= 10;
				I27x <= 14;
				I28x <= 11;
				I29x <= 12;
				I30x <= 10;
				I31x <= 12;
				I32x <= 9;
				I33x <= 11;
				I34x <= 11;
				I35x <= 18;
				I36x <= 16;
				I37x <= 18;
				I38x <= 8;
				I39x <= 10;
				I40x <= 4;
				I41x <= 12;
				I42x <= -2;
				I43x <= 38;
				I44x <= 37;
				I45x <= 1;
				I46x <= 10;
				I47x <= -2;
				I48x <= 1;
				I49x <= -1;
				I50x <= 1;
				I51x <= 0;
				I52x <= 0;
				I53x <= 0;
				I54x <= 0;
				I55x <= 0;
				I56x <= 0;
				I57x <= 0;
				I58x <= 0;
				I59x <= 0;
				I60x <= 0;
				I61x <= 0;
				I62x <= 0;
				I63x <= 0;
				I64x <= 0;
				I65x <= 0;
				I66x <= 0;
				I67x <= 0;
				I68x <= 0;
				I69x <= 0;
				I70x <= 0;
				I71x <= 1;
				I72x <= -1;
				I73x <= 2;
				I74x <= -5;
			end

			3'b110:begin
				I0x <= 45;
				I1x <= 17;
				I2x <= -2;
				I3x <= 13;
				I4x <= 6;
				I5x <= 12;
				I6x <= 8;
				I7x <= 12;
				I8x <= 10;
				I9x <= 14;
				I10x <= 13;
				I11x <= 17;
				I12x <= 19;
				I13x <= 26;
				I14x <= 28;
				I15x <= 32;
				I16x <= 25;
				I17x <= 18;
				I18x <= 10;
				I19x <= 8;
				I20x <= 6;
				I21x <= 7;
				I22x <= 7;
				I23x <= 8;
				I24x <= 7;
				I25x <= 8;
				I26x <= 7;
				I27x <= 8;
				I28x <= 6;
				I29x <= 6;
				I30x <= 5;
				I31x <= 6;
				I32x <= 4;
				I33x <= 5;
				I34x <= 4;
				I35x <= 6;
				I36x <= 5;
				I37x <= 6;
				I38x <= 5;
				I39x <= 7;
				I40x <= 5;
				I41x <= 7;
				I42x <= 9;
				I43x <= 13;
				I44x <= 11;
				I45x <= 9;
				I46x <= 5;
				I47x <= 7;
				I48x <= 5;
				I49x <= 7;
				I50x <= 3;
				I51x <= 55;
				I52x <= 12;
				I53x <= 0;
				I54x <= 12;
				I55x <= 8;
				I56x <= 11;
				I57x <= 11;
				I58x <= 12;
				I59x <= 12;
				I60x <= 15;
				I61x <= 4;
				I62x <= -1;
				I63x <= 0;
				I64x <= 0;
				I65x <= 0;
				I66x <= 0;
				I67x <= 0;
				I68x <= -1;
				I69x <= 1;
				I70x <= -1;
				I71x <= 1;
				I72x <= -2;
				I73x <= 3;
				I74x <= -5;
			end

			3'b111:begin
				I0x <= 41;
				I1x <= 14;
				I2x <= 4;
				I3x <= 19;
				I4x <= 14;
				I5x <= 19;
				I6x <= 16;
				I7x <= 20;
				I8x <= 19;
				I9x <= 23;
				I10x <= 24;
				I11x <= 29;
				I12x <= 33;
				I13x <= 38;
				I14x <= 34;
				I15x <= 28;
				I16x <= 21;
				I17x <= 19;
				I18x <= 18;
				I19x <= 17;
				I20x <= 16;
				I21x <= 16;
				I22x <= 16;
				I23x <= 16;
				I24x <= 16;
				I25x <= 16;
				I26x <= 15;
				I27x <= 16;
				I28x <= 16;
				I29x <= 16;
				I30x <= 16;
				I31x <= 16;
				I32x <= 15;
				I33x <= 15;
				I34x <= 15;
				I35x <= 15;
				I36x <= 15;
				I37x <= 15;
				I38x <= 16;
				I39x <= 15;
				I40x <= 16;
				I41x <= 15;
				I42x <= 17;
				I43x <= 18;
				I44x <= 16;
				I45x <= 15;
				I46x <= 16;
				I47x <= 14;
				I48x <= 17;
				I49x <= 12;
				I50x <= 45;
				I51x <= 42;
				I52x <= 0;
				I53x <= 20;
				I54x <= 15;
				I55x <= 21;
				I56x <= 18;
				I57x <= 23;
				I58x <= 18;
				I59x <= 26;
				I60x <= 9;
				I61x <= -1;
				I62x <= 0;
				I63x <= 0;
				I64x <= 0;
				I65x <= 0;
				I66x <= 0;
				I67x <= 1;
				I68x <= -1;
				I69x <= 1;
				I70x <= -1;
				I71x <= 1;
				I72x <= -2;
				I73x <= 3;
				I74x <= -5;
			end
 */
		endcase
	end
endmodule