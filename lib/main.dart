import 'package:flutter/material.dart';
import 'package:xpress_sewa/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const XPressSewa());
}

class XPressSewa extends StatelessWidget {
const XPressSewa({ super.key });

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.white,
      ),
      initialRoute: "/",
      routes: _appRoutes,
    );
  }
}


final Map<String, WidgetBuilder> _appRoutes = {
  "/": (context) => const SplashScreen(),
  // "/MainScreen": (context) => const MainScreen(),
};
