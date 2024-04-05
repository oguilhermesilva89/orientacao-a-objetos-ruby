#Metodo Construtor - Ele tem que ter o nome de initialize para funcionar

class Servico
    def initialize
        puts 'Estou sendo inicializado'
    end
end

servico = Servico.new

# Na pratica é como se quando chamamos o método .new ele automaticamente invocasse o metodo initialize

puts
puts '--------'

class Casa
    def initialize(quartos)
        @quartos = quartos
    end

    def avaliar
        if @quartos > 3 
            puts "Casa grande"
        else
            puts "Casa pequena"
        end
    end
end

casa_1 = Casa.new(2)
casa_2 = Casa.new(4)


casa_1.avaliar
puts '--------'
casa_2.avaliar


puts
puts '--------'
class Pessoa
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def exibir_informacoes
        puts "#{@nome} tem #{@idade} anos."
    end
end

pessoa = Pessoa.new('Guilherme', 34)
pessoa.exibir_informacoes