from scipy.io import loadmat

def dec2bin(n):
    out = ""
    if n < 0:
        out += "1"
        n += 2**11
    else:
        out += '0'
    x = 2**10
    for i in range(11):
        if n >= x:
            out += '1'
            n -= x
        else:
            out += '0'
        x /= 2
    return out

def main():
    x = loadmat('a103l.mat')
    x = x['val']
    x = x[0,:]

    STRBUFF = "DEPTH = 82500;\nWIDTH = " + str(12) + ';\n\nADDRESS_RADIX = DEC;\nDATA_RADIX = BIN;\n\nCONTENT\nBEGIN'
    for i in range(82500):
        STRBUFF += '\n' + str(i) + '  :  '
        for j in range(1):
            STRBUFF += dec2bin(x[i])
        STRBUFF += ';'
    STRBUFF += "\nEND ;"
    print(STRBUFF)

if __name__ == "__main__":
    main()
