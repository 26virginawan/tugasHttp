import 'package:flutter/material.dart';
import 'package:tugas9/models/movie.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  final String imgPath = 'https://image.tmdb.org/t/p/w500/';

  MovieDetail(this.movie);

  @override
  Widget build(BuildContext context) {
    String path;
    if (movie.posterPath != null) {
      path = imgPath + movie.posterPath;
    } else {
      path =
          'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg';
    }
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(left: 10),
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          movie.title,
          style: TextStyle(color: Colors.black87),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        path,
                        fit: BoxFit.fill,
                        height: 250,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            movie.title,
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Rating = ' + movie.voteAverage.toString(),
                            style: GoogleFonts.poppins(
                                fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            movie.originalLanguage,
                            style: GoogleFonts.poppins(
                                fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            movie.voteCount.toString(),
                            style: GoogleFonts.poppins(
                                fontSize: 15, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Release",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.black87,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        movie.releaseDate,
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.black54),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Language",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.black87,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        movie.originalLanguage,
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.black54),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Vote Count",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.black87,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        movie.voteCount.toString(),
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.black54),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text(
                  movie.overview,
                  textAlign: TextAlign.left,
                  style:
                      GoogleFonts.poppins(fontSize: 15, color: Colors.black45),
                ),
                // padding: EdgeInsets.only(left: 16, right: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
