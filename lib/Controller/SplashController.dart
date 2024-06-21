import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Splashcontroller extends GetxController{
  final auth = FirebaseAuth.instance;

  void onInit(){
    super.onInit();
    splashHandle();
  }

  void splashHandle() async{
    await Future.delayed(
      Duration(seconds: 3),
    );
    if(auth.currentUser == null){
      Get.offAllNamed("/authPage");
    }else{
      Get.offAllNamed("/homePage");
    }
    print("Hello");
  }
}