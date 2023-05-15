import 'package:flutter/material.dart';

class ProgressLoading extends StatelessWidget {
  final Image? image;
  const ProgressLoading({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 330, 0, 0),
        child: Container(
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  width: 26.0,
                ),
                Image.asset(
                  'assets/images/loading.png',
                ),
                const SizedBox(
                  width: 6.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment(0, 0),
                        child: Image.asset(
                          'assets/images/nube.png',
                        ),
                      ),
                      Align(
                        child: Image.asset(
                          'assets/images/movilpreparate.png',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
