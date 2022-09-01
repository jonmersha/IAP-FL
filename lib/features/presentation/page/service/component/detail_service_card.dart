import 'package:flutter/material.dart';

import '../../../../model/service_detail_model.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../widget/BigText.dart';
import '../../../widget/SmalText.dart';

class DetailserviceCard extends StatelessWidget {
  final ServiceDetail serviceDetail;
  const DetailserviceCard({
    Key? key, required this.serviceDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: serviceDetail.serviceName!,
          size: Dimensions.fontSize20,
          color: AppColors.mainColor,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        SmallText(
          text: serviceDetail.seviceDescription!,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
        )
      ],
    );
  }
}
