import 'package:flutter/material.dart';

import 'list_view.dart';

class SingleChild extends StatefulWidget {
  static const String id = "single_child";

  const SingleChild({Key? key}) : super(key: key);

  @override
  State<SingleChild> createState() => _SingleChildState();
}

class _SingleChildState extends State<SingleChild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scrolling"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, ListViewPage.id);
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    color: Colors.amber,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  color: Colors.black,
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  color: Colors.pink,
                ),
                const Text("Hellooo"),
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  color: Colors.yellow,
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 130,
                    width: 100,
                    color: Colors.green,
                  ),
                  Container(
                    height: 130,
                    width: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 130,
                    width: 100,
                    color: Colors.pink,
                  ),
                  Container(
                    height: 130,
                    width: 100,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 130,
                    width: 100,
                    color: Colors.green,
                  ),
                  Container(
                    height: 130,
                    width: 100,
                    color: Colors.pink,
                  ),
                  Container(
                    height: 130,
                    width: 100,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 130,
                    width: 100,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
