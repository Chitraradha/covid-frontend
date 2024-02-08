import 'package:covid_app/model/covidmodel.dart';
import 'package:covid_app/services/covidservice.dart';
import 'package:flutter/material.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  Future<List<Covid>>?data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=CovidApiServices().getCovid();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Patient"),
      ),
      body: FutureBuilder(
          future: data,
          builder: (context,snapshot){
            if(snapshot.hasData && snapshot.data!.isNotEmpty)
            {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (value,index){
                    return Card(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("Name:"+snapshot.data![index].name .toString()),
                            subtitle: Text("Phone No:"+snapshot.data![index].phoneNo .toString()+"\n"+
                                "Address:"+snapshot.data![index].address .toString()+"\n"+
                                "Symptom:"+snapshot.data![index].sympton .toString()+"\n"+
                                "Status:"+snapshot.data![index].status.toString()+"\n"
                            ),
                          )
                        ],
                      ),
                    );
                  });
            }
            else
            {
              return Text("Loading..........");
            }
          }),
    );
  }
}
