require "open-uri"
require "date"
require "faker"

puts 'Cannaning db'

Media.destroy_all
Betting.destroy_all
Bet.destroy_all
User.destroy_all

puts 'Creating Users Bets Bettings and Medias'

hugo = User.create!(email: 'hugo@email.com', last_name: 'Ferrand', first_name: 'Hugo', password: 'azerty', username: 'Ougo', wallet: 3612)
sarah = User.create!(email: 'sarah@email.com', last_name: 'Guillon', first_name: 'Sarah', password: 'azerty', username: 'Laguille', wallet: 3523)
christiane = User.create!(email: 'christiane@email.com', last_name: 'Bugel', first_name: 'Christiane', password: 'azerty', username: 'Christiane44', wallet: 4007)
matthias = User.create!(email: 'matthias@email.com', last_name: 'Seeburger', first_name: 'Matthias', password: 'azerty', username: 'Xastiro', wallet: 3972)
timothee = User.create!(email: 'timothee@email.com', last_name: 'Smith', first_name: 'timothee', password: 'azerty', username: 'Tim', wallet: 2345)
anna = User.create!(email: 'anna@email.com', last_name: 'de la Tour', first_name: 'Léa', password: 'azerty', username: 'MadameIrma', wallet: 2987)
florent = User.create!(email: 'florent@email.com', last_name: 'Malerto', first_name: 'florent', password: 'azerty', username: 'Salopette', wallet: 2656)
nicolas = User.create!(email: 'nicolas@email.com', last_name: 'Correz', first_name: 'nicolas', password: 'azerty', username: 'NicoBlingBling', wallet: 2904)
fabien = User.create!(email: 'fabien@email.com', last_name: 'Lalou', first_name: 'fabien', password: 'azerty', username: 'FabFab', wallet: 2428)
simon = User.create!(email: 'simon@email.com', last_name: 'Rilain', first_name: 'simon', password: 'azerty', username: 'simondos', wallet: 2394)
francoisD = User.create!(email: 'francoisD@email.com', last_name: 'Fitchi', first_name: 'francoisD', password: 'azerty', username: 'Fran34', wallet: 2134)
marin = User.create!(email: 'marin@email.com', last_name: 'Seedzberger', first_name: 'Marin', password: 'azerty', username: 'Marindodouce', wallet: 2066)
camille = User.create!(email: 'camille@email.com', last_name: 'Denier', first_name: 'camille', password: 'azerty', username: 'Cam34', wallet: 2961)
herve = User.create!(email: 'herve@email.com', last_name: 'Ditzberger', first_name: 'herve', password: 'azerty', username: 'Velo44', wallet: 2850)
charlie = User.create!(email: 'charlie@email.com', last_name: 'Drai', first_name: 'charlie', password: 'azerty', username: 'ChachaElNido', wallet: 2677)
francois = User.create!(email: 'francois@email.com', last_name: 'Leroy', first_name: 'francois', password: 'azerty', username: 'F C', wallet: 2028)
valentin = User.create!(email: 'valentin@email.com', last_name: 'Querty', first_name: 'valentin', password: 'azerty', username: 'valentinKing98', wallet: 2350)
nina = User.create!(email: 'nina@email.com', last_name: 'Uraz', first_name: 'Nina', password: 'azerty', username: 'NinaaBE', wallet: 2794)
pierre = User.create!(email: 'pierre@email.com', last_name: 'Creps', first_name: 'pierre', password: 'azerty', username: 'pierre90', wallet: 2602)
luc = User.create!(email: 'luc@email.com', last_name: 'Dulul', first_name: 'Luc', password: 'azerty', username: 'LucFX', wallet: 2534)

puts 'Users well generated'

chomage = Bet.new(
  hashtag: "#chômage #zoneEuro",
  description: "En décembre 2021, le taux de chômage corrigé des variations saisonnières de la zone euro était de 7,0%, en baisse par rapport au taux de 7,1% enregistré en novembre 2021 et au taux de 8,2% de décembre 2020. Le taux de chômage de l'UE était de 6,4% en décembre 2021, en baisse par rapport au taux de 6,5% de novembre 2021 et au taux de 7,5% enregistré en décembre 2020. Ces chiffres sont publiés par Eurostat, l’office statistique de l’Union européenne.",
  expiring_at: Date.new(2022,02,01),
  question: "Le taux de chomage sera t-il supérieur à 7% dans la zone euro en janvier 2022 ?",
  category: "Economie",
  publisher: hugo,
  result: "no",
)

cesar = Bet.new(
  hashtag: "#cinéma #César #Niney",
  description: "Sont nommés pour le César du meilleur acteur : Damien Bonnard dans Les Intranquilles, Adam Driver dans Annette, Gilles Lellouche dans BAC Nord, Vincent Macaigne dans Médecin de nuit, Benoît Magimel dans De son vivant, Pio Marmaï dans La Fracture, Pierre Niney dans Boîte noire.",
  expiring_at: Date.new(2022,02,25),
  question: "Pierre Niney va t-il recevoir un César pour le film Boîte noire ?",
  category: "Culture",
  publisher: florent,
  result: "no"
)

goldman = Bet.new(
  hashtag: "#musique #Goldman",
  description: "Et si le chanteur aux quelques 30 millions d'albums vendus faisait son grand retour dans les studios ? C'est en tout cas ce qu'espèrent très fort les fans de Jean-Jacques Goldman qui attendent depuis près de 20 ans un nouveau titre de leur idole. Et leurs espoirs ont été réchauffés par une petite phrase, non pas du chanteur mais de l'un de ses proches. Erick Benzi, l’arrangeur historique de Jean-Jacques Goldman s'est confié lors d'une interview avec nos confrères du Figaro. Il a mentionné un éventuel prochain album de Jean-Jacques Goldman en disant : C’est drôle, dans les notes de pochette de Chansons pour les pieds, son dernier disque, il avait inscrit : Erick, tu es libre pour le prochain ?.",
  expiring_at: Date.new(2022,04,25),
  question: "JJ Goldman va t-il sortir un nouvel album ?",
  category: "Culture",
  publisher: sarah,
)

goncourt = Bet.new(
  hashtag: "#livre #Goncourt",
  description: "Qui succédera à Hervé Le Tellier, dont l’Anomalie a franchi la barre symbolique du million de tirages après avoir été auréolé d’un des plus prestigieux prix littéraire français ? L’Académie Goncourt a dévoilé ce mardi sa première sélection. Seize romans ont été retenus. Parmi eux : le Voyage dans l’Est (Flammarion), de Christine Angot, dans lequel elle décrit comment l’inceste détruit, Enfant de salaud (Grasset), de l’ancien journaliste à Libération Sorj Chalandon, et la Porte du voyage sans retour (Seuil), de David Diop, couronné il y a quelques mois par l’International Booker Prize pour son précédent ouvrage, Frère d’âme, également lauréat du Goncourt des lycéens en 2018. Le très réussi roman de Mohammed Mbougar Sarr, la Plus secrète mémoire des hommes (Philippe Rey) est également de la partie.",
  expiring_at: Date.new(2022,11,03),
  question: "David Diop recevra t-il le prix Goncourt 2022 ?",
  category: "Culture",
  publisher: sarah,
)

kohlanta = Bet.new(
  hashtag: "#Koh-Lanta #tvshow",
  description: "Cette nouvelle saison de Koh-Lanta est totalement inédite. C’est du jamais vu : il n’y aura pas un, mais 2 totems cette année ! Celui que vous connaissez, le totem d’immunité, qui protège les gagnants… et le Totem maudit ! Perdre une épreuve, c’est en hériter, et subir l’une de ses nombreuses malédictions. Son ombre plane sur cette saison, du premier au dernier jour de l’aventure. C’est une certitude, le Totem maudit va bousculer les destins des 24 nouveaux aventuriers qui ont décidé de se mesurer les uns aux autres. Dans des conditions dantesques, au pied des spectaculaires falaises de l’archipel de Palawan aux Philippines, ces 24 apprentis Robinsons vont découvrir la vie à la dure, la faim, la fatigue et les stratégies. Avec courage et détermination, ces 12 femmes et ces 12 hommes vont tout faire pour réaliser leur rêve, et gagner Koh-Lanta. Mais la route longue, et semée d’embûches, au premier rang desquelles se trouve, cette année, le Totem maudit.",
  expiring_at: Date.new(2022,03,15),
  question: "Alexandra va t-elle se faire éliminer de Koh-Lanta mardi prochain ?",
  category: "Divertissement",
  publisher: hugo
)

macron = Bet.new(
  hashtag: "#élection #France",
  description: "L'élection présidentielle 2022 permettra d'élire le ou la futur(e) président(e) de la République pour un mandat de cinq ans. Le premier tour aura lieu dimanche 10 avril 2022, et le second tour entre les deux premiers candidats dimanche 24 avril 2022.",
  question: "Macron va t'il être réélu ?",
  expiring_at: Date.new(2022,04,24),
  category: "Politique",
  publisher: matthias
)

coraux = Bet.new(
  hashtag: "#coraux",
  description: "Pour la toute première fois, des scientifiques ont découvert que des coraux censés avoir été tués par le stress thermique ont repoussé. Cette découverte constitue une lueur d’espoir pour les récifs menacés par le changement climatique dans le monde, alors que ce phénomène ne cesse d’empirer. Et c’est par le fruit du hasard que cette découverte a été faite. La découverte a été réalisée par Diego Kersting et Cristina Linares, des chercheurs de la Freie Universität à Berlin et de l’université de Barcelone. Ils ont dévoilé les premières preuves vivantes de cette stratégie de renaissance des coraux – connue sous le nom de « rajeunissement » – en menant des recherches sur une espèce de corail qu’on trouve dans la mer Méditerranée. Le fruit de leurs études a été publié dans la revue Science Advances.",
  expiring_at: Date.new(2022,06,15),
  question: "Les coraux survivront-ils au réchauffement climatique ?",
  category: "Planète",
  publisher: christiane
)

foot = Bet.new(
  hashtag: "#PSG #OM",
  description: "Le match PSG-Marseille de Ligue 1 est programmé pour le Dimanche 17 Avril 2022. Au lundi 28 février 2022, l'équipe de Paris Saint-Germain se classe 1e de la Ligue 1, avec un total de 59 points. Elle totalise 18 victoires, 5 matchs nuls et 1 défaites. PSG a marqué 52 buts et en a encaissés 19, ce qui lui donne un goal average de 33. De son côté, l'équipe de Olympique de Marseille se classe 2e de la Ligue 1, avec un total de 46 points. Elle compte 13 victoires, 7 matchs nuls et 4 défaites. Marseille a inscrit 38 buts et en a encaissés 21. Elle présente un goal average de 17.",
  expiring_at: Date.new(2022,04,17),
  question: "Le PSG va t-il gagner face à l'OM le 17/04 ?",
  category: "Sport",
  publisher: timothee
)

psg = Bet.new(
  hashtag: "#PSG #championsleague",
  description: "Après l’immense déception de ce mercredi soir, le Paris SG va avoir du mal à garder le cap dans les prochains jours, tant le coeur n’y est plus. Le titre de champion de France, quasiment déjà en poche, ne fait plus forcément vibrer à Paris, d’autant que la concurrence est quasiment inexistante. Le PSG va surtout devoir s’attacher à tirer dans le même sens, et éviter les polémiques qui laissent à penser que cette saison 2021-2022 est à ranger au rayon des pires fiascos de ces dernières années. Après la terrible élimination face au Real Madrid, le sort de Mauricio Pochettino semble scellé. Son avenir devrait s’écrire loin de la capitale française.",
  expiring_at: DateTime.new(2022, 3, 10, 10, 10, 10),
  question: "Mauricio Pochettino aura annoncé son départ avant la fin de la semaine ?",
  category: "Sport",
  publisher: hugo
)

ukraine = Bet.new(
  hashtag: "#Ukraine #UE",
  description: "Ces dernières années, dans le contexte de la guerre civile contre les séparatistes pro-russes dans le Donbass, l’Ukraine fait part de sa volonté de rejoindre l’Union européenne. En février 2019, le Parlement ukrainien grave dans la Constitution son aspiration d’adhésion à l’UE, obligeant les pouvoirs législatif et exécutif à œuvrer pour réaliser cet objectif. Alors que les tensions avec la Russie vont croissant, le nouveau président ukrainien Volodymyr Zelensky exhorte en avril 2021 les Européens à initier une procédure d’adhésion de l’Etat qu’il préside à l’Union européenne.
  En février 2022, la Russie pénètre sur le territoire ukrainien après avoir reconnu l’indépendance de Donetsk et de Louhansk. Elle lance une offensive militaire contre l’Ukraine et l’Union européenne condamne fermement cette décision. L’Europe affiche son soutien à l’Ukraine et prend de nouvelles sanctions particulièrement lourdes contre la Russie. Kiev effectue officiellement une demande d’adhésion le 28 février 2022, cinq jours après l’invasion russe. Un jour plus tôt, la présidente de la Commission européenne Ursula von der Leyen s’est prononcée en faveur de cette adhésion de l’Ukraine à l’Union européenne : “ils sont des nôtres et nous les voulons parmi nous”. Le président Volodymyr Zelensky, le Premier ministre Denys Chmyhal et le président du Parlement Rouslan Stefantchouk signent ainsi une demande formelle d’entrée de l’Ukraine dans l’UE. Le chef d’Etat ukrainien appelle même à une intégration “sans délai” via “une nouvelle procédure spéciale” pour bénéficier de ce statut qui assurerait une protection à son pays. A ce sujet, le président du Conseil européen Charles Michel rappelle qu’un avis officiel de la Commission et un accord unanime des Vingt-Sept sont nécessaires.",
  expiring_at: Date.new(2022,12,31),
  question: "L'Ukraine va t-elle intégrer l'Union Européenne ?",
  category: "Politique",
  publisher: anna
)

petrole = Bet.new(
  hashtag: "#pétrole #baril",
  description: "Jusqu'où iront les cours du pétrole et du gaz ? Comme redouté ces derniers jours, le prix du baril de brent a franchi pour la première fois depuis 2014 la barre des 100 dollars. En début de matinée, quand Vladimir Poutine a annoncé le déclenchement de son opération militaire en Ukraine, il a même culminé brièvement à 105 dollars. Même tendance pour le WTI, référence américaine du baril de pétrole, qui se négocie à 96 dollars, après un pic à plus de 100 dollars dans la matinée.",
  expiring_at: Date.new(2022,04,30),
  question: " Le prix du baril va t-il dépasser les 120 dollars ?",
  category: "Economie",
  publisher: florent
)

zemmour = Bet.new(
  hashtag: "#élection #parrainages",
  description: "Tout citoyen français âgé de 18 ans et plus, jouissant de ses droits civiques, peut se présenter à l’élection pour la présidence de la République, mais sa candidature n’est validée par le Conseil constitutionnel que s’il obtient au minimum 500 parrainages d’élus. Ce système a été mis en place par la loi du 6 novembre 1962 instaurant l’élection du président au suffrage universel afin d’en limiter le nombre de candidats. Il exige actuellement un minimum de 500 parrainages (ou présentations), que les élus suivants sont habilités à donner. Les candidats à la présidence de la République sont contraints de collecter des parrainages dans au moins 30 départements ou collectivités d’outre-mer différents, sans que l’un d’entre eux dépasse un dixième des parrainages (soit 50). Cela assure un minimum de représentativité géographique.",
  question: "Eric Zemmour aura t-il ses 500 parrainages ?",
  expiring_at: Date.new(2022,03,04),
  category: "Politique",
  publisher: hugo,
  result: "yes",
)

thevoice = Bet.new(
  hashtag: "#TheVoice #Vianney",
  description: "Charles Kaylan est originaire de Côte d’Ivoire, et a emménagé en Italie pour ses études. Il a appris à maîtriser sa voix en autodidacte. Ce soir, il réalise son rêve d'enfant en participant à l'aventure The Voice. Il chante 'Bruises' de Lewis Capaldi et met tous les coachs d'accord. Amel Bent buzze dès la première note. Mais c'est Vianney qui réussit à recruter ce nouveau talent dans son équipe.",
  expiring_at: Date.new(2022,05,15),
  question: "Charles va t-il gagner The Voice 2022 ?",
  category: "Divertissement",
  publisher: fabien
)

covid = Bet.new(
  hashtag: "#Covid #France",
  description: "Le ministre de la Santé Olivier Véran a indiqué le 16 février que la fin du port du masque en intérieur était envisageable à la mi-mars si la circulation du Covid-19 est 'très faible'. Un allègement du pass vaccinal est également possible. 'À la mi-mars, si les hôpitaux sont en état normal de fonctionnement, et si la circulation du virus est très faible, nous pourrons enlever les masques pour les adultes et pour les enfants, pour tout ou partie des lieux fermés, y compris sans pass', a déclaré Olivier Véran. 'Nous pourrons commencer à alléger fortement le dispositif du pass vaccinal, peut-être pas tout en bloc, peut-être qu'on gardera des mesures pour la fin mars début avril', a-t-il poursuivi.",
  expiring_at: Date.new(2022,04,15),
  question: "Le masque sera t-il toujours obligatoire en France en avril 2022 ?",
  category: "Santé",
  publisher: simon
)

chasse = Bet.new(
  hashtag: "#chasse #France",
  description: "La chasse à courre, aussi appelée vénerie, consiste à traquer un animal (un cerf, sanglier, chevreuil, renard ou lièvre) jusqu’à épuisement à l’aide d’une meute de chiens et de cavaliers à cheval. 84% des Français sont opposés à cette pratique (sondage Ifop 2017) et la chasse à courre est déjà interdite dans plusieurs pays, dont la Grande-Bretagne et l’Allemagne. Très tôt dans la campagne, Yannick Jadot a fait de cette question l’un des marqueurs de sa candidature. Le candidat écologiste propose que les accidents de chasse soient davantage réprimés et que le permis de chasse soit renouvelé tous les cinq ans. Il veut aussi mettre fin à l’agrainage et à la chasse à enclos. Sur cette question, la candidate socialiste Anne Hidalgo ne s’est pas directement prononcée, mais sa porte-parole, Carole Delga, se disait fin octobre sur France Bleu ,pas d’accord ​avec cette proposition du candidat écologiste. Jean-Luc Mélenchon rejoint Yannick Jadot sur l’interdiction de la chasse le week-end et lors des vacances scolaires. C’est là que le risque serait le plus grand​, a-t-il déclaré dimanche dernier sur France 3 . Le annader de La France Insoumise propose également de cesser de vendre des armes qui sont aussi puissantes​. Dans son programme, il promet enfin d’interdire les pratiques cruelles telles que le déterrage et la chasse à courre. À droite, tous les candidats s’accordent plus ou moins pour défendre cette pratique. Il faut arrêter la chasse aux chasseurs​, a lancé Valérie Pécresse la semaine dernière lors du grand oral du Mouvement de la ruralité (anciennement ' Chasse, pêche, nature et traditions '​). On n’entrave pas la pêche et la chasse qui sont des libertés issues de la Révolution​, a insisté la candidate LR. Également présent, Eric Zemmour a plaidé pour un grand ministère de l’agriculture de la protection de l’environnement et de la ruralité qui regroupera agriculture, environnement, biodiversité ainsi que la chasse, la pêche et la forêt​.",
  expiring_at: Date.new(2022,12,31),
  question: "La chasse à courre sera t-elle interdite en France en 2022 ?",
  category: "Planète",
  publisher: francoisD
)

cac40 = Bet.new(
  hashtag: "#CAC40 #bourse",
  description: "Le CAC40, l'indice qui regroupe les 40 plus grosses sociétés françaises cotées, a perdu 5,73% en 5 jours à cause de la guerre en Ukraine. Entre espoir de voir la guerre prendre fin et craintes de voir le conflit durer, les jours à venir sont bien incertains pour les marchés financiers.",
  expiring_at: DateTime.new(2022, 3, 12, 17, 22, 0),
  question: "Le CAC40 clôturera t-il au dessus de 6500 points le 12 mars 2022 ?",
  category: "Economie",
  publisher: marin
)

rugby = Bet.new(
  hashtag: "#6nations #XVdeFrance",
  description: "Le XV de France de Fabien Galthié réalise de très bonnes performances en ce tournois des 6 nations. Après avoir battu les All Black en novembre, le groupe emmené par Antoine Dupont, a gagné tous ses matchs du tournois des 6 nations.",
  expiring_at: Date.new(2022,03,20),
  question: "Le 19/03 le XV de France remportera le Tournois des 6 nations ?",
  category: "Sport",
  publisher: camille
)

rassemblementNational = Bet.new(
  hashtag: "#présidentielle #RN",
  description: "Alors que certains aimeraient voir Marine Le Pen rallier Eric Zemmour, ce n'est pas chose faite. La rivalité entre les deux candidats d'extrême droite ne cesse d'augmenter... Pourtant certains aimeraient voir les deux candidats s'allier.",
  expiring_at: Date.new(2022,04,10),
  question: "Marine Le Pen aura t-elle annoncé son ralliement à Eric Zemmour avant la présidentielle ? ",
  category: "Politique",
  publisher: herve
)

quiveutêtremonassocié = Bet.new(
  hashtag: "#QVEMA #business",
  description: "Alors que la Startup nation est sur un nuage depuis plusieurs années, les startups tricolores continuent à nous faire rêver. La création de certaines licornes représentent de belles opportunités d'investissement pour des investisseurs.",
  expiring_at: Date.new(2022,03,31),
  question: "Elon Musk aura t-il rejoint les investisseurs de Qui veut être mon associé avant avril 2022 ?",
  category: "Divertissement",
  publisher: charlie
)

train = Bet.new(
  hashtag: "#SNCF #mobilité",
  description: "Depuis décembre 2021, l'opérateur italien Trenitalia propose son service de voyage sur la ligne Paris Lyon à des tarifs bien moins élevés que ceux du TGV français. Beaucoup d'autres passagers aimeraient voir d'autres lignes s'ouvrir à la concurrence. D'un autre côté, certains s'inquiètent de la baisse de qualité de service qui pourrait en résulter.",
  expiring_at: Date.new(2022,05,31),
  question: "D'ici fin mai 2022, une entreprise ferroviaire, autre que la SNCF, opérera sur la ligne Paris Nantes ?",
  category: "Economie",
  publisher: francois
)

tennis = Bet.new(
  hashtag: "#Djocko #RG #tennis",
  description: "Alors que le monde entier a suivi l'expulsion de Novak Djokovic de l'Open d'Australie 2022, l'avenir du N°1 mondial est incertain. Sa participation aux prochains tournois n'est envisageable uniquement si le Serbe accepte de se faire vacciner contre la Covid-19.",
  expiring_at: Date.new(2022,05,10),
  question: "Novak Djokovic participera t-il à Roland-Garros 2022 ?",
  category: "Sport",
  publisher: valentin
)

truthsocial = Bet.new(
  hashtag: "#app #social #Trump",
  description: "Le groupe de l’ancien président américain Donald Trump prévoit de lancer l’application mobile de son nouveau réseau social, TRUTH Social, le 21 février 2022. TRUTH Social, présentée par le Trump Media & Technology Group (TMTG) comme une alternative à Twitter, dont Donald Trump a été exclu après l’assaut de ses partisans contre le Capitole le 6 janvier 2021",
  expiring_at: Date.new(2022,06,01),
  question: "Le réseau social de Donal Trump, TRUTH Social, sera disponible en France avant l'été 2022 ?",
  category: "Divertissement",
  publisher: nina
)

parité = Bet.new(
  hashtag: "#présidentille #mixité",
  description: "Alors que plusieurs femmes sont engagées dans la course à l'Élysée, peut-être que l'une d'elles deviendra la première femme présidente de France. Pour rappel, Valérie Pécresse, Anne Hidalgo et Marine Le Pen sont toutes les trois candidates de grands partis",
  expiring_at: Date.new(2022,04,24),
  question: "Une femme élue Présidente de la République en 2022 ?",
  category: "Politique",
  publisher: marin
)

tourdefrance = Bet.new(
  hashtag: "#Alaphilippe #TDF",
  description: "Le Tour de France 2022 partira de Copenhague au Danemark le 01/07/2022. Les espoirs que le champion du monde sur route 2021, J. Alaphilippe, remporte cette épreuve sont nombreux.",
  expiring_at: Date.new(2022,07,24),
  question: "Le francais Julian Alaphilippe gagnera t-il le tour de France 2022 ?",
  category: "Sport",
  publisher: luc
)

# meteo = Bet.new(
#   hashtag: "#MarsPluvieux #EnvieDeSoleil",
#   description: "Alors que le soleil n'a pas été vu à Nantes depuis plusieurs semaines, nombreux sont ceux à se demander quand est-ce qu'il sera de retour...",
#   expiring_at: Date.new(2022,03,9),
#   question: "Pleuvra t-il à Nantes entre 17h et 18h30 mercredi 9 mars 2022 ?",
#   category: "Planète",
#   publisher: sarah
# )

# Bets photos

file_macron = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646324610/betnews/Presidentielle-pourquoi-la-guerre-en-Ukraine-peut-profiter-a-Emmanuel-Macron_qe3l6u.jpg')
macron.photo.attach(io: file_macron, filename: 'nes.jpg', content_type: 'image/jpg')
macron.save!

file_psg = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646930609/betnews/th_ujbg35.jpg')
psg.photo.attach(io: file_psg, filename: 'nes.jpg', content_type: 'image/jpg')
psg.save!

file_zemmour = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646141681/betnews/aktgskzvjni0yt2dnwpu.jpg')
zemmour.photo.attach(io: file_zemmour, filename: 'nes.jpg', content_type: 'image/jpg')
zemmour.save!

file_ukraine = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646141745/betnews/olxqzaqg8ty14pqwuilq.jpg')
ukraine.photo.attach(io: file_ukraine, filename: 'nes.jpg', content_type: 'image/jpg')
ukraine.save!

file_petrole = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646141920/betnews/svtxu7o3johzesnmsphb.jpg')
petrole.photo.attach(io: file_petrole, filename: 'nes.jpg', content_type: 'image/jpg')
petrole.save!

file_chomage = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646141506/betnews/d84b4cee75f0b160c14c7257e8c5548a9f907c993ea6e7485792d98b2d9dafad_jipdtk.jpg')
chomage.photo.attach(io: file_chomage, filename: 'nes.jpg', content_type: 'image/jpg')
chomage.save!

file_goncourt = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646391156/betnews/TT65MBZSVBDEXKM7LJ4GAJZ3OE_iyvrmw.jpg')
goncourt.photo.attach(io: file_goncourt, filename: 'nes.jpg', content_type: 'image/jpg')
goncourt.save!

file_cesar = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646142009/betnews/hxc1rxqigfrqnmfl8nib.jpg')
cesar.photo.attach(io: file_cesar, filename: 'nes.jpg', content_type: 'image/jpg')
cesar.save!

file_foot = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646142089/betnews/images_vqub15.jpg')
foot.photo.attach(io: file_foot, filename: 'nes.jpg', content_type: 'image/jpg')
foot.save!

file_kohlanta = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646142215/betnews/iyooa89kaqshrbxhxu4b.jpg')
kohlanta.photo.attach(io: file_kohlanta, filename: 'nes.jpg', content_type: 'image/jpg')
kohlanta.save!

file_thevoice = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646142182/betnews/charles-kaylan-1_bureau-233_lou-breton_itv_tf1_em3-9f4687-40dc0b-0_1x_p2uouf.jpg')
thevoice.photo.attach(io: file_thevoice, filename: 'nes.jpg', content_type: 'image/jpg')
thevoice.save!

file_covid = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646142294/betnews/images_etm5np.jpg')
covid.photo.attach(io: file_covid, filename: 'nes.jpg', content_type: 'image/jpg')
covid.save!

file_chasse = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646735295/betnews/y6dmktjsdfgqbkhtaeoq.jpg')
chasse.photo.attach(io: file_chasse, filename: 'nes.jpg', content_type: 'image/jpg')
chasse.save!

file_cac40 = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646216096/betnews/cot22_giuvcp.jpg')
cac40.photo.attach(io: file_cac40, filename: 'nes.jpg', content_type: 'image/jpg')
cac40.save!

file_rugby = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646216198/betnews/1200-L-xv-de-france-la-france-fait-un-bon-dans-le-classement-world-rugby-aprs-la-victoire-face-aux-all-blacks_mdvros.jpg')
rugby.photo.attach(io: file_rugby, filename: 'nes.jpg', content_type: 'image/jpg')
rugby.save!

file_rassemblementNational = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646216261/betnews/cover-r4x3w1000-6016b3658bf27-1c2014acb8ed3a5c16e10f7a10beabac6b64fb05-jpg_axohnp.jpg')
rassemblementNational.photo.attach(io: file_rassemblementNational, filename: 'nes.jpg', content_type: 'image/jpg')
rassemblementNational.save!

file_quiveutêtremonassocié = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646216326/betnews/qvema_rvfvzp.jpg')
quiveutêtremonassocié.photo.attach(io: file_quiveutêtremonassocié, filename: 'nes.jpg', content_type: 'image/jpg')
quiveutêtremonassocié.save!

file_tennis = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646216499/betnews/NFK42D6B6FGWPCHJQYQPXJ3JZI_qx0s6b.jpg')
tennis.photo.attach(io: file_tennis, filename: 'nes.jpg', content_type: 'image/jpg')
tennis.save!

file_train = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646216418/betnews/train-italie_ctktwx.jpg')
train.photo.attach(io: file_train, filename: 'nes.jpg', content_type: 'image/jpg')
train.save!

file_parité = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646216630/betnews/5O6OH3HUNVBXVJXNFNZWJDLLNM_l8efdc.jpg')
parité.photo.attach(io: file_parité, filename: 'nes.jpg', content_type: 'image/jpg')
parité.save!

file_truthsocial = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646216562/betnews/Donald-Trump-a-lance-son-propre-reseau-social-Truth-Social-640x481_myl4cb.jpg')
truthsocial.photo.attach(io: file_truthsocial, filename: 'nes.jpg', content_type: 'image/jpg')
truthsocial.save!

file_tourdefrance = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646324698/betnews/qkjqzmlrtxmu2yzo9ohv.jpg')
tourdefrance.photo.attach(io: file_tourdefrance, filename: 'nes.jpg', content_type: 'image/jpg')
tourdefrance.save!

file_goldman = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646325451/betnews/iryspvjz5ndpbee9pk8s.jpg')
goldman.photo.attach(io: file_goldman, filename: 'nes.jpg', content_type: 'image/jpg')
goldman.save!

file_coraux= URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646921404/betnews/coraux-mous-89285862_ofzk8n.jpg')
coraux.photo.attach(io: file_coraux, filename: 'nes.jpg', content_type: 'image/jpg')
coraux.save!


# file_meteo = URI.open('https://res.cloudinary.com/dbitcpujz/image/upload/v1646838401/meteo.png')
# meteo.photo.attach(io: file_meteo, filename: 'nes.jpg', content_type: 'image/jpg')
# meteo.save!

puts 'Bets well generated'

Betting.create!(
  answer: "no",
  user: luc,
  bet: chomage,
  won: true,
  winning_odds: 1.2
)

Betting.create!(
  answer: "yes",
  user: pierre,
  bet: cesar,
  won: false,
  winning_odds: 2.3
)

Betting.create!(
  answer: "no",
  user: nina,
  bet: kohlanta
)

Betting.create!(
  answer: "yes",
  user: valentin,
  bet: macron
)

Betting.create!(
  answer: "non",
  user: francois,
  bet: foot
)

Betting.create!(
  answer: "yes",
  user: charlie,
  bet: ukraine
)

Betting.create!(
  answer: "yes",
  user: hugo,
  bet: cesar,
  won: false,
  winning_odds: 2.1
)

Betting.create!(
  answer: "no",
  user: hugo,
  bet: chomage,
  won: true,
  winning_odds: 2.3,
)

Betting.create!(
  answer: "no",
  user: hugo,
  bet: parité
)

Betting.create!(
  answer: "no",
  user: herve,
  bet: petrole
)

Betting.create!(
  answer: "yes",
  user: camille,
  bet: zemmour,
  winning_odds: 5,
)

Betting.create!(
  answer: "no",
  user: marin,
  bet: thevoice
)

Betting.create!(
  answer: "yes",
  user: francoisD,
  bet: covid
)

Betting.create!(
  answer: "no",
  user: simon,
  bet: chasse
)

Betting.create!(
  answer: "yes",
  user: fabien,
  bet: cac40
)

Betting.create!(
  answer: "no",
  user: nicolas,
  bet: rugby
)

Betting.create!(
  answer: "yes",
  user: florent,
  bet: rassemblementNational
)

Betting.create!(
  answer: "no",
  user: anna,
  bet: quiveutêtremonassocié
)

Betting.create!(
  answer: "yes",
  user: timothee,
  bet: train
)


Betting.create!(
  answer: "no",
  user: matthias,
  bet: tennis
)

Betting.create!(
  answer: "yes",
  user: hugo,
  bet: truthsocial
)

Betting.create!(
  answer: "no",
  user: sarah,
  bet: parité
)

Betting.create!(
  answer: "yes",
  user: hugo,
  bet: tourdefrance
)

puts '10 faked users and bettings created'

10.times do
  user_faker = User.create!(email: Faker::Internet.unique.email(domain: 'example'), last_name: Faker::Name.last_name, first_name: Faker::Name.first_name, password: 'azerty', username: Faker::Internet.username, wallet: rand(800..999))
  file_user_faker = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646820671/betnews/Users/lraxiq0dowyibrxooemp.png')
  user_faker.photo.attach(io: file_user_faker, filename: 'nes.png', content_type: 'image/png')
  Bet.all.each do |bet|
    Betting.create!(
      answer: rand > 0.5 ? "yes" : "no",
      user: user_faker,
      bet: bet,
      wager: rand(1..100)
    )
  end
end
# Users photos

file_hugo = URI.open('https://res.cloudinary.com/dbitcpujz/image/upload/v1646758103/photoHF.jpg')
hugo.photo.attach(io: file_hugo, filename: 'nes.jpg', content_type: 'image/jpg')

file_matthias = URI.open('https://ca.slack-edge.com/T02NE0241-U02TYH6T5QQ-9731a803d490-512')
matthias.photo.attach(io: file_matthias, filename: 'nes.jpg', content_type: 'image/jpg')

file_christiane = URI.open('https://avatars.githubusercontent.com/u/97440067?v=4')
christiane.photo.attach(io: file_christiane, filename: 'nes.jpg', content_type: 'image/jpg')

file_sarah = URI.open('https://ca.slack-edge.com/T02NE0241-U02SSQ75C31-0b2807ad5b29-512')
sarah.photo.attach(io: file_sarah, filename: 'nes.jpg', content_type: 'image/jpg')

file_timothee = URI.open('https://avatars.githubusercontent.com/u/97245071?v=4')
timothee.photo.attach(io: file_timothee, filename: 'nes.jpg', content_type: 'image/jpg')

file_nicolas = URI.open('https://ca.slack-edge.com/T02NE0241-U0B1MSCM9-10d072caa634-512')
nicolas.photo.attach(io: file_nicolas, filename: 'nes.jpg', content_type: 'image/jpg')

file_anna = URI.open('https://avatars.githubusercontent.com/u/64787796?v=4')
anna.photo.attach(io: file_anna, filename: 'nes.jpg', content_type: 'image/jpg')

file_florent = URI.open('https://ca.slack-edge.com/T02NE0241-USGLVA518-5d0333e792ea-512')
florent.photo.attach(io: file_florent, filename: 'nes.jpg', content_type: 'image/jpg')

file_fabien = URI.open('https://avatars.githubusercontent.com/u/94528766?v=4')
fabien.photo.attach(io: file_fabien, filename: 'nes.jpg', content_type: 'image/jpg')

file_simon = URI.open('https://avatars.githubusercontent.com/u/94913036?v=4')
simon.photo.attach(io: file_simon, filename: 'nes.jpg', content_type: 'image/jpg')

file_francoisD = URI.open('https://ca.slack-edge.com/T02NE0241-U01K0S8R0AE-6229504558cd-512')
francoisD.photo.attach(io: file_francoisD, filename: 'nes.jpg', content_type: 'image/jpg')

file_marin = URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646214829/betnews/Users/photo-1564564321837-a57b7070ac4f_yzy736.jpg')
marin.photo.attach(io: file_marin, filename: 'nes.jpg', content_type: 'image/jpg')

file_camille= URI.open('https://avatars.githubusercontent.com/u/91615158?v=4')
camille.photo.attach(io: file_camille, filename: 'nes.jpg', content_type: 'image/jpg')

file_herve= URI.open('https://avatars.githubusercontent.com/u/94376805?v=4')
herve.photo.attach(io: file_herve, filename: 'nes.jpg', content_type: 'image/jpg')

file_charlie= URI.open('https://ca.slack-edge.com/T02NE0241-U01AV9LA8SU-ae37ef9a621f-512')
charlie.photo.attach(io: file_charlie, filename: 'nes.jpg', content_type: 'image/jpg')

file_francois= URI.open('https://avatars.githubusercontent.com/u/97095952?v=4')
francois.photo.attach(io: file_francois, filename: 'nes.jpg', content_type: 'image/jpg')

file_valentin= URI.open('https://avatars.githubusercontent.com/u/96526089?v=4')
valentin.photo.attach(io: file_valentin, filename: 'nes.jpg', content_type: 'image/jpg')

file_nina= URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646215692/betnews/Users/photo-1644982647711-9129d2ed7ceb_namk45.jpg')
nina.photo.attach(io: file_nina, filename: 'nes.jpg', content_type: 'image/jpg')

file_pierre= URI.open('https://ca.slack-edge.com/T02NE0241-U0BJX5CP8-0993e358bde8-512')
pierre.photo.attach(io: file_pierre, filename: 'nes.jpg', content_type: 'image/jpg')

file_luc= URI.open('https://res.cloudinary.com/dqtnidhro/image/upload/v1646215810/betnews/Users/photo-1645830166230-187caf791b90_rmwg3v.jpg')
luc.photo.attach(io: file_luc, filename: 'nes.jpg', content_type: 'image/jpg')

chomagemedia = Media.create!(
  source: "Le Figaro",
  url: "https://www.lefigaro.fr/conjoncture/le-chomage-de-la-zone-euro-bat-un-nouveau-record-a-la-baisse-a-6-8-en-janvier-20220303",
  bet: chomage,
)

cesarmedia = Media.create!(
  source: "L'Internaute",
  url: "https://www.linternaute.com/cinema/evenement/1259663-cesar-2022-palmares-et-temps-forts-de-la-47e-ceremonie/",
  bet: cesar,
)

kohlantamedia = Media.create!(
  source: "Huffingtonpost",
  url: "https://www.huffingtonpost.fr/entry/franck-quitte-koh-lanta-et-sattire-les-foudres-de-son-equipe_fr_621f289ae4b0783a8f089531",
  bet: kohlanta,
)

macronmedia = Media.create!(
  source: "20 minutes",
  url: "https://www.20minutes.fr/elections/sondage-election/3244915-20220302-sondages-presidentielle-2022-emmanuel-macron-forte-hausse-valerie-pecresse-chute-libre",
  bet: macron,
)

footmedia = Media.create!(
  source: "Culture PSG",
  url: "https://www.culturepsg.com/news/club/le-psg-champion-pour-la-10e-fois-contre-l-om-un-scenario-possible/41116",
  bet: foot,
)

ukrainemedia = Media.create!(
  source: "Le Figaro",
  url: "https://www.lefigaro.fr/international/l-ukraine-peut-elle-adherer-sans-delai-a-l-union-europeenne-comme-le-demande-zelensky-20220228",
  bet: ukraine,
)

petrolemedia = Media.create!(
  source: "Le Monde",
  url: "https://www.lemonde.fr/economie/article/2022/03/03/les-cours-du-petrole-retrouvent-des-sommets-inquietants_6115953_3234.html",
  bet: petrole,
)

zemmourmedia = Media.create!(
  source: "Le Point",
  url: "https://www.lepoint.fr/presidentielle/et-si-zemmour-melenchon-le-pen-ne-pouvaient-pas-se-presenter-08-02-2022-2463858_3121.php",
  bet: zemmour,
)

thevoicemedia = Media.create!(
  source: "TF1",
  url: "https://www.tf1.fr/tf1/the-voice/videos/the-voice-2022-charles-kaylan-shadow-chante-bruises-de-lewis-capaldi-auditions-a-laveugle-28919378.html",
  bet: thevoice,
)

covidmedia = Media.create!(
  source: "Ouest France",
  url: "https://www.ouest-france.fr/sante/virus/coronavirus/covid-19-port-du-masque-quels-sont-les-lieux-ou-il-n-est-plus-obligatoire-29b44b78-97f6-11ec-a02d-e4daad81e3f4",
  bet: covid,
)

chassemedia = Media.create!(
  source: "Francetvinfo",
  url: "https://www.francetvinfo.fr/elections/presidentielle/candidats/interdire-la-chasse-la-limiter-la-defendre-que-proposent-les-candidats-a-l-election-presidentielle_4973484.html",
  bet: chasse,
)

cac40media = Media.create!(
  source: "Bourse Direct",
  url: "https://www.boursedirect.fr/fr/actualites/categorie/marche-francais/preouverture-paris-la-russie-attaque-l-ukraine-le-cac40-va-plonger-boursier-86bbbcbd1e0415c3c69afd2d6502850636b8a2f5",
  bet: cac40,
)

rugbymedia = Media.create!(
  source: "L'équipe",
  url: "https://www.lequipe.fr/Rugby/Actualites/Apres-sa-victoire-en-ecosse-la-france-passe-au-troisieme-rang-mondial/1319699",
  bet: rugby,
)

rassemblementNationalmedia = Media.create!(
  source: "France culture",
  url: "https://www.franceculture.fr/emissions/le-billet-politique/eric-zemmour-l-enfant-terrible-de-marine-le-pen",
  bet: rassemblementNational,
)

quiveutêtremonassociémedia = Media.create!(
  source: "C News",
  url: "https://www.cnews.fr/divertissement/2022-02-03/qui-veut-etre-mon-associe-quel-investisseur-depense-le-plus-dargent-dans",
  bet: quiveutêtremonassocié,
)

trainmedia = Media.create!(
  source: "Le Point",
  url: "https://www.lepoint.fr/economie/les-debuts-difficiles-de-la-concurrence-ferroviaire-en-france-16-02-2022-2465170_28.php",
  bet: train,
)

tennismedia = Media.create!(
  source: "Le Point",
  url: "https://www.lepoint.fr/tennis/tennis-djokovic-pret-a-rater-roland-garros-pour-eviter-le-vaccin-15-02-2022-2464950_580.php",
  bet: tennis,
)
goldmanmedia = Media.create!(
  source: "Cosmopolitan",
  url: "https://www.cosmopolitan.fr/jean-jacques-goldman-retour-chanson,2054963.asp",
  bet: goldman,
)

truthsocialmedia = Media.create!(
  source: "Le Parisien",
  url: "https://www.leparisien.fr/international/le-lancement-de-truth-social-le-reseau-social-de-donald-trump-est-prevu-pour-le-21-fevrier-07-01-2022-SX3Z2RSURJEFPGWNAGQVXEAEGM.php",
  bet: truthsocial,
)

paritémedia = Media.create!(
  source: "Le Parisien",
  url: "https://www.leparisien.fr/sentinelles/presidentielle-la-france-est-elle-vraiment-prete-a-elire-une-femme-presidente-05-10-2021-P3Z2GKYBOREKRMHSUCL6NLLP2A.php",
  bet: parité,
)

tourdefrancemedia = Media.create!(
  source: "RMC Sport",
  url: "https://rmcsport.bfmtv.com/cyclisme/tour-de-france/cyclisme-alaphilippe-ne-pense-pas-avoir-l-equipe-pour-gagner-le-tour-de-france_AV-202202090418.html",
  bet: tourdefrance,
)

goncourtmedia = Media.create!(
  source: "Libération",
  url: "https://www.liberation.fr/culture/livres/sorj-chalandon-agnes-desarthe-christine-angot-decouvrez-la-premiere-selection-du-goncourt-2022-20210907_YTKINPFFPVHFHNITYENMMVIHIU/",
  bet: goncourt,
)

corauxmedia = Media.create!(
  source: "ScienceAdvance",
  url: "https://www.science.org/doi/10.1126/sciadv.aax2950",
  bet: coraux,
)

psgmedia = Media.create!(
  source: "footmercato",
  url: "https://www.footmercato.net/a3876445750049709899-psg-le-sort-de-mauricio-pochettino-est-scelle",
  bet: psg,
)

puts 'Medias well generated'

Betting.all.each do |betting|
  betting.wager = rand(1..100)
  betting.save
end
puts 'Giving random wager to Bettings'
