import 'dart:math';
import 'package:awesome_day/controllers/quote_controller.dart';
import 'package:awesome_day/models/quote_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/change_quote_button_component.dart';
import '../components/quote_component.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<QuoteController>(
          init: QuoteController(),
          builder: (controller) {
            return Container(
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StreamBuilder<QuoteModel>(builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: QuoteComponent(),
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  const ChangeQuoteButton()
                ],
              ),
            );
          }),
    );
  }
}
