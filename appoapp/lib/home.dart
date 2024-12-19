import 'package:flutter/material.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

import 'constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Dashboard'),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Card(
                  color: const Color.fromRGBO(12, 111, 252, 1),
                  child: Container(
                    height: 250.0,
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: const Color.fromRGBO(12, 111, 252, 1),
                  child: Container(
                    height: 250.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Card(
                  color: const Color.fromRGBO(12, 111, 252, 1),
                  child: Container(
                    height: 200.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Card(
                  color: const Color.fromRGBO(12, 111, 252, 1),
                  child: Container(
                    height: 200.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Card(
                  color: const Color.fromRGBO(12, 111, 252, 1),
                  child: Container(
                    height: 250.0,
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: const Color.fromRGBO(12, 111, 252, 1),
                  child: Container(
                    height: 250.0,
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Supabase.instance.client.auth.signOut();
              Navigator.of(context).pushReplacementNamed('/');
            },
            child: const Text(
              'Log Out',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
