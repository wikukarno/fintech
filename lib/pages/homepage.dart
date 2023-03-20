import 'package:fintech/provider/portofolio_provider.dart';
import 'package:fintech/theme.dart';
import 'package:fintech/widgets/portofolio_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    Provider.of<PortofolioProvider>(context, listen: false).getPortofolio();
  }

  @override
  Widget build(BuildContext context) {
    PortofolioProvider portofolioProvider =
        Provider.of<PortofolioProvider>(context);
    // di bawah ini digunakan untuk membuat component header
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 40,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/ic_notif.png',
                  width: 20,
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/avatar.png',
                  width: 20,
                ),
              ],
            )
          ],
        ),
      );
    }

    // di bawah ini digunakan untuk membuat component portofolio title
    Widget portofolioTitle() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Portofolio',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'See All',
              style: greyTextStyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
            ),
          ],
        ),
      );
    }

    // di bawah ini digunakan untuk membuat component portofolio
    Widget portofolio() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Row(
                children: portofolioProvider.portofolios
                    .map((portofolio) => PortofolioCard(portofolio: portofolio))
                    .toList(),
              )
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        // di bawah ini digunakan untuk membuat component persection

        // section judul
        header(),
        portofolioTitle(),
        portofolio(),
      ],
    );
  }
}
