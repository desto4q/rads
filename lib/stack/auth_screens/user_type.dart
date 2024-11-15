import 'package:flutter/material.dart';
import 'package:rentit/stack/auth_screens/registration/agent/agent_reg.dart';
import 'package:rentit/stack/auth_screens/registration/student/student_reg.dart';

class UserType extends StatelessWidget {
  const UserType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Container(
                color: Colors.amber,
                child: const Icon(
                  Icons.person,
                  size: 220,
                ),
              ),
              const SizedBox(height: 12),
              const Text("Welcome! Please choose a role to continue."),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  final _route = MaterialPageRoute(builder: (_) => StudentReg());
                  Navigator.push(context, _route);
                },
                child: Text("Sign Up as Renter"),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  final _route = MaterialPageRoute(builder: (_) => AgentReg());
                  Navigator.push(context, _route);
                },
                child: Text("Sign Up as Landlord"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
