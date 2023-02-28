import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/report_provider.dart';

class ResumenInformation extends StatelessWidget {
  const ResumenInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Imagenes: ${context.watch<ReportProvider>().images.length}'),
        Text('Location: ${context.watch<ReportProvider>().position}'),
        Text('Observaciones: ${context.watch<ReportProvider>().comment}'),
      ],
    ));
  }
}
