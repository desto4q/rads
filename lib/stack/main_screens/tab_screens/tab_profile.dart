import 'package:flutter/material.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ListView(
            children: [
              Container(
                height: 140,
                child: const AspectRatio(
                  aspectRatio: 1 / 1,
                  child: CircleAvatar(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Column(
                  children: [
                    Text("jon doe"),
                    SizedBox(
                      height: 4,
                    ),
                    Text("joedoe@gmail.com"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.edit),
                title: const Text("Edit Profile"),
              ),
              const SizedBox(
                height: 8,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.history),
                title: const Text("Booking History"),
              ),
              const SizedBox(
                height: 8,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.history_edu),
                title: const Text("Transaction History"),
              ),
              const SizedBox(
                height: 8,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.lock),
                title: const Text("Change Password"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
