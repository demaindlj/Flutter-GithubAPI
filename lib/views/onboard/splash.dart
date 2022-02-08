import 'dart:async';
import 'package:test_sejutacita/bloc/bloc.dart';
import 'package:test_sejutacita/core/responsive.dart';
import 'package:test_sejutacita/core/shared/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:test_sejutacita/bloc/theme/theme_bloc.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    new Timer(new Duration(seconds: 3), () {
      Get.offNamed('/lobby');
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = getWidth(context);
    if (!App.data.containsKey('isWelcome')) {
      App.data.setBool('isWelcome', true);
    }
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) => Scaffold(
        backgroundColor: Colors.amber[300],
      ),
    );
  }
}
