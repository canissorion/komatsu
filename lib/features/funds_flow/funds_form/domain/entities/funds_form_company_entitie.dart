import 'package:equatable/equatable.dart';

class CompanyEntite extends Equatable {
  const CompanyEntite({
    required this.code,
    required this.name,
  });

  final String code;
  final String name;

  @override
  // TODO: implement props
  List<Object?> get props => [code, name];
}
