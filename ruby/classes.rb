# ---------------
# Criando classes
# ---------------

class Cachorro
    attr_accessor :nome
    
    #
    # Crinado Metodo
    #
    def late
        puts @nome + ' Diz: Au au ....'
    end
end

# instanciando a classe

spike = Cachorro.new

#adicionando dados a classe
spike.nome = 'Spike'

# chamando metodo dentro da classe
spike.late


## Herança

# class Animal
#     attr_accessor :nome, :idade
# end

### #atribuindo herança

# class filho < Animal
