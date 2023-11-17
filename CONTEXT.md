if you're seeing an incomplete context, don't worry, it'll be updated within the hour, please check again later.

# Welcome to the Reasoning Behind Jollof Express

Here's what I'll talk about:

- State management
- Folder structure
- Time constraint
- Doing the barest minimum

## State Mangement

For the sake of simplicity, I chose provider. It is even simpler than setState, especially when you're passing data back and forth.

I believe that my choice of Provider will help you to quickly know exactly what the code is doing.

This code is not written for just me, it's written for the entire team, so simplicity is very important.

## Folder Structure

I structured the folders so that they can represent a single topic or a group of related topics.

The modules folder contains all the pages/screens in the app. A page/screen is referred to as a module because it contains everything related to a specific page.

It has it's own provider as well as other module/page specific configurations, and the excess widgets are broken down into components.

Here's an overview of the folder structure

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


