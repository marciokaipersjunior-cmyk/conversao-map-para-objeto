class Aluno {
  int id;
  String nome;
  String? telefone;

  Aluno({required this.id, required this.nome, this.telefone});
}

void main() {
  List<Map<String, dynamic>> alunos = [
    {"id": 98523488, "nome": "João da Silva", "telefone": null},
    {"id": 98523489, "nome": "Lucas Evangelista", "telefone": '11996541236'},
    {"id": 98523490, "nome": "Maria Teodoro", "telefone": '11944551236'},
    {"id": 98523491, "nome": "Isabel Santos", "telefone": null},
  ];

  // Aqui estamos convertendo a lista de Map
  // para uma lista de objetos do tipo Aluno
  //
  // O map() percorre cada item da lista "alunos"
  // e transforma cada Map em um objeto Aluno
  //
  // O toList() converte o resultado final
  // em uma lista do tipo List<Aluno>
  List<Aluno> listaAlunos = alunos.map((aluno) {
    // Retorna um novo objeto Aluno
    // pegando os valores do Map
    return Aluno(
      id: aluno["id"], // pega o id do Map
      nome: aluno["nome"], // pega o nome do Map
      telefone: aluno["telefone"], // pega o telefone do Map
    );
  }).toList();

  // Percorre a nova lista de objetos
  // e imprime o nome de cada aluno
  for (var aluno in listaAlunos) {
    print(aluno.nome);
    print(aluno.telefone ?? 'Não possui telefone');
  }
}
