import 'package:flutter/material.dart';
import 'package:freelink/route/routes.dart';

void main() {
  runApp(MaterialApp(
    title: "Freelink",
    onGenerateRoute: (settings) {
      final routebuilder = Routes[settings.name];
      if (routebuilder != null) {
        return MaterialPageRoute(builder: routebuilder);
      }
      return null;
    },
    // initialRoute: '',
  ));
}

class Entrance extends StatefulWidget {
  const Entrance({super.key});

  @override
  State<StatefulWidget> createState() => _Entrance();
}

class _Entrance extends State<Entrance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
