import 'package:flutter/material.dart';
import 'package:notes/create_note_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _notes = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('NOTES'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var _newNote = await Navigator.pushNamed(context, '/create-note');
          if (_newNote != null) {
            _notes.add(_newNote as String);
            setState(() {});
          }
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: _notes.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(_notes[index]),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
