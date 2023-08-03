import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DrinksScreen extends StatelessWidget {
  DrinksScreen({super.key});

  final List<dynamic> typesOfDrinks = [
    //water, title, background, color, hidratacion
    [240, 'Vaso de agua',     const Color.fromARGB(255, 26, 49, 70), const Color.fromARGB(255, 139, 215, 255), .5],
    [550, 'botella de agua', const Color.fromARGB(255, 26, 49, 70), const Color.fromARGB(255, 139, 215, 255), 1],
    [240, 'Una taza de té',      const Color.fromARGB(255, 67, 47, 19), const Color.fromARGB(255, 255, 207, 115), .5],
    [250, 'Un vaso de leche',    const Color.fromARGB(255, 54, 34, 69), const Color.fromARGB(255, 230, 164, 255), .7],
    [200, 'Una taza de café',    const Color.fromARGB(255, 67, 47, 19), const Color.fromARGB(255, 255, 207, 115), .2],
    [200, 'Leche saborizada',    const Color.fromARGB(255, 64, 31, 44), const Color.fromARGB(255, 255, 157, 200), .5],
    [200, 'vaso de refresco', const Color.fromARGB(255, 32, 29, 69), const Color.fromARGB(255, 159, 147, 255), .2],
    [355, 'Cerveza',     const Color.fromARGB(255, 71, 59, 24), const Color.fromARGB(255, 255, 249,130),.3],];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 16.0,
        leadingWidth: 100,
        leading: Text(
          'Cancelar',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        actions: [_hour(context)],
      ),
      body: GridView.count(crossAxisCount: 2, children: [
      _oneCard(context, 0),
      _oneCard(context, 1),
      _oneCard(context, 2),
      _oneCard(context, 3),
      _oneCard(context, 4),
      _oneCard(context, 5),
      _oneCard(context, 6),
      _oneCard(context, 7),
    ]));  }



  Widget _oneCard(BuildContext context, int type){
    return GestureDetector(
           onTap: () {},
           child: Center(
             child: SizedBox(
               width: 100.0,
               //height: 60.0,
               child: 
                Card(
                  elevation: 10.0,
                  color: typesOfDrinks[type][2],
                  shape: RoundedRectangleBorder(
                      side:  BorderSide(
                        color: typesOfDrinks[type][2],
                      ),
                      borderRadius: BorderRadius.circular(10.0), 
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${typesOfDrinks[type][0]} ml',
                          textAlign: TextAlign.center,
                          style:  TextStyle(
                            fontWeight: FontWeight.bold,
                            color: typesOfDrinks[type][3], 
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          typesOfDrinks[type][1],
                          style:  TextStyle(
                            color: typesOfDrinks[type][3],
                            fontSize: 10, 
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                  ),
                ),
                     // ),
               ),
        ),
    );
   }

  Widget _hour(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Text(
          DateFormat.Hm().format(DateTime.now()),
          style: Theme.of(context).textTheme.bodySmall,
          );
      },
    ); 
  }
}
