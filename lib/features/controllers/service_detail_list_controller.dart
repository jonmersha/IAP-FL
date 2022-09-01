
import 'package:get/get.dart';

import '../data/repository/service_list_details.dart';
import '../model/service_detail_model.dart';

class ServiceListDetailController extends GetxController{
  final ServiceListDetailRepository serviceListDetailRepo;

  ServiceListDetailController({required this.serviceListDetailRepo});
  List<dynamic> _serviceDetailList=[];
  List<dynamic> get serviceDetailList=>_serviceDetailList;

  bool _isLoaded=false;
  bool get isLoaded=>_isLoaded;

  int _quantity=0;
  int get quantity=>_quantity;

  Future<void> geServiceListByID(int id) async{
    Response response = await serviceListDetailRepo.getServiceDetailListByID(id);
    if(response.statusCode==200){
      _serviceDetailList=[];
      _serviceDetailList.addAll(DetailServiceModel.fromJson(response.body).serviceDetail);
      print(response.body);
      update();
      _isLoaded=true;
    }else{
    }
  }


}