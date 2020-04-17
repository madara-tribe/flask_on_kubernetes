import cv2
from keras.models import load_model
import numpy as np
from model.fcn import fcn_8

def predict(image):
    num_cls = 21
    input_height = 416
    input_width = 608
    model = fcn_8(n_classes = num_cls, input_height=input_height, input_width=input_width)
    model.load_weights('weight_dir/trained_weight.h5')
    ouputt = model.predict_segmentation(
        inp=image)
    return output