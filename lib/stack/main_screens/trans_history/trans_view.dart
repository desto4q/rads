import 'package:flutter/material.dart';

class TransView extends StatelessWidget {
  const TransView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction History"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            const Text("data"),
            const SizedBox(
              height: 12,
            ),
            const Text("33 jnafn sdad ad askdna"),
            const SizedBox(
              height: 12,
            ),
            Flexible(
              child: Table(
                  border: TableBorder.all(), // Adds borders to the table
                  children: const [
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Row 1, Column 1'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Row 1, Column 2'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Row 2, Column 1'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Row 2, Column 2'),
                        ),
                      ],
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
