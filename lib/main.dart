import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import './constants.dart';
import './models/staff_data.dart';
import './screens/staff_create_edit.dart';
import './screens/staff_list_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    StaffData().getInitialDataStaff();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Staff Organizer',
      theme: ThemeData(
        primaryColor: kAppPrimaryColour,
        fontFamily: 'RobotoMono',
        textButtonTheme: kTextButtonThemeData,
        inputDecorationTheme: InputDecorationTheme(),
        // TODO Change TextFormField hint to a grayish colour
      ),
      initialRoute: '/',
      routes: {
        StaffInfoScreen.routeName: (context) => StaffInfoScreen(),
        StaffListScreen.routeName: (context) => StaffListScreen(),
      },
    );
  }
}
