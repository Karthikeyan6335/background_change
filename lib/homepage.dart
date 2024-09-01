import 'package:flutter/material.dart';
import 'package:bg_change/colors.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:bg_change/containers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color x = Colors.white;

  //String backgroundColor = "Grey";

  List<Bg_colors> colors = Bg_colors.getbg();

  @override
  Widget build(BuildContext context) {
    List<Bg_colors> colors = Bg_colors.getbg();

    return Scaffold(
      appBar: AppBar(
        title: Text("BG CHANGE",
            style: GoogleFonts.poppins(
              color: Colors.black.withOpacity(0.5),
            )),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        child: ListView.separated(
          itemCount: colors.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 30,
          ),
          itemBuilder: (context, index) {
            return Center(
              child: GestureDetector(
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: colors[index].bcolor.withOpacity(.3),
                    //borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(30),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: colors[index].bcolor,
                      //borderRadius: BorderRadius.circular(20),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(.7),
                          offset: const Offset(4, 4),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                          color: Colors.white.withOpacity(.2),
                          offset: Offset(-4, -4),
                          blurRadius: 15,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    child: Text(
                      colors[index].colorName,
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    x = colors[index].bcolor;
                  });
                },
              ),
            );
          },
        ),
        onDoubleTap: () {
          setState(() {
            x = Colors.white;
          });
        },
      ),
      backgroundColor: x,
    );
  }
}
