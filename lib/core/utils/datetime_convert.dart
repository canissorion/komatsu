import 'package:intl/intl.dart';

String dateTimeConverter(int timestamp) {
  final DateTime fecha = DateTime.fromMillisecondsSinceEpoch(timestamp);
  final String formatedate = DateFormat('dd-MM-yyy').format(fecha);
  return formatedate;
}
