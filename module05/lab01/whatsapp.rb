print "Digite seu whatsapp: "
wpp = gets.chomp

isValidFormat = /\([0-9]{2}\) 9 [0-9]{4}\-[0-9]{4}/.match(wpp)

if isValidFormat
  puts "Seu whatsapp é #{wpp}"
else
  puts "Formato inválido. Por favor, utilize o padrão (xx) 9 xxxx-xxx"
end