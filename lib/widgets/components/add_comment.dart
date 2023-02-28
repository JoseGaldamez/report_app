import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/providers.dart';

class AddComment extends StatefulWidget {
  const AddComment({super.key});

  @override
  State<AddComment> createState() => _AddCommentState();
}

class _AddCommentState extends State<AddComment> {
  final TextEditingController _controllerComment = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          margin: const EdgeInsets.only(top: 30.0),
          padding: const EdgeInsets.all(30.0),
          child: context.watch<ReportProvider>().comment == ''
              ? Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _controllerComment,
                    maxLines: 10,
                    decoration: const InputDecoration(
                        hintText: 'Maximo 264 caracteres',
                        border: InputBorder.none),
                  ),
                )
              : Center(
                  child: Text(
                    context.watch<ReportProvider>().comment,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<ReportProvider>().setComment(_controllerComment.text);
          },
          child: const Text('Agregar comentario'),
        ),
      ],
    );
  }
}
