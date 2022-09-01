import 'package:flutter/material.dart';

import '../../../../model/service_model.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../widget/BigText.dart';
import '../../../widget/SmalText.dart';

class ServiceCard extends StatelessWidget {
  final Service service;
  const ServiceCard({
    Key? key, required this.service,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: service.serviceName!,
          size: Dimensions.fontSize20,
          color: AppColors.mainColor,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        SmallText(
          text: service.serviceDescription!,
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
