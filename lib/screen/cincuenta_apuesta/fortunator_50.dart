import 'package:flutter/material.dart';
import 'package:fortunators/screen/cincuenta_apuesta/utils/game_utils.dart';
import 'package:fortunators/screen/components/info_card.dart';
import 'package:fortunators/screen/treinta_apuesta/utils/game_utils.dart';

class GameCincuentaPage extends StatefulWidget {
  const GameCincuentaPage({Key? key}) : super(key: key);

  @override
  State<GameCincuentaPage> createState() => _GameCincuentaPageState();
}

class _GameCincuentaPageState extends State<GameCincuentaPage> {
  //setting text style
  TextStyle whiteText = TextStyle(color: Colors.white);
  bool hideTest = false;
  GameCincuenta _game = GameCincuenta();

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
        width: MediaQuery.of(context).size.width * 10,
        height: MediaQuery.of(context).size.height * 10,
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
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //info_card("Tries", "$tries"),
                    info_card("Creditos", "$score"),
                  ],
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      itemCount: _game.gameImg!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 8,
                        crossAxisSpacing: 14.0,
                        mainAxisSpacing: 16.0,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 90, vertical: 50),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            print(_game.matchCheck);
                            setState(() {
                              //incrementing the clicks
                              tries++;
                              _game.gameImg![index] = _game.cards_list[index];
                              _game.matchCheck
                                  .add({index: _game.cards_list[index]});
                              print(_game.matchCheck.first);
                            });
                            if (_game.matchCheck.length == 2) {
                              if (_game.matchCheck[0].values.first ==
                                  _game.matchCheck[1].values.first) {
                                print("true");
                                //incrementing the score
                                score += 50;
                                _game.matchCheck.clear();
                              } else {
                                print("false");

                                Future.delayed(Duration(milliseconds: 500), () {
                                  print(_game.gameColors);
                                  setState(() {
                                    _game.gameImg![_game.matchCheck[0].keys
                                        .first] = _game.hiddenCardpath;
                                    _game.gameImg![_game.matchCheck[1].keys
                                        .first] = _game.hiddenCardpath;
                                    _game.matchCheck.clear();
                                  });
                                });
                              }
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(36.0),
                            decoration: BoxDecoration(
                              color: Color(0xFFE30000),
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(_game.gameImg![index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
