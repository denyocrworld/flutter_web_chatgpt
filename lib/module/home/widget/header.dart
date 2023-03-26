import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  Header({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        'FreelancerMania.com',
        style: GoogleFonts.pacifico(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
      centerTitle: false,
      actions: <Widget>[
        Row(
          children: [
            SizedBox(
              height: 42,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Blog",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "About us",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Contact",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
