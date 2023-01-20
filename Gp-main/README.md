# H.Partner Application
H.Partner is a mobile application developed using Flutter. It supports both Android and IOS.

H.Partner is a Nutrition System application. It allows the user to calculate daily his calories, protein, car, and fat,.
the user can buy from market off app healthy products,
the user can follow her health by charts that used in our app

## Table of contents
- ### [main packages used](https://github.com/yasmen-ahmed/Gradution-project-/blob/main/README.md#main-packages-used-1)
- ### [Folder structure](https://github.com/yasmen-ahmed/Gradution-project-/blob/main/README.md#folder-structure-1)
- ### [Screenshots](https://github.com/yasmen-ahmed/Gradution-project-/blob/main/README.md#screenshots-1)
- ### [Demo video](https://github.com/yasmen-ahmed/Gradution-project-/blob/main/README.md#Demo)

## Main packages used
- [firebase_core](https://pub.dev/packages/firebase_core) to make integration database
- [firebase_auth](https://pub.dev/packages/firebase_auth) to handle authentication
- [firebase_storage](https://pub.dev/packages/firebase_storage) to save media of app in it
- [tflite](https://pub.dev/packages/tflite) to used machine learning model in our app
- [fl_chart](https://pub.dev/packages/fl_chart) to handle charts of analytics
- [flutter_bloc](https://pub.dev/packages/flutter_bloc) as state management
- [shared_preferences](https://pub.dev/packages/shared_preferences) to handle caching data
- [internet_connection_checker](https://pub.dev/packages/internet_connection_checker) to handle internet connection
- [image_picker](https://pub.dev/packages/image_picker) to pick image from mobile storage
- [flutter_localizations](https://pub.dev/packages/easy_localization) to handle localization

## Folder structure
We have applied clean archeticture concept and here is the basic folder structure:

core folder structure that flutter provides:

```
h_partner
├── android
├── assets
├── build
├── ios
├── lib
└── test
```


Here is the folder structure we have been using in this project:
```
lib
├── layout
├── model
├── modules
├── shared
└── main.dart
```

### layout
This folder containes the business logic of the application specificly state management.

```
layout
├── admin layout
└── home-layout
```

### model
This folder contains all models related to the application
```
model
├── feedback_model.dart
├── meals_model.dart
├── new_order_model.dart
├── product_model.dart
├── recipes_model.dart
└── user_model.dart
```
