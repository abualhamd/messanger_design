import 'package:flutter/material.dart';
import 'package:messanger_design/components/message_row.dart';
import 'package:messanger_design/components/active_avatar.dart';

class MessangeWithList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              // maxRadius: 50,
              radius: 20,
              foregroundImage: AssetImage('lib/images/spqr.jpg'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text(
                'Chats',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 5),
            child: CircleAvatar(
              backgroundColor: Colors.grey[600],
              foregroundColor: Colors.white,
              child: Icon(Icons.camera_alt_rounded),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10, end: 10),
            child: CircleAvatar(
              backgroundColor: Colors.grey[600],
              foregroundColor: Colors.white,
              child: Icon(Icons.camera_alt_rounded),
            ),
          ),
          // Icon(Icons.pencil_outline),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * .07,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      prefixIcon: Icon(Icons.search),
                      hintText: 'search',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, itemIndex) => Active(),
                    // separatorBuilder: Sized,
                    itemCount: 20),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, itemIndex) => MessageRow(),
                itemCount: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildChatItem() => MessageRow();

Widget buildStoryItem() => Active();
