import 'package:flutter/material.dart';

import 'data/data_source/dynamic/test.dart';

class TestFetch extends StatelessWidget {
  const TestFetch({super.key});

  @override
  Widget build(BuildContext context) {
    TestConnection testConnection = TestConnection();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            ElevatedButton(
              onPressed: () {
                testConnection.fetchStudents();
              },
              child: Text("Fetch Students"),
            ),
          ],
        ),
      ),
    );
  }
}
