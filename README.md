# Work Sample

This is a mostly empty sample [Flutter](https://flutter.dev/) project. 

To get started, you should look at the [documentation](https://docs.flutter.dev/get-started/install) to install flutter on your machine. You can then run the project in an emulator or on a real device.

As a development environment, we recommend [Visual Studio Code](https://code.visualstudio.com/) with the [Flutter extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter). However, you are free to use any IDE you want.

Note that flutter is a cross-platform library, but we are currently primarily interested in the mobile part. Thus, please limit yourself to the mobile app development part. 
In particular, the android part is sufficient for this task, and you need not take care of the iOS part. Moreover, you do not need to take care of web or desktop platforms.

## Implementation tasks
Please perform the following tasks:

1. Retrieve a list of users using the [dummy JSON API](https://dummyjson.com/docs/users)     Limit the number of users to 10. Use the "api_service" class that is already provided. To access this service, the ["Riverpod"](https://riverpod.dev/docs/introduction/why_riverpod) library is used and you can see how to access the "api_service" in the "user_list_view.dart" file. There, the command 
```dart
final apiService = context.read(apiServiceProvider);
```
will give you access to the "api_service" object. You can then use the "getUsers" method to retrieve the list of users. Note that this method returns a "Future" object, so you need to use a FutureBuilder to access the result.
2. Display the list of users in a list view. Each list item should display the user's name and avatar
3. When tapping on a list item, display a new screen that shows the user's details. The details should include at least the name, but you are also free to include any other details you think are relevant.
4. In this detail view, there should also be a text field where you can add a comment to the user. Since this just uses a mock API without any persistence, it is okay if this comment is not saved anywhere. However, the comment should be displayed in the detail view after it has been entered.


Here is a wireframe of the final result:

![Mockup of the final result](mockup.png)

Your result should have the same functionality, but you are free to style it however you want.


## Design Tasks

You are completely free to style the app however you want. Note that since this is linked to a children's app, it should preferrably be styled in a way that is appealing to children.

## Submission

When you are finished, zip your project and send it to [TODO](mailto:TODO). Please do not include the "build" folder in the zip file.
The project should be runnable without any additional steps. If you need to add any additional steps, please include them in a README file. 
Please take care that the project compiles and runs without any errors.

## Questions

If you have any questions about the task, write an email to [d.biedermann@dipf.de](mailto:d.biedermann@dipf.de) and [j.breitwieser@dipf.de](mailto:j.breitwieser@dipf.de)