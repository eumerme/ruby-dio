require "cpf_cnpj"

print "\nInsira seu CPF: "
cpf = gets.chomp

def validate_cpf(cpf)
  if CPF.valid?(cpf, strict: true)
    puts "\nLegal! Esse é um CPF válido."
  else
    puts "\nCPF inválido."
  end
end

validate_cpf(cpf)
