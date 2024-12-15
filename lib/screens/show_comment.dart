
import 'package:flutter/material.dart';

class ShowComment extends StatelessWidget {
  final  List<Map<String, dynamic>> fetchedCommentList;
  final String i;

    ShowComment({Key? key, required this.fetchedCommentList, required this.i}) : super(key: key);

  Widget _buildItemcomment( BuildContext context, int index)
   {

if(fetchedCommentList[index]['id']==i)
  {

    return  Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 4,
      color: Colors.pink[200],
      margin: const EdgeInsets.only(left: 10, right: 10,top: 15 ),

          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  alignment: Alignment.topLeft,
                  height:25,
                  width: 480,
                  child: Text(fetchedCommentList[index]['comment'],style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
          ),

    );

           }

      return Container();


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,

      ),
      drawer: const Drawer(),
      body: ListView.builder(itemBuilder: _buildItemcomment,
        itemCount: fetchedCommentList.length,
      ),

    );
  }
}
