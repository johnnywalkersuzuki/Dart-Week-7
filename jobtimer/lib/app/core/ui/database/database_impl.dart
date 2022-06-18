import 'package:isar/isar.dart';
import 'package:jobtimer/app/entities/project.dart';
import 'package:jobtimer/app/entities/project_task.dart';
import 'package:path_provider/path_provider.dart';

import './database.dart';

class DatabaseImpl implements Database {
  //Conceito do Singleton para não abrir a conexão a toda hora
  Isar? _databaseInstance;

  @override
  Future<Isar> openConnection() async {
    if (_databaseInstance == null) {
      final dir = await getApplicationSupportDirectory();
      _databaseInstance = await Isar.open(
        schemas: [ProjectTaskSchema, ProjectSchema], //gerado pelo build_runner
        directory: dir.path,
        inspector: true, //permite visualizar o client
      );
    }

    return _databaseInstance!; //force no null
  }
}
