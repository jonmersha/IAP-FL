
import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../api/api_client.dart';

class DocumentRepository extends GetxService{
  final ApIClient apIClient;

  DocumentRepository({required this.apIClient});
  
  Future<Response> getPopularProductList() async{
    return await apIClient.getData(AppConstants.DOCUMENTS);
  }
}