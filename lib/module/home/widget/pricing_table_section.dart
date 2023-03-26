import 'package:flutter/material.dart';

class PricingTableSection extends StatelessWidget {
  const PricingTableSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 24.0),
      child: Column(
        children: <Widget>[
          const Text(
            'Pricing',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildPricingCard(
                'Basic',
                'Lorem ipsum dolor sit amet',
                '\$9.99',
                'per month',
              ),
              const SizedBox(width: 32.0),
              _buildPricingCard(
                'Standard',
                'Consectetur adipiscing elit',
                '\$19.99',
                'per month',
                highlighted: true,
              ),
              const SizedBox(width: 32.0),
              _buildPricingCard(
                'Premium',
                'Sed do eiusmod tempor incididunt',
                '\$29.99',
                'per month',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPricingCard(
    String title,
    String description,
    String price,
    String duration, {
    bool highlighted = false,
  }) {
    return Container(
      width: 300.0,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: highlighted ? Colors.grey[700] : Colors.white,
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
            title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: highlighted ? Colors.white : Colors.grey[800],
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            description,
            style: TextStyle(
              color: highlighted ? Colors.white : Colors.grey[600],
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            price,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              color: highlighted ? Colors.white : Colors.grey[800],
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            duration,
            style: TextStyle(
              color: highlighted ? Colors.white : Colors.grey[600],
            ),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[800],
            ),
            onPressed: () {},
            child: const Text("Get started"),
          ),
        ],
      ),
    );
  }
}
