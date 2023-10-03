import 'package:flutter/material.dart';
import 'package:test_app/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Page 4',
              style: TextStyle(
                backgroundColor: Colors.yellowAccent,
                fontSize: 26,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Back'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page1(),
                      ),
                    );
                  },
                  child: const Text('First Page'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
