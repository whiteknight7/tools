#!/usr/bin/python3
import pyzbar.pyzbar as pyzbar
from PIL import Image
for number in range(0,68):
    fileName = '/root/1/192.168.0.188/justanothergallery/qr/image-{}.png'.format(number)
    img = Image.open(fileName)
    barcodes = pyzbar.decode(img)
    for barcode in barcodes:
        barcodeData = barcode.data.decode('utf-8')
        print(barcodeData)
