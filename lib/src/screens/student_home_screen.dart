import 'package:flutter/material.dart';
import 'package:studentlist/mock/mock_data.dart';

class StudentHomeScreenview extends StatelessWidget {
  const StudentHomeScreenview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "studentlist",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color.fromRGBO(0, 0, 0, 0),
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                //listview for dtudent

                child: ListView.builder(
                  itemCount: mockData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        child: ListTile(
                          leading: Image.network(
                            mockData[index]["profileimage"].toString(),
                          ),
                          title: Text(mockData[index]["first_name"].toString()),
                          subtitle: Text(index.toString()),
                          trailing: IconButton(
                            icon: Icon(Icons.forward),
                            onPressed: () {},
                            //todo navigate to detail screen
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              //for hello
              color: Colors.blue,
              height: 115,
            ),
          ],
        ),
      ),
    );
  }
}
