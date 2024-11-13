import 'package:ali0522009/pages/registration_page.dart';
import 'package:ali0522009/provider/login_provider.dart';
import 'package:ali0522009/provider/product_provider.dart';
import 'package:ali0522009/provider/registration_provider.dart';
import 'package:ali0522009/serviece/products_serviece.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [

        ChangeNotifierProvider(create: (context)=>SignUpProvider()),
        ChangeNotifierProvider(create: (context)=>LoginProvider()),
        ChangeNotifierProvider(create: (context)=>productprovider())
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
      
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SignupScreen()
      ),
    );
  }
}
