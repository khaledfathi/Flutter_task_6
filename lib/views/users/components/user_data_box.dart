import 'package:flutter/material.dart';

class UserDataBox extends StatelessWidget {
  final String? name;
  final String? email;
  final String? password;
  final void Function()? onTap;

  const UserDataBox(
      {super.key,
      this.name,
      this.email,
      this.password,
      this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(color: Colors.grey, offset: Offset(0, 4), blurRadius: 5),
          ]),
      child: Column(
        children: [
          Text(
            'Name : $name',
            style: _customTextStyle(),
          ),
          Text(
            'Email :$email',
            style: _customTextStyle(),
          ),
          Text(
            'Password : $password',
            style: _customTextStyle(),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: onTap,
                  child: Container(
                      width: 50,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  TextStyle _customTextStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 16,
    );
  }
}
