import 'dart:async';
import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final config = {
    'NODE_SERVER_IP': Platform.environment['NODE_SERVER_IP'],
  };

  final filename = 'example/test_driver/.env.dart';
  File(filename).writeAsString('final environment = ${json.encode(config)};');
}