import 'package:flutter/material.dart';

class poem_details extends StatefulWidget {
  Map poem = {};
  poem_details(this.poem);

  @override
  State<poem_details> createState() => _poem_detailsState();
}

class _poem_detailsState extends State<poem_details> {
  @override
  Widget build(BuildContext context) {
    print(widget.poem);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          widget.poem["title"],
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.poem["title"],
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1.0,
                indent: 2.0,
                endIndent: 20.0,
                height: 20.0,
              ),
              Text(
                widget.poem["author"],
                style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
              ),
              Text(
                '"${widget.poem["poem"]}"',
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
              SizedBox(height: 25.0),
              Text(
                '${widget.poem["description"]}',
                style: TextStyle(fontSize: 13.0, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
