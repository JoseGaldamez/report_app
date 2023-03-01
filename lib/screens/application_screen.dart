import 'package:flutter/material.dart';

import '../service/firebase_services.dart';
import '../widgets/components/list_reports.dart';

class ApplicationScreen extends StatefulWidget {
  const ApplicationScreen({
    super.key,
  });

  @override
  State<ApplicationScreen> createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen> {
  bool reportsCount = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reportes'),
      ),
      body: FutureBuilder(
          future: getReports(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListOfReports(reports: snapshot.data!);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final created = await Navigator.pushNamed(context, 'create_report');
          if (created == true) {
            // ignore: use_build_context_synchronously
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Reporte creado'),
              ),
            );
            setState(() {});
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
