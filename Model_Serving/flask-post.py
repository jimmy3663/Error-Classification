import json
import requests
import numpy as np
import sys

question = input("input question: ")
#"이런 에러가 떠요. Error getting metrics from dnsmasq: read udp 127.0.0.1:53159->127.0.0.1:53: read: connection refused 도와주세요."
port = sys.argv[1]
print(port)
headers = {'Content-Type':'application/json'}
address = "http://127.0.0.1:5000/inference"
data = {'errors':question}

result = requests.post(address, data=json.dumps(data), headers=headers)

cat = int(result.content)

print('\n=======Results=======')
print('0: Port Error, 1: Pod Error, 2: No Network Access, 3: Application Failure')
if cat == 0:
    print("Predicted Port Error.")
elif cat == 1:
    print("Predicted Pod Error.")
elif cat == 2:
    print("Predicted No Network Access Error.")
elif cat == 3:
    print("Predicted Application Failure Error.")
else:
	print("Not Stable")

print()
#print(str(result.content, encoding='utf-8


