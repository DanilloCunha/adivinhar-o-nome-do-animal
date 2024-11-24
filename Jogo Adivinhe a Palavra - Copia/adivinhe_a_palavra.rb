novo_jogo = "s"

while novo_jogo == "s"

  nome = %w{cachorro gato camelo onça peixe}
  palavra_sorteada = nome.sample
  palavra_tamanho = palavra_sorteada.size

  puts "Descubra qual animal estou pensando!"
  puts "Dica: O nome do animal tem #{palavra_tamanho} letras."

  palavra_parcial = []
  palavra_tamanho.times { palavra_parcial << " _ " }

  puts palavra_parcial.join

  fim = false
  tentativas = 0

  while fim == false
    puts "Escolha uma letra:"
    sua_letra = gets.chomp
    tentativas += 1
    aux = 0

    palavra_sorteada.each_char do |letra_palavra|
      if palavra_parcial[aux] == ' _ ' && letra_palavra == sua_letra
        palavra_parcial[aux] = sua_letra
      end
      aux += 1
    end

    if palavra_parcial.join.count(" _ ") > 0
      fim = false
      puts palavra_parcial.join
    else
      fim = true
    end
  end

  puts "Parabéns, a palavra era #{palavra_sorteada}!"
  puts "Você conseguiu em #{tentativas} tentativa(s)."
  puts "Deseja jogar novamente? (s/n)"
  novo_jogo = gets.chomp
end

puts "Obrigado por jogar!"
