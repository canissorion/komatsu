
# Kcc Mobile APP

Presentation / Presentación: Contiene toda la parte visual de nuestra app y por lo general esta es la parte más “Sucia” en cuanto a código, estos widgets contienen las llamadas y el estado, la idea en Clean Code es separarlo en Widgets y Logic Holders(Carpetas y archivos que contengan la lógica).


## Presentation

![App Screenshot](https://i.ibb.co/VD9ngyY/presentation.png)


## Domain

Domain / Dominio: En esta capa tendremos todos los archivos que no son susceptibles a cambios de información o de fuente, contendrá los usos de caso, lógica de negocio, objetos de negocio(entidades) y será independiente del resto de las capas. Aunque esta capa esta separada del resto, se une con el repositorio el cual contiene los contratos con los modelos.


![App Screenshot](https://i.ibb.co/S6PpfcX/domain.png)

## Data

Data: Esta capa contiene la implementación del repositorio comentada anteriormente, esta capa se comparte con el dominio ya que los contratos son definidos en esa capa. Por lo tanto, aquí se define la implementación y la fuente de los datos (api calls, etc.), por otra parte, aquí también definiremos la fuente de los datos locales (Data guardada en el celular), los modelos también son parte de esta capa.

![App Screenshot](https://i.ibb.co/cTVw7CR/data.png)

## Packages

- flutter_bloc: Gestor de estados

- equatable: Nos permite verificar si los datos de un objeto son iguales a otro.

- get_it: Inyección de dependencias 

- dartz: Agrega programación funcional a dart [mayor información](https://pub.dev/packages/dartz)

- objectbox: Guardar información en local de forma no relacional (NoSQL)

- connectivity_plus: Detectar conexion a internet

- dio: Hacer peticiones http

- shared_preferences: Guardar información en local

- flutter_dotenv: Cargar variables de entorno

- aad_oauth: Login office 365

# Dev Packages
- mockito: Testing y mockup

- lint: Definir reglas en el proyecto


## Material de interés

 - [Tutorial clean architecture + TDD](https://resocoder.com/2019/08/27/flutter-tdd-clean-architecture-course-1-explanation-project-structure/)
 - [Tutorial uso de Const](https://resocoder.com/2020/01/06/dart-const-tutorial-all-you-need-to-know-const-expressions-canonical-instances-and-more/)
