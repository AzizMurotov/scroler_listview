import 'package:flutter/material.dart';
import 'package:scroler_listview/single_child_scroll_view.dart';

class ListViewPage extends StatefulWidget {
  static const String id = "list_view";

  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, SingleChild.id);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: ListView(
        children: [
          instagram("Aziz Sultonov", "assets/images/11.jpeg"),
          instagram("Aziz Murotov", "assets/images/33.jpeg"),
          instagram("Ruhiddin Nuriddinov", "assets/images/44.jpeg"),
          instagram("Muhriddin Yoriqulov", "assets/images/22.jpeg"),
        ],
      ),
    );
  }

  Widget instagram(name, picture) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(picture), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
