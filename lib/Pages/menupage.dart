import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COVID APP"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.white])
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent,foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.zero
                    )
                    ),
                    onPressed: (){}, child: Text("Add"))),
            SizedBox(height: 20,),
            SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent,foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.zero
                        )
                    ),
                    onPressed: (){}, child: Text("View"))),
            SizedBox(height: 20,),
            SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent,foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.zero
                        )
                    ),
                    onPressed: (){}, child: Text("Search"))),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
