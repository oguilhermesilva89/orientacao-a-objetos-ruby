class Tempo
    def self.agora
        Time.now
    end

    # Podemos misturar métodos de classe e métodos de instância
    # na mesma classe, sem problemas

    def alguma_coisa
        puts "funciona"
    end
end

puts Tempo.agora

# tempo = Tempo.new
# tempo.alguma_coisa

Tempo.new.alguma_coisa