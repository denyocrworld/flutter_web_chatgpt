import 'package:flutter/material.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 24.0),
      child: Column(
        children: <Widget>[
          const Text(
            'Features',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32.0),
          Row(
            children: <Widget>[
              Expanded(
                child: _buildFeature(
                  Icons.security,
                  'Secure',
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed volutpat enim eu ante lacinia interdum.',
                ),
              ),
              Expanded(
                child: _buildFeature(
                  Icons.group,
                  'Collaborative',
                  'Praesent non orci aliquet, vehicula mauris vel, finibus risus. Donec congue odio nulla, a lacinia metus elementum ut.',
                ),
              ),
              Expanded(
                child: _buildFeature(
                  Icons.settings,
                  'Customizable',
                  'Quisque tincidunt malesuada turpis, eu lobortis eros blandit eu. Duis imperdiet malesuada lacus, ac aliquam quam maximus in.',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeature(IconData iconData, String title, String description) {
    return Column(
      children: <Widget>[
        Icon(
          iconData,
          size: 64.0,
          color: Colors.grey[700],
        ),
        const SizedBox(height: 16.0),
        Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
