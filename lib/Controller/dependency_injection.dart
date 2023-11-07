import 'package:get/get.dart';
import 'package:network_connectivity_check/Controller/network_controller.dart';

class DependencyInjection {
  static void init() {
    Get.put<NetworkController>(NetworkController(), permanent: true);
  }
}
