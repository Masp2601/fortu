import 'package:flutter/material.dart';
import 'package:fortunators/screen/treinta_apuesta/utils/game_utils.dart';

class GameTreintaPage extends StatefulWidget {
  const GameTreintaPage({Key? key}) : super(key: key);

  @override
  State<GameTreintaPage> createState() => _GameTreintaPageState();
}

class _GameTreintaPageState extends State<GameTreintaPage> {
  //setting text style
  TextStyle whiteText = TextStyle(color: Colors.white);
  bool hideTest = false;
  GameTreinta _game = GameTreinta();

  //game stats
  int tries = 0;
  int score = 0;

  @override
  void initState() {
    super.initState();
    _game.initGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xFF14181B),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: Image.asset(
              'assets/images/table.png',
            ).image,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Expanded(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*InkWell(
                      onTap: () => print('hello'),
                      child: new Container(
                        width: 100.0,
                        height: 40.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFFE1BC000),
                          border:
                              new Border.all(color: Colors.white, width: 2.0),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Center(
                          child: new Text(
                            'Saldo: 100' + '\$',
                            style: new TextStyle(
                                fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),*/
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(200, 50, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            /*Padding(
                              padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  //info_card("Tries", "$tries"),
                                  //info_card("Creditos", "$score"),
                                ],
                              ),
                            ),*/
                            //mesa 1
                            SizedBox(
                              width: 310,
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: GridView.builder(
                                    itemCount: _game.gameImg!.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 8,
                                      crossAxisSpacing: 0.0,
                                      mainAxisSpacing: 0.0,
                                    ),
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          print(_game.matchCheck);
                                          setState(() {
                                            //incrementing the clicks
                                            tries++;
                                            _game.gameImg![index] =
                                                _game.cards_list[index];
                                            _game.matchCheck.add({
                                              index: _game.cards_list[index]
                                            });
                                            print(_game.matchCheck.first);
                                          });
                                          if (_game.matchCheck.length == 2) {
                                            if (_game.matchCheck[0].values
                                                    .first ==
                                                _game.matchCheck[1].values
                                                    .first) {
                                              print("true");
                                              //incrementing the score
                                              score += 30;
                                              _game.matchCheck.clear();
                                            } else {
                                              print("false");

                                              Future.delayed(
                                                  Duration(milliseconds: 200),
                                                  () {
                                                print(_game.gameColors);
                                                setState(() {
                                                  _game.gameImg![_game
                                                          .matchCheck[0]
                                                          .keys
                                                          .first] =
                                                      _game.hiddenCardpath;
                                                  _game.gameImg![_game
                                                          .matchCheck[1]
                                                          .keys
                                                          .first] =
                                                      _game.hiddenCardpath;
                                                  _game.matchCheck.clear();
                                                });
                                              });
                                            }
                                          }
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(1.0),
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  _game.gameImg![index]),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 20),
                      child: Row(
                        children: [
                          //mesa 2
                          SizedBox(
                            width: 310,
                            height: 100,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: GridView.builder(
                                  itemCount: _game.gameImg!.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 8,
                                    crossAxisSpacing: 0.0,
                                    mainAxisSpacing: 0.0,
                                  ),
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        print(_game.matchCheck);
                                        setState(() {
                                          //incrementing the clicks
                                          tries++;
                                          _game.gameImg![index] =
                                              _game.cards_list[index];
                                          _game.matchCheck.add(
                                              {index: _game.cards_list[index]});
                                          print(_game.matchCheck.first);
                                        });
                                        if (_game.matchCheck.length == 2) {
                                          if (_game
                                                  .matchCheck[0].values.first ==
                                              _game
                                                  .matchCheck[1].values.first) {
                                            print("true");
                                            //incrementing the score
                                            score += 30;
                                            _game.matchCheck.clear();
                                          } else {
                                            print("false");

                                            Future.delayed(
                                                Duration(milliseconds: 200),
                                                () {
                                              print(_game.gameColors);
                                              setState(() {
                                                _game.gameImg![_game
                                                        .matchCheck[0]
                                                        .keys
                                                        .first] =
                                                    _game.hiddenCardpath;
                                                _game.gameImg![_game
                                                        .matchCheck[1]
                                                        .keys
                                                        .first] =
                                                    _game.hiddenCardpath;
                                                _game.matchCheck.clear();
                                              });
                                            });
                                          }
                                        }
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(1.0),
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                _game.gameImg![index]),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                //mesa 3
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 215),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 310,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: GridView.builder(
                              itemCount: _game.gameImg!.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 8,
                                crossAxisSpacing: 0.0,
                                mainAxisSpacing: 0.0,
                              ),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    print(_game.matchCheck);
                                    setState(() {
                                      //incrementing the clicks
                                      tries++;
                                      _game.gameImg![index] =
                                          _game.cards_list[index];
                                      _game.matchCheck.add(
                                          {index: _game.cards_list[index]});
                                      print(_game.matchCheck.first);
                                    });
                                    if (_game.matchCheck.length == 2) {
                                      if (_game.matchCheck[0].values.first ==
                                          _game.matchCheck[1].values.first) {
                                        print("true");
                                        //incrementing the score
                                        score += 30;
                                        _game.matchCheck.clear();
                                      } else {
                                        print("false");

                                        Future.delayed(
                                            Duration(milliseconds: 200), () {
                                          print(_game.gameColors);
                                          setState(() {
                                            _game.gameImg![_game
                                                .matchCheck[0]
                                                .keys
                                                .first] = _game.hiddenCardpath;
                                            _game.gameImg![_game
                                                .matchCheck[1]
                                                .keys
                                                .first] = _game.hiddenCardpath;
                                            _game.matchCheck.clear();
                                          });
                                        });
                                      }
                                    }
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(1.0),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                        image:
                                            AssetImage(_game.gameImg![index]),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                      //mesa 4
                      SizedBox(
                        width: 310,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: GridView.builder(
                              itemCount: _game.gameImg!.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 8,
                                crossAxisSpacing: 0.0,
                                mainAxisSpacing: 0.0,
                              ),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    print(_game.matchCheck);
                                    setState(() {
                                      //incrementing the clicks
                                      tries++;
                                      _game.gameImg![index] =
                                          _game.cards_list[index];
                                      _game.matchCheck.add(
                                          {index: _game.cards_list[index]});
                                      print(_game.matchCheck.first);
                                    });
                                    if (_game.matchCheck.length == 2) {
                                      if (_game.matchCheck[0].values.first ==
                                          _game.matchCheck[1].values.first) {
                                        print("true");
                                        //incrementing the score
                                        score += 30;
                                        _game.matchCheck.clear();
                                      } else {
                                        print("false");

                                        Future.delayed(
                                            Duration(milliseconds: 200), () {
                                          print(_game.gameColors);
                                          setState(() {
                                            _game.gameImg![_game
                                                .matchCheck[0]
                                                .keys
                                                .first] = _game.hiddenCardpath;
                                            _game.gameImg![_game
                                                .matchCheck[1]
                                                .keys
                                                .first] = _game.hiddenCardpath;
                                            _game.matchCheck.clear();
                                          });
                                        });
                                      }
                                    }
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(1.0),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                        image:
                                            AssetImage(_game.gameImg![index]),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
