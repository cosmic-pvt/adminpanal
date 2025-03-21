import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:bgmi_admin/pages/home.dart'; // Ensure correct import

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AdminApp());
}

class AdminApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BGMI Tournament Admin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[200],
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
