import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RemoteDataSource {
  Dio client = Dio();

  Future<List<Map>> getApiData() async {
    final response = await client
        .get("https://run.mocky.io/v3/92024e23-eee8-424c-8598-c6531a6412fa");
    debugPrint(response.data);
    return response.data;
  }
}
