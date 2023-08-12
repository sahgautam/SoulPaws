import 'package:khalti/khalti.dart';

class KhaltiPayment extends StatefulWidget {
  const KhaltiPayment({Key? key}) : super(key: key);

  @override
  State<KhaltiPayment> createState() => _KhaltiPaymentState();
}

class _KhaltiPaymentState extends State<KhaltiPayment> {
  TextEditingController phoneController = new TextEditingController();
  TextEditingController pinCodeController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
      title: Text(
      "Khalti",
      style: TextStyle(color: Colors.white),
    ),
    centerTitle: true,
    backgroundColor: Colors.purple,
    ),
    body: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
    children: [
    TextFormField(
    controller: phoneController,
    keyboardType: TextInputType.phone,
    decoration: const InputDecoration(labelText: "Phone number"),
    ),