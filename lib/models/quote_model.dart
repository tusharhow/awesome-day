// To parse this JSON data, do
//
//     final quoteModel = quoteModelFromJson(jsonString);

import 'dart:convert';

List<QuoteModel> quoteModelFromJson(String str) =>
    List<QuoteModel>.from(json.decode(str).map((x) => QuoteModel.fromJson(x)));

String quoteModelToJson(List<QuoteModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class QuoteModel {
  QuoteModel({
    required this.author,
    required this.quote,
  });

  String? author;
  String? quote;

  factory QuoteModel.fromJson(Map<String, dynamic> json) => QuoteModel(
        author: json["author"],
        quote: json["quote"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "quote": quote,
      };
}
