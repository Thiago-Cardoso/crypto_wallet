namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
    task setup: :environment do
      if Rails.env.development?
           show_spinner("Drop BD...") { %x(rails db:drop) }
           show_spinner("Create BD...") { %x(rails db:create) }
           show_spinner("Migrate BD...") { %x(rails db:migrate) }
           show_spinner("Populate BD...") { %x(rails db:seed) }
      else
        puts "Youn don't is in envorinment development"
      end
  end

  def show_spinner(msg_start, msg_end = "Done")
      spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
      spinner.auto_spin
      yield
      spinner.success(msg_end)
   end
end
