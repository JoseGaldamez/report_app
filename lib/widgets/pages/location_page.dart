import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reportes/provider/pagination_provider.dart';

import '../components/location_selector.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Ubicación",
          style: TextStyle(fontSize: 20),
        ),
        const Expanded(child: LocationSelector()),
        Container(
          padding: const EdgeInsets.all(50),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<PaginationProvider>().previousPage();
                  },
                  child: const Text("Anterior")),
              ElevatedButton(
                  onPressed: () {
                    context.read<PaginationProvider>().nextPage();
                  },
                  child: const Text("Siguiente")),
            ],
          ),
        )
      ],
    );
  }
}
