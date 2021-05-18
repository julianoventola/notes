import 'package:flutter/material.dart';

class CreateNotePage extends StatefulWidget {
  const CreateNotePage({Key? key}) : super(key: key);

  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  var _description = '';
  var _inputController = TextEditingController();
  var _isEdit = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (ModalRoute.of(context)!.settings.arguments != null) {
        _description = ModalRoute.of(context)!.settings.arguments as String;
        _inputController.text = _description;
        _isEdit = true;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('${_isEdit ? 'Editar' : 'Criar'} nota'),
          actions: [
            if (_isEdit)
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  Navigator.pop(context, '');
                },
              )
          ]),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _inputController,
              maxLines: null,
              maxLength: 400,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Descrição',
              ),
              onChanged: (value) {
                _description = value;
                setState(() {});
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            if (_description.isNotEmpty)
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, _description);
                  },
                  child: Text('Salvar'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
