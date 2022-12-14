
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../model/service_model.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/dimensions.dart';
import '../../widget/BigText.dart';
import '../../widget/app_icon.dart';
import '../../widget/expandable_text.dart';
import '../home/main_branch_operation_page.dart';
import 'detail_service_list.dart';

class DetailServiceListContainer extends StatelessWidget {
  final Service serviceModel;
  //final ServiceListDetailController detailedServiceController;
  DetailServiceListContainer({Key? key, required this.serviceModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            title: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (){
                        Get.to(()=>MainOperationPage(),transition: Transition.rightToLeftWithFade,duration: Duration(milliseconds: 800));
                      },
                      child: AppIcon(iconData: Icons.clear,backGroundColor: AppColors.mainColor,)
                  ),
                  AppIcon(iconData: Icons.shopping_cart_outlined,),
                ],
              ),
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(Dimensions.height20),
                child:Container(
                  width: double.maxFinite,
                  height: 50,
                  alignment: Alignment.center,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20),
                          topLeft: Radius.circular(Dimensions.radius20)
                      ),
                      color: Colors.white
                  ),

                  child:  BigText(text: serviceModel.serviceName!,size: Dimensions.fontSize26, ),
                )
            ),
            pinned: true,
            backgroundColor: Colors.amber,
            expandedHeight: Dimensions.height200,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  AppConstants.IMAGE_URL+serviceModel.serviceIconPath!,
                  width: double.maxFinite,
                  fit: BoxFit.cover,

                )
            ),
          ),
          SliverToBoxAdapter(

            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                    child:  ExpandableTextWidget(
                        text: ""+serviceModel.serviceDescription!)
                ),
               // Text("${ serviceModel.serviceDescription!}: \n Related Service Displayed here"),
                DetailServiceList(id: serviceModel.serviceID!,)
              ],
            ),

          )
        ],

      ),
     // bottomNavigationBar:
      //NewBottomBarr(),
    );
  }
}

