

import 'package:flutter/material.dart';

import '../../../controllers/DocumentController.dart';
import '../../../controllers/document_section_controller.dart';
import '../../../model/document_model.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/dimensions.dart';
import 'package:get/get.dart';

import '../../widget/BigText.dart';
import '../../widget/app_icon.dart';
import '../../widget/expandable_text.dart';
import '../home/main_branch_operation_page.dart';
import 'document_section.dart';

class DocumentSectionListContainer extends StatelessWidget {
  final Document documentModel;
  final DocumentController documentSectionController;
  DocumentSectionListContainer({Key? key, required this.documentModel, required this.documentSectionController}) : super(key: key);
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
                      child: AppIcon(
                        iconData: Icons.arrow_back,
                        backGroundColor: AppColors.mainColor,
                      iconColor: Colors.white,
                      iconSize: 30,)
                  ),

                  GestureDetector(
                    onTap: (){
                    //  Get.find()
                      Get.find<DocumentSectionController>().getDocumentSectionListByID(documentModel.documentID!);
                    },
                      child: AppIcon(iconData: Icons.refresh,
                        backGroundColor: AppColors.mainColor,
                        iconColor: Colors.white,
                        iconSize: 30,)
                  ),
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

                  child:  BigText(text: documentModel.documentName !,size: Dimensions.fontSize26, ),
                )
            ),
            pinned: true,
            backgroundColor: Colors.amber,
            expandedHeight: Dimensions.height200,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  AppConstants.IMAGE_URL+documentModel.documentImagePath!,
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
                        text:documentModel.documentDescription!)
                ),
                 SectionList(docId: documentModel.documentID!,document: documentModel,)
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

