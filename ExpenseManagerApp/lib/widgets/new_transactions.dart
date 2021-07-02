import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  final Function addExpense;
  final textController = TextEditingController();
  final amountController = TextEditingController();

  NewTransactions(this.addExpense);

  void submitData() {
    final enteredTitle = textController.text;
    final enteredAmount = double.parse(amountController.text);

    if(enteredTitle.isEmpty || enteredAmount <= 0){
      return;
    }

    addExpense(
      enteredTitle,
      enteredAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Title !"),
              controller: textController,
              onSubmitted: (_) => submitData,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount !"),
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => submitData,
              onEditingComplete: submitData,
            ),
            FlatButton(
              onPressed: submitData,
              child: Text("Add Expense"),
              textColor: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
