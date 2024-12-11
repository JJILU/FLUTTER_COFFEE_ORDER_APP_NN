import 'package:flutter/material.dart';

import 'package:coffee_order_app/home.dart';
// import 'package:coffee_order_app/widgets/column_widget.dart';
// import 'package:coffee_order_app/widgets/row_widget.dart';


void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      // home: ColumnWidget(),
      // home: RowWidget(),
    ),
  );
}
