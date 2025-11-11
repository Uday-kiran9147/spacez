
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacez/utils/constants.dart';

class CouponTile extends StatelessWidget {
  const CouponTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12,top: 5),
      decoration: BoxDecoration(color: Color(0xffFDF9F7)),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 180,
            decoration: const BoxDecoration(color: Color(0xFFB65C2E)),
            alignment: Alignment.center,
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                '₹6,900',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'LONGSTAY',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Image.asset(
                            Constants.shoppingTagUrl,
                            width: 15,
                            height: 15,
                          ),
                          const SizedBox(width: 6),
                          TextButton(
                            onPressed: (){
                              ScaffoldMessenger.of(context).removeCurrentSnackBar();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.green,
                                  content: Text('🎉 Coupon Applied'),
                              ));
                            },
                            child: Text(
                              'Apply',
                              style: GoogleFonts.poppins(
                                color: const Color(0xFFB65C2E),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '15% off when you book for 5 days or more and 20% off when you book for 30 days or more.',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Read more',
                    style: GoogleFonts.poppins(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}