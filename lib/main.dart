import 'package:flutter/material.dart';
import 'package:shamo_flutter/pages/cart_page.dart';
import 'package:shamo_flutter/pages/checkout_page.dart';
import 'package:shamo_flutter/pages/checkout_success_page.dart';
import 'package:shamo_flutter/pages/detail_chat_page.dart';
import 'package:shamo_flutter/pages/home/edit_profile_page.dart';
import 'package:shamo_flutter/pages/home/main_page.dart';
import 'package:shamo_flutter/pages/product_page.dart';
import 'package:shamo_flutter/pages/sign_in_page.dart';
import 'package:shamo_flutter/pages/sign_up_page.dart';
import 'package:shamo_flutter/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
      ),
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        '/checkout-success': (context) => CheckoutSuccessPage(),
      },
    );
  }
}
