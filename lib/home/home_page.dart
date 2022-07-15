import 'dart:convert';

import 'package:enctyption_flutter_new/models/user_model.dart';
import 'package:enctyption_flutter_new/service/encryption_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void testSymmetric1() {
    var user = User(1, "holderName", "cardNumber");
    print(user.toString());
    user.cardNumber = Symmetric.encrypt(user.cardNumber);
    print(user.toString());
    var cardNumber = Symmetric.desCrypt(user.cardNumber);
    user.cardNumber = cardNumber;
    print(user.toString());
  }

  void testSymmetric2() {
    var user = User(1, "holderName", "cardNumber");
    var userJson = user.toString();
    print(user.toString());

    var userEncryption = Symmetric.encrypt(userJson);
    print(userEncryption);

    var userDecryption = Symmetric.desCrypt(userEncryption);
    print(userDecryption);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            testSymmetric1();
          },
          child: Text("Click"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          testSymmetric2();
        },
      ),
    );
  }
}
