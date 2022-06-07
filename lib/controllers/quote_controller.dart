import 'package:awesome_day/models/quote_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class QuoteController extends GetxController {
  final _firebase = FirebaseFirestore.instance;
  List quotes = <QuoteModel>[];

  // random quote generator
  Future<void> randomQuote() async {
    _firebase.collection('motivational').get().then((value) {
      quotes.clear();
      for (var element in value.docs) {
        quotes.add(QuoteModel.fromJson(element.data()));
        update();
      }
      quotes.shuffle();
      quotes = quotes.sublist(0, 1);
      update();
    });
  }

  @override
  void onInit() {
    super.onInit();
    randomQuote();
  }
}
