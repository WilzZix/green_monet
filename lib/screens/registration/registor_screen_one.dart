import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_monet/screens/registration/registor_screen_two.dart';

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
                          '???????????????? ??????????',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF1D2927)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('???????? ???????????? ?????????? ?????? ?????????????????????????? ???????????? ???????????????? Green Monet ???????????? \n ???? ???????? ????????????????????',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF4C5F5A)), textAlign: TextAlign.center),
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
                          '?????????? ??????????',
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
                            hintText: '???????????????????? ????????????',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '???????????????????????? ????????????',
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
                            hintText: '?????????????? ???????????? ?????? ??????',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    const Text(
                      '?????????????? ?? ?????????????? FaceID',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF4C5F5A)),
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                      activeColor: const Color(0xFF7CD4CA),
                      onChanged: (bool value) {},
                      value: true,
                    )
                  ],
                ),
                const SizedBox(height: 88),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: const [
                        Text(
                          '?????????????? ?????????????????? ???????? ????????????!',
                          style: TextStyle(color: Color(0xFFCC2E4A), fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '???????? ???? ???????????????? ???????? ????????????, ???? ?????? ???? ?????????????? ???????????????????????? ??????',
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
                  height: 109,
                  decoration: BoxDecoration(shape: BoxShape.rectangle, color: const Color(0xFFFFEEF1), borderRadius: BorderRadius.circular(12)),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegistorScreenTwo()));
                  },
                  child: Container(
                    child: const Center(
                      child: Text(
                        '?????????????? ????????????',
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
        ),
      ),
    );
  }
}
