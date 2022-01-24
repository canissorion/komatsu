import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/rendiciones_pendientes/presentation/bloc/listado_solicitudes_bloc.dart';
import 'bottom_sheet_widget.dart';

class SearchingBarWidget extends StatelessWidget {
  const SearchingBarWidget({
    Key? key,
    required this.state,
  }) : super(key: key);
  final PendingItemsState state;
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 400,
      height: 50,
      //margin: const EdgeInsets.all(20),
      color: Colors.grey[300],
      child: Container(
        //color: Colors.white,
        margin: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
          color: Colors.white,
        ),
        child: Row(
          children: [
            const Spacer(),
            Container(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                //child: Container(
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    iconColor: Colors.grey,
                    hintText: "Buscar",
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    isDense: true,
                  ),
                ),
                //  ),
              ),
            ),
            const VerticalDivider(),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 5),
              child: QuickActionBottomSheet(
                state: state,
              ),
            )
          ],
        ),
      ),
    );
  }
}
