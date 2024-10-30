import 'package:flutter/material.dart';
import 'package:sistema_de_gestion_inventarial_para_mercados/categorias/alcohol.dart';
import 'package:sistema_de_gestion_inventarial_para_mercados/categorias/bebidas.dart';
import 'package:sistema_de_gestion_inventarial_para_mercados/categorias/carnes.dart';
import 'package:sistema_de_gestion_inventarial_para_mercados/categorias/dulces.dart';
import 'package:sistema_de_gestion_inventarial_para_mercados/categorias/frutas.dart';
import 'package:sistema_de_gestion_inventarial_para_mercados/categorias/paquetes.dart';
import 'package:sistema_de_gestion_inventarial_para_mercados/privacidad.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto - Sistema de Gestión Inventarial para Mercados',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Nombre de la App'),
              Icon(Icons.person),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.cyan,
                ),
                child: const Text(
                  'Nombre del usuario',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Ajuste 1'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Privacidad()),
                  );
                },
              ),
              ListTile(
                title: const Text('Ajuste 2'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Privacidad()),
                  );
                },
              ),
              ListTile(
                title: const Text('Ajuste 3'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Privacidad()),
                  );
                },
              ),
              ListTile(
                title: const Text('Ajuste 4'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Privacidad()),
                  );
                },
              ),
              ListTile(
                title: const Text('Ajuste 5'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Privacidad()),
                  );
                },
              ),
              ListTile(
                title: const Text('Privacidad'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Privacidad()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CategoryButton(
                      color: Colors.blue,
                      label: 'Frutas',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Frutas()),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CategoryButton(
                      color: Colors.orange,
                      label: 'Bebidas',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Bebidas()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: CategoryButton(
                      color: Colors.red,
                      label: 'Carnes',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Carnes()),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CategoryButton(
                      color: Colors.grey,
                      label: 'Paquetes',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Paquetes()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: CategoryButton(
                      color: Colors.yellow,
                      label: 'Alcohol',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Alcohol()),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CategoryButton(
                      color: Colors.purple,
                      label: 'Dulces',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dulces()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Botones principales de navegación
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              label: 'Boton 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_outlined),
              label: 'Boton 3',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_rounded),
              label: 'Boton 4',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits_rounded),
              label: 'Carrito',
            ),
          ],
          selectedItemColor: Color(0xFF603E85),
          unselectedItemColor: Colors.grey, // Color de ítems no seleccionados
          showSelectedLabels:
              true, // Asegura que las etiquetas seleccionadas se muestren
          showUnselectedLabels:
              true, // Asegura que las etiquetas no seleccionadas se muestren
          type: BottomNavigationBarType
              .fixed, // Asegura que se muestren todas las etiquetas
        ));
  }
}

class CategoryButton extends StatelessWidget {
  final Color color;
  final String label;
  final VoidCallback onTap;

  const CategoryButton(
      {Key? key, required this.color, required this.label, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
