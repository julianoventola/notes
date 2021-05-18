import 'package:flutter/material.dart';

class CreateNotePage extends StatefulWidget {
  const CreateNotePage({Key? key}) : super(key: key);

  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  var _description = '';
  var _inputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (ModalRoute.of(context)!.settings.arguments != null) {
        _description = ModalRoute.of(context)!.settings.arguments as String;
        _inputController.text = _description;
      }
    });
  }

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
              controller: _inputController,
              maxLines: null,
              maxLength: 400,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                _description = value;
                setState(() {});
              },
            ),
            if (_description.isNotEmpty)
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, _description);
                },
                child: Text('Salvar'),
              ),
          ],
        ),
      ),
    );
  }
}
