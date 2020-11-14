import 'package:flutter/material.dart';
import 'package:myap/routing_contsants.dart';
import 'router.dart' as router;
import 'package:myap/view/login/login_container.dart';
import 'package:http/http.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: router.generateRouter,
      initialRoute: HomeViewPage,
      debugShowCheckedModeBanner: false,
    );
  }
}
