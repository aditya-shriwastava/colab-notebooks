# Object Detection
Object detection involves two tasks:
1. **Object Localization**: Putting bounding box around potential objects.
2. **Image Classification:** Predicting the class of object within the bounding box.

There are two classes of approaches for object detection:
1. Two Stage Detector:
    - Stages:
      1. **First Stage:** Proposes Reason of Interest
      2. **Second Stage:** Classification and Bounding Box Regression.
    - Example: Faster R-CNN
    - Have high localization and object recognition accuracy, but slow compared to one stage detector.
    ```mmd
    graph LR;
      a(image) --> b(Feature Extraction) --> c(Exraction of<br>Object Proposals) --> d(Classification) & e(Localization)
    ```

2. One Stage Detector:
    - Propose predicted boxes from input images directly without region proposal step.
    - Example: YOLO
    - High inference speed, so can be used for real-time devices, but accuracy is not as good as two stage detector.
    ```mmd
    graph LR;
      a(image) --> b(Feature Extraction) --> c(Classification) & d(Localization)
    ```

## Dataset: PASCAL VOC 2012
- Task: Predicting the bounding box and label of each object from the twenty target classes in the test image.
- 20 classes
    - Person: person
    - Animal: bird, cat, cow, dog, horse, sheep
    - Vehicle: aeroplane, bicycle, boat, bus, car, motorbike, train
    - Indoor: bottle, chair, dining table, potted plant, sofa, tv/monitor
- train/val data has 11,530 images containing 27,450 ROI annotated object
- [Official Website](http://host.robots.ox.ac.uk/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar)
- [Training/Validation data](http://host.robots.ox.ac.uk/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar)
- Data Split:
  1. train: Training data
  2. val: Validation data
  3. trainval: The union of train and val


## Faster R-CNN
**Jupyter Notebook:** [r_cnn.ipynb](./r_cnn.ipynb)

### TODO
1. Some confusion on how object proposals is handled in image space and feature space.
  1.1. Read fast R-CNN paper to understand this. 
  1.2. Because fast R-CNN introduced this.

