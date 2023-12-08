import 'package:flutter/material.dart';
import 'package:task_l5/models/user_model.dart';


class FakeRecords {
  static Future<void> createFakeUsers() async {
    
   

    List<Map<String, String>> users = [
      {
        'name': 'User One',
        'email': 'user1@mail.com',
        'password': '00000000',
        'phone': '0102030401',
        'country': 'egypt',
      },
      {
        'name': 'User Two',
        'email': 'user2@mail.com',
        'password': '00000000',
        'phone': '0102030401',
        'country': 'France',
      },
      {
        'name': 'User Three',
        'email': 'user3@mail.com',
        'password': '00000000',
        'phone': '0102030401',
        'country': 'USA',
      },
      {
        'name': 'User Four',
        'email': 'user4@mail.com',
        'password': '00000000',
        'phone': '0102030401',
        'country': 'Algria',
      },
      {
        'name': 'User Five',
        'email': 'user5@mail.com',
        'password': '00000000',
        'phone': '0102030401',
        'country': 'Moraco',
      },
    ];
    try {
      for (var user in users) {
        await UserModel().insert(user);
      }
      debugPrint('FakeRecords : ${users.length} Fake records has been created');
    } catch (e) {
      debugPrint('FakeRecords : Fake records already created'); 
    }
  }
}
