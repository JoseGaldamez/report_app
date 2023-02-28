import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/report_provider.dart';
import '../../service/location_service.dart';

class LocationSelector extends StatefulWidget {
  const LocationSelector({super.key});

  @override
  State<LocationSelector> createState() => _LocationSelectorState();
}

class _LocationSelectorState extends State<LocationSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            context.watch<ReportProvider>().position != null
                ? Column(
                    children: [
                      Text(
                          'Longitud: ${context.watch<ReportProvider>().position?.longitude}'),
                      Text(
                          'Latitud: ${context.watch<ReportProvider>().position?.latitude}'),
                    ],
                  )
                : const SizedBox.shrink(),
            ElevatedButton(
                onPressed: () async {
                  // get location
                  final position = await getPosition();
                  // set location
                  // ignore: use_build_context_synchronously
                  context.read<ReportProvider>().setPosition(position);
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.location_on),
                      Text('Ubicación actual'),
                    ],
                  ),
                ))
          ],
        ));
  }
}
