import 'package:flutter/material.dart';
import 'package:lotto/screens/lotto_drawer.dart';
import 'package:lotto/utils/constant.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMyBlueColor,
        elevation: 0,
      ),
      drawer: LottoDrawer(),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.deepPurple,
            );
          }),
    );
  }
}
