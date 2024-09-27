import 'dart:async';

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
    theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    home: FutureBuilder(
        future: TokenExpire(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushNamed(context, '/Login');
            });
          } else {
            return Container(color: Colors.black, child: const Center(child: CircularProgressIndicator()),);
          }

          return Container();
        }),
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

Future<bool> TokenExpire() async {
  await Future.delayed(const Duration(seconds: 1));
  return true;
}
