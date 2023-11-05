import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  bool isSwitch = true;
  bool? isCheck = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.info_outline))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/physics.jpeg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This is TexT',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: isSwitch ? Colors.blue : Colors.red),
                onPressed: () {
                  debugPrint('ElevatedButton');
                },
                child: const Text('Elevated Button')),
            OutlinedButton(
                onPressed: () {
                  debugPrint('OutlinedButton');
                },
                child: const Text('Outlined Button')),
            TextButton(
                onPressed: () {
                  debugPrint('TextButton');
                },
                child: const Text('Text Button')),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('this is the row');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.redAccent,
                  ),
                  Text('Row Widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.redAccent,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(
                  () {
                    isSwitch = newBool;
                  },
                );
              },
            ),
            Checkbox(
              value: isCheck,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheck = newBool;
                });
              },
            ),
            Image.network(
                'https://www.nobelprize.org/images/einstein-12923-portrait-medium.jpg')
          ],
        ),
      ),
    );
  }
}
