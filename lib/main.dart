import 'package:flutter/material.dart';
import 'package:scroler_listview/home_page.dart';
import 'package:scroler_listview/list_view.dart';
import 'package:scroler_listview/single_child_scroll_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id:(context)=> const HomePage(),
        SingleChild.id:(context) => const SingleChild(),
        ListViewPage.id:(context) => const ListViewPage(),
      },
    );
  }
}
