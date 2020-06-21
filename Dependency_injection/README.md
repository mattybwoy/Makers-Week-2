# Dependency Injection

Dependency injection is a technique for helping test classes in isolation. It allows a class to use either its real dependency, or a double.

### Introduction

In greeter file and spec, smiley has no dependencies, only the greeter class does. By creating a double of smiley class we can test the greet method inside Greeter.
 We will need a create a new smiley instance upon initialization of Greeter and allow the double to accept the get function inside smiley.

 ### Exercise 1

 In Note class we allow formatter to be created on initialization as display method calls the format method on the instance within the NoteFormatter class.
To test we cneed to create a fake instance of formatter method that will accept the format method. This will then need to be passed into the note instance upon creation.
As we are only testing the fake instance can receive format method the message is irrelevant. As long as the messages are the same we will know the fake instance has successfully imitated the noteformatter instance.


CarFactory example shows how we can create doubles of entire classes rather than just instances of the class.

### Exercise 2

In the Diary class, the Entry class and instance are only created when the add method is called. We are creating the object of the entry to be stored into an array called entries. To do this we need add to create the class Entry and for the arguments passed into add method to be passed into the entry upon initialization.
To pass the test first we create the fake entry instance and then the fake entry class, passing in the instance as a new method.
To test the add method we pass in the title and body along with the fake class and expect the entries array to include the fake entry. Then we will know the test has worked.

### Exercise 3

In the SayHello class a new email class is created. When the run method is executed, the email class creates a new message class with the method send. The message method within the email class will create a new instance of message.

To test we need to create a double of the message instance, a double of the email instance and a double of the email class.

To test a new sayhello instance, it is first created to receive the fake email class and to check the output of what we expect the run method to output. The run method executes a send function so we need to check the fake instance of message can receive the send method.


