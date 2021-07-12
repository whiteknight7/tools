from pyzbar.pyzbar import decode
from PIL import Image
from os import listdir
from os.path import isfile, join
mypath="/var/tmp/"
onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]
for files in onlyfiles:
        out = decode(Image.open(mypath+files))
        print(out[0].data)
