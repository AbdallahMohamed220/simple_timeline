<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

<<<<<<< HEAD
A new Flutter package that provide You A simple TimeLine

##Usage

[Example] (https://github.com/AbdllahMohamed/simple_timeline/blob/main/example/example.dart)

To use this package : *add the dependency to your ['pubspec.yaml'] file
=======
Simple Flutter TimeLine
>>>>>>> 684e59f469e332ade19c176bfb4bc6e26b07cf9e

## Features

https://i.ibb.co/VLV9Kny/Screenshot-108.png

## Getting started

 dependencies:
        flutter:
            sdk : flutter
        simple_timeline: ^0.0.1

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simpe_TimeLine',
      home:
          SimpleTimeLine(itemCount: 3, label: 'label', labelData: 'labelData',),
    );
  }
}

```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
