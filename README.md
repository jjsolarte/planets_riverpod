# 🪐 Planets Viewer - Flutter App

![Flutter](https://img.shields.io/badge/Flutter-3.29.1-blue?style=flat&logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.7.0-blue?style=flat&logo=dart)
![Riverpod](https://img.shields.io/badge/Riverpod-2.4.5-orange?style=flat&logo=flutter)
![Clean Architecture](https://img.shields.io/badge/Clean_Architecture-✓-green?style=flat)

## 📌 Descripción

Este proyecto es una aplicación de visualización de información planetaria, desarrollada implementando **Clean Architecture** y **Diseño Atómico** para garantizar un código altamente mantenible, testeable y escalable. La aplicación permite explorar datos detallados sobre los planetas de nuestro sistema solar con una interfaz rica e interactiva.

[Insertar GIF o Captura de la aplicación]

## 🛠️ Tecnologías y Paquetes Utilizados

- **Flutter**: Framework de desarrollo para aplicaciones multiplataforma.
- **Dart**: Lenguaje de programación principal.
- **Riverpod**: Gestión de estado reactiva, predecible y testeable.
- **GoRouter**: Manejo de rutas de manera declarativa y estructurada.
- **SharedPreferences**: Almacenamiento local de datos persistentes.
- **Diseño Atómico**: Metodología de estructuración de componentes para una mejor organización del UI.

## 🏛️ Arquitectura

Este proyecto sigue los principios de **Clean Architecture**, separando claramente las responsabilidades en capas bien definidas:

```
/lib
│── core/            # Funcionalidades reutilizables (extensions, constants, etc.)
│── data/            # Capa de datos (datasources, models)
│── domain/          # Capa de dominio (usecases, entidades, interfaces)
│── presentation/    # Capa de presentación (providers, vistas, widgets)
│── main.dart        # Punto de entrada de la aplicación
```
## 🔄 Gestión de Estado

Se utiliza **Riverpod** como solución de gestión de estado, implementando:

- **StateNotifierProvider**: Para estados complejos que cambian a lo largo del tiempo.
- **FutureProvider**: Para operaciones asíncronas como la carga de datos planetarios.
- **Provider**: Para datos derivados y cálculos.

## 💾 Persistencia de Datos

La aplicación implementa **SharedPreferences** para:

- Guardar los planetas favoritos del usuario
- Almacenar preferencias de visualización

## 🎨 Diseño Atómico

Siguiendo la metodología de Diseño Atómico, los componentes visuales están organizados en:

- **Átomos**: Elementos UI básicos (botones, textos, iconos)
- **Moléculas**: Combinaciones de átomos (tarjetas de planetas, barras de información)
- **Organismos**: Componentes complejos (galerías de planetas, gráficos de comparación)
- **Plantillas**: Estructuras de página reutilizables
- **Páginas**: Implementaciones concretas de pantallas

## 🚀 Características Principales

- Visualización detallada de todos los planetas del sistema solar
- Gráficos comparativos de tamaño, masa, distancia, etc.
- Sistema de favoritos para acceso rápido
- Animaciones fluidas entre transiciones

## 📱 Capturas de Pantalla

![Simulator Screenshot - iPhone 16 - 2025-03-21 at 20 24 54](https://github.com/user-attachments/assets/4227da45-e6eb-45bd-bc20-b38c7f94b34d)
![Simulator Screenshot - iPhone 16 - 2025-03-21 at 20 25 04](https://github.com/user-attachments/assets/7d7f5af8-af37-4111-a9d4-58ca903bc08e)
![Captura de pantalla 2025-03-22 a la(s) 9 57 59 a  m](https://github.com/user-attachments/assets/24fc87d5-b4d8-4e3f-a298-c91fa9cdabe5)
![Simulator Screenshot - iPhone 16 - 2025-03-21 at 20 25 21](https://github.com/user-attachments/assets/9d8a9d35-ddfe-4503-b1be-c8236ff5a7cb)

## 🔮 Mejoras Futuras

- Expansión para incluir información de exoplanetas
- Añadir simulaciones de órbitas planetarias
- Implementación de un modo educativo con cuestionarios
- Soporte para visualización de datos en diferentes unidades de medida

## 👨‍💻 Desarrollado por

**Jeison Solarte**

---

¡Gracias por revisar este proyecto! Si tienes sugerencias o quieres contribuir, no dudes en abrir un issue o pull request. 🚀
