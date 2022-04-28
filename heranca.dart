void main() {
    Fruta f = new Fruta('limão', 50.0, 'Verde');
    print(f.isMadura);
    f.amadurecer();
    print(f.isMadura);

    f.printAlimento();
}

class Alimento {
    String nome;
    double peso;
    String cor;

    Alimento(this.nome, this.peso, this.cor);

    void printAlimento() {
        print('O alimento $nome pesa $peso e possui cor equivalente a $cor');
    }
}

class Legume extends Alimento {
    bool isCozinhado;

    Legume(String nome, double peso, String cor, this.isCozinhado) : super(nome, peso, cor);

    void cozinhar() {
        print(isCozinhado ? 'Legume cozinhando' : 'Não cozinhado');
    }
}

class Fruta extends Alimento {
    bool isMadura = false;

    Fruta(String nome, double peso, String cor) : super(nome, peso, cor);

    void amadurecer() {
        this.isMadura = true;
    }
}

class FrutaCitrica extends Fruta {
    double nivelDeAzedo;

    FrutaCitrica(String nome, double peso, String cor, this.nivelDeAzedo) 
        : super(nome, peso, cor);
}
