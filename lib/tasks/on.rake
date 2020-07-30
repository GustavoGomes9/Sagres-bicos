namespace :on do
  desc "Dropa o banco antigo e recria um novo para testes"
  task flow: :environment do #db:drop db:create db:migrate db:seed
    %x(rails db:drop)  
    %x(rails db:create)
    %x(rails db:migrate)
    %x(rails db:seed)  
    %x(rails on:add_bico)
    end
    
  desc "Cria um banco para testes"
  task add_bico: :environment do
    bicos = [
            {
                ipe: "010",
                dk_code: "dk.AS52790",
                color: "azul",
                flow_rate: "22ml",
                drilling: "6"
            },
            {
                ipe: "007",
                dk_code: "dk.ER52790",
                color: "amarelo",
                flow_rate: "34ml",
                drilling: "5"
            },
            {
                ipe: "009",
                dk_code: "dk.AS5G534",
                color: "roxo",
                flow_rate: "40ml",
                drilling: "meia-lua"
            },
            {
                ipe: "017",
                dk_code: "dk.SA78790",
                color: "vermelho",
                flow_rate: "50ml",
                drilling: "4"
            }           
        ]
            bicos.each do |bico|
                Bico.find_or_create_by!(bico)
        end
    end
end
