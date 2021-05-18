import 'package:flutter/material.dart';

class CreateNotePage extends StatelessWidget {
  const CreateNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Create/Edit Note'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              maxLines: null,
              maxLength: 400,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
