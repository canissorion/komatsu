import 'package:flutter/material.dart';
import '../../../../core/utils/komatsu_colors.dart';

class QuickActionBottomSheet extends StatefulWidget {
  const QuickActionBottomSheet({Key? key}) : super(key: key);
  @override
  _QuickActionBottomSheetState createState() => _QuickActionBottomSheetState();
}

class _QuickActionBottomSheetState extends State<QuickActionBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _showBottomSheet(context);
      },
      icon: const Icon(
        Icons.filter_alt,
        size: 20,
      ),
      color: customBlue,
    );
  }

  void _showBottomSheet(context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: this.context,
      builder: (BuildContext buildContext) {
        return Container(
          color: Colors.transparent,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    "Seleccione una opción",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    child: Column(
                      children: <Widget>[
                        Column(
                          children: [
                            Row(
                              children: const <Widget>[
                                Expanded(
                                  child: _QuickActionWidget(
                                    iconData: Icons.phone_outlined,
                                    actionText: 'Lorem',
                                  ),
                                ),
                                Expanded(
                                  child: _QuickActionWidget(
                                    iconData: Icons.phone_outlined,
                                    actionText: 'Lorem',
                                  ),
                                ),
                                Expanded(
                                  child: _QuickActionWidget(
                                    iconData: Icons.phone_outlined,
                                    actionText: 'Lorem',
                                  ),
                                ),
                                Expanded(
                                  child: _QuickActionWidget(
                                    iconData: Icons.phone_outlined,
                                    actionText: 'Lorem',
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.calendar_today,
                                    color: customBlue,
                                    size: 30,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 15),
                                    child: const Placeholder(
                                      fallbackHeight: 30,
                                      fallbackWidth: 270,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.flash_on_outlined,
      size: 26,
      color: Colors.white,
    );
  }
}

class _QuickActionWidget extends StatelessWidget {
  final IconData iconData;
  final String actionText;

  const _QuickActionWidget({
    Key? key,
    required this.iconData,
    required this.actionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Material(
              color: themeData.colorScheme.primary.withAlpha(20),
              // button color
              child: InkWell(
                splashColor: themeData.colorScheme.primary.withAlpha(100),
                highlightColor: Colors.transparent,
                child: SizedBox(
                  width: 52,
                  height: 52,
                  child: Icon(
                    iconData,
                    color: themeData.colorScheme.primary,
                  ),
                ),
                onTap: () {
                  //print("${actionText}");
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              actionText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
