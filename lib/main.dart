import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/screens/counter/counter_fucntios_screen.dart';
// import 'package:flutter_application_2/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp( const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueAccent
      ),
      debugShowCheckedModeBanner: false,
      home: const CounterFunctionsScreen()
    );
  }
}
