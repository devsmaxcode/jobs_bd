import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobs_bd/presentation/splash_screen/presenter/splash_screen_presenter.dart';

class NOState extends StatelessWidget {
  NOState({super.key});
  final SplashScreenPresenter controller = Get.put(SplashScreenPresenter());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('NO INTERNET CONNECTION'),
    ));
  }
}
