# Welcome too Jollof Express!

Express jollof is a simple demo application that tries to create real-time scenerios where the app will respond to events published from somewhere outside itself.


## Before You Run the App
- Complete all the TODOs:
- Check the pubspec.yaml file to make sure your dart version is compatible, if it isn't, you can downgrade the dart version in the yaml file
- Run flutter pub get
- Insert your Ably API key (make a project wide search for "TODO", you'll see where to put the key)
- If you'd like to get some context as to how this app was created and the decisions made, as well as the folder structure, you can check out the CONTEXT.md file at the root level of this project

## Run the App
To run the app, you can use your preferred method, otherwise,
- make sure you're connected to a flutter supported device (android, or iOS)
- run the command `flutter run` in a terminal at the root level of this project
- voila! you can begin to test the app for the requirements

## Publishing Messages
In the Ably console, the only type of message that Jollof Express recognizes is a string representaion of an integer.
It accepts the range 0...5
This range depicts the levels/stages of the order