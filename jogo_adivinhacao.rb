def boas_vindas
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\nComeçaremos o jogo para você, " + nome
end

def sorteio_de_numero
    puts "Escolhendo um número secreto entre 0 e 200..."
    numero_secreto = 10
    puts "Tente adivinhas o numero!\n"
    return numero_secreto
end

def pede_um_numero(tentativa, limite_de_tentativas)
    puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre um numero"
    chute = gets
    puts "\nSerá que acertou o chute? Você chutou " + chute
    return chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute.to_i

    if acertou
        puts "Acertou"
        return true
    else 
        maior = numero_secreto > chute.to_i
        if maior   
            puts "O numero secreto é maior"
        else
            puts "O numero secreto é menor"
        end
    end
    return false
end

boas_vindas
numero_secreto = sorteio_de_numero

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
    chute = pede_um_numero(tentativa, limite_de_tentativas)
    if verifica_se_acertou(numero_secreto, chute)
        break
    end
end