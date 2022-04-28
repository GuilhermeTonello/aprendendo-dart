void main() {
    Bolo chocolate = BoloChocolate();
    chocolate.fazerMassa();

    Bolo nozes = BoloNozes();
    nozes.fazerMassa();

    print('');

    fazerBolo(chocolate);

    print('');

    fazerBolo(nozes);
}

void fazerBolo(Bolo bolo) {
    bolo.separarIngredientes();
    bolo.fazerMassa();
    bolo.assar();
}

abstract class Bolo {
    String sabor;

    Bolo(this.sabor);

    void separarIngredientes() {
        print('Seprando ingredientes do bolo sabor $sabor');
    }

    void fazerMassa();

    void assar() {
        print('Assando bolo sabor $sabor');
    }
}

class BoloChocolate extends Bolo {

    BoloChocolate() : super('Chocolate');

    @override
    void fazerMassa() {
        print('Fazendo a massa do bolo de chocolate');
    }

}

class BoloNozes implements Bolo {

    @override // @override não é obrigatório
    String sabor = 'Nozes';
    
    // @override não é obrigatório
    void fazerMassa() {
        print('Fazendo a massa do bolo de nozes');
    }

    @override
    void assar() {
        print('Assando o bolo de $sabor a 200 graus');
    }

    @override
    void separarIngredientes() {
        print('Nozes, fermento, ovo e farinha');
    }

}
