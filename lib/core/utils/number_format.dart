import 'package:intl/intl.dart';

String numberFormat(int number) {
  final f = NumberFormat("###,###.###", "tr_TR");
  final numberFormat = f.format(number);
  return numberFormat;
}
