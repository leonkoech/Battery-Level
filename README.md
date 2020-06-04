# Battery Level

A flutter app that calls a platform-specific API to retrieve and display the current battery level. It uses the Android BatteryManager API via a single platform message, ```getBatteryLevel()```. It adds the platform-specific code inside the main app itself. ie ```MainActivity.java```. The app’s State class holds the current app state. It is then extended to hold the current battery state via the ```MethodChannel```.


