import 'package:flutter/material.dart';

class PendingsBox extends StatelessWidget {
  const PendingsBox({
    Key? key,
    required this.gradientOne,
    required this.gradientTwo,
    required this.text,
    this.textColor,
    this.numberColor,
  }) : super(key: key);
  final Color gradientOne;
  final Color gradientTwo;
  final String text;
  final Color? textColor;
  final Color? numberColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 80,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              width: 160,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                gradient: LinearGradient(
                  begin:
                      const Alignment(-0.835480809211731, -0.2061576098203659),
                  end:
                      const Alignment(0.2061576098203659, -0.20887020230293274),
                  colors: [gradientOne, gradientTwo],
                ),
              ),
            ),
          ),
          Positioned(
            top: 45,
            left: 125,
            child: SizedBox(
              width: 25,
              height: 25,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(25, 25)),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 3,
                    left: 8,
                    child: Text(
                      '8',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: numberColor ??
                            const Color.fromRGBO(
                              45,
                              179,
                              152,
                              1,
                            ),
                        fontFamily: 'SF Pro Text',
                        fontSize: 13,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.3846153846153846,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 15,
            left: 15,
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: textColor ?? const Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'SF Pro Text',
                fontSize: 20,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1.3333333333333333,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
