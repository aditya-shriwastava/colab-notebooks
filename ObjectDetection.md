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
    - Have high localization and object recognition accuracy.
    ```mmd
    graph LR;
      a(image) --> b(Feature Extraction) --> c(Exraction of<br>Object Proposals) --> d(Classification) & e(Localization)
    ```

2. One Stage Detector:
    - Propose predicted boxes from input images directly without region proposal step.
    - Example: YOLO
    - High inference speed, so can be used for real-time devices.
    ```mmd
    graph LR;
      a(image) --> b(Feature Extraction) --> c(Classification) & d(Localization)
    ```

**Dataset:** PASCAL VOC

## Faster R-CNN
**Jupyter Notebook:** [r_cnn.ipynb](./r_cnn.ipynb)
