import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freelink/provider/token.dart';
import 'package:freelink/route/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [Provider(create: (_) => Token(usertoken: '', refreshtoken: ''))],
    child: MaterialApp(
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
              if (snapshot.data?.usertoken != '' && snapshot.data?.refreshtoken != '') {
                debugPrint('HOME');
              } else {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Navigator.pushReplacementNamed(context, '/Login');
                });
              }
            } else {
              return Container(
                color: Colors.black,
                child: const Center(child: CircularProgressIndicator()),
              );
            }

            return Container();
          }),
      // initialRoute: '',
    ),
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

Future<Token> TokenExpire() async {
  await Future.delayed(const Duration(seconds: 1));
  return Token(usertoken: '', refreshtoken: '');
}
