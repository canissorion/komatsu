// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import 'package:kcc_mobile_app/features/funds_flow/funds_form/presentation/widgets/funds_form_currency_funds_widget.dart';

import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../../domain/entities/funds_form_entitie.dart';
import '../bloc/funds_form_bloc.dart';
import '../widgets/funds_form_details_widget.dart';
import '../widgets/funds_form_header_widget.dart';

class FundsFormPage extends StatelessWidget {
  const FundsFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FundsFormBloc>(),
      child: Scaffold(
        appBar: AppBarWidget(),
        drawer: const DrawerWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<FundsFormBloc, FundsFormState>(
                builder: (context, state) {
                  if (state is Empty) {
                    BlocProvider.of<FundsFormBloc>(
                      context,
                      listen: false,
                    ).add(GetFundsFormEvent());
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.75,
                      child: const Center(
                        child: Text('No hay Información'),
                      ),
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
                    final FundsFormEntitie fundsForm = state.fundsForm!;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const FundsFormHeaderTitleWidget(),
                        const SizedBox(
                          height: 20,
                        ),
                        FundsFormDetailWidget(
                          fundsForm: fundsForm,
                          mark: state.mark!,
                        )
                      ],
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
