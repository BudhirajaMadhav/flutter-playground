import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({Key? key}) : super(key: key);

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  late int count;
  @override
  void initState() {
    // TODO: implement initState
    count = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
      body: Text("The count is $count"),
    );
  }
}
