import mif

with  open('/home/alan/winDesktop/ARM_ECG/rom.mif') as f:
	mem = mif.load(f)

print(mif.dumps(mem))
