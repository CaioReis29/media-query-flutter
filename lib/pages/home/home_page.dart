import 'package:flutter/material.dart';

enum PopupMenuPages { container, rows_colum, media_query }

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
              onSelected: (PopupMenuPages valueSelected) {
            switch (valueSelected) {
              case PopupMenuPages.container:
                Navigator.of(context).pushNamed('/container');
                break;
              case PopupMenuPages.rows_colum:
                Navigator.of(context).pushNamed('/rows_colums');
              case PopupMenuPages.media_query:
                Navigator.of(context).pushNamed('/media_queries');
            }
          }, itemBuilder: (BuildContext context) {
            return <PopupMenuItem<PopupMenuPages>>[
              PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.container,
                child: Text('Container'),
              ),
              PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.rows_colum,
                child: Text('Rows e Colums'),
              ),
              PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.media_query,
                child: Text('Media Query'),
              ),
            ];
          }),
        ],
      ),
      body: Container(),
    );
  }
}
