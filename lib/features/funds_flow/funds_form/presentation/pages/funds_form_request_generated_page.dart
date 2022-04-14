// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/komatsu_colors.dart';
import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../bloc/funds_form_bloc.dart';
import '../widgets/funds_form_request_generated_widget.dart';

class RequestGeneratedPage extends StatelessWidget {
  const RequestGeneratedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FundsFormBloc>(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: customBlue,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 50,
          ),
        ),
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
                    return const RequestGenerated();
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
