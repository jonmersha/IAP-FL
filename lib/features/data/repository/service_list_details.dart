
import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../api/api_client.dart';

class ServiceListDetailRepository extends GetxService{
  final ApIClient apIClient;
  ServiceListDetailRepository({required this.apIClient});
  Future<Response> getServiceDetailListByID(int id) async{
    print('${AppConstants.BANKSERVICEDETAIL}/?id=$id');
    return await apIClient.getData('${AppConstants.BANKSERVICEDETAIL}/?id=$id');
  }
}