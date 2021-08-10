import 'package:flutter/material.dart';
import 'package:quotes_app/helpers/database_helper/database_helper.dart';
import 'package:quotes_app/models/category.dart';
import 'package:quotes_app/models/message.dart';

class QuotesProvider with ChangeNotifier {
  List<Category> category = List<Category>();
  Category category1;
  List<Message> message=List<Message>();
  List<Message> favorite=List<Message>();
  Message message1;

  getMessage(int id) async {
    message =
    await DatabaseHelper.databaseHelper.getAllMessages(id);
    notifyListeners();
  }

  insertMessage() async {
    ListOfMessages.forEach((element) async {
      message1 = element;
      await DatabaseHelper.databaseHelper.insertMessage(message1);
    });
  }
  getCategory() async {
    category = await DatabaseHelper.databaseHelper.getAllCategory();
    notifyListeners();
  }

  insertCategory() async {
    ListCategory.forEach((element) async {
      category1 = element;
      await DatabaseHelper.databaseHelper.insertCategory(category1);
    });
   // notifyListeners();
  }

  getMessageFromFavorite() async {
    favorite = await DatabaseHelper.databaseHelper.getAllFavorite();
    notifyListeners();
  }
}
