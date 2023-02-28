import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reportes/provider/pagination_provider.dart';

class ApplicationScreen extends StatefulWidget {
  const ApplicationScreen({
    super.key,
  });

  @override
  State<ApplicationScreen> createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reportes'),
      ),
      body: context.watch<PaginationProvider>().currentPageWidget,
    );
  }
}
