import 'package:flutter/material.dart';
import 'package:quotes_app/helpers/database_helper/database_helper.dart';
import 'package:quotes_app/models/category.dart';
import 'package:quotes_app/models/message.dart';
import 'package:quotes_app/widget/item_message.dart';
import 'package:quotes_app/widget/item_category.dart';

class MessageDetails extends StatefulWidget {
  Category category;

  MessageDetails({this.category});

  @override
  _MessageDetailsState createState() => _MessageDetailsState();
}

class _MessageDetailsState extends State<MessageDetails> {
  List<Message> message = List<Message>();
  Message message1 = Message();

  getMessage() async {
    message =
        await DatabaseHelper.databaseHelper.getAllMessages(widget.category.id);
    setState(() {});
  }

  insertMessage() async {
    ListOfMessages.forEach((element) async {
      message1 = element;
      await DatabaseHelper.databaseHelper.insertMessage(message1);
      setState(() {});
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    insertMessage();
    getMessage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
        backgroundColor: Color(0xff3797A4),
      ),
      body: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return ItemMessage(
              message: message[index],
            );
          },
          itemCount: message.length,
        ),
      ),
    );
  }
}
