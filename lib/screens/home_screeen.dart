import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  final param;
  const HomeScreen({super.key, this.param});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("${widget.param}", style: TextStyle(color: Colors.red),),
      ),
    );
  }
}
