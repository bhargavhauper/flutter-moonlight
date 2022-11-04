import 'package:flutter/material.dart';

import '../../core/classes/classes.dart';
import '../../widgets/widget.dart';

class ForgetController extends StatelessWidget {
  const ForgetController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Title(
      title: 'Forget Section',
      color: Colors.blue,
      child: const ForgetMobileScreen(),
    );
  }
}

class ForgetMobileScreen extends StatelessWidget {
  const ForgetMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Screen'),
        leading: IconButton(
          onPressed: () {
            Nav.to(context, '/login');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        // actions: const [DayNightSwitch()],
      ),
      body: Form(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Forget Password?',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 15,
            ),
            TextInputField(
              labelTextStr: 'Input Your Register Email Address',
              prefixIcon: Icons.email_outlined,
            ),
            AuthButton(
              label: 'Send Recovery Email',
              onPressed: () {},
              paddingValue: 10,
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 45,
            ),
            const Text(
              'If you are not getting email. Then Press',
              // style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 5,
            ),
            AuthButton(label: 'Resend Email', onPressed: () {}),
          ],
        ),
      )),
    );
  }
}
