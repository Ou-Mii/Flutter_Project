import 'package:flutter/material.dart';

class Calculatrice extends StatefulWidget {
  const Calculatrice({super.key, required String title});

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  String _number = "0";
  bool _isImageVisible = false;

  _updatenumber(String nb) {
    setState(() {
      _number = nb;
    });
  }

  Widget _buildNumberButton(String text) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: const Color(0xFFF4A7B9),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: TextButton(
        onPressed: () => _updatenumber(text),
        child: Text(text),
      ),
    );
  }

  void _toggleImageVisibility() {
    setState(() {
      _isImageVisible = !_isImageVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF4A7B9),
        title: const Text("Oumii's Calculator"),
      ),
      backgroundColor: const Color(0xFFFFD2E4),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_isImageVisible)
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assets/pinkbutterfly.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text("\n\n\n\n\n\n"),
                      _buildNumberButton('1'),
                      _buildNumberButton('4'),
                      _buildNumberButton('7'),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("\n\n\n\n\n\n"),
                      _buildNumberButton('2'),
                      _buildNumberButton('5'),
                      _buildNumberButton('8'),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("\n\n\n\n\n\n"),
                      _buildNumberButton('3'),
                      _buildNumberButton('6'),
                      _buildNumberButton('9'),
                    ],
                  ),
                ],
              ),
            ),
            _buildNumberButton('0'),
            Text(_number,
                style: const TextStyle(
                  fontSize: 50,
                  color: Color(0xFFE35FA8),
                )),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(right: 20.0, bottom: 20.0),
        child: FloatingActionButton(
          onPressed: () {
            _toggleImageVisibility();
          },
          backgroundColor: const Color(0xFFF4A7B9),
          child: const Icon(
            Icons.cloud,
            size: 36.0,
            color: Color(0xFFE35FA8),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Calculatrice(title: "Ma Calculatrice"),
  ));
}
