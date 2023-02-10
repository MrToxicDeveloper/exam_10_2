import 'package:exam_10_2/dataEnterScreen.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Student Info",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),

        ),
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'entry');
                      },
                      backgroundColor: Colors.red,
                      child: Icon(Icons.add, size: 30,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Detail() {
    return Container(
      height: 100, width: double.infinity, color: Colors.red.shade100,);
  }
}
