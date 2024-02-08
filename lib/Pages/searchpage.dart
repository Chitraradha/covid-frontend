import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Patient"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.white])
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                labelText: "Enter your No",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height:160,),
            SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent,foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.zero
                        )
                    ),
                    onPressed: (){}, child: Text("SEARCH")))
          ],
        ),
      ),
    );
  }
}
