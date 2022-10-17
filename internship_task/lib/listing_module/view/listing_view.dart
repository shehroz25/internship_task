import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class ListingView extends StatefulWidget {
  const ListingView({Key? key}) : super(key: key);

  @override
  State<ListingView> createState() => _ListingViewState();
}

class _ListingViewState extends State<ListingView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            title: Text("My Favorites",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff1D2733))),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xff1D2733),
              ),
              onPressed: () => Get.back(),
            ),
            backgroundColor: Colors.transparent),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(18),
                        child: Container(
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.amber),
                          child: const Text("hello"),
                        ),
                      );
                    },
                    itemCount: 10,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
