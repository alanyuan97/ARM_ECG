#! /usr/bin/python3
def num2fixedbin(num,precision,BITS = 16 ):
    """
        INPUT: 
            num: number to convert
        PARAMETERS: 
            precision: decimal points required
            BITS: set to 16 by default, otherwise user specify
    """
    if num<0:
        SIGNED = 1
        num *= -1
    else:
        SIGNED = 0

    whole,dec = str(num).split(".")
    whole = int(whole)



    dec = float("0." + dec)
    whole = bin(whole).lstrip('0b')
    if not whole:
        whole = 0
    res = int(whole)
    res = "{0:0{1}d}".format(res,BITS-precision -1 ) # append 0s in front according to the precision
    temp = 0.5
    out = []
    STR = ""
    for i in range(precision):
        if dec<temp:
            out.extend('0')
        else:
            out.extend('1')
            dec -= temp
        temp /= 2
    for i in range(len(out)):
        STR += str(out[i])
    res += STR
    res = f"{SIGNED}"+ res
    return f"{BITS}'sb" + res

print(num2fixedbin(-0.625,8))