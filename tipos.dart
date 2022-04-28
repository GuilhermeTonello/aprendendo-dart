void main() {
    print("Hello World!");

    // o tipo dynamic permite que o tipo da variável seja alterado
    int numero = 10;
    String texto = 'Algum texto aqui'; // Entre aspas simples ou duplas
    double numeroFracionado = 23.56;
    bool isTrabalhando = true;
    List<String> nomes = ['Guilherme', 'Sabrina', 'José', 'Gabriela'];
    print(nomes);

    print('Eu tenho $numero' + ' anos');
    print('Concatenando strings ' 'sem o +');
    print('Primeiro nome da lista é: ${nomes[0]}');

}
