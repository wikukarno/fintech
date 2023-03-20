import 'package:fintech/models/portofolio_model.dart';
import 'package:fintech/theme.dart';
import 'package:flutter/material.dart';

class PortofolioCard extends StatelessWidget {
  const PortofolioCard({
    Key? key,
    required this.portofolio,
  }) : super(key: key);

  final PortofolioModel portofolio;
  final String thumbnail = 'https://api-wikukarno.wikukarno.id/storage/';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 278,
      margin: EdgeInsets.only(right: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: blackColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
              'https://api-wikukarno.wikukarno.id/storage/' +
                  portofolio.thumbnail!,
              width: 300,
              height: 200,
              fit: BoxFit.cover),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  portofolio.title!,
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text('Website/Android/iOS',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    )),
                SizedBox(height: 2),
                Text('21 Januari 2021',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
