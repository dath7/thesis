import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:yolo/app/app_router.dart';
import 'package:yolo/services/navigation_service.dart';
import 'package:yolo/services/tensorflow_service.dart';

import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MultiProvider(
    providers: <SingleChildWidget>[
      Provider<AppRoute>(create: (_) => AppRoute()),
      Provider<NavigationService>(create: (_) => NavigationService()),
      Provider<TensorFlowService>(create: (_) => TensorFlowService())
    ],
    child: Application(),
  ));
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppRoute appRoute = Provider.of<AppRoute>(context, listen: false);
    
    return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark(),
            onGenerateRoute: appRoute.generateRoute,
            initialRoute: AppRoute.splashScreen,
            navigatorKey: NavigationService.navigationKey,
            navigatorObservers: <NavigatorObserver>[
              NavigationService.routeObserver
            ],
          );
        
  }
}
