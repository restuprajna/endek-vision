# endek_vision_app

This project features a Flutter app integrated with a machine learning model designed for image recognition. The app specifically identifies Balinese Endek fabric, leveraging advanced image classification techniques to accurately recognize and distinguish this traditional textile. Using TensorFlow Lite for model deployment, the app delivers real-time image analysis, allowing users to effortlessly identify and learn about Balinese Endek fabric through their mobile devices.

## Class

Balinese Endek is a traditional Indonesian textile known for its intricate and vibrant patterns. Originating from Bali, this fabric is characterized by its unique weaving techniques and cultural significance. The patterns are often geometric and feature symbolic motifs that reflect Balinese heritage. The model leverages these distinct types of Endek to accurately recognize and classify this traditional fabric, providing users with valuable insights and information about each pattern through the app.

In this project, the model is trained using seven distinct types of Balinese Endek fabric, which were personally collected for this purpose.


1. Endek Cakra
<img src="assets/images/endek_cakra.jpeg" alt="Description" width="300"/>

2. Endek Cemara
<img src="assets/images/endek_cemara.jpeg" alt="Description" width="300"/>

3. Endek Cempaka
<img src="assets/images/endek_cempaka.jpeg" alt="Description" width="300"/>

4. Endek Cepuk
<img src="assets/images/endek_cepuk.jpeg" alt="Description" width="300"/>

5. Endek Lubeng
<img src="assets/images/endek_lubeng.jpg" alt="Description" width="300"/>

6. Endek Rangrang
<img src="assets/images/endek_rangrang.jpeg" alt="Description" width="300"/>

7. Endek Uang Kepeng
<img src="assets/images/endek_uangkepeng.jpeg" alt="Description" width="300"/>

## Model Architecture

Initially, I used transfer learning to build the model and evaluated three different architectures: VGG16, VGG19, and MobileNetV3. After thorough testing, I selected the most effective model for implementation in this app using TensorFlow Lite. Below are the evaluation results of the models after training.

## APP DEMO

<a href="https://youtu.be/jmW2Vx81aC0">
    <img src="https://img.youtube.com/vi/jmW2Vx81aC0/maxresdefault.jpg" alt="Watch the video" width="400"/>
</a>

