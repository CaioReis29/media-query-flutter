import 'package:flutter/material.dart';

class RowsColums extends StatelessWidget {
  const RowsColums({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows Colum Page'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Elemento 1'),
            Text('Elemento 2'),
            Text('Elemento 3'),
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
