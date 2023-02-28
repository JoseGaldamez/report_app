import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reportes/provider/pagination_provider.dart';
import '../components/resume_information.dart';

class ResumenPage extends StatefulWidget {
  const ResumenPage({super.key});

  @override
  State<ResumenPage> createState() => _ResumenPageState();
}

class _ResumenPageState extends State<ResumenPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: const ResumenInformation(),
          ),
          ElevatedButton(
            onPressed: () {
              // finish report
            },
            child: const Text('Guardar reporte'),
          ),
          ElevatedButton(
            onPressed: () {
              // finish report
              context.read<PaginationProvider>().previousPage();
            },
            child: const Text('Volver'),
          ),
        ],
      ),
    );
  }
}
