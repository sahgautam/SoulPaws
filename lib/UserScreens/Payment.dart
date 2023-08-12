import 'package:khalti/khalti.dart';

class KhaltiPayment extends StatefulWidget {
  const KhaltiPayment({Key? key}) : super(key: key);

  @override
  State<KhaltiPayment> createState() => _KhaltiPaymentState();
}

class _KhaltiPaymentState extends State<KhaltiPayment> {
  TextEditingController phoneController = new TextEditingController();
  TextEditingController pinCodeController = new TextEditingController();