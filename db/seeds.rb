# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Create coins..."

spinner = TTY::Spinner.new("[:spinner] Registering Coins...")
spinner.auto_spin

coins = [ 
    {
        description: "Bitcoin",
        acronym: "BTC",
        url_image: "http://pngimg.com/uploads/bitcoin/bitcoin_PNG47.png"
    },

    {
        description: "Ethereum",
        acronym: "ETH",
        url_image: "https://i.warosu.org/data/biz/img/0027/98/1500220164928.png"
    },

    {
        description: "Dash",
        acronym: "DASH",
        url_image: "http://moondash.co.in/coin/logo.png"
    }
]

coins.each do |coin|
    sleep(1)
    Coin.find_or_create_by!(coin)
end

spinner.success("(Done!)")