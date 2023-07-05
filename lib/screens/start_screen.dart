import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_totalMl(), _indicators(), _buttonReg()],
      ),
    );
  }

  Widget _totalMl() {
    return Column(
      children: [
        Text(
          '0 ML',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          'Faltan 2500 mL',
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }

  Widget _indicators() {
    return IntrinsicHeight(
      child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _percentage(),
            const SizedBox(
              width: 10,
            ),
            _smallDivider(),
            const SizedBox(
              width: 10,
            ),
            _hydration(),
          ],
        ),
    );
  }

  Widget _percentage() {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Stack(
            alignment: Alignment.center,
              children: [
               const SizedBox(
                height: 45,
                width: 45,
                 child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 62, 139, 236),
                  backgroundColor: Color.fromARGB(255, 17, 50, 74),
                  strokeWidth: 6,
                  value: 0.3,
                             ),
               ),
              Text(
                '0 %',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ]
          ),
        ),
        Text(
          'Hoy',
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }

  Widget _smallDivider() {
    return const VerticalDivider(
      color: Color.fromARGB(255, 51, 51, 51),
      thickness: 2,
      width: 20,
      indent: 10,
      endIndent: 0,
    );
  }

  Widget _hydration() {
    return Text('1.0', style: Theme.of(context).textTheme.headlineSmall);
  }

  Center _buttonReg() {
    return Center(
        child: ElevatedButton(onPressed: () {}, child: const Text('Registar')));
  }
}