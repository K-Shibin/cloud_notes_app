import 'package:cloud_notes_app/firebase_options.dart';
import 'package:cloud_notes_app/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {

  //  * * * * * * * F I R E B A S E   I N I T I A L I Z A T I O N * * * * * * * *
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(MaterialApp(
    onGenerateRoute: (settings) => generateRoute(settings),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
  ));
}
