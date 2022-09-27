import 'package:flutter/material.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({Key? key}) : super(key: key);
  _buildDates(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildSelectedMonth(context),
        _buildTrailingButtons(),
      ],
    );
  }

  Widget _buildSelectedMonth(BuildContext context) {
    return Text(
      'July 2022',
      style: Theme.of(context).textTheme.titleSmall,
    );
  }

  Widget _buildTrailingButtons() {
    return Row(
      children: const [
        Icon(Icons.keyboard_arrow_left),
        Icon(Icons.keyboard_arrow_right_outlined)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDates(context),
      ],
    );
  }
}
