// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reportes/provider/pagination_provider.dart';
import 'package:reportes/service/firebase_services.dart';
import '../../provider/report_provider.dart';
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
            onPressed: () async {
              // finish report
              final imagesUploaded =
                  await uploadImages(context.read<ReportProvider>().images);
              if (imagesUploaded != null) {
                final reportCreated = await createReport(
                  imagesUploaded,
                  context.read<ReportProvider>().position!,
                  context.read<ReportProvider>().comment,
                );

                if (reportCreated) {
                  context.read<ReportProvider>().clearImages();
                  context.read<ReportProvider>().setPosition(null);
                  context.read<ReportProvider>().setComment('');
                  context.read<PaginationProvider>().initPagination();

                  Navigator.pop(context, true);
                }
              }
            },
            child: const Text('Guardar reporte'),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<PaginationProvider>().previousPage();
            },
            child: const Text('Volver'),
          ),
        ],
      ),
    );
  }
}
