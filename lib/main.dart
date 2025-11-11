import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacez/utils/constants.dart';
import 'package:spacez/widgets/booking_bar.dart';
import 'package:spacez/widgets/coupon_tile.dart';

void main() => runApp(const SpacezApp());

class SpacezApp extends StatelessWidget {
  const SpacezApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CouponsPage(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

class CouponsPage extends StatelessWidget {
  const CouponsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(Constants.appLogoUrl, width: 114, height: 26),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(Constants.menuIconUrl, width: 24,height: 24,),
          ),
        ],
      ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          children: [
            AppBar(
              backgroundColor: Colors.white,
              title: Text(
                'Coupons',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              elevation: 5,
              centerTitle: false,
              leading: const Icon(Icons.arrow_back_outlined, color: Colors.black54),
            ),
            CouponTile(),
            CouponTile(),
            const SizedBox(height: 16),
            Text(
              'Payment offers:',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            CouponTile(),
            CouponTile(),
            const SizedBox(height: 90),

          ],

      ),
      bottomSheet: BottomBookingBar(),
    );
  }
}



