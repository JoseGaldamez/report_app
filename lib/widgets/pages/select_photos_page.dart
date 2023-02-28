import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reportes/provider/pagination_provider.dart';
import 'package:reportes/provider/report_provider.dart';
import 'package:reportes/service/image_picker.dart';

import '../components/list_images.dart';

class SelectPhotosPage extends StatefulWidget {
  const SelectPhotosPage({super.key});

  @override
  State<SelectPhotosPage> createState() => _SelectPhotosPageState();
}

class _SelectPhotosPageState extends State<SelectPhotosPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 50,
      ),
      Text(
        "Fotos seleccionadas: ${context.watch<ReportProvider>().images.length}",
        style: const TextStyle(fontSize: 20),
      ),
      const Expanded(child: ListImages()),
      ElevatedButton(
        onPressed: () async {
          selectImageFromCamera().then((image) {
            if (image != null) {
              context.read<ReportProvider>().addImage(image);
            }
          });
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.camera_alt),
              Text('Tomar foto'),
            ],
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(50),
        width: double.infinity,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ElevatedButton(onPressed: () {}, child: const Text("Cancelar")),
          ElevatedButton(
              onPressed: () {
                context.read<PaginationProvider>().nextPage();
              },
              child: const Text("Siguiente")),
        ]),
      )
    ]);
  }
}
