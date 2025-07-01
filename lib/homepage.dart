import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<Homepage> {
  final TextEditingController _nameController = TextEditingController();

  String userPost = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Homepage')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //display text
            Expanded(
              child: Center(
                child: Text("Hello, ${userPost.isEmpty ? 'Guest' : userPost}!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            
            ),


            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your name",
                labelText: "Name",
                suffix: IconButton(onPressed: () {
                  _nameController.clear();
                  // setState(() {});
                }, icon: const Icon(Icons.clear)),
              ),
            ),
          //button
          MaterialButton(
            onPressed: (){
              setState(() {
                userPost = _nameController.text;
              });
              // Clear the text field after posting
              _nameController.clear();
            },
            color: Colors.blue,
            child: Text('Post',style: TextStyle(color: Colors.white),),)

          ],
        ),
      ),
    );
  }
}
