import 'package:flutter/material.dart'
    show
        BuildContext,
        Key,
        MaterialApp,
        StatelessWidget,
        Widget,
        WidgetsFlutterBinding,
        runApp;
import 'package:flutter/services.dart' show SystemChrome;
import 'package:vehicle_proper_rent/helpers/themes/light/light.dart';
import 'screens/wrapper.dart' show Wrapper;

Future<void> main() async {
  await _init();
  runApp(const Main());
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(lightUiConfig);
}

class Main extends StatelessWidget {
  const Main({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: Wrapper(),
    );
  }
}
