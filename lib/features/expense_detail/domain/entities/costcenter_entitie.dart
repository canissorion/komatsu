class CostCenterEntitie {
  const CostCenterEntitie({
    required this.code,
    required this.name,
  });

  final int code;
  final String name;

  @override
  List<Object?> get props => [code, name];
}
