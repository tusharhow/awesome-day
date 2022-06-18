import 'package:awesome_day/controllers/quote_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeQuoteButton extends StatelessWidget {
  const ChangeQuoteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuoteController>(builder: (controller) {
      return GestureDetector(
        onTap: () {
          controller.randomQuote();
        },
        child: Container(
          height: 65,
          width: MediaQuery.of(context).size.width / 2.1,
          decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(
              color: Colors.black12,
              width: 1,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'Change Quote',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      );
    });
  }
}
