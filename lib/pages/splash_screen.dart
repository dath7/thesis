import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:yolo/app/app_resources.dart';
import 'package:yolo/app/app_router.dart';
import 'package:yolo/services/navigation_service.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this, value: 0.1);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
    _controller.forward();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 5), () {
        Provider.of<NavigationService>(context, listen: false)
            .pushNamedAndRemoveUntil(AppRoute.homeScreen);
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
      child: ScaleTransition(
        scale: _animation,
        alignment: Alignment.center,
        child: const Column(
          children: [
            SizedBox(height: 50,),
            Expanded(child: Image(image: AssetImage('assets/images/hust.png'))),
            Expanded(flex: 2,child: Image(image: AssetImage('assets/images/seee.jpg'))),
          ],
        ),
      ),
    );
  }
}
