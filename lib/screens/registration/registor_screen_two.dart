import 'package:flutter/material.dart';

class RegistorScreenTwo extends StatefulWidget {
  RegistorScreenTwo({Key? key}) : super(key: key);

  @override
  State<RegistorScreenTwo> createState() => _RegistorScreenTwoState();
}

class _RegistorScreenTwoState extends State<RegistorScreenTwo> {
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
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
                                  color: Color(0xFF19AF8B),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const Text(
                                '2',
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
                        child: Text(
                          'Защитите свой кашелек',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF1D2927)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Секретная фраза поможет вам защитить и восьонавить кашелек',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF4C5F5A)), textAlign: TextAlign.center),
                      ),
                      const SizedBox(
                        height: 56,
                      ),
                      Container(
                        width: 206,
                        height: 206,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFE1F1ED),
                        ),
                      ),
                      const SizedBox(
                        height: 177,
                      ),
                      Row(
                        children: [
                          Text(
                            'Я понимаю, что секретная фраза —\n единственный способ восстановить кошелек',
                            style: TextStyle(color: Color(0xFF4C5F5A), fontSize: 13),
                          ),
                          Spacer(),
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                            activeColor: Color(0xFF7CD4CA),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegistorScreenTwo()));
                        },
                        child: Container(
                          child: const Center(
                            child: Text(
                              'Продолжить',
                              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          height: 50,
                          width: 335,
                          decoration: BoxDecoration(shape: BoxShape.rectangle, color: const Color(0xFFAEAEAE), borderRadius: BorderRadius.circular(30)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
