import 'package:equatable/equatable.dart';

class ExpenseResumeEntitie extends Equatable {
  const ExpenseResumeEntitie({
    required this.expense,
    required this.iva,
    required this.retention,
    required this.vouchers,
    required this.workerBalance,
  });

  final int expense;
  final int iva;
  final int retention;
  final int vouchers;
  final int workerBalance;

  @override
  List<Object?> get props => [expense, iva, retention, vouchers, workerBalance];
}
