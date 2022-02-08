import 'package:test_sejutacita/views/home/home.dart';

import 'package:flutter/material.dart';

class LobbyRoot extends StatefulWidget {
  @override
  _LobbyRootState createState() => _LobbyRootState();
}

class _LobbyRootState extends State<LobbyRoot> {
  @override
  void initState() {
    super.initState();
  }

  List<Widget> page = [Home()];
  @override
  Widget build(BuildContext context) {
    return page[0];
  }
}
