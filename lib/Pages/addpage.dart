import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD PATIENTS"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    labelText: "PhoneNo",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    labelText: "symptom",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    labelText: "Address",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    labelText: "status",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                  width: 200,
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent,foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.zero
                          )
                      ),
                      onPressed: (){}, child: Text("SUBMIT")))
            ],
          ),
        ),
      ),
    );
  }
}
