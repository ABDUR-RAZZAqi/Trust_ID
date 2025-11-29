import 'package:flutter/material.dart';
import 'pages/splash_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/forgot_password_page.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'pages/settings_page.dart';
import 'pages/id_verification_page.dart';
import 'pages/terms_conditions_page.dart';  
import 'pages/help_support_page.dart';  
import 'pages/notifications_page.dart';  
import 'pages/trust_history_page.dart';  
import 'pages/about_us_page.dart';  
import 'pages/feedback_page.dart';  
import 'pages/verification_status_page.dart';  

final kcolorScheme = ColorScheme.fromSeed(seedColor: Color(0xff3712A5));

void main() {
  runApp(const TrustidApp());
}

class TrustidApp extends StatelessWidget {
  const TrustidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trust ID',
      theme: ThemeData.from(colorScheme: kcolorScheme),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/forgot_password': (context) => const ForgotPasswordPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/settings': (context) => const SettingsPage(),
        '/id_verification': (context) => const IdVerificationPage(),
        '/terms_conditions': (context) => const TermsConditionsPage(),
        '/help_support': (context) => const HelpSupportPage(), 
        '/notifications': (context) => const NotificationsPage(),  
        '/trust_history': (context) => const TrustHistoryPage(),  
        '/about_us': (context) => const AboutUsPage(),  
        '/feedback': (context) => const FeedbackPage(),  
        '/verification_status': (context) => const VerificationStatusPage(),  
      },
    debugShowCheckedModeBanner: false);
  }
}