import 'package:flutter/material.dart';
import 'package:inputfield/models/counter_model.dart';
import 'package:provider/provider.dart';

class IncrementPage extends StatefulWidget {
  const IncrementPage({super.key});

  @override
  IncrementPageState createState() => IncrementPageState();
}

class IncrementPageState extends State<IncrementPage> {
  String name = "harsh2461";
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder:
          (context, value, child) => Scaffold(
            appBar: AppBar(title: Text("Counter Page")),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Increment by clicking Button"),
                  Center(
                    child: Text(
                      value.count.toString(),
                      style: TextStyle(fontSize: 34),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final counter = context.read<CounterModel>();
                      counter.increment();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      backgroundColor: Colors.blue.shade300,
                      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12)
                    ),
                    child: Text("Increment",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
