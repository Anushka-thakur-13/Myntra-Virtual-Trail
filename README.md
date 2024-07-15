## About Myntra Virtual Trial

Myntra Virtual Trial is a virtual clothing try-on tool that allows you to see how clothes would look on you, given a profile image and a source image containing clothing. The application blends the selected clothing onto your profile image, making it appear as if you are actually wearing it. This Flask web application leverages deep learning for accurate cloth extraction and fitting.

### Features

- Supports a variety of upper wear for both men and women.
- Accurate cloth extraction and fitting.
- Simple, elegant, and easy-to-use web interface.

### How It Works

Myntra Virtual Trial works by extracting clothing from the source image and fitting it onto your profile image. Under the hood, it employs two separate deep learning models:

- **Cloth Segmentation Model**: A custom Deeplab model is used to extract clothing from the source image.
- **Pose Estimator Model**: A pretrained Openpose body_25 model is used to locate shoulder points.

The extracted clothing is then blended into the profile image based on the identified shoulder locations.

## Dataset

- **DeepFashion2 Dataset**: Used to train the cloth segmentation model.

## References

- [Deeplab](https://github.com/tensorflow/models/tree/master/research/deeplab)
- [DeepFashion2 Dataset](https://github.com/switchablenorms/DeepFashion2)
- [Openpose](https://github.com/CMU-Perceptual-Computing-Lab/openpose)
