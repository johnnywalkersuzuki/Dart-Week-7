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
      21:37 Bloc, cubit, mobX, getX? autro prefere no Controller
      Fluxo: tela de email e se der certo dentro do Firebase - regra de negócio
      Camada responsável - divisão de responsabilidade - SOLID
      Camada: services - auth
      Conexão com banco
      Cubit - Bloc simplificado - seja qual for, vai ser com o controller ao inves de alterar a classe
      Arquivo: login_state.dart na pasta controller
      Três estados da tela de login: initial, loading, failure via enum para saber o estado atual
      Estado estende Equatable
      construtor privado com o status e mensagem de erro se houver
      ponto inicial único por isso já começa com initial()
      criar Equatable props pois identifica a mmudança da classe por atributos e não instância, 
      Copy With: duplicar a instância da classe, mudança será uma instância nova sem new
      30:30 Part e part of para juntar as duas classes: locin_controller e login_state
      Controller recebe a autenticação mas sem acesso fora do controller e só depois para serviço.
      Authersvice do AppModule i()
      33:36 Login Page precisa receber do construtor o LoginController e recebe direto
      No login_module disponibilizo para o Modular via bind mas tem que ser pelo BLocBind do modular e disponibiliza a controler com isntância do authService que vem do AppModule pelo i().
      35:44 Sign-in quando pressionar o botão do Google
      37:16 Novo status - loading
      43:18 Fazer o login
      45:45 Forçar erro no login e tratar o erro
      Alert no snackbar
      BlocListener não faz build mas escuta os estados

49:51 Criando conexão com o banco Isar
      Core/Database interface
54:37 Preparar as Entities criando a pasta entities em app para representar as tabelas de banco de dados
57:10 (observação: se não quiser warnings sobre usar camel case, alterar rules em analysis_options.yaml com rules: constant_identifier_names: false)
58:59 Executa a build runner para gerar a entidade: no terminal:
flutter pub run build_runner watch --delete-conflicting-outputs
1:0:4 project.dart
1:5:1 Teste na Home para popular o banco
1:6:43: Declarar ao Isar quais são as entidades pelo Schemas em database_impl.dart, classes vêm do build_runner
Tela de home - Parte 1 com layout superior
Módulo de cadastro - Novo projeto
1:10:35 Inspector - baixar a versão para Windows, pois só tem para Mac no repositório do Github
Carregar Projetos no LisTile
List Simples
Aula 3: https://www.youtube.com/watch?v=-Qn_FiAbCIM
Aula 4: https://www.youtube.com/watch?v=rRplZZmyuUc
Aula 5: https://www.youtube.com/watch?v=1QrRM0T3cEo


