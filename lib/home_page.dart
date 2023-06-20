import 'dart:io';

import 'package:flutter/material.dart';
import 'package:scroler_listview/single_child_scroll_view.dart';
class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Platform"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, SingleChild.id);
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  print("bu android platforma");
                } else if (Platform.isIOS) {
                  print("bu MacOs platforma");
                }
              },
              child: const Text("Show platform"),
            ),
          ],
        ),
      ),
    );
  }
}