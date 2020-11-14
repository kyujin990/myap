import 'package:flutter/material.dart';
import 'package:myap/routing_contsants.dart';
import 'package:myap/view/Register/register_view.dart';
import 'package:myap/view/home/home_view.dart';
import 'package:myap/string_extentions.dart';
import 'package:myap/view/login/login_view.dart';

Route<dynamic> generateRouter(RouteSettings settings) {
  var routingData = settings.name.getRoutingData;
  switch (routingData.route) {
    case HomeViewPage:
      return MaterialPageRoute(builder: (context) => HomePage());
    case LoginViewPage:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case RegisterViewPage:
      return MaterialPageRoute(builder: (context) => RegisterPage());
    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}
