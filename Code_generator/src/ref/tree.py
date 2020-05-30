inputs = [ f"IN{i}" for i in range(5)]
 
class Gen:
    def __init__(self, perfix):
        self.output=""
        self.counter=0
        self.perfix=perfix
 
    def makeadder(self, a,b, outname=None):#
        if outname:
            intermiteate=outname
        else:
            intermiteate = f"{self.perfix}_{self.counter}"
 
        self.counter += 1
 
        tmp = f"\tfloat_adder add{self.counter}(\n\t\t.a({a}),\n\t\t.b({b}),\n\t\t.Out({intermiteate}),\n\t\t.Out_test(),\n\t\t.shift(),\n\t\t.c_out());\n"
 
        self.output = self.output + '\n' + tmp
 
        return intermiteate
 
def nextlayer(inputs, gen):
    pairs, alone = divmod(len(inputs), 2)
    outputs=[]
 
    ## handel pairs
    for i in range(pairs):
        a, b = inputs[2*i], inputs[2*i+1]
        out = gen.makeadder(a, b)
        outputs.append(out)
        # rec calls
 
    # check alone
    if alone:
        outputs.append(inputs[-1])
 
    return outputs
 
def gentree(inputs, inertmidate_perfix, outname):
    if len(inputs)<=1:
        return f"wire {inputs[0]} {outname}"
 
    gen = Gen(inertmidate_perfix)
 
    intermindates = inputs
    while (len(intermindates))>2:
        intermindates = nextlayer(intermindates, gen)
 
    gen.makeadder(*intermindates, outname)
 
    return gen.output
 
print (gentree(inputs, "sum", "OUT"))