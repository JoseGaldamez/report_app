import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reportes/provider/report_provider.dart';

class ListImages extends StatefulWidget {
  const ListImages({super.key});

  @override
  State<ListImages> createState() => _ListImagesState();
}

class _ListImagesState extends State<ListImages> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: _getListImages(context.watch<ReportProvider>().images),
      ),
    );
  }

  List<Widget> _getListImages(List<File> images) {
    if (images.isEmpty) {
      return [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Center(child: Text("No hay imagenes")))
      ];
    }

    List<Widget> list = [];
    for (var image in images) {
      list.add(Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Image.file(image)));
    }

    return list.reversed.toList();
  }
}
