import 'package:flutter/material.dart';
import 'cardetails.dart';
import 'package:flutter/material.dart';
import 'availablecar_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

class availablecar3 extends StatefulWidget {
  const availablecar3({super.key});

  @override
  State<availablecar3> createState() => _availablecar2State();
}

class _availablecar2State extends State<availablecar3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [
          Positioned(
              top: 30,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 20),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 0.5,
                        blurRadius: 20,

                      ),

                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Mercedes AMG",
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,

                            ),

                          ),
                          Text(
                            "2020",
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black38

                            ),

                          ),


                        ],


                      ),
                    ),

                    const SizedBox(
                      height: 20,

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500
                              ),
                              children: const <TextSpan>[
                                TextSpan(text: "8000EGP"),
                                TextSpan(
                                    text: "/hour",
                                    style: TextStyle(
                                        color: Colors.black38
                                    )
                                ),
                              ]
                          ),
                        ),

                        Container(
                          width: 130,
                          height: 50,
                          child: ElevatedButton(onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => StartScreen()));
                          },
                            child: Text("Details",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,

                              ),
                            ),

                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),

                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
          ),

          Positioned(

              child: Image.asset("assets/images/mercedes amg.png",
                width: 240,
                height: 150,)
          ),


        ],
      ),
    );
  }

}