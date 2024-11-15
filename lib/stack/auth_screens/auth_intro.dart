import 'package:flutter/material.dart';
import 'package:rentit/stack/auth_screens/user_type.dart';

class AuthIntro extends StatelessWidget {
  const AuthIntro({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height / 2 - 100,
              color: Colors.orange,
            ),
            SizedBox(height: 12,),
            Text("Say Goodbye to Stressfull House Hunting"),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Login")),
                SizedBox(
                  width: 22,
                ),
                ElevatedButton(onPressed: () {
                  final _route = MaterialPageRoute(builder: (_)=>UserType());
                  Navigator.push(context, _route);
                }, child: Text("SignUp"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
