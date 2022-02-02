import 'package:equatable/equatable.dart';

class PaginationEntitie extends Equatable {
  const PaginationEntitie({
    required this.pageNumber,
    required this.pageSize,
    required this.totalRecords,
  });

  final String pageNumber;
  final String pageSize;
  final int totalRecords;

  @override
  List<Object?> get props => [pageNumber, pageSize, totalRecords];
}
