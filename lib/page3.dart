import 'package:flutter/material.dart';
import 'package:test_app/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Page 3'),
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
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(208, 240, 148, 1),
                    foregroundColor: const Color.fromRGBO(255, 0, 0, 1),
                  ),
                  child: const Text('Back'),
                ),
                const SizedBox(
                  width: 20,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page4(),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(71, 0, 0, 0),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Next Page'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
