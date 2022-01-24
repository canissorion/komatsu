import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kcc_mobile_app/injection_container.dart';

import '../../../../core/utils/komatsu_colors.dart';
import '../bloc/listado_solicitudes_bloc.dart';

class QuickActionBottomSheet extends StatelessWidget {
  QuickActionBottomSheet({Key? key, required this.state}) : super(key: key);
  final DateTimeRange dateRange =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());
  final PendingItemsState state;

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

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext buildContext) {
        return BlocProvider.value(
          value: BlocProvider.of<PendingItemsBloc>(context),
          child: BlocBuilder<PendingItemsBloc, PendingItemsState>(
            builder: (context, state) {
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
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Selecione un rango de fechas",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 120,
                                                height: 30,
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: customBlue,
                                                  ),
                                                  onPressed: () {
                                                    BottomPicker.date(
                                                      title: "Fecha inicio",
                                                      initialDateTime:
                                                          state.startDate,
                                                      buttonSingleColor:
                                                          customBlue,
                                                      titleStyle:
                                                          const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color: customBlue,
                                                      ),
                                                      onSubmit: (index) {
                                                        BlocProvider.of<
                                                            PendingItemsBloc>(
                                                          context,
                                                          listen: false,
                                                        ).add(
                                                          ChangeDateStartEvent(
                                                            index as DateTime,
                                                          ),
                                                        );
                                                      },
                                                    ).show(context);
                                                  },
                                                  child: Text(
                                                    DateFormat('dd/MM/yyyy')
                                                        .format(
                                                            state.startDate!),
                                                  ),
                                                ),
                                              ),
                                              const Text(
                                                " - ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 120,
                                                height: 30,
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: customBlue,
                                                  ),
                                                  onPressed: () {
                                                    BottomPicker.date(
                                                      title: "Fecha termino",
                                                      initialDateTime:
                                                          state.endDate,
                                                      buttonSingleColor:
                                                          customBlue,
                                                      titleStyle:
                                                          const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color: customBlue,
                                                      ),
                                                      onSubmit: (index) {
                                                        BlocProvider.of<
                                                            PendingItemsBloc>(
                                                          context,
                                                          listen: false,
                                                        ).add(
                                                          ChangeDateEndEvent(
                                                            index as DateTime,
                                                          ),
                                                        );
                                                      },
                                                    ).show(context);
                                                  },
                                                  child: Text(
                                                    DateFormat('dd/MM/yyyy')
                                                        .format(state.endDate!),
                                                  ),
                                                ),
                                              ),
                                            ],
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

  const _QuickActionWidget(
      {Key? key, required this.iconData, required this.actionText})
      : super(key: key);

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
