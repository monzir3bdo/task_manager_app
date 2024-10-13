import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;
  Future<void> pushNamed({required String destination, Object? arguments}) {
    return Navigator.pushNamed(
      this,
      destination,
      arguments: arguments,
    );
  }

  push(Widget screen) async {
    return Navigator.push(this, MaterialPageRoute(builder: (_) => screen));
  }

  Future<void> pushNamedReplacement(String destination) {
    return Navigator.pushReplacementNamed(this, destination);
  }

  Future<void> removeAll(String destination) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(destination, (route) => false);
  }

  void pop() {
    return Navigator.pop(this);
  }
}
