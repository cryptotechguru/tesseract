import os
import json

raw_data = open("bitcoin-util-test.json").read()
input_data = json.loads(raw_data)

for testObj in input_data:
    inp = ""
    out = ""
    args = " ".join(testObj['args'])

    if 'input' in testObj:
        inp = testObj['input'] 

    if 'output_cmp' in testObj:
        out = testObj['output_cmp']

    if out:
        if inp:
            # print("echo \"../../../src/tesseract-tx {} < {} > {}\"".format(args, inp, out))
            # print("../../../src/tesseract-tx {} < {} > {}".format(args, inp, out))
            pass
        else:
            # print("echo \"../../../src/tesseract-tx {} > {}\"".format(args, out))
            print("../../../src/tesseract-tx {} > {}".format(args, out))
