import 'package:flutter/material.dart';
import 'package:reportes/models/report_model.dart';

class ListOfReports extends StatefulWidget {
  final List<ReportModel> reports;
  const ListOfReports({super.key, required this.reports});

  @override
  State<ListOfReports> createState() => _ListOfReportsState();
}

class _ListOfReportsState extends State<ListOfReports> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(widget.reports[index].comment),
          subtitle: Text(
              'Ubicación: ${widget.reports[index].location.latitude}, ${widget.reports[index].location.longitude}'),
        );
      },
      itemCount: widget.reports.length,
    );
  }
}
