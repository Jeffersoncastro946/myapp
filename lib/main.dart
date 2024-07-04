import 'package:flutter/material.dart';
// import 'package:myapp/presentation/screens/counter/counter_screen.dart';
// import 'package:myapp/presentation/screens/counter/counter_funtion_screen.dart';

import 'presentation/screens/security_page.dart';
void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(useMaterial3: true,
     colorSchemeSeed: Colors.blue,
     
     ),
     home: const SecuritySettingsPage()
     );
  }

}


