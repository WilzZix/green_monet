import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF19AF8B),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: Color(0xFF19AF8B),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const Text(
                              '1',
                              style: TextStyle(fontSize: 16, color: Color(0xFFE1F1ED)),
                            )
                          ],
                        ),
                        const Expanded(
                            child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Divider(
                            thickness: 3,
                            height: 16,
                            color: Color(0xFF19AF8B),
                          ),
                        )),
                        Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: Color(0xFFE1F1ED),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const Text(
                              '2',
                              style: TextStyle(fontSize: 16, color: Color(0xFF19AF8B)),
                            )
                          ],
                        ),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Divider(
                              thickness: 3,
                              height: 16,
                              color: Color(0xFFE1F1ED),
                            ),
                          ),
                        ),
                        Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: new BoxDecoration(
                                color: const Color(0xFFE1F1ED),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const Text(
                              '3',
                              style: TextStyle(fontSize: 16, color: Color(0xFF19AF8B)),
                            )
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 27),
                      child: const Text(
                        'Создайте парол',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF1D2927)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Этот пароль нужен для разблокировки вашего кошелька Green Monet только \n на этом устройстве',
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF4C5F5A)), textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Новый парол',
                        style: TextStyle(
                          color: Color(0xFF1D2927),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          iconColor: Color(0xFFE1F1ED),
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: Color(0xFFE1F1ED),
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), borderSide: BorderSide(color: Color(0xFFE1F1ED))),
                          hintText: 'Придумайте пароль',
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
