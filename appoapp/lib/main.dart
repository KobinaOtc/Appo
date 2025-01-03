// import 'package:appoapp/phone_sign_up.dart';
import 'package:appoapp/Screens/profile.dart';
import 'package:appoapp/constants.dart';
import 'package:appoapp/mongodb.dart';
import 'package:flutter/material.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

// import './home.dart';
import './Screens/mainscreen.dart';
import './sign_in.dart';
// import './magic_link.dart';
// import './update_password.dart';
// import 'phone_sign_in.dart';
// import './verify_phone.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await MongoDatabase.connect();

  /// TODO: replace with your credentials
  await Supabase.initialize(
    url: 'https://ezbthaxwydonvuxwyeln.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV6YnRoYXh3eWRvbnZ1eHd5ZWxuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI0OTYzMTQsImV4cCI6MjA0ODA3MjMxNH0.XlSUm-i5A0iIp3kdNyVoy_B7tK63nmCTbfoI6RlWmn8',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appo App',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        brightness: Brightness.dark,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SignUp(),
        // '/magic_link': (context) => const MagicLink(),
        // '/update_password': (context) => const UpdatePassword(),
        // '/phone_sign_in': (context) => const PhoneSignIn(),
        // '/phone_sign_up': (context) => const PhoneSignUp(),
        // '/verify_phone': (context) => const VerifyPhone(),
        '/home': (context) => const MainScreen(),
        '/profile': (context) => const Profile(),
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) => const Scaffold(
            body: Center(
              child: Text(
                'Not Found',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
