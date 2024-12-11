import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Widget'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // width: 100,
            height: 100,
            color: Colors.red,
            child: const Text('one'),
          ),
          Container(
            // width: 200,
            height: 200,
            color: Colors.green,
            child: const Text('two'),
          ),
          Container(
            // width: 300,
            height: 300,
            color: Colors.blue,
            child: const Text('three'),
          ),
        ],
      ),
    );
  }
}
