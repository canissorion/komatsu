import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';

class CustomTabBarWidget extends StatelessWidget {
  const CustomTabBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        right: 18,
        left: 18,
        bottom: 8,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.04,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[200],
          border: Border.all(color: customAccentBlue),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: customAccentBlue,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              color: customAccentBlue,
            ),
            tabs: [
              Tab(
                child: Align(
                  child: Text("Detalle"),
                ),
              ),
              Tab(
                child: Align(
                  child: Text("Documentos"),
                ),
              ),
              Tab(
                child: Align(
                  child: Text("Historial"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
