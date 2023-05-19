import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    print('Largura: ${mediaQuery.size.width}');
    print('Altura: ${mediaQuery.size.height}');
    print('Padding top: ${mediaQuery.padding.top}');
    print('Padding appbar: $kToolbarHeight');

    var appBar = AppBar(
      title: Text('Media Query '),
    );
    final statusBar = mediaQuery.padding.top;
    final heigthBody = mediaQuery.size.height - statusBar - kToolbarHeight;

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: mediaQuery.size.width,
              height: heigthBody,
            ),
          ],
        ),
      ),
    );
  }
}
