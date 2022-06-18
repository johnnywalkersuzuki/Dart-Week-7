import 'package:isar/isar.dart';
import 'package:jobtimer/app/entities/converters/project_status_converter.dart';

part 'project_task.g.dart';

@Collection()
class ProjectTask {
  @Id()
  int? id;
  // É possível alterar por exemplo com @Name('nome_task')
  late String name;
  
  @ProjectStatusConverter()
  late int duration;

  late DateTime created = DateTime.now();
}
