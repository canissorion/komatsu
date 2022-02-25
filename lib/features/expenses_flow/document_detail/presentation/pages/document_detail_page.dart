import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/komatsu_colors.dart';
import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../../../../../shared/presentation/widgets/header_title_widget.dart';
import '../bloc/document_detail_bloc.dart';
import '../widgets/concept_detail_widget.dart';
import '../widgets/document_type_detail_widget.dart';

class DocumentDetailPage extends StatelessWidget {
  const DocumentDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<DocumentDetailBloc>(),
      child: Scaffold(
        backgroundColor: customBlue,
        appBar: AppBarWidget(),
        drawer: const DrawerWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderTitleWidget(
                invoiceNumber: "4000088",
              ),
              BlocBuilder<DocumentDetailBloc, DocumentDetailState>(
                builder: (context, state) {
                  if (state is Empty) {
                    BlocProvider.of<DocumentDetailBloc>(
                      context,
                      listen: false,
                    ).add(GetDocumentDetailEvent());
                    return const Center(
                      child: Text('No hay Informacion'),
                    );
                  } else if (state is Error) {
                    return Center(
                      child: Text(state.errorMessage),
                    );
                  } else if (state is Loading) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Center(
                            child: CircularProgressIndicator(),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DocumentTypeDetailWidget(
                            documentDetail: state.documentDetail!,
                          ),
                          const Divider(
                            height: 40,
                            thickness: 3,
                            color: Colors.white,
                          ),
                          ConceptDetailWidget(
                            documentDetail: state.documentDetail!,
                          )
                        ],
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
