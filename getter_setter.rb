# getter and setter - Esses métodos começam com a get e set que traduzindo seria pegar e definir

# O objetivo dos métodos getters e setters são acessar e definir os valores de variaveis de instância dos nossos objetos, principalmente quando chamados por objetos externos, ou seja algum codigo definido fora da nossa classe


=begin
class Casa
    def get_cor_da_parede
        @cor_da_parede
    end

    def set_cor_da_parede(cor)
        @cor_da_parede = cor
    end
end

casa = Casa.new

casa.set_cor_da_parede('Azul')

puts casa.get_cor_da_parede
=end

# É uma convenção entre desenvolvedores, não usar get e set no começo dos nomes dos métodos



=begin
class Casa
    def cor_da_parede
        @cor_da_parede
    end

    def cor_da_parede=(cor)
        @cor_da_parede = cor
    end
end

casa = Casa.new

casa.cor_da_parede = 'Azul'

puts casa.cor_da_parede
=end



# attr_reader and attr writer

=begin
class Casa
    attr_reader :cor_da_parede
    attr_writer :cor_da_parede
end

casa = Casa.new

casa.cor_da_parede = 'Azul'

puts casa.cor_da_parede
=end



# attr_accessor (substitui os dois: attr_reader e attr_writer)

=begin
class Casa
    attr_accessor :cor_da_parede
end

casa = Casa.new

casa.cor_da_parede = 'Azul'

puts casa.cor_da_parede
=end



# Praticando

class Produto
    #É comum sempre colocar os get e set no começo da classe
    attr_reader :fabricante # somente leitura
    attr_writer :preco      # somente escrita
    attr_accessor :nome, :codigo     # ambos (leitura e escrita)

    def initialize
        @fabricante = 'Apple'
        @codigo = 1234
    end
end

celular = Produto.new

# celular.fabricante = 'LG'     #tentando chamar o setter (x)
# puts celuar.fabricante        #tentando chamar o getter (ok)

# celular.preco = 1000          #tentando chamar o setter (ok)
# puts celuar.preco             #tentando chamar o getter (x)
    
# celular.nome = 'Iphone'       #tentando chamar o setter (ok)
# puts celuar.nome              #tentando chamar o getter (ok)

celular.codigo = 6789           #tentando chamar o setter
puts celular.codigo                  #tentando chamar o getter

