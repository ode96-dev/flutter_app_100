import 'package:flutter/material.dart';
import 'package:flutter_app_100/data/health_details.dart';
import 'package:flutter_app_100/util/responsive.dart';
import 'package:flutter_app_100/widgets/custom_card.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();

    return GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
        crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
        mainAxisSpacing: 12.0,
      ),
      itemBuilder: (context, index) => CustomCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              healthDetails.healthData[index].icon,
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                bottom: 4.0,
              ),
              child: Text(
                healthDetails.healthData[index].value,
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              healthDetails.healthData[index].title,
            )
          ],
        ),
      ),
    );
  }
}
