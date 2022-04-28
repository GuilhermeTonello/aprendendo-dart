void main() {
    Fruta limao = new Fruta('Limão', 50.2, 'Verde', 'Azedo', 15, 10);
    print(limao.nome);
    print(limao.isMadura);

    Fruta laranja = new Fruta.emMinusculo('Laranja', 10);
    print(laranja.nome);
    print(laranja.estaMadura(5));

    Fruta abacate = new Fruta.nomeados(37, nome: 'Abacate');
    print(abacate.nome);
    print(abacate.estaMadura(60));
}

class Fruta {
    String nome;
    double? peso;
    String? cor;
    String? sabor;
    int diasDesdeColheita;
    bool? isMadura;

    Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita, int diasParaMadura) {
        this.isMadura = estaMadura(diasParaMadura);
    }

    Fruta.emMinusculo(this.nome, this.diasDesdeColheita) {
        this.nome = this.nome.toLowerCase();
    }

    Fruta.nomeados(this.diasDesdeColheita, {required this.nome});

    bool estaMadura(int diasParaMadura) {
        return diasDesdeColheita >= diasParaMadura;
    }
}
