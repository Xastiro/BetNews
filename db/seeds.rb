require "open-uri"
require "date"

puts 'Cleaning db'


Bet.destroy_all
Betting.destroy_all
Media.destroy_all
User.destroy_all

puts 'Creating Users Bets Bettings and Medias'

hugo = User.create(email: 'hugo@email.com', last_name: 'Ferrand', first_name: 'Hugo', password: 'azerty', username: 'Ougo')
sarah = User.create(email: 'sarah@outlook.com', last_name: 'Guillon', first_name: 'Sarah', password: 'azerty', username: 'Laguille')
christiane = User.create(email: 'christiane@orange.fr', last_name: 'Bugel', first_name: 'christiane', password: 'azerty', username: 'Christiane44')
matthias = User.create(email: 'matthias@gmail.com', last_name: 'Seeburger', first_name: 'matthias', password: 'azerty', username: 'Xastiro')
john = User.create(email: 'john@gmail.com', last_name: 'Smith', first_name: 'john', password: 'azerty', username: 'Joe')
lea = User.create(email: 'lea@gmail.com', last_name: 'de la Tour', first_name: 'léa', password: 'azerty', username: 'madameIrma')
gaelle = User.create(email: 'gaelle@gmail.com', last_name: 'antoine', first_name: 'gaelle', password: 'azerty', username: 'gaelle')
mathis = User.create(email: 'mathis@gmail.com', last_name: 'correz', first_name: 'mathis', password: 'azerty', username: 'Mat89')

puts 'Users well generated'

macron = Bet.new(
  hashtag: "#election #france",
  description: "L'élection présidentielle 2022 permettra d'élire le ou la futur(e) président(e) de la République pour un mandat de cinq ans. Le premier tour aura lieu dimanche 10 avril 2022, et le second tour entre les deux premiers candidats dimanche 24 avril 2022.",
  question: "Macron va t'il être réélu ?",
  expiring_at: Date.new(2022,04,22),
  category: "Politique",
  publisher: matthias
)

zemmour = Bet.new(
  hashtag: "#election #france #parrainage",
  description: "Tout citoyen français âgé de 18 ans et plus, jouissant de ses droits civiques, peut se présenter à l’élection pour la présidence de la République, mais sa candidature n’est validée par le Conseil constitutionnel que s’il obtient au minimum 500 parrainages d’élus. Ce système a été mis en place par la loi du 6 novembre 1962 instaurant l’élection du président au suffrage universel afin d’en limiter le nombre de candidats. Il exige actuellement un minimum de 500 parrainages (ou présentations), que les élus suivants sont habilités à donner. Les candidats à la présidence de la République sont contraints de collecter des parrainages dans au moins 30 départements ou collectivités d’outre-mer différents, sans que l’un d’entre eux dépasse un dixième des parrainages (soit 50). Cela assure un minimum de représentativité géographique.",
  question: "Eric Zemmour aura t-il ses 500 parrainages ?",
  expiring_at: Date.new(2022,03,04),
  category: "Politique",
  publisher: mathis
)

ukraine = Bet.new(
  hashtag: "#ukraine #war #UE",
  description: "Ces dernières années, dans le contexte de la guerre civile contre les séparatistes pro-russes dans le Donbass, l’Ukraine fait part de sa volonté de rejoindre l’Union européenne. En février 2019, le Parlement ukrainien grave dans la Constitution son aspiration d’adhésion à l’UE, obligeant les pouvoirs législatif et exécutif à œuvrer pour réaliser cet objectif. Alors que les tensions avec la Russie vont croissant, le nouveau président ukrainien Volodymyr Zelensky exhorte en avril 2021 les Européens à initier une procédure d’adhésion de l’Etat qu’il préside à l’Union européenne.
  En février 2022, la Russie pénètre sur le territoire ukrainien après avoir reconnu l’indépendance de Donetsk et de Louhansk. Elle lance une offensive militaire contre l’Ukraine et l’Union européenne condamne fermement cette décision. L’Europe affiche son soutien à l’Ukraine et prend de nouvelles sanctions particulièrement lourdes contre la Russie. Kiev effectue officiellement une demande d’adhésion le 28 février 2022, cinq jours après l’invasion russe. Un jour plus tôt, la présidente de la Commission européenne Ursula von der Leyen s’est prononcée en faveur de cette adhésion de l’Ukraine à l’Union européenne : “ils sont des nôtres et nous les voulons parmi nous”. Le président Volodymyr Zelensky, le Premier ministre Denys Chmyhal et le président du Parlement Rouslan Stefantchouk signent ainsi une demande formelle d’entrée de l’Ukraine dans l’UE. Le chef d’Etat ukrainien appelle même à une intégration “sans délai” via “une nouvelle procédure spéciale” pour bénéficier de ce statut qui assurerait une protection à son pays. A ce sujet, le président du Conseil européen Charles Michel rappelle qu’un avis officiel de la Commission et un accord unanime des Vingt-Sept sont nécessaires.",
  expiring_at: Date.new(2022,12,31),
  question: "L'Ukraine va t-elle intégrer l'union européenne ?",
  category: "Politique",
  publisher: lea
)

petrole = Bet.new(
  hashtag: "#petrole #baril",
  description: "Jusqu'où iront les cours du pétrole et du gaz ? Comme redouté ces derniers jours, le prix du baril de brent a franchi pour la première fois depuis 2014 la barre des 100 dollars. En début de matinée, quand Vladimir Poutine a annoncé le déclenchement de son opération militaire en Ukraine, il a même culminé brièvement à 105 dollars. Même tendance pour le WTI, référence américaine du baril de pétrole, qui se négocie à 96 dollars, après un pic à plus de 100 dollars dans la matinée.",
  expiring_at: Date.new(2022,04,30),
  question: " Le prix du baril va t-il dépasser les 120 dollars?",
  category: "Economie",
  publisher: gaelle
)

chomage = Bet.new(
  hashtag: "#chomage #zoneeuro",
  description: "En décembre 2021, le taux de chômage corrigé des variations saisonnières de la zone euro était de 7,0%, en baisse
  par rapport au taux de 7,1% enregistré en novembre 2021 et au taux de 8,2% de décembre 2020. Le taux de
  chômage de l'UE était de 6,4% en décembre 2021, en baisse par rapport au taux de 6,5% de novembre 2021 et au
  taux de 7,5% enregistré en décembre 2020. Ces chiffres sont publiés par Eurostat, l’office statistique de l’Union
  européenne",
  expiring_at: Date.new(2022,03,03),
  question: "Le taux de chomage sera t-il supérieur à 7% dans la zone euro en mars 2022?",
  category: "Economie",
  publisher: hugo
)


cesar = Bet.new(
  hashtag: "#cinema #cesar #pierreniney",
  description: "Sont nommés pour le César du meilleur acteur: Damien Bonnard dans Les Intranquilles, Adam Driver dans Annette, Gilles Lellouche dans BAC Nord, Vincent Macaigne dans Médecin de nuit, Benoît Magimel dans De son vivant, Pio Marmaï dans La Fracture, Pierre Niney dans Boîte noire",
  expiring_at: Date.new(2022,02,25),
  question: "Pierre Niney va t-il recevoir un César pour le film Boîte noire",
  category: "Culture",
  publisher: sarah
)

foot = Bet.new(
  hashtag: "#cinema #cesar #pierreniney",
  description: "Le match PSG - Marseille de Ligue 1 est programmé pour le Dimanche 17 Avril 2022. Au lundi 28 février 2022, l'équipe de Paris Saint-Germain se classe 1e de la Ligue 1, avec un total de 59 points. Elle totalise 18 victoires, 5 matchs nuls et 1 défaites. PSG a marqué 52 buts et en a encaissés 19, ce qui lui donne un goal average de 33. De son côté, l'équipe de Olympique de Marseille se classe 2e de la Ligue 1, avec un total de 46 points. Elle compte 13 victoires, 7 matchs nuls et 4 défaites. Marseille a inscrit 38 buts et en a encaissés 21. Elle présente un goal average de 17.",
  expiring_at: Date.new(2022,04,17),
  question: "Le PSG va t-il gagner face à l'OM le 24/04?",
  category: "Sport",
  publisher: john
)

kohlanta = Bet.new(
  hashtag: "#kohlanta #tvshow",
  description: "Cette nouvelle saison de Koh-Lanta est totalement inédite. C’est du jamais vu : il n’y aura pas un, mais 2 totems cette année ! Celui que vous connaissez, le totem d’immunité, qui protège les gagnants… et le Totem maudit ! Perdre une épreuve, c’est en hériter, et subir l’une de ses nombreuses malédictions. Son ombre plane sur cette saison, du premier au dernier jour de l’aventure. C’est une certitude, le Totem maudit va bousculer les destins des 24 nouveaux aventuriers qui ont décidé de se mesurer les uns aux autres. Dans des conditions dantesques, au pied des spectaculaires falaises de l’archipel de Palawan aux Philippines, ces 24 apprentis Robinsons vont découvrir la vie à la dure, la faim, la fatigue et les stratégies. Avec courage et détermination, ces 12 femmes et ces 12 hommes vont tout faire pour réaliser leur rêve, et gagner Koh-Lanta. Mais la route longue, et semée d’embûches, au premier rang desquelles se trouve, cette année, le Totem maudit.",
  expiring_at: Date.new(2022,03,10),
  question: "Alexandra va t-elle se faire éliminer de koh lanta mardi prochain?",
  category: "Divertissement",
  publisher: christiane
)

thevoice = Bet.new(
  hashtag: "#thevoice #vianney",
  description: "Charles Kaylan est originaire de Côte d’Ivoire, et a emménagé en Italie pour ses études. Il a appris à maîtriser sa voix en autodidacte. Ce soir, il réalise son rêve d'enfant en participant à l'aventure The Voice. Il chante 'Bruises' de Lewis Capaldi et met tous les coachs d'accord. Amel Bent buzze dès la première note. Mais c'est Vianney qui réussit à recruter ce nouveau talent dans son équipe.",
  expiring_at: Date.new(2022,05,15),
  question: "Charles va t-il gagner The Voice 2022?",
  category: "Divertissement",
  publisher: sarah
)

covid = Bet.new(
  hashtag: "#covid #france",
  description: "Le ministre de la Santé Olivier Véran a indiqué le 16 février que la fin du port du masque en intérieur était envisageable à la mi-mars si la circulation du Covid-19 est 'très faible'. Un allègement du pass vaccinal est également possible. 'À la mi-mars, si les hôpitaux sont en état normal de fonctionnement, et si la circulation du virus est très faible, nous pourrons enlever les masques pour les adultes et pour les enfants, pour tout ou partie des lieux fermés, y compris sans pass', a déclaré Olivier Véran. 'Nous pourrons commencer à alléger fortement le dispositif du pass vaccinal, peut-être pas tout en bloc, peut-être qu'on gardera des mesures pour la fin mars début avril', a-t-il poursuivi.",
  expiring_at: Date.new(2022,04,15),
  question: "Le masque sera t-il toujours obligatoire en France en avril 2022?",
  category: "Santé",
  publisher: christiane
)

chasse = Bet.new(
  hashtag: "#chasse #france",
  description: "La chasse à courre, aussi appelée 'vénerie', consiste à traquer un animal (un cerf, sanglier, chevreuil, renard ou lièvre) jusqu’à épuisement à l’aide d’une meute de chiens et de cavaliers à cheval. 84% des Français sont opposés à cette pratique (sondage Ifop 2017) et la chasse à courre est déjà interdite dans plusieurs pays, dont la Grande-Bretagne et l’Allemagne. Très tôt dans la campagne, Yannick Jadot a fait de cette question l’un des marqueurs de sa candidature. Le candidat écologiste propose que les accidents de chasse soient davantage réprimés et que le permis de chasse soit renouvelé tous les cinq ans. Il veut aussi mettre fin à l’agrainage et à la chasse à enclos. Sur cette question, la candidate socialiste Anne Hidalgo ne s’est pas directement prononcée, mais sa porte-parole, Carole Delga, se disait fin octobre sur France Bleu , 'pas d’accord' ​avec cette proposition du candidat écologiste. Jean-Luc Mélenchon rejoint Yannick Jadot sur l’interdiction de la chasse le week-end et lors des vacances scolaires. C’est là que le risque serait le plus grand​, a-t-il déclaré dimanche dernier sur France 3 . Le leader de La France Insoumise propose également de cesser de vendre des armes qui sont aussi puissantes​. Dans son programme, il promet enfin d’interdire les pratiques cruelles telles que le déterrage et la chasse à courre. À droite, tous les candidats s’accordent plus ou moins pour défendre cette pratique. Il faut arrêter la chasse aux chasseurs​, a lancé Valérie Pécresse la semaine dernière lors du grand oral du Mouvement de la ruralité (anciennement ' Chasse, pêche, nature et traditions '​). On n’entrave pas la pêche et la chasse qui sont des libertés issues de la Révolution​, a insisté la candidate LR. Également présent, Eric Zemmour a plaidé pour un grand ministère de l’agriculture de la protection de l’environnement et de la ruralité qui regroupera agriculture, environnement, biodiversité ainsi que la chasse, la pêche et la forêt​.",
  expiring_at: Date.new(2023,03,15),
  question: "La chasse à courre sera t-elle interdite en France en 2023 ?",
  category: "Planète",
  publisher: gaelle
)

puts 'Bets well generated'

Betting.create(
  answer: "oui",
  user: john,
  bet: macron
)

Betting.create(
  answer: "oui",
  user: mathis,
  bet: macron
)

Betting.create(
  answer: "no",
  user: gaelle,
  bet: macron
)

Betting.create(
  answer: "non",
  user: hugo,
  bet: chomage
)

Betting.create(
  answer: "non",
  user: christiane,
  bet: foot
)

Betting.create(
  answer: "oui",
  user: hugo,
  bet: foot
)


Betting.create(
  answer: "oui",
  user: sarah,
  bet: kohlanta
)

# For photos

file_macron = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646139629/betnews/Presidentielle-2022-Emmanuel-Macron-voit-sa-candidature-retardee-par-la-guerre-en-Ukraine_mtevtv.webp')
macron.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file_zemmour = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646141681/betnews/aktgskzvjni0yt2dnwpu.jpg')
zemmour.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file_ukraine = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646141745/betnews/olxqzaqg8ty14pqwuilq.jpg')
ukraine.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file_petrole = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646141920/betnews/svtxu7o3johzesnmsphb.jpg')
petrole.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file_chomage = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646141506/betnews/d84b4cee75f0b160c14c7257e8c5548a9f907c993ea6e7485792d98b2d9dafad_jipdtk.jpg')
petrole.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file_cesar = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646142009/betnews/hxc1rxqigfrqnmfl8nib.jpg')
cesar.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file_foot = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646142089/betnews/images_vqub15.jpg')
foot.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file_kohlanta = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646142215/betnews/iyooa89kaqshrbxhxu4b.jpg')
kohlanta.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file_thevoice = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646142182/betnews/charles-kaylan-1_bureau-233_lou-breton_itv_tf1_em3-9f4687-40dc0b-0_1x_p2uouf.jpg')
thevoice.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file_covid = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646142294/betnews/images_etm5np.jpg')
covid.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file_chasse = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646142326/betnews/hh2magy2leqbea8xj8ne.jpg')
chasse.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


