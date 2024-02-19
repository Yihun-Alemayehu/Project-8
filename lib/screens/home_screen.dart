import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shopping App'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text('data'),
                    subtitle: Text('data-2'),
                    trailing: Text('data-3'),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
