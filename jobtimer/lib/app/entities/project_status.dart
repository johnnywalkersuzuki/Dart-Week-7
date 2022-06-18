enum ProjectStatus {
  em_andamento(label: 'Em andamento'), //label é o construtor
  finalizado(label: 'Finalizado');

  final String label;
  const ProjectStatus({required this.label});
}
