import base64, zlib

with open('/home/hick/.librewolf/3vz18q2q.default-default/bookmarks.html', mode='rb') as file:
    content = file.read()

base64_bytes = base64.b64encode(content)
base64_string = base64_bytes.decode('utf-8')

with open('bookmarks.txt', 'w') as file_base64:
    file_base64.write(base64_string)