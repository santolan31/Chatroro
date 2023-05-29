import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
   int addnum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Contador",textAlign: TextAlign.center,),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.search_outlined))
        ],
        elevation: 0.8,
        backgroundColor: Colors.indigo,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$addnum",style:const TextStyle(color: Colors.indigo,fontSize:160, fontWeight:FontWeight.w100, ),),
            Text("click${addnum == 1 ?"":"s" }", style: const TextStyle(color: Colors.indigo,fontSize:25, fontWeight:FontWeight.w100, ),)
          ],
        ),
      ),      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addnum += 1; 
          setState(() {
            
          });
        },
        
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
