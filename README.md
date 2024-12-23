# Paquete de Cards

Este proyecto es una aplicación Flutter que muestra diferentes tipos de tarjetas (profile cards, business cards, y credit cards) con información personalizada.

## Características

- **Profile Cards**: Muestra información de perfil como nombre, correo electrónico, descripción y una imagen opcional.
- **Business Cards**: Muestra información de contacto profesional como nombre, posición, número de teléfono y correo electrónico.
- **Credit Cards**: Muestra información de tarjetas de crédito como número de tarjeta, nombre del titular, fecha de expiración y CVV.

## Tecnologías Utilizadas

- **Lenguajes**: Dart
- **Frameworks**: Flutter

## Estructura del Proyecto

- `lib/main.dart`: Punto de entrada de la aplicación.
- `lib/pages/card_page.dart`: Página principal que contiene las diferentes tarjetas.
- `lib/templates/card_template/profile_card_template.dart`: Plantilla para las tarjetas de perfil.
- `lib/atoms`: Componentes atómicos reutilizables como iconos y textos.
- `lib/organisms/card_list`: Listas de tarjetas organizadas por tipo.

## Instalación

1. Clona el repositorio:
    ```sh
    git clone 
    ```
2. Navega al directorio del proyecto:
    ```sh
    cd etapa4
    ```
3. Instala las dependencias:
    ```sh
    flutter pub get
    ```

## Ejecución

Para ejecutar la aplicación en un emulador o dispositivo físico, usa el siguiente comando:
```sh
flutter run
```

## Ejemplo de uso
```dart
import 'package:flutter/material.dart';
import 'package:etapa4/templates/card_template/profile_card_template.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo de Profile Card'),
        ),
        body: Center(
          child: ProfileCard(
            colorText: Colors.black,
            colorCard: Colors.white,
            name: 'John Doe',
            email: 'john.doe@example.com',
            description: 'Software Developer at XYZ Company',
            imageUrl: 'https://example.com/profile.jpg',
          ),
        ),
      ),
    );
  }
}
```

### Respuesta esperada 

Al ejecutar el código anterior, deberías ver una tarjeta de perfil con la siguiente información:  

- Nombre: John Doe
- Correo electrónico: john.doe@example.com
- Descripción: Software Developer at XYZ Company
- Imagen: La imagen de perfil cargada desde la URL proporcionada

La tarjeta tendrá los bordes redondeados, en la parte izquierda de la tarrjeta se verá la imagen de perfil y en la parte derecha se verá el nombre, correo electrónico y descripción. El nombre estará en negrita, mientras que el correo electrónico y la descripción estarán en estilo normal.