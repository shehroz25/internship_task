import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_task/detail_module/model/detail_model.dart';

class DetailView extends StatefulWidget {
  const DetailView({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  List<DetailView> detail = [
     const DetailView(
      txt: "30 mins",
    ),
    const DetailView(
      txt: "35 mins",
    ),
    const DetailView(
      txt: "40 mins",
    ),
    const DetailView(
      txt: "50 mins",
    ),
    const DetailView(
      txt: "60 mins",
    ),
    const DetailView(
      txt: "80 mins",
    ),
  ];
  List<Amenities> menu = [
    Amenities(
      img: "assets/images/beverage.png",
      text: "AC",
    ),
    Amenities(img: "assets/images/beverage.png", text: "beverage"),
    Amenities(img: "assets/images/beverage.png", text: "beverage"),
    Amenities(img: "assets/images/beverage.png", text: "beverage"),
    Amenities(img: "assets/images/beverage.png", text: "beverage"),
    Amenities(img: "assets/images/beverage.png", text: "beverage"),
  ];
  int count = 0;

  void _increment() {
    setState(() {
      count++;
    });
  }

  void _decrement() {
    if (count < 1) return;
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  height: 50,
                  minWidth: 350,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  onPressed: () {},
                  color: Colors.teal[800],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.send_rounded, color: Colors.white),
                      SizedBox(width: 7),
                      Text(
                        'Book Now',
                        style: TextStyle(color: Color(0XffFFFFFF)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            child: Image.asset(
              "assets/images/bg3.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                  child: const Icon(Icons.arrow_back),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                  child: const Icon(Icons.favorite, color: Colors.red),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 100,
            left: 33,
            child: Container(
              padding: const EdgeInsets.only(
                  top: 20, right: 20, left: 20, bottom: 20),
              height: MediaQuery.of(context).size.height * .70,
              width: MediaQuery.of(context).size.width * .85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                  )
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Dhown Cruise',
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        const Spacer(),
                        Container(
                            height: 30,
                            width: 80,
                            child: Center(
                              child: Text('AED 420/hr',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.teal[800]))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('fulfiled by',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.red)),
                        const Spacer(),
                        InkWell(
                          onTap: _increment,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Icon(Icons.add),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("$count"),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: _decrement,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Icon(Icons.remove),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('Dubai Water Sports',
                            style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        const Spacer(),
                        Text('No of Persons',
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.black))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('More services like this',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.red)),
                    const SizedBox(
                      height: 15,
                    ),
                    Text('Duration',
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .040,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                          itemCount: detail.length,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, int index) =>
                              const SizedBox(
                                width: 20,
                              ),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.20,
                                width: MediaQuery.of(context).size.width * 0.23,
                                child: Center(
                                  child: Text(detail[index].txt),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('Amenities',
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .10,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                          itemCount: menu.length,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, int index) =>
                              const SizedBox(
                                width: 20,
                              ),
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * 0.20,
                              width: MediaQuery.of(context).size.width * 0.23,
                              child: Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Image.asset(menu[index].img),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(menu[index].text),
                                ],
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('Overview',
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      height: MediaQuery.of(context).size.height * .07,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          Text('4.8',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                          const SizedBox(
                            width: 5,
                          ),
                          // Image.asset(
                          //   "assets/images/astar.png",
                          //   height: 20,
                          //   width: 20,
                          // ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text('Rating',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),

                          const SizedBox(
                            width: 20,
                          ),
                          Text("$count"),
                          const SizedBox(
                            width: 10,
                          ),
                          // InkWell(
                          //     onTap: _increament,
                          //     child: Image.asset(
                          //       "assets/images/fav.jpg",
                          //       height: 40,
                          //       width: 40,
                          //     )),
                          const SizedBox(
                            width: 5,
                          ),
                          Text('Like',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            right: 35,
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.teal[800],
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Icon(
                  Icons.messenger,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
