import 'package:firebase_auth_otp/firebase_options.dart';
import 'package:firebase_auth_otp/screens/otp.dart';
import 'package:firebase_auth_otp/screens/phone.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    initialRoute: 'phone',
    routes: {
      'phone': (context) => PhonePage(),
      'otp': (context) => OtpPage(),
    },
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'phone',
      routes: {
        'phone': (context) => PhonePage(),
        'otp': (context) => OtpPage(),
      },
    );
  }
}
