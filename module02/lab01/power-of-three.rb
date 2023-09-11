input_numbers = [];

def get_number 
  print "\nInsira um número: "
  number = gets.chomp

  if number.match?(/\A-?\d+(\.\d+)?\z/)
    return number.to_f
  else
    print "\nValor inválido.\n"
    return get_number
  end
end 

def calculate_power_of_3(numbers)
  return numbers.map { |num| (num**3).round(2) }
end

puts "\nNesse programa, ocê poderá inserir até 3 números para descobrir a potêcia de 3 de cada um deles!"

loop do 
  puts "\nEscolha o próximo passo:
  1 - Inserir número
  2 - Calcular potência de 3
  0 - Sair"
  print ">> "

  choice = gets.chomp

  case choice
  when "1"
    if input_numbers.length < 3
      input_numbers << get_number
    else
      puts "\nVocê já inseriu 3 números. Escolha a opção 2 para calcular a potência de 3."
    end
  when "2"
    if input_numbers.empty?
      puts "\nVocê ainda não inseriu números. Escolha a opção 1 para inserir números."
    else
      result = calculate_power_of_3(input_numbers)
      puts "\nO resultado da potência de 3 dos números é: #{result}"
    end
  when "0"
    break
  else
    puts "\nOpção inválida. Tente novamente."
  end
end