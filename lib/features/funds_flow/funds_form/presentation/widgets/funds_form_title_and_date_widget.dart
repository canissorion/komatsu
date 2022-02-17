import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../../core/utils/komatsu_colors.dart';
import '../bloc/funds_form_bloc.dart';

class TitleAndDateWidget extends StatelessWidget {
  const TitleAndDateWidget({Key? key, required this.title, this.titleColor})
      : super(key: key);

  final String title;
  final Color? titleColor;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<FundsFormBloc>(context),
      child: BlocBuilder<FundsFormBloc, FundsFormState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  //fontWeight: FontWeight.w500,
                  color: titleColor ?? Colors.grey[800],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                ),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.7,
                child: InputDecorator(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {
                      BottomPicker.date(
                        title: "Fecha",
                        initialDateTime: state.date,
                        buttonSingleColor: customBlue,
                        titleStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: customBlue,
                        ),
                        onSubmit: (index) {
                          BlocProvider.of<FundsFormBloc>(
                            context,
                            listen: false,
                          ).add(
                            ChangeDateStartEvent(
                              index as DateTime,
                            ),
                          );
                        },
                      ).show(context);
                    },
                    child: Text(
                      DateFormat('dd/MM/yyyy').format(state.date!),
                      style: TextStyle(color: Colors.grey[600], fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
