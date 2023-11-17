# Welcome to the Reasoning Behind Jollof Express!

Here's what I'll talk about:

- State management
- Folder structure
- Time constraint
- Doing the barest minimum

## State Mangement

For the sake of simplicity, I chose Provider. It is even easier than setState, especially when you're passing data back and forth.

I believe that my choice of Provider will help anyone to quickly understand what the code is doing without worrying about how the state management works.

## Folder Structure

I structured the folders so that they can represent a single topic or a group of related topics.

The modules folder contains all the pages/screens in the app. A page/screen is referred to as a module because it contains everything related to a specific page/screen.

It has it's own provider as well as other page/screen specific configurations, the excess widgets are broken down into components.

Here's an overview of the folder structure:

```
assets/
lib/ --->
        - main.dart
        - firebase_options.dart
        src/ --->
                 config/ contains app wide configurations
                 global/ everthing that is reuseable or has a global scope
                 modules/ the pages and screens in the app

```


## Time Constraint

This entire application was built in about 24 hours or less. 

Yes, I was given a lot of time to build this and that is exactly why I was able to get it done.

I was quite occupied up until Thursday afternoon, so I had to rely on my speed and experience.

Of course, it's not my best work, but it gives an idea of how well I understand Flutter and programming in general as well as how fast I can work.

## Doing the Barest Minimum

In the context of the Time Constraint, I had to do the minimum that was required.

The extra features I planned on integrating were:

- Recreating the project in 4 different state management solutions that would be located in 5 different branches. The state management I wanted to use were provider, riverpod, getX, stacked, bloc (but bloc is my least favorite)
- Animating a Rating at the end of a successful order, as well as a feed back text field
- Persisting the Order Level
- Making the message broadcast specific to a device
- Making the UI much better
- Caluclating and adding more animations like page transitions, etc


## All in all

The reuirements were achieved, this stage is over, and most importantly, you know why I did what I did. 🤗

So, I'm currently sitting at the edge of my seat... eagerly waiting to hear from you. 😉🤗