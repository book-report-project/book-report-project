import 'package:book_report_app/app/modules/home/page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _introImg(context),
              const SizedBox(height: 15),
              _introText(context),
              const SizedBox(height: 15),
              _loginJon(context)
            ],
          ),
        ));
  }
}

Widget _introImg(context) {
  return Container(
    margin: const EdgeInsets.all(20.0),
    width: MediaQuery.of(context).size.width - 10,
    height: MediaQuery.of(context).size.width - 10,
    decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          "intro img",
          style: TextStyle(fontSize: 30.0),
        ),
      ],
    ),
  );
}

Widget _introText(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const [
      Text(
        '''
간편 로그인 후
다양한 서비스를 이용하세요.''',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 16.0,
            color: Colors.black87,
            fontWeight: FontWeight.normal),
      ),
    ],
  );
}

Widget _loginJon(context) {
  return Container(
    margin: const EdgeInsets.all(20.0),
    width: MediaQuery.of(context).size.width - 10,
    height: 180,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _googleLoginButton(context),
        const SizedBox(height: 30),
        const Text('또는'),
        const SizedBox(height: 30),
        _iconList(context)
      ],
    ),
  );
}

Widget _googleLoginButton(context) {
  return GestureDetector(
    onTap: () {
      Get.to(const HomeScreen(), transition: Transition.cupertino);
    },
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.red[400]),
      width: MediaQuery.of(context).size.width - 10,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/imgs/google_icon.png', height: 30),
          const SizedBox(width: 15.0),
          const Text(
            "구글 계정으로 로그인",
            style: TextStyle(color: Colors.white, fontSize: 14.0),
          ),
        ],
      ),
    ),
  );
}

Widget _iconList(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset('assets/imgs/kakao_icon.png', height: 35),
      const SizedBox(width: 20),
      Image.asset('assets/imgs/apple_icon.png', height: 35),
    ],
  );
}
