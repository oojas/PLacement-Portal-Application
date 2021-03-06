// ignore_for_file: must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:placementcracker/Authentication/pfp.dart';
import 'package:placementcracker/Widgets/Courses/mainUI.dart';
import 'package:placementcracker/Widgets/about.dart';
import 'package:placementcracker/Widgets/ambassadorProgram.dart';
import 'package:placementcracker/Widgets/feedback.dart';
import 'package:placementcracker/Widgets/resumeUI.dart';
import 'package:placementcracker/Widgets/youtubeChannels.dart';
import 'package:placementcracker/helper/general.dart';
import 'package:placementcracker/providers/userinfo_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class drawer extends StatelessWidget {
  drawer({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser;
  late var photo = user?.photoURL;
  late var name = user?.displayName;
  General general = new General();
  launchURLForNotes(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.indigo.shade200,
        child: ListView(
          children: [
            Container(
                color: Colors.indigo.shade400,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Provider.of<UserInformationProvider>(context,
                                  listen: false)
                              .getFromUser();
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Profile();
                          }));
                        },
                        child: CircleAvatar(
                            radius: 70, backgroundImage: NetworkImage(photo!)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            name!,
                            style: GoogleFonts.roboto(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EnteringScreenCourse();
                      }));
                    },
                    leading: FaIcon(
                      FontAwesomeIcons.book,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Courses',
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return campusProgram();
                      }));
                    },
                    leading: FaIcon(
                      FontAwesomeIcons.chalkboardTeacher,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Campus ambassador programms',
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return YoutubeChannels();
                      }));
                    },
                    leading: FaIcon(
                      FontAwesomeIcons.youtube,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Youtube channels to follow',
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return resume();
                      }));
                    },
                    leading: FaIcon(
                      FontAwesomeIcons.file,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Resume building tips',
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    onTap: () {
                      final url =
                          "https://drive.google.com/drive/folders/12tbSVf-e5dn4d9pq5jQ22tl7hMJrQmEL?usp=sharing";
                      launchURLForNotes(url);
                    },
                    leading: FaIcon(
                      FontAwesomeIcons.code,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Data structure notes',
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return About();
                      }));
                    },
                    leading: FaIcon(
                      FontAwesomeIcons.sign,
                      color: Colors.black,
                    ),
                    title: Text(
                      'About',
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return FeedbackApp();
                      }));
                    },
                    leading: FaIcon(
                      FontAwesomeIcons.pen,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Feedback',
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    onTap: () {
                      Provider.of<UserInformationProvider>(context,
                              listen: false)
                          .getFromUser();
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return Profile();
                      }));
                    },
                    leading: FaIcon(
                      FontAwesomeIcons.male,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Profile',
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
