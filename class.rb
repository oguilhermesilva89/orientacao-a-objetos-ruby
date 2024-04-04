# class Cachorro
#     def latir
#         puts 'au au'
#     end
# end

# class Gato
#     def miar
#         puts 'miau'
#     end
# end

# cachorro = Cachorro.new
# cachorro.latir

# Gato.new.miar

class Conta
end

class Banco
    def cria_nova_conta
        Conta.new
    end
end

banco = Banco .new
conta = banco.criar_nova_conta #Mesma coisa que conta = Conta.new