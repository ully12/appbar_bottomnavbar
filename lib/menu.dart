import 'package:appbar_bottomnavbar/account.dart';
import 'package:appbar_bottomnavbar/home.dart';
import 'package:appbar_bottomnavbar/info.dart';
import 'package:appbar_bottomnavbar/setting.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.purple,
        title: Text('Rekayasa Perangkat Lunak'),
      ),
      body: Stack(
        children: <Widget>[
          Offstage(
            offstage: selectIndex != 0,
            child: TickerMode(
              enabled: selectIndex == 0,
              child: Home(),
              ),
          ),
          Offstage(
            offstage: selectIndex != 1,
            child: TickerMode(
              enabled: selectIndex == 1,
              child: Info(),
              ),
          ),
          Offstage(
            offstage: selectIndex != 2,
            child: TickerMode(
              enabled: selectIndex == 2,
              child: Setting(),
              ),
          ),
          Offstage(
            offstage: selectIndex != 3,
            child: TickerMode(
              enabled: selectIndex == 3,
              child: Account(),
              ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    selectIndex = 0;
                    print(selectIndex);
                  });
                },
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectIndex = 1;
                    print(selectIndex);
                  });
                },
              child: Icon(
                Icons.info,
                color: Colors.white,
              ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectIndex = 2;
                    print(selectIndex);
                  });
                },
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectIndex = 3;
                    print(selectIndex);
                  });
                },
              child: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              ),
            ],
          )
        )
      ),
    );
  }
}