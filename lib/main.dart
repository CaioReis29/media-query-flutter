import 'package:flutter/material.dart';
import 'package:projeto_flutter/media_query/media_query.dart';
import 'package:projeto_flutter/pages/container/container_page.dart';
import 'package:projeto_flutter/pages/home/home_page.dart';
import 'package:projeto_flutter/pages/rows_colums/rows_colums.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => Container_page(),
        '/rows_colums': (_) => RowsColums(),
        '/media_queries': (_) => MediaQueryPage(),
      },
    );
  }
}
