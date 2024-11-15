import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerfiyEmail extends StatelessWidget {
  const VerfiyEmail({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RentIt"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Icon(
              Icons.email,
              size: 240,
            ),
            const Text("verify email address"),
            ElevatedButton(
                onPressed: () {
                  context.push("/");
                }, child: const Text("Resend Verification link"))
          ],
        ),
      ),
    );
  }
}
