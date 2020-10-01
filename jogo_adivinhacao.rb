def boas_vindas
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\nComeçaremos o jogo para você, " + nome
end

def sorteio_de_numero
    numero_secreto = 10
end

boas_vindas
sorteio_de_numero
limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
    puts "Tentativa" + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre um numero"
    chute = gets
    puts "\nSerá que acertou o chute? Você chutou " + chute

    acertou = numero_secreto == chute.to_i

    if acertou
        puts "Acertou"
        break
    else 
        acertou = numero_secreto > chute.to_i
        if maior   
            puts "O numero secreto é maior"
        else
            puts "O numero secreto é menor"
        end

    end
end