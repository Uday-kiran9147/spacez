
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacez/utils/constants.dart';

class BottomBookingBar extends StatelessWidget {
  const BottomBookingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey.shade300)),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFF276D25),
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Constants.offerIconUrl, width: 20, height: 20),
                  Text(
                    ' Book now & Unlock exclusive rewards!',
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '₹19,500 ',
                            style: GoogleFonts.poppins(
                              color: Color(0xFFB65C2E),
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            '₹16,000',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            ' for 2 nights',
                            style: GoogleFonts.poppins(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '24 Apr - 26 Apr | 8 guests',
                            style: GoogleFonts.poppins(
                              color: Colors.grey[600],
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Image.asset(
                            Constants.editIconUrl,
                            width: 16,
                            height: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Color(0xFFB65C2E),
                          content: Text('There are no other screens on the design to navigate to')),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB65C2E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    child: Text(
                      'Reserve',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}