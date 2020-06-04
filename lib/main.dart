import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'My test app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const platform = const MethodChannel('samples.flutter.dev/battery');
 
 String _batteryLevel = 'Unknown battery level.';

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
         
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          //padding: new EdgeInsets.all(20),
          children: <Widget>[
            Text(
              _batteryLevel,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
            ),
           
          ],
        ),
      ),
       
     floatingActionButton: 
     Padding(
        child: FloatingActionButton.extended(
      elevation: 4.0,
      
      //icon: const Icon(Icons.add),
      label: const Text('Get battery level'),
      onPressed:_getBatteryLevel,
    ),
        padding: new EdgeInsets.only(bottom: 20),
      ),
     
    floatingActionButtonLocation: 
      FloatingActionButtonLocation.centerDocked,
   
    );
  }
}
