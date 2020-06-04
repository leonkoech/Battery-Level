# Battery Level

A flutter app that calls a platform-specific API to retrieve and display the current battery level. It uses the Android BatteryManager API via a single platform message, ```getBatteryLevel()```. 

It adds the platform-specific code inside the main app itself. ie ```MainActivity.java```. The app’s State class holds the current app state. It is then extended to hold the current battery state via the ```MethodChannel```.

## Demo
<img src="https://user-images.githubusercontent.com/39020723/83734527-cd014700-a657-11ea-9db3-84b2ef3167cd.png" width="35%">.
<img src="https://user-images.githubusercontent.com/39020723/83734545-d25e9180-a657-11ea-98cf-82d15572fbcd.png" width="35%">.

## Contribution 

Please read the [Contribution guide](https://github.com/leonkoech/Battery-Level/blob/master/contributions.md)

## License

This project is under the [MIT](https://github.com/leonkoech/Battery-Level/blob/master/LICENSE) License.


