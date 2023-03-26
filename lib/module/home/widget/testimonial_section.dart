import 'package:flutter/material.dart';

class TestimonialSection extends StatelessWidget {
  const TestimonialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(vertical: 48.0),
      child: Column(
        children: <Widget>[
          const Text(
            'Testimonial',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildTestimonial(
                'John Doe',
                'Designer',
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed volutpat enim eu ante lacinia interdum. Quisque tincidunt malesuada turpis, eu lobortis eros blandit eu.',
              ),
              const SizedBox(width: 32.0),
              _buildTestimonial(
                'Jane Doe',
                'Developer',
                'Praesent non orci aliquet, vehicula mauris vel, finibus risus. Donec congue odio nulla, a lacinia metus elementum ut. Duis imperdiet malesuada lacus, ac aliquam quam maximus in.',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTestimonial(String name, String role, String text) {
    return Container(
      width: 350.0,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!,
            offset: const Offset(0.0, 4.0),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text,
            style: const TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 16.0),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            role,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
