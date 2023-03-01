import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reportes/provider/pagination_provider.dart';

class CreateReportScreen extends StatefulWidget {
  const CreateReportScreen({
    super.key,
  });

  @override
  State<CreateReportScreen> createState() => _CreateReportScreenState();
}

class _CreateReportScreenState extends State<CreateReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear un reporte'),
      ),
      body: context.watch<PaginationProvider>().currentPageWidget,
    );
  }
}
