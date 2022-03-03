import 'package:flutter/material.dart';

class LoginMicrosoftButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: const Color.fromRGBO(255, 255, 255, 1),
        border: Border.all(
          color: const Color.fromRGBO(91, 95, 199, 1),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 16,
            left: 7.5,
            child: Container(
              decoration: const BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 1.6666667461395264,
                          left: 1.6666667461395264,
                          child: Container(
                            width: 7.916666030883789,
                            height: 7.916666030883789,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(242, 80, 34, 1),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 1.6666667461395264,
                          left: 10.416666030883789,
                          child: Container(
                            width: 7.916667938232422,
                            height: 7.916666030883789,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(128, 185, 0, 1),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10.416666030883789,
                          left: 10.416666030883789,
                          child: Container(
                            width: 7.916667938232422,
                            height: 7.916667938232422,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 185, 1, 1),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10.416666030883789,
                          left: 1.6666667461395264,
                          child: Container(
                            width: 7.916666030883789,
                            height: 7.916667938232422,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(1, 163, 239, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Iniciar sesion con Microsoft',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(91, 95, 199, 1),
                      fontFamily: 'Arial',
                      fontSize: 15,
                      letterSpacing: -0.23999999463558197,
                      fontWeight: FontWeight.normal,
                      height: 1.3333333333333333,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
