import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:full_food_delivery/components/my_button.dart';
import 'package:full_food_delivery/page/delivery_progress_page.dart';
import 'package:provider/provider.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  // user wants to pay

  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      // only show dialog if from is valid
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Confirm payment'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Card Number: $cardNumber'),
                Text('Expiry Data: $expiryDate'),
                Text('Card Holder Name: $cardHolderName'),
                Text('CVV: $cvvCode'),
              ],
            ),
          ),
          actions: [
            // cancel button
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),

            // Yes button
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeliveryProgressPage(),
                  ),
                );
              },
              child: const Text('Yes'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Checkout'),
      ),
      body: Column(
        children: [
          // credit card
          CreditCardWidget(
            bankName: 'monobank',
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            onCreditCardWidgetChange: (p0) {},
          ),

          // credit card form
          CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (data) {
              setState(() {
                cardNumber = data.cardNumber;
                expiryDate = data.expiryDate;
                cardHolderName = data.cardHolderName;
                cvvCode = data.cvvCode;
              });
            },
            formKey: formKey,
          ),

          Spacer(),

          MyButton(text: 'Pay now', onTap: userTappedPay),

          SizedBox(height: 25),
        ],
      ),
    );
  }
}
