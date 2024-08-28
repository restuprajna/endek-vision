# Endek Vision App

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

1. VGG16
   
![Description](https://private-user-images.githubusercontent.com/73216938/360735163-2fe29532-5605-470d-b84b-fcf8676c6ba6.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MjQzODEwNjIsIm5iZiI6MTcyNDM4MDc2MiwicGF0aCI6Ii83MzIxNjkzOC8zNjA3MzUxNjMtMmZlMjk1MzItNTYwNS00NzBkLWI4NGItZmNmODY3NmM2YmE2LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA4MjMlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwODIzVDAyMzkyMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWRmNGMwM2E0YjQ5ZDE1OTY3NDdlNjBlYWM0ODhlOTI3ZmFkZTZjOTU1N2NlNDM4MzU1YTdjMTYzODkzMjlmOTUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.6B4zKluPikXpRlFmsWCRLamp5gj4u_Gp3RZDFOyGAwI)

2. VGG19

![Description](https://private-user-images.githubusercontent.com/73216938/360735264-140a4852-3dc9-4976-bd95-d0ba73de539f.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MjQzODEwNjIsIm5iZiI6MTcyNDM4MDc2MiwicGF0aCI6Ii83MzIxNjkzOC8zNjA3MzUyNjQtMTQwYTQ4NTItM2RjOS00OTc2LWJkOTUtZDBiYTczZGU1MzlmLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA4MjMlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwODIzVDAyMzkyMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTdlMmIyMWNiODljMzU0ZGViZTY3M2IzYjk1YjMxZGI1ODY3NTdhYWZiNzRlMDgzZDIxNDhkZGNkNjQxNmJlNTQmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.InI1AcLhWnD5Ennf1KnVFZw384Y6Cn6otzf-YaKw_Y8)


3. MobilenetV3Small

![Description](https://private-user-images.githubusercontent.com/73216938/360735315-539f4c19-6307-4c14-8b3f-417151c9366c.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MjQzODEwNjIsIm5iZiI6MTcyNDM4MDc2MiwicGF0aCI6Ii83MzIxNjkzOC8zNjA3MzUzMTUtNTM5ZjRjMTktNjMwNy00YzE0LThiM2YtNDE3MTUxYzkzNjZjLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA4MjMlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwODIzVDAyMzkyMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTFkY2ZhNzVhNjdiODk5YmM3MWU2OWYwZDJmZjU3ZWZhMzNmYTFmYTUwMzdhZjM0OTMwNmNjZDQ1NzhiYTE5ZTImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.ijdZmN5OfJ-jg-1hhwXgphOCFWwnhScfR_sKEXrylJ0)
   

## APP DEMO

<a href="https://youtu.be/jmW2Vx81aC0">
    <img src="https://img.youtube.com/vi/jmW2Vx81aC0/maxresdefault.jpg" alt="Watch the video" width="400"/>
</a>

