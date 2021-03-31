users = [
    {username: "mauroczf", password: "senha12" },
    {username: "mauro_czf", password: "senha34" }
]

# método de autenticação para verificar se os usuários e senhas se conferem
def auth_user(username, password, list_of_users)
list_of_users.each do |user_record|
if user_record[:username] == username && user_record[:password] == password
return user_record
end
end
"Credenciais incorretas"
end

# execução do programa
puts "Bem vindo ao autenticador"
25.times {printf("-")}
puts 
puts "Este programa irá conferir seu usuário e verificar sua senha"
puts "Se a senha estiver incorreta, você vai voltar ao user object"

attempts = 1
while attempts < 4
print "Usuário: "
username = gets.chomp
print "Senha: "
password = gets.chomp
authentication = auth_user(username, password, users)
puts authentication
puts "Pressione N para sair ou pressione qualquer tecla para continuar: "
input = gets.chomp.downcase
break if input == "n"
attempts += 1
end
puts "Você alcançou o limite máximo de tentativas!" if attempts == 4