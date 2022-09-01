
import 'package:get/get.dart';

import '../controllers/BranchServiceController.dart';
import '../controllers/DocumentController.dart';
import '../controllers/document_section_controller.dart';
import '../controllers/service_detail_list_controller.dart';
import '../data/api/api_client.dart';
import '../data/repository/DocumentRepository.dart';
import '../data/repository/ServiceRepository.dart';
import '../data/repository/document_section_repository.dart';
import '../data/repository/service_list_details.dart';
import '../utils/app_constants.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApIClient(appBaseUrl: AppConstants.BASE_URL));

//repos
  Get.lazyPut(() => DocumentRepository(apIClient: Get.find()));
  Get.lazyPut(() => ServiceRepository(apIClient: Get.find()));
  Get.lazyPut(() => DocumentSectionRepository(apIClient: Get.find()));
  Get.lazyPut(() => ServiceListDetailRepository(apIClient: Get.find()));


//Controllers
  Get.lazyPut(() => DocumentController(documentRepo: Get.find()));
  Get.lazyPut(() => BranchServiceController(serviceRepo: Get.find()));
  Get.lazyPut(() => DocumentSectionController(documentSectionRepo: Get.find()));
  Get.lazyPut(() => ServiceListDetailController(serviceListDetailRepo: Get.find()));

}
