import easyocr
import torch
import torchvision
import numpy as np

reader = easyocr.Reader(['fr'])
result = reader.readtext('9c37a5b684a29cdac4e1dacf9aa86e49.jpg', detail = 0, paragraph = True, gpu = False)
print(result)
