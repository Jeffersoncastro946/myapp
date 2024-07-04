import 'package:flutter/material.dart';

class SecuritySettingsPage extends StatelessWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2958515428.
  const SecuritySettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(...) if needed
      body: ListView(
        children: [
          _SectionHeader('Tu cuenta está protegida'),
          const ListTile(
            title: Text(
                'La Verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.'),
            trailing: Icon(Icons.check_circle, color: Colors.green),
          ),
          ElevatedButton(
            child: const Text('Ver detalles'),

            onPressed: () {
             
            },
          ),
          const Divider(),
          _SectionHeader('Verificación de privacidad'),
          const ListTile(
            trailing: CircleAvatar(child: Text('G')),
            title: Text(
                'Elige la configuración de privacidad indicada para ti con esta guía paso a paso.'),
          ),
          ElevatedButton(
            child: const Text('Realizar la Verificación de privacidad'),
            onPressed: () {
              // Respuesta cuando se presiona
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('¿Buscas otra información?'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.search),
                  title: const Text('Buscar en la Cuenta de Google'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    // Respuesta cuando se presiona
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.question_mark),
                  title: const Text('Ver las opciones de ayuda'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    // Respuesta cuando se presiona
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.message),
                  title: const Text('Enviar comentarios'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    // Respuesta cuando se presiona
                  },
                ),
              ],
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children:  [
                 
                 Expanded(
                  child: Text(
                    'Solo tú puedes ver la configuración. También puedes revisar la configuración de Maps, la Búsqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y la seguridad de tus datos.',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                 SizedBox(width: 8), // Espacio entre el ícono y el texto
                // Icon(Icons.lock, color: Colors.blue, size: 16),
                CircleAvatar(child: Text('G')),
              ],
            )
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _SectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
