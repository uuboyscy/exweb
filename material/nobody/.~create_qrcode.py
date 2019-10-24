import qrcode

def create_qrcode(url, filename):
    qr=qrcode.QRCode(version = 2,error_correction = qrcode.constants.ERROR_CORRECT_L,box_size=10,border=2,)
    qr.add_data(url)
    qr.make(fit=True)
    img = qr.make_image()
    img.save('../food/%s.jpg'%filename)

if __name__ == '__main__':
    create_qrcode('https://google.com', 'google')
    img.show()
