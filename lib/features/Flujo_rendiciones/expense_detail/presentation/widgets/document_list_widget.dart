import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';

import '../../../document_detail/presentation/pages/document_detail_page.dart';
import '../../domain/entities/sub_document_resume_list_entitie.dart';
import '../bloc/expense_detail_bloc.dart';
import '../pages/expense_detail_page.dart';
import 'information_title_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class DocumentListWidget extends StatelessWidget {
  const DocumentListWidget({
    Key? key,
    required this.refreshController,
    required this.items,
  }) : super(key: key);

  final RefreshController refreshController;
  final SubDocumentResumeListEntitie items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Documentos Ingresados (${items.data.length})'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.67,
            child: SmartRefresher(
              enablePullUp: true,
              enablePullDown: false,
              onLoading: () {
                BlocProvider.of<ExpenseDetailBloc>(
                  context,
                  listen: false,
                ).add(LoadMoreItemsEvent());
              },
              footer: CustomFooter(
                builder: (BuildContext context, mode) {
                  Widget body;

                  if (mode == LoadStatus.idle) {
                    body = const Text('Cargar más');
                  } else if (mode == LoadStatus.loading) {
                    body = const CircularProgressIndicator();
                  } else if (mode == LoadStatus.canLoading) {
                    body = const Text("Soltar para cargar más");
                  } else {
                    body = const Text('No hay más información');
                  }

                  return SizedBox(
                    height: 55,
                    child: Center(
                      child: body,
                    ),
                  );
                },
              ),
              controller: refreshController,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(0),
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DocumentDetailPage();
                            },
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          const Divider(
                            thickness: 1,
                            color: customBlue,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      InformationTitleWidget(
                                        title: 'Posición',
                                        info: (index + 1).toString(),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                      InformationTitleWidget(
                                        title: 'N° de Documento',
                                        info: items
                                            .data[index].subDocument.number
                                            .toString(),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      InformationTitleWidget(
                                        title: 'Monto',
                                        info: items
                                            .data[index].subDocument.amount
                                            .toString(),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                      InformationTitleWidget(
                                        title: 'Tipo Documento',
                                        info:
                                            items.data[index].subDocument.type,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: customBlue,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: items.data.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
