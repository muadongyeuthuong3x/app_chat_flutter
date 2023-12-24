import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(radius: 25),
      title: Text("Dev Stack",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Row(
        children: [
          Icon(Icons.done_all),
          SizedBox(width: 3),
          Text("Hi dev stack",
              style: TextStyle(
                fontSize: 13,
              )),
        ],
      ),
      trailing: Text("18:04"),
    );
  }
}
