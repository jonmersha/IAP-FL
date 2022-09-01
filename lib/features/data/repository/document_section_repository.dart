

import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../api/api_client.dart';

class DocumentSectionRepository extends GetxService{
  final ApIClient apIClient;
  DocumentSectionRepository({required this.apIClient});
  Future<Response> getDocumentSectionList() async{
    return await apIClient.getData(AppConstants.DOCUMENTSCTION);
  }
  Future<Response> getDocumentSectionListByID(int id) async{
    // String adress='${AppConstants.DOCUMENTSCTION}/?id=$id';
    // print("=======================================================");
    // print(adress);
    return await apIClient.getData('${AppConstants.DOCUMENTSCTION}/?id=$id');
  }
}