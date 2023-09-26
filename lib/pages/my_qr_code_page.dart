import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MyQRCodePage extends StatefulWidget {
  const MyQRCodePage({super.key});

  @override
  State<MyQRCodePage> createState() => MyQRCodePageState();
}

class MyQRCodePageState extends State<MyQRCodePage> {
  String qrcodeData = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('QR Code Generator'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: QrImage(
                data: qrcodeData,
                size: 200,
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'QR Code',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
                onChanged: (value) {
                  setState(() {
                    qrcodeData = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
