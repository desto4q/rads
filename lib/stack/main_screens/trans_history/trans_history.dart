import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentit/stack/main_screens/tab_screens/tab_profile.dart';

class TransHistory extends StatelessWidget {
  const TransHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Column(
            children: [
              SearchBar(
                trailing: [Icon(Icons.search)],
              ),
              Expanded(
                  child: ListView(
                children: List.generate(10, (generator) {
                  return ListTile(
                    onTap: () {
                      context.push("/transaction_history/trans_view");
                    },
                    // dense: true,
                    title: Text("number+${generator.toString()}"),
                    subtitle: Text("number+${generator.toString()}"),
                    leadingAndTrailingTextStyle: TextStyle(fontSize: 12),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("#${generator}000"),
                        SizedBox(height: 3),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.green.shade700,
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child:
                                Text(generator % 2 == 1 ? "Success" : "Failed"),
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
