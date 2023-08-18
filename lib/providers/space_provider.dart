import 'dart:convert';

import 'package:findhouseapp/models/space.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {

  getRecommendedSpace() async {

    var result = await http.get('https://bwa-cozy-api.vercel.app/recommended-spaces');

    print(result.statusCode);
    print(result.body);

    if(result.statusCode == 200){
      List data = jsonDecode(result.body);
      List<Space> space = data.map((item) => Space.fromJson(item)).toList();
      return space;
    } else {
      return <Space>[];
    }
  }
   
}