import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int addnum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Counter fuction",
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              addnum = 0;
              setState(() {});
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined),
              color: Colors.black,
            )
          ],
          elevation: 0.8,
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$addnum",
                style: const TextStyle(
                  color: Colors.indigo,
                  fontSize: 160,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Text(
                "click${addnum == 1 ? "" : "s"}",
                style: const TextStyle(
                  color: Colors.indigo,
                  fontSize: 25,
                  fontWeight: FontWeight.w100,
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                addnum++;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                setState(() {
                  if (addnum == 0) return;
                  addnum--;
                });
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  addnum = 0;
                });
              },
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      enableFeedback: true,
      elevation: 8.5,
      child: Icon(icon),
    );
  }
}
