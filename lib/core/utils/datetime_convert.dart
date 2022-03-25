import 'package:intl/intl.dart';

String dateTimeConverter(int timestamp) {
  final DateTime fecha = DateTime.fromMillisecondsSinceEpoch(timestamp);
  final String formatedate = DateFormat('dd-MM-yyy HH:MM').format(fecha);
  return formatedate;
}
