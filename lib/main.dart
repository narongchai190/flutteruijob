import 'package:flutter/material.dart';
import 'package:joblistingui/provider/tap_provider.dart';
import 'package:provider/provider.dart';

import 'screens/main_page.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(
//   DevicePreview(
//     enabled: !kReleaseMode,
//     builder: (context) => MyApp(),
//   ),
// );
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      //  locale: DevicePreview.of(context).locale, 
      // builder: DevicePreview.appBuilder, 

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<TapProvider>(
        create: (context) => TapProvider(),
        child: MainPage(),
      ),
    );
  }
}
