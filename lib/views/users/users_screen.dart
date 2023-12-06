import 'package:flutter/material.dart';
import 'package:task_l5/controllers/users/users_controller.dart';
import 'package:task_l5/views/users/components/floating_delete_button.dart';
import 'package:task_l5/views/users/components/user_data_box.dart';

class UsersScreen extends StatefulWidget {
  static const String route = 'users';
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  //controllers
  final UserController _controller = UserController();
  //screen sizes
  late double _screenHight;
  late double _screenWidth;

  @override
  Widget build(BuildContext context) {
    _setMediaQuerySizes(context);

    return Scaffold(
      floatingActionButton: FloatingDeleteButton(onConfirmPress: (){
        _controller.deleteAll();
        setState(()=>Navigator.of(context).pop());
      }),
      appBar: AppBar(
        title: const Text('Users List'),
      ),
      body: FutureBuilder(
          future: _controller.getAllUsers(),
          builder: (context, users) {
            if (users.connectionState == ConnectionState.done) {
              return Container(
                width: _screenWidth,
                height: _screenHight,
                margin: EdgeInsets.symmetric(
                    vertical: _screenHight * 0.02,
                    horizontal: _screenHight * 0.02),
                child: ListView.builder(
                  itemCount: users.data!.length,
                  itemBuilder: (context, index) {
                    return UserDataBox(
                      name: users.data![index].name,
                      email: users.data![index].email,
                      password: users.data![index].password,
                      onTap: () {
                        _controller
                            .deleteUser(users.data![index].id!)
                            .then((value) => setState(() {}));
                      },
                    );
                  },
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }

  void _setMediaQuerySizes(BuildContext context) {
    _screenHight = MediaQuery.sizeOf(context).height;
    _screenWidth = MediaQuery.sizeOf(context).width;
  }
}
