import 'package:flutter/material.dart';

class DateSelectorWidget extends StatelessWidget {
  const DateSelectorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime(2010),
          firstDate: DateTime(2010),
          lastDate: DateTime(2025),
          helpText: "SELECCIONAR FECHA",
          cancelText: "CANCELAR",
          confirmText: "GUARDAR",
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Fecha',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('01/31/2022'),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Center(
                        child: Icon(Icons.calendar_today),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
