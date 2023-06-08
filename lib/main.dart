import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:jsontest/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const JSONTest(),
    );
  }
}

class JSONTest extends StatelessWidget {
  const JSONTest({super.key});

  @override
  Widget build(BuildContext context) {
    String json =
        '{"name" : "JY11", "email" : "wldus273@naver.com" , "age": "30" , "created_time" : 123434 , "address" : {"street":"victor street" , "city" : "best city"}}';

    //디코딩 문자열을 데이터 맵구조로 바꾸는 것.

    Map<String, dynamic> userMap = jsonDecode(json);

    //맵구조 가져오기
    var user = User.fromJson(userMap);
    //맵구조를 String으로 변경해주는 작업
    var jsonData = user.toJson();

    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text(
            'name:${user.name}',
            textScaleFactor: 2,
          ),
          Text(
            'email:${user.email}',
            textScaleFactor: 2,
          ),
          Text(
            'age:${user.age}',
            textScaleFactor: 2,
          ),
          Text(
            'createdTime:${user.createdTime}',
            textScaleFactor: 2,
          ),
          Text(
            'address:${user.address.street}',
            textScaleFactor: 2,
          ),
          Text(
            'address:${user.address.city}',
            textScaleFactor: 2,
          ),
          Text(
            'address:${user.address.toJson()} ',
            textScaleFactor: 2,
          ),
          Text(
            'toJson: $jsonData ',
            textScaleFactor: 2,
          ),
        ],
      )),
    );
  }
}
