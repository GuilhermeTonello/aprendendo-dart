void main() {
    mostrarInformacoesDaFruta('Laranja', 30, preco: 10.99);

    mostrarInformacoesDaFruta('Limão', 35, peso: 70.2, preco: 7.99, cor: 'Verde');

    mostrarInformacoesDaFruta('Banana', 12, preco: 11.99);
}

/// Comentário de documentação
/** Comentário de documentação multilinha */

/// Função que diz se a fruta está madura ou não
bool estaMadura(int diasDesdeColheita) {
    return diasDesdeColheita > 30;
}

// Parâmetros:
// Posicionais obrigatórios -> posição do argumento e obrigatório
// Nomeados opcionais -> parãmetro com nome e opcional (a ordem deles não importa)
// Parâmetros com "padrão" -> valor padrão do parâmetro
// Modificador "required" -> padrão nomeado obrigatório

void mostrarInformacoesDaFruta(String nome, int dias, 
    { String? cor, double peso = 100.0, required double preco }) {
    String texto = estaMadura(dias) 
        ? "A fruta $nome está madura!" 
        : "A fruta $nome não está madura!";
    print(texto);

    if (cor != null) {
        print('A cor dessa fruta é $cor');
    }

    print('Peso: $peso gramas');

    print('Preço por quilo: R\$ $preco\n');
}
