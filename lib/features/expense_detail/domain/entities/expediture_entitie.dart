class ExpeditureEntitie {
  const ExpeditureEntitie({
    required this.reason,
    required this.amount,
    required this.taxes,
    required this.retentionAmount,
    required this.vales,
    required this.balancePayable,
  });

  final String reason;
  final double amount;
  final double taxes;
  final int retentionAmount;
  final int vales;
  final double balancePayable;

  @override
  List<Object?> get props =>
      [reason, amount, taxes, retentionAmount, vales, balancePayable];
}
