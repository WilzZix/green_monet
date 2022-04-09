import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:green_monet/screens/registration/registor_screen_four.dart';

class RegistorSCreenThrid extends StatefulWidget {
  const RegistorSCreenThrid({Key? key}) : super(key: key);

  @override
  State<RegistorSCreenThrid> createState() => _RegistorSCreenThridState();
}

class _RegistorSCreenThridState extends State<RegistorSCreenThrid> {
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
                                  color: Color(0xFFE1F1ED),
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
                          'Ваша секретная фраза',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF1D2927)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Сохраните вашу секретную фразу\n в правильном порядке в надежном месте',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF4C5F5A)), textAlign: TextAlign.center),
                      ),
                    ],
                  ),
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
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: const [
                      Icon(
                        Icons.copy,
                        color: Color(0xFF19AF8B),
                      ),
                      Text(
                        'Скопировать',
                        style: TextStyle(color: Color(0xFF19AF8B), fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 88),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: const [
                        Text(
                          'Не делитесь этой фразой ни с кем!',
                          style: TextStyle(color: Color(0xFFCC2E4A), fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Тот, кто узнает ее, получит полный доступ к кошельку. Мы не сможем восстановить секретную фразу или вернуть\n ваши средства',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFCC2E4A),
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  width: 335,
                  height: 151,
                  decoration: BoxDecoration(shape: BoxShape.rectangle, color: const Color(0xFFFFEEF1), borderRadius: BorderRadius.circular(12)),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegistorScreenFour()));
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
                    decoration: BoxDecoration(shape: BoxShape.rectangle, color: const Color(0xFF19AF8B), borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      builder: (context) => DraggableScrollableSheet(
                        expand: false,
                        initialChildSize: 0.3,
                        minChildSize: 0.3,
                        maxChildSize: 0.8,
                        builder: (context, scrollController) => Container(
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 30, 6, 6),
                                child: Text(
                                  'Что такое секретная фраза?',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF1D2927)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 6, 20, 6),
                                child: Text(
                                  'Это список слов, с помощью которого можно восстановить ваш кошелек.\nЕго необходимо сохранить в правильном порядке в надежном месте. При утере секретной фразы, мы не сможем восстановить ваш кошелек',
                                  style: TextStyle(color: Color(0xFF4C5F5A), fontSize: 16, fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        ),
                      ),
                    );
                  },
                  child: const Center(
                    child: Text(
                      'Что такое секретная фраза?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF19AF8B),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecretKeyWidget extends StatelessWidget {
  const SecretKeyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 83,
      decoration: BoxDecoration(
        color: const Color(0xFFD4EFEC),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Text(
              '1',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF519D9A),
              ),
            ),
          ),
          //  Spacer(),
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Text(
              'search',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1D2927),
              ),
            ),
          )
        ],
      ),
    );
  }
}
