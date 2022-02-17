import 'package:flutter/material.dart';
import '../../../../core/utils/komatsu_colors.dart';
import '../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../shared/presentation/widgets/drawer_widget.dart';

class SubDocumentSelectorListPage extends StatelessWidget {
  const SubDocumentSelectorListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      backgroundColor: customBlue,
      body: Column(
        children: [],
      ),
    );
  }
}
