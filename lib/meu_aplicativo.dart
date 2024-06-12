
import 'package:flutter/material.dart';
import 'package:flutter_aula_1/pages/moedas_page.dart';

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Moedasbase",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromRGBO(114, 114, 173, 0.925), 
          titleTextStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 2), fontSize: 20),
        )
      ),
      home: const MoedasPage(),
    );
  }
}