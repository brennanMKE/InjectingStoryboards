# Injectable Storyboards

Normally you cannot directly initialize instances of properties in a Storyboard if they take parameters in the initializer. In this example the `JetpackProvider` has a property which is decorated with `@IBInspectable` which means it can be set when the Storyboard is being initialized. It is an instance of `String` which is set in the `User Defined Runtime Attributes` for the object defined in the Storyboard. This string value is then used to initialize an instance of `Jetpack` which is used in the view controller.

## Setup

Create a class which has a property marked with `@IBInspectable`. In the Storyboard, drag an object (`NSObject`) from the Object Library over to the scene and set the custom class to the one which was just created. The name of the property and type should match. When the Storyboard is initalized these runtime attributes will be set on the instances in the scene.

## Why

It can be useful to reuse UI components which are configured differently. Since Storyboards do not provide a direct way to get involved in the initialization of the view controller this is an indirect way to accomplish some unique configuration.

---
2018