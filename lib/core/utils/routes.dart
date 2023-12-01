import 'package:flutter/material.dart';

class MyNavigator {
  static void push(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  static void pushReplacement(BuildContext context, Widget page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page));
  }

  static void pushNamed(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  static void pushReplacementNamed(BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }

  static void popUntil(BuildContext context, String routeName) {
    Navigator.popUntil(context, ModalRoute.withName(routeName));
  }

  static void popAndPushNamed(BuildContext context, String routeName) {
    Navigator.popAndPushNamed(context, routeName);
  }

  static void pushAndRemoveUntil(BuildContext context, String newRouteName) {
    Navigator.pushNamedAndRemoveUntil(
        context, newRouteName, (Route<dynamic> route) => false);
  }

  static void popUntilRoot(BuildContext context) {
    Navigator.popUntil(context, (route) => route.isFirst);
  }
}
