import 'package:flutter/material.dart';

import 'registor_screen_third.dart';

class RegistorScreenFour extends StatefulWidget {
  RegistorScreenFour({Key? key}) : super(key: key);

  @override
  State<RegistorScreenFour> createState() => _RegistorScreenFourState();
}

class _RegistorScreenFourState extends State<RegistorScreenFour> {
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
            padding: const EdgeInsets.all(20),
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
                            ),
                          ),
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
                                style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 245, 241, 241)),
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
                            ),
                          ),
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE19AF8B),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const Text(
                                '3',
                                style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 245, 241, 241)),
                              )
                            ],
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 27),
                        child: Text(
                          'Подтверждение секретной фразы',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF1D2927)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Поочередно нажимайте на слова\n в правильном порядке',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF4C5F5A)), textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: const [],
                    ),
                  ),
                  width: 355,
                  height: 151,
                  decoration: BoxDecoration(shape: BoxShape.rectangle, color: const Color(0xFFE1F1ED), borderRadius: BorderRadius.circular(12)),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: const [
                    SecretKeyWidget(),
                    SecretKeyWidget(),
                    SecretKeyWidget(),
                    SecretKeyWidget(),
                    SecretKeyWidget(),
                    SecretKeyWidget(),
                    SecretKeyWidget(),
                    SecretKeyWidget(),
                    SecretKeyWidget(),
                    SecretKeyWidget(),
                    SecretKeyWidget(),
                    SecretKeyWidget(),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Icon(Icons.warning),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Неверный порядок. Попробуйте еще раз',
                      style: TextStyle(color: Color(0xFFD82142), fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(height: 88),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegistorScreenTwo()));
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
                ),
                const SizedBox(
                  height: 14,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
