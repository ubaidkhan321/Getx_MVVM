import 'package:get/get.dart';
import 'package:getxexample/Resource/RouteName.dart';
import 'package:getxexample/view/splash_Screen.dart';

class APPRoute{
  static appRoute()=>[
    GetPage(name: RouteName.splashScreen, page: ()=> const SplashScreen(),
    transition:Transition.leftToRight,
    transitionDuration: const Duration(seconds: 10) )
  ];
}