require "open-uri"
require "date"

puts 'Cleaning db'

User.destroy_all
Bet.destroy_all
Betting.destroy_all
Media.destroy_all

puts 'Creating Users Bets Bettings and Medias'

hugo = User.create(email: 'hugo@email.com', last_name: 'Ferrand', first_name: 'Hugo', password: 'azerty', username: 'Ougo')
sarah = User.create(email: 'sarah@outlook.com', last_name: 'Guillon', first_name: 'Sarah', password: 'azerty', username: 'Laguille')
christiane = User.create(email: 'christiane@orange.fr', last_name: 'Bugel', first_name: 'christiane', password: 'azerty', username: 'Christiane44')
matthias = User.create(email: 'matthias@gmail.com', last_name: 'Seeburger', first_name: 'matthias', password: 'azerty', username: 'Xastiro')

puts 'Users well generated'

first_bet = Bet.new(
  hashtag: "#election #france",
  description: "L'actuel président de la République, Emmanuel Macron, a été élu le 7 mai 2017, son mandat s'achève le 13 mai 2022.",
  question: "Macron va t'il être réélu ?",
  expiring_at: Date.new(2022,04,22),
  category: "Politique",
  user: hugo
)

puts 'Bets well generated'

Betting.create(
  answer: "yes",
  user: matthias,
  bet: first_bet
)
