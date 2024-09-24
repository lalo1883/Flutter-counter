import 'package:flutter/material.dart';


class counterPage extends StatefulWidget {
  const counterPage({super.key});

  @override
  State<counterPage> createState() => _counterPageState();
}

class _counterPageState extends State<counterPage> {
  int counter = 0;
  void add_counter(){
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Times pressed", style: TextStyle(color: Colors.black, fontSize: 45),),
            TextButton(onPressed: add_counter, child: const Text("Press me")),
            Text(counter.toString()),
          ],
        ),
      ),
    );
  }
}
