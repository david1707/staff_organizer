import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'screens/staff_create_edit.dart';
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
    // TODO Do this properly, with checks
    // getInitialDataStaff();
  }

  // void getInitialDataStaff() async {
  //   CollectionReference collectionReference =
  //       FirebaseFirestore.instance.collection('staff');
  //   QuerySnapshot staffList = await collectionReference.get();
  //   if (staffList.docs.length != 0) {
  //     for (var doc in staffList.docs) {
  //       print(doc.data());
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Staff Organizer',
      theme: ThemeData(
        primaryColor: const Color(0xff726EEF),
        fontFamily: 'RobotoMono',
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: const Color(0xff212B38),
          ),
        ),
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
