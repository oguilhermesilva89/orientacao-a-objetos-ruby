# Por padrão todos os métodos em classes são publicos ou seja acessíveis por qualquer um.

# Método Privado

class Sorteio
    def initialize(participantes)
        @participantes = participantes
    end

    def sortear
        return if @participantes.empty? 
        
        sorteado = @participantes.sample 
        puts "O participante sorteado foi: #{sorteado}"

        remover_participante(sorteado)
    end

    private # todo que for escrito abaixo do private será privado

    def remover_participante(participante)
        @participantes.delete(participante) 
    end
end

participantes = ['Guilherme', 'Cibele', 'Davi', 'Ryan']

sorteio = Sorteio.new(participantes)

sorteio.sortear
sorteio.sortear
sorteio.sortear
sorteio.sortear
sorteio.sortear

=begin 
    O método empty? em Ruby é usado para verificar se um objeto está vazio. Ele retorna true se o objeto não contiver nenhum elemento ou se tiver um comprimento de zero. Caso contrário, retorna false.
    O método empty? é útil para verificar se uma coleção de dados está vazia antes de realizar operações nela. Por exemplo, antes de iterar sobre os elementos de um array ou hash, você pode usar empty? para verificar se há elementos para evitar erros ou exceções.

    método sample nativo do ruby, ele simplesmente analisa todos os elementos do array e sorteia um deles

    O método delete em Ruby é usado para remover elementos de um objeto, como uma string, array ou hash. Ele pode remover um elemento específico com base no valor ou chave fornecidos como argumentos, ou remover todos os elementos que correspondem a um determinado critério.
=end