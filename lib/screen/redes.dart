import 'package:flutter/material.dart';
import 'package:fortunators/home/home_widget.dart';
import 'package:fortunators/widgets/snap_bar.dart';

class RedesPage extends StatefulWidget {
  const RedesPage({Key? key}) : super(key: key);

  @override
  State<RedesPage> createState() => _RedesPageState();
}

class _RedesPageState extends State<RedesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 10,
        height: MediaQuery.of(context).size.height * 10,
        decoration: BoxDecoration(
          color: Color(0xFF14181B),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/fondo.png',
            ).image,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SnapBar(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Image.asset(
                    'assets/images/lado_izq.png',
                  ),
                  Image.asset(
                    'assets/images/nuestras.png',
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Image.asset(
                    'assets/images/lado_der.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 80,
                  icon: Image.asset(
                    'assets/images/face.png',
                  ),
                ),
                SizedBox(
                  width: 210,
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 80,
                  icon: Image.asset(
                    'assets/images/youtu.png',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Image.asset('assets/images/lado_red.png'),
                SizedBox(
                  width: 300,
                ),
                Image.asset('assets/images/lado_red.png'),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 80,
                  icon: Image.asset(
                    'assets/images/insta.png',
                  ),
                ),
                SizedBox(
                  width: 209,
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 80,
                  icon: Image.asset(
                    'assets/images/tiktok.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 280,
            ),
            Image.asset(
              'assets/images/explota.png',
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (c) => HomeWidget()));
                },
                child: Text(
                  'Volver Home',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE30000),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
