import 'package:equatable/equatable.dart';

class PaginationEntitie extends Equatable {
  final String pageNumber;
  final String pageSize;
  final int totalRecords;

  PaginationEntitie({
    required this.pageNumber,
    required this.pageSize,
    required this.totalRecords,
  });

  @override
  List<Object?> get props => [pageNumber, pageSize, totalRecords];
}
