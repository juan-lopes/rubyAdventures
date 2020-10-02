def boas_vindas
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\nComeçaremos o jogo para você, #{nome}"
end

def sorteio_de_numero
    puts "Escolhendo um número secreto entre 0 e 200..."
    numero_secreto = rand(200)
    puts "Tente adivinhas o numero!\n"
    return numero_secreto
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
    puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
    puts "Chutes até agora #{chutes}"
    puts "Entre um numero"
    chute = gets
    puts "\nSerá que acertou o chute? Você chutou #{chute}"
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

pontos_ate_agora = 1000
limite_de_tentativas = 5
chutes = []

for tentativa in 1..limite_de_tentativas

    chute = pede_um_numero(chutes, tentativa, limite_de_tentativas)
    chutes << chute
  
    pontos_a_perder = (chute - numero_secreto).abs / 2.0
    pontos_ate_agora -= pontos_a_perder

    if verifica_se_acertou(numero_secreto, chute)
        break
    end
end

puts "Você ganhou #{pontos_ate_agora} pontos."