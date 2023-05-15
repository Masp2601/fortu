import 'package:flutter/material.dart';
import 'package:fortunators/m_y_profile_page/m_y_profile_page_widget.dart';
import 'package:fortunators/paysave/paysave_widget.dart';
import 'package:fortunators/screen/redes.dart';

import '../game/game_widget.dart';

class SnapBar extends StatefulWidget {
  const SnapBar({Key? key}) : super(key: key);

  @override
  State<SnapBar> createState() => _SnapBarState();
}

enum MenuItem { item1, item2 }

class _SnapBarState extends State<SnapBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
        child: Container(
          height: 70,
          width: 370,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => GameWidget()));
                  },
                  icon: Image.asset('assets/images/flama.png'),
                ),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => RedesPage()));
                  },
                  icon: Image.asset('assets/images/Group.png'),
                ),
                SizedBox(
                  width: 35,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/coment.png'),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.settings),
                SizedBox(
                  width: 15,
                ),
                Center(
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      cardColor: Color(0xFFE30000),
                    ),
                    child: PopupMenuButton(
                        offset: const Offset(20, 50),
                        onSelected: (value) {
                          if (value == MenuItem.item1) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MYProfilePageWidget()));
                          } else if (value == MenuItem.item2) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PaysaveWidget()));
                          }
                        },
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                  value: MenuItem.item1,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        size: 36,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "PERFIL",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                              PopupMenuItem(
                                  value: MenuItem.item2,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 36,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "SALDO",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                            ]),
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: Color(0xFFE30000),
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
