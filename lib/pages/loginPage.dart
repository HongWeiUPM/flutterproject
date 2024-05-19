// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp1/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isChecked = true;
  bool _getActivationCode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Image.network(
                    "https://www.upm.edu.my/assets/images23/20170406143426UPM-New_FINAL.jpg"),
              ),
              const Text(
                'Welcome!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Card(
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            !_getActivationCode
                                ? "Enter your mobile number to \nactivate your account."
                                : "Enter the activation code you\n received via SMS.",
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                          ),
                          const Icon(
                            Icons.info,
                            size: 30,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      !_getActivationCode
                          ? Row(
                              children: [
                                Transform.scale(
                                  scale: 0.4,
                                  child: Image.asset(
                                    'icons/flags/png100px/my.png',
                                    package: 'country_icons',
                                  ),
                                ),
                                const Text(
                                  "+60\t",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Expanded(
                                    child: TextField(
                                  decoration: InputDecoration(
                                      labelText: 'Your Phone Number',
                                      border: OutlineInputBorder()),
                                )),
                              ],
                            )
                          : const Expanded(
                              child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'OTP number',
                                  border: OutlineInputBorder()),
                            )),
                      const SizedBox(height: 30),
                      !_getActivationCode
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Checkbox(
                                  value: _isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isChecked = value!;
                                    });
                                  },
                                ),
                                const Text(
                                    "I agree to the terms and conditions"),
                              ],
                            )
                          : Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Didn't Received? ",
                                    textAlign: TextAlign.center,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      null; // Replace URL with your link
                                    },
                                    child: const Text(
                                      'Tap here',
                                      style: TextStyle(
                                        color: Colors
                                            .blue, // Set text color to blue for links
                                        decoration: TextDecoration
                                            .underline, // Underline text
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          !_getActivationCode ? toOtpPage() : toMainPage();
                        },
                        child: Text(!_getActivationCode
                            ? 'Get Activation code'
                            : 'Activate'),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Center(
                child: GestureDetector(
                  onTap: () {
                    null; // Replace URL with your link
                  },
                  child: const Text(
                    'Click here to visit example.com',
                    style: TextStyle(
                      color: Colors.blue, // Set text color to blue for links
                      decoration: TextDecoration.underline, // Underline text
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                  child: Text(
                      "Copyright UPM & Kejuruteraan Minyak Sawit CCS Sdn.Bhd")),
            ],
          ),
        ),
      ),
    );
  }

  void toOtpPage() {
    setState(() {
      _getActivationCode = !_getActivationCode;
    });
  }

  void toMainPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const MyHomePage(),
      ),
    );
  }
}
