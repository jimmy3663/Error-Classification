import numpy as np
import tensorflow as tf
from flask import Flask, request

import tensorflow_hub as hub

from tensorflow.keras import layers
import bert

from tensorflow import keras
import numpy as np
import random
import json
import requests

FullTokenizer = bert.bert_tokenization.FullTokenizer
bert_layer = hub.KerasLayer("https://tfhub.dev/tensorflow/bert_en_uncased_L-12_H-768_A-12/1",
                            trainable=False)
vocab_file = bert_layer.resolved_object.vocab_file.asset_path.numpy()
do_lower_case = bert_layer.resolved_object.do_lower_case.numpy()
tokenizer = FullTokenizer(vocab_file, do_lower_case)

def encode_sentence(sent):
    return tokenizer.convert_tokens_to_ids(tokenizer.tokenize(sent))

load = tf.saved_model.load('models/1')
load_inference = load.signatures["serving_default"]


app = Flask(__name__)
@app.route('/inference', methods=['POST'])
def inference():
    data = request.json
    question = data['errors']
    encode_q = encode_sentence(question)
    inputs = tf.expand_dims(encode_q,0)
    result = load_inference(tf.constant(inputs, dtype=tf.int32))
    if np.max(result['output_1']) < 0.5:
    	return str(-1)
    else:
    	return str(np.argmax(result['output_1']))
    #return str(np.argmax(result['dense_1'].numpy()))


if __name__ == '__main__':
	print('Serving...')

	app.run(host='0.0.0.0', port=2431, threaded=False)

	