# Variáveis de locais e Variáveis de instância

class Cofre
    def gerar_senha
        hora = Time.now.hour
        @senha = "#{hora}#{rand(99)}"
    end

    def mostrar_senha
        puts @senha
    end

    def mostrar_hora
        puts hora
    end
end

cofre = Cofre.new
cofre.gerar_senha

cofre.mostrar_senha

cofre.mostrar_hora