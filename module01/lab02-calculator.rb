def get_valid_number
  loop do
    number = gets.chomp
    
    if number.match?(/\A-?\d+(\.\d+)?\z/)
      return number.to_f
    else
      print "**Valor inválido**. Digite novamente: "
    end
  end
end

loop do
  puts "\nEscolha a operação que deseja realizar: 
  1 - soma
  2 - subtração
  3 - multiplicação
  4 - divisão
  0 - sair"
  print ">> "
  
  operation = gets.chomp

  if operation == "0"
    break
  end

  unless ["0","1","2","3","4"].include?(operation)
    puts "\n**Operação Inválida!**"
    next
  end

  print "\nDigite o primeiro valor: "
  num1 = get_valid_number

  print "\nDigite o segundo valor: "
  num2 = get_valid_number

  result = {
    "1" => num1 + num2,
    "2" => num1 - num2,
    "3" => num1 * num2,
    "4" => num1 / num2,
    };

  puts "\n----------------------------------------"
  puts "O resultado é: #{result[operation].round(2)}"
  puts "----------------------------------------"
end