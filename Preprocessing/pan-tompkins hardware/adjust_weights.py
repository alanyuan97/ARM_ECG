def adjust_b(dict):
    for key in dict:
    #while contains_decimals_1D(dict[key]):
        for i in range(dict[key].shape[0]):
            dict[key][i] = int(dict[key][i]*64*64)
    return dict

def adjust_w(dict):
    for key in dict:
    #while contains_decimals_2D(dict[key]):
        for i in range(dict[key].shape[0]):
            for j in range(dict[key].shape[1]):
                dict[key][i][j] = int(dict[key][i][j]*64)
    return dict

def adjust_o(dict):
    for key in dict:
        # while contains_decimals_2D(dict[key]):
        for i in range(dict[key].shape[0]):
            for j in range(dict[key].shape[1]):
                dict[key][i][j] = int(dict[key][i][j]*64)
    return dict

#def contains_decimals_1D(array):
    for i in range(array.shape[0]):
        tmp = array[i]
        if tmp-int(tmp) != 0:
            return True
    return False

#def contains_decimals_2D(array):
    for i in range(array.shape[0]):
        for j in range(array.shape[1]):
            tmp = array[i][j]
            if tmp-int(tmp) != 0:
                return True
    return False