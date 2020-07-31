# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


# DB:SEED AINDA EM MANUNTENÇÃO, NÃO RODAR ESSE SCRIPT.
=begin
ped = [
    { data_matrix: "0935672894", preco: "40", data_fab: "2020-07-31", data_pedido: "2020-05-12", data_entrega: "2020-08-10", bico_id: Bico.all.sample },#, cliente: Cliente.find_by(first_name: 'Gilmar')},
    #{ data_matrix: "2138273827", preco: "30", data_fab: "2020-07-31", data_pedido: "2020-05-12", data_entrega: "2020-08-10", bico_id: Bico.find_by(ipe: '009')},#, cliente: Cliente.find_by(first_name: 'Seu oswaldo')},
    #{ data_matrix: "3274623746", preco: "20", data_fab: "2020-07-31", data_pedido: "2020-05-12", data_entrega: "2020-08-10", bico_id: Bico.find_by(ipe: '010')},#, cliente: Cliente.find_by(first_name: 'Rafael-el')},
    #{ data_matrix: "1234871293", preco: "23", data_fab: "2020-07-31", data_pedido: "2020-05-12", data_entrega: "2020-08-10", bico_id: Bico.find_by(ipe: '017')}#, cliente: Cliente.find_by(first_name: 'Gilmar')}
]
    ped.each do |pedido|
        Pedido.find_or_create_by!(pedido)
    end
######################################################
=end
bicos = [
    { ipe: "010", dk_code: "dk.AS52790", color: "azul", flow_rate: "22ml"},  
    { ipe: "007", dk_code: "dk.ER52790", color: "amarelo", flow_rate: "34ml"},
    { ipe: "009", dk_code: "dk.AS5G534", color: "roxo", flow_rate: "40ml"},  
    { ipe: "017", dk_code: "dk.SA78790", color: "vermelho", flow_rate: "50ml"}           
]
    bicos.each do |bico|
        Bico.find_or_create_by!(bico)
    end
######################################################
clientes = [
    {first_name: "Gilmar", company: "Estrela", cnpj: "12345678998", number: "21365478954", address: "Park fulana"},
    {first_name: "Seu oswaldo", company: "Oswaldo inc.", cnpj: "65498732154", number: "136547892654", address: "oswaldo street"},
    {first_name: "Rafael-el", company: "Maridão company", cnpj: "14785236985", number: "1230654789562", address: "Rua dos malandro"},
] 
    clientes.each do |cli|
        Cliente.find_or_create_by!(cli)
    end
