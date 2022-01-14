import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/appbar_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/presentation/widgets/appbar_widget.dart';
import '../../../../core/presentation/widgets/drawer_widget.dart';
import '../../../../core/utils/komatsu_colors.dart';
import '../../../../shared/presentation/widgets/drawer_widget.dart';
import '../../../detalle_documento/presentation/pages/detalle_documento_page.dart';

class RendicionesPendientesPage extends StatelessWidget {
  const RendicionesPendientesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> _tabs = {
      0: const Text('Todos'),
      1: const Text('Nuevos'),
      2: const Padding(
        padding: EdgeInsets.all(8),
        child: Text('En Tratamiento'),
      )
    };
    final items = List.filled(10, []);
    final RefreshController _refreshController = RefreshController();

    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              'Rendiciones pendientes \nde aprobación',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          CupertinoSegmentedControl(
            children: _tabs,
            padding: const EdgeInsets.all(15),
            onValueChanged: (i) {},
            borderColor: customAccentBlue,
            selectedColor: customAccentBlue,
          ),
          const Placeholder(
            fallbackHeight: 30,
          ),
          SizedBox(
            height: 460,
            child: SmartRefresher(
              enablePullUp: true,
              footer: CustomFooter(
                builder: (BuildContext context, mode) {
                  Widget body;
                  body = const Text('Cargar más');
                  return SizedBox(
                    height: 55,
                    child: Center(
                      child: body,
                    ),
                  );
                },
              ),
              enablePullDown: false,
              controller: _refreshController,
              child: ListView.builder(
                itemBuilder: (context, i) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const DetalleDocumentoPage();
                          },
                        ),
                      );
                    },
                    child: const Placeholder(
                      fallbackHeight: 60,
                    ),
                  ),
                ),
                itemCount: items.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
