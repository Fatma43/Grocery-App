import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grocery/Network/local/dbHelper.dart';
import 'package:grocery/models/helperClass.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  // Helper
  SqlDb db = SqlDb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          child: Text('Read Data'),
          onPressed: () async {
            List response = await Helper.getAllProducts();
            // Helper.getAllProducts
            print(response);
          },
        ),
      ),
    );
  }
}
