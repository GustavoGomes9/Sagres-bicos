namespace :on do
  desc "Rotina de bd"
  task flow: :environment do
    %x(rails db:drop)
    %x(rails db:create)
    %x(rails db:migrate)
  end

end
