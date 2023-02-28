import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reportes/provider/providers.dart';

import '../components/add_comment.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({super.key});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Comentarios",
            style: TextStyle(fontSize: 20),
          ),
          const AddComment(),
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
      ),
    );
  }
}
