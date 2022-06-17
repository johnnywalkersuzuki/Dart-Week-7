# jobtimer

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Seguindo o tutorial da Semana Dart Week 7 da Academia do Flutter
Figma: https://www.figma.com/file/eJK6AHqHXEAurdkDmvPdF2/Job-Timer?node-id=0%3A1
Canal: http://academiadoflutter.com.br/dw_2022_evento

## Aulas
Aula 1: https://www.youtube.com/watch?v=eqCYYMXxd4U
10:37 Cronograma Aula 1
15:11 Criando o projeto pelo powershell
16:46 Configurar dependências no arquivo pubspec.yaml
26:45 verificando versões:
      27:43 Firebase cli e login no firebase via conta Google
30:02 Criando novo projeto no Firebase e passos no Firebase no console próprio
      32:15 Chave pelo keytool
      Comando do Firebase
    keytool -list -v -alias androiddebugkey -keystore "C:\Users\Suzukis\.android\debug.keystore" -storepass android -keypass android
    Copiar e colar a chave SHA1
    Autenticação - vamos começar provedor somente com Google, e adicionar nome do projeto e email de suporte
    Adicionar dependência pelo comando na raiz do projeto: flutter pub add firebase_auth
37:36 Configurando o Firebase
39:05 Configurando Flutter modular
      Documentação do flutter_modular: https://modular.flutterando.com.br/docs/flutter_modular/start/
      Todo o app estará dentro de uma pasta em lib, app
45:43 Configurando Asuka
      Import no Material App dentro do app_widget.dart
      Página no Flutter.dev: https://pub.dev/packages/asuka
46:56 Configurando tema da aplicação
56:01 Cor principal com primarySwatch: criar mapa  de cores com https://maketintsandshades.com/#0066B0
1:0:13 Ícones com fluttericon: https://www.fluttericon.com/ ok-cycle-2 e angle-double-right
       pubspec.yaml - asset: assets/fonts/JobTimerIcons.ttf
       Extrair o fonts e copiar no assets/fonts e job_timer_icons.dart no core/ui
1:7:0 Página de splash
1:11:12 Módulos de login e home
1:14:57 Interceptador do firebase_auth
1:19:14 Construindo a tela de login
Aula 2: https://www.youtube.com/watch?v=eKmbCkTsIpc
12:40 Fazer login com Google
20:30 adicionar no app_module pois agrupa todos os bindings em mais de um local, sempre vai existir
21:37 Bloc, cubit, mobX? Vai no Controller
      Fluxo: tela de email e se der certo dentro do Firebase - regra de negócio
      Camada responsável - divisão de responsabilidade - SOLID
      Camada: services - auth
      Conexão com banco
Entities
Tela de home - Parte 1 com layout superior
Módulo de cadastro - Novo projeto
Inspector
Carregar Projetos no LisTile
List Simples
Aula 3: https://www.youtube.com/watch?v=-Qn_FiAbCIM
Aula 4: https://www.youtube.com/watch?v=rRplZZmyuUc
Aula 5: https://www.youtube.com/watch?v=1QrRM0T3cEo


