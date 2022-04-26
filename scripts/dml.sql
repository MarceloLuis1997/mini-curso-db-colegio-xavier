INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores) VALUES (
  'Metallica',
  'Metal',
  '10',
  '10000000'
);

INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores) VALUES (
  'Iron Maiden',
  'Metal',
  '10',
  '15000000'
);

INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores,data_cadastro) VALUES (
  'Beatles',
  'Rock',
  '9',
  '12000000',
  '2022-04-26 12:00:00'
);

INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores,data_cadastro) VALUES (
  'Pink Floyd',
  'Rock',
  '8',
  '800000',
  '2022-04-27 08:50:00'
);

INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores,data_cadastro) VALUES (
  'Guns N Roses',
  'Rock',
  '7',
  '500000',
  '2022-04-10 19:55:00'
);

INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores,data_cadastro) VALUES (
  'Led Zeppelin',
  'Rock',
  '6',
  '458090',
  '2022-03-25 06:00:00'
);

INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores,data_cadastro) VALUES (
  'AC/DC',
  'Rock',
  '7',
  '2000000',
  '2022-04-06 22:56:00'
);

INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores,data_cadastro) VALUES (
  'The Weeknd',
  'Pop',
  '9',
  '6980000',
  '2022-04-28 06:00:00'
);

INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores,data_cadastro) VALUES (
  'Eminem',
  'Rap',
  '10',
  '11500000',
  '2022-02-17 14:30:00'
);

INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores,data_cadastro) VALUES (
  'Johnny Cash',
  'Country',
  '6',
  '1165132',
  '2022-01-10 13:00:05'
);

INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores,data_cadastro) VALUES (
  'Nirvana',
  'Grunge',
  '4',
  '235000',
  '2022-04-03 22:00:55'
);

INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores,data_cadastro) VALUES (
  '50 Cent',
  'Rap',
  '6',
  '495450',
  '2022-03-26 15:44:08'
);

INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores,data_cadastro) VALUES (
  'Maroon 5',
  'Pop',
  '9',
  '9456620',
  '2022-04-15 12:30:00'
);

INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores,data_cadastro) VALUES (
  'Michael Jackson',
  'Pop',
  '10',
  '14600000',
  '2022-01-28 23:45:00'
);

INSERT INTO artistas (nome,genero,popularidade,quantidade_seguidores,data_cadastro) VALUES (
  'Ed Sheeran',
  'Pop',
  '8',
  '6988410',
  '2022-02-14 10:00:00'
);

INSERT INTO festivais (nome,local,data) VALUES (
  'Rock in Rio 2022',
  'Rio de Janeiro, Brasil',
  '2022-06-18'
);

INSERT INTO festivais (nome,local,data) VALUES (
  'Rock in Rio 2019',
  'Rio de Janeiro, Brasil',
  '2019-09-27'
);

INSERT INTO festivais (nome,local,data) VALUES (
  'Wacken Open Air',
  'Alemanha',
  '2008-06-08'
);

INSERT INTO festivais (nome,local,data) VALUES (
  'Lollapalooza',
  'Grant Park, Illinois, EUA',
  '2015-08-07'
);

INSERT INTO festivais (nome,local,data) VALUES (
  'Tomorrowland',
  'Boom, Bélgica',
  '2012-04-25'
);

INSERT INTO festivais (nome,local,data) VALUES (
  'Coachella Fest',
  'Califórnia, EUA',
  '1999-09-20'
);

INSERT INTO festivais_artistas (id_artista, id_festival)
VALUES 
(15, 4),
(9, 6),
(1, 2),
(1, 5),
(8, 4),
(6, 1),
(13, 2),
(15, 1),
(9, 1),
(15, 3),
(14, 3),
(9, 5),
(9, 4),
(4, 3),
(14, 4),
(10, 5),
(13, 5),
(4, 1),
(14, 2),
(12, 6),
(10, 2),
(2, 1),
(6, 6),
(5, 5),
(6, 4),
(10, 6);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = 'Led Zeppelin' LIMIT 1), 'Led Zeppelin IV', '19.9', '1971');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'Led Zeppelin IV' limit 1), 1, 'Black Dog', 248, 355980) ,((SELECT id FROM albuns WHERE titulo = 'Led Zeppelin IV' limit 1), 2, 'Rock and Roll', 210, 302415) ,((SELECT id FROM albuns WHERE titulo = 'Led Zeppelin IV' limit 1), 3, 'The Battle of Evermore', 296, 881182) ,((SELECT id FROM albuns WHERE titulo = 'Led Zeppelin IV' limit 1), 4, 'Stairway to Heaven', 235, 226844) ,((SELECT id FROM albuns WHERE titulo = 'Led Zeppelin IV' limit 1), 5, 'Misty Mountain Hop', 180, 325520) ,((SELECT id FROM albuns WHERE titulo = 'Led Zeppelin IV' limit 1), 6, 'Four Sticks', 120, 700791) ,((SELECT id FROM albuns WHERE titulo = 'Led Zeppelin IV' limit 1), 7, 'Going to California', 237, 72640) ,((SELECT id FROM albuns WHERE titulo = 'Led Zeppelin IV' limit 1), 8, 'When the Levee Breaks', 199, 883440);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = 'AC/DC' LIMIT 1), 'Back In Black', '22.9', '1980');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'Back In Black' limit 1), 1, 'Hells Bells', 193, 838812) ,((SELECT id FROM albuns WHERE titulo = 'Back In Black' limit 1), 2, 'Shoot to Thrill', 292, 284544) ,((SELECT id FROM albuns WHERE titulo = 'Back In Black' limit 1), 3, 'What Do You Do for Money Honey', 251, 825517) ,((SELECT id FROM albuns WHERE titulo = 'Back In Black' limit 1), 4, 'Givin the Dog a Bone', 265, 77884) ,((SELECT id FROM albuns WHERE titulo = 'Back In Black' limit 1), 5, 'Let Me Put My Love into You', 136, 631253) ,((SELECT id FROM albuns WHERE titulo = 'Back In Black' limit 1), 6, 'Back in Black', 131, 606302) ,((SELECT id FROM albuns WHERE titulo = 'Back In Black' limit 1), 7, 'You Shook Me All Night Long', 133, 437037) ,((SELECT id FROM albuns WHERE titulo = 'Back In Black' limit 1), 8, 'Have a Drink on Me', 256, 38450) ,((SELECT id FROM albuns WHERE titulo = 'Back In Black' limit 1), 9, 'Shake a Leg', 288, 730871) ,((SELECT id FROM albuns WHERE titulo = 'Back In Black' limit 1), 10, 'Rock and Roll Aint Noise Pollution', 198, 566121);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = 'The Weeknd' LIMIT 1), 'After Hours', '33.5', '2020');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'After Hours' limit 1), 1, 'Alone Again', 160, 290872) ,((SELECT id FROM albuns WHERE titulo = 'After Hours' limit 1), 2, 'Too Late', 298, 759140) ,((SELECT id FROM albuns WHERE titulo = 'After Hours' limit 1), 3, 'Hardest to Love', 226, 870533) ,((SELECT id FROM albuns WHERE titulo = 'After Hours' limit 1), 4, 'Scared to Live', 253, 638038) ,((SELECT id FROM albuns WHERE titulo = 'After Hours' limit 1), 5, 'Snowchild', 276, 759982) ,((SELECT id FROM albuns WHERE titulo = 'After Hours' limit 1), 6, 'Escape from LA', 166, 518884) ,((SELECT id FROM albuns WHERE titulo = 'After Hours' limit 1), 7, 'Heartless', 154, 562624) ,((SELECT id FROM albuns WHERE titulo = 'After Hours' limit 1), 8, 'Faith', 138, 325778) ,((SELECT id FROM albuns WHERE titulo = 'After Hours' limit 1), 9, 'Blinding Lights', 149, 919657) ,((SELECT id FROM albuns WHERE titulo = 'After Hours' limit 1), 10, 'In Your Eyes', 224, 106287) ,((SELECT id FROM albuns WHERE titulo = 'After Hours' limit 1), 11, 'Save Your Tears', 279, 103888) ,((SELECT id FROM albuns WHERE titulo = 'After Hours' limit 1), 12, 'Repeat After Me', 221, 619800) ,((SELECT id FROM albuns WHERE titulo = 'After Hours' limit 1), 13, 'After Hours', 230, 736444) ,((SELECT id FROM albuns WHERE titulo = 'After Hours' limit 1), 14, 'Until I Bleed Out', 256, 944331);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = 'Eminem' LIMIT 1), 'Recovery', '50', '2010');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 1, 'Cold Wind Blows', 277, 392109) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 2, 'Talkin 2 Myself', 168, 426505) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 3, 'On Fire', 284, 838321) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 4, 'Wont Back Down', 206, 906653) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 5, 'W.T.P. (White Trash Party)', 262, 883422) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 6, 'Going Through Changes', 268, 198421) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 7, 'Not Afraid', 168, 744549) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 8, 'Seduction', 188, 944138) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 9, 'No Love', 181, 869411) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 10, 'Space Bound', 245, 34442) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 11, 'Cinderella Man', 184, 77813) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 12, '25 to Life', 235, 647873) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 13, 'So Bad', 276, 822499) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 14, 'Almost Famous', 201, 732368) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 15, 'Love the Way You Lie', 194, 176123) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 16, 'Youre Never Over', 150, 166019) ,((SELECT id FROM albuns WHERE titulo = 'Recovery' limit 1), 17, 'Untitled', 238, 639770);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = 'Johnny Cash' LIMIT 1), 'Unchained', '100.99', '1996');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'Unchained' limit 1), 1, 'Rowboat', 201, 293330) ,((SELECT id FROM albuns WHERE titulo = 'Unchained' limit 1), 2, 'Sea of Heartbreak', 242, 939163) ,((SELECT id FROM albuns WHERE titulo = 'Unchained' limit 1), 3, 'Rusty Cage', 128, 490692) ,((SELECT id FROM albuns WHERE titulo = 'Unchained' limit 1), 4, 'The One Rose (Thats Left in My Heart)', 143, 998056) ,((SELECT id FROM albuns WHERE titulo = 'Unchained' limit 1), 5, 'Country Boy', 287, 669701) ,((SELECT id FROM albuns WHERE titulo = 'Unchained' limit 1), 6, 'Memories Are Made of This', 250, 72851) ,((SELECT id FROM albuns WHERE titulo = 'Unchained' limit 1), 7, 'Spiritual', 158, 562855) ,((SELECT id FROM albuns WHERE titulo = 'Unchained' limit 1), 8, 'The Kneeling Drunkards Plea', 230, 650587) ,((SELECT id FROM albuns WHERE titulo = 'Unchained' limit 1), 9, 'Southern Accents', 224, 254741) ,((SELECT id FROM albuns WHERE titulo = 'Unchained' limit 1), 10, 'Mean Eyed Cat', 140, 669709) ,((SELECT id FROM albuns WHERE titulo = 'Unchained' limit 1), 11, 'Meet Me in Heaven', 237, 584794) ,((SELECT id FROM albuns WHERE titulo = 'Unchained' limit 1), 12, 'I Never Picked Cotton', 130, 502577) ,((SELECT id FROM albuns WHERE titulo = 'Unchained' limit 1), 13, 'Unchained', 274, 103016) ,((SELECT id FROM albuns WHERE titulo = 'Unchained' limit 1), 14, 'I Have Been Everywhere', 121, 389005);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = 'Nirvana' LIMIT 1), 'Nevermind', '7.35', '1990');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'Nevermind' limit 1), 1, 'Smells Like Teen Spirit', 278, 457847) ,((SELECT id FROM albuns WHERE titulo = 'Nevermind' limit 1), 2, 'In Bloom', 235, 577858) ,((SELECT id FROM albuns WHERE titulo = 'Nevermind' limit 1), 3, 'Come As You Are', 181, 880431) ,((SELECT id FROM albuns WHERE titulo = 'Nevermind' limit 1), 4, 'Breed', 291, 982318) ,((SELECT id FROM albuns WHERE titulo = 'Nevermind' limit 1), 5, 'Lithium', 293, 627120) ,((SELECT id FROM albuns WHERE titulo = 'Nevermind' limit 1), 6, 'Polly', 128, 919459) ,((SELECT id FROM albuns WHERE titulo = 'Nevermind' limit 1), 7, 'Territorial Pissings', 297, 221692) ,((SELECT id FROM albuns WHERE titulo = 'Nevermind' limit 1), 8, 'Drain You', 171, 451882) ,((SELECT id FROM albuns WHERE titulo = 'Nevermind' limit 1), 9, 'Lounge Act', 167, 202111) ,((SELECT id FROM albuns WHERE titulo = 'Nevermind' limit 1), 10, 'Stay Away', 207, 13055) ,((SELECT id FROM albuns WHERE titulo = 'Nevermind' limit 1), 11, 'On A Plain', 276, 605290) ,((SELECT id FROM albuns WHERE titulo = 'Nevermind' limit 1), 12, 'Something In The Way', 281, 237330) ,((SELECT id FROM albuns WHERE titulo = 'Nevermind' limit 1), 13, 'Endless, Nameless', 191, 143648);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = '50 Cent' LIMIT 1), 'Curtis', '4.67', '2007');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'Curtis' limit 1), 1, 'My Gun Go Off', 271, 495142) ,((SELECT id FROM albuns WHERE titulo = 'Curtis' limit 1), 2, 'Man Down', 204, 799536) ,((SELECT id FROM albuns WHERE titulo = 'Curtis' limit 1), 3, 'Ill Still Kill', 256, 353737) ,((SELECT id FROM albuns WHERE titulo = 'Curtis' limit 1), 4, 'I Get Money', 140, 181780) ,((SELECT id FROM albuns WHERE titulo = 'Curtis' limit 1), 5, 'Come & Go', 288, 396178) ,((SELECT id FROM albuns WHERE titulo = 'Curtis' limit 1), 6, 'Ayo Technology', 246, 898186) ,((SELECT id FROM albuns WHERE titulo = 'Curtis' limit 1), 7, 'Follow My Lead', 297, 184609);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = 'Maroon 5' LIMIT 1), 'Overexposed', '25.6', '2012');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'Overexposed' limit 1), 1, 'One More Night', 182, 809479) ,((SELECT id FROM albuns WHERE titulo = 'Overexposed' limit 1), 2, 'Payphone', 217, 178723) ,((SELECT id FROM albuns WHERE titulo = 'Overexposed' limit 1), 3, 'Daylight', 130, 918661) ,((SELECT id FROM albuns WHERE titulo = 'Overexposed' limit 1), 4, 'Lucky Strike', 214, 945968) ,((SELECT id FROM albuns WHERE titulo = 'Overexposed' limit 1), 5, 'The Man Who Never Lied', 201, 231461) ,((SELECT id FROM albuns WHERE titulo = 'Overexposed' limit 1), 6, 'Love Somebody', 259, 379669) ,((SELECT id FROM albuns WHERE titulo = 'Overexposed' limit 1), 7, 'Lady Killer', 209, 250220) ,((SELECT id FROM albuns WHERE titulo = 'Overexposed' limit 1), 8, 'Fortune Teller', 244, 491387) ,((SELECT id FROM albuns WHERE titulo = 'Overexposed' limit 1), 9, 'Sad', 250, 918661) ,((SELECT id FROM albuns WHERE titulo = 'Overexposed' limit 1), 10, 'Tickets', 203, 97565) ,((SELECT id FROM albuns WHERE titulo = 'Overexposed' limit 1), 11, 'Doin Dirt', 178, 249546) ,((SELECT id FROM albuns WHERE titulo = 'Overexposed' limit 1), 12, 'Beautiful Goodbye', 259, 206744);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = 'Michael Jackson' LIMIT 1), 'Thriller', '90', '1982');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'Thriller' limit 1), 1, 'Wanna Be Startin Somethin', 297, 806572) ,((SELECT id FROM albuns WHERE titulo = 'Thriller' limit 1), 2, 'Baby Be Mine', 174, 202626) ,((SELECT id FROM albuns WHERE titulo = 'Thriller' limit 1), 3, 'The Girl Is Mine', 244, 136139) ,((SELECT id FROM albuns WHERE titulo = 'Thriller' limit 1), 4, 'Thriller', 283, 433121) ,((SELECT id FROM albuns WHERE titulo = 'Thriller' limit 1), 5, 'Beat It', 257, 984095) ,((SELECT id FROM albuns WHERE titulo = 'Thriller' limit 1), 6, 'Billie Jean', 300, 296902) ,((SELECT id FROM albuns WHERE titulo = 'Thriller' limit 1), 7, 'Human Nature', 272, 42811) ,((SELECT id FROM albuns WHERE titulo = 'Thriller' limit 1), 8, 'P.Y.T. (Pretty Young Thing)', 263, 667797) ,((SELECT id FROM albuns WHERE titulo = 'Thriller' limit 1), 9, 'The Lady in My Life', 153, 11971);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = 'Ed Sheeran' LIMIT 1), 'Loose Change', '14.9', '2010');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'Loose Change' limit 1), 1, 'The A Team', 156, 956019) ,((SELECT id FROM albuns WHERE titulo = 'Loose Change' limit 1), 2, 'Homeless', 121, 20055) ,((SELECT id FROM albuns WHERE titulo = 'Loose Change' limit 1), 3, 'Little Bird', 281, 286433) ,((SELECT id FROM albuns WHERE titulo = 'Loose Change' limit 1), 4, 'Sofa', 176, 905061) ,((SELECT id FROM albuns WHERE titulo = 'Loose Change' limit 1), 5, 'One Night', 186, 298234) ,((SELECT id FROM albuns WHERE titulo = 'Loose Change' limit 1), 6, 'Firefly', 202, 923300) ,((SELECT id FROM albuns WHERE titulo = 'Loose Change' limit 1), 7, 'The City', 190, 666882);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = 'Metallica' LIMIT 1), 'Master of Puppets', '15', '1986');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'Master of Puppets' limit 1), 1, 'Battery', 130, 663699) ,((SELECT id FROM albuns WHERE titulo = 'Master of Puppets' limit 1), 2, 'Master of Puppets', 247, 940944) ,((SELECT id FROM albuns WHERE titulo = 'Master of Puppets' limit 1), 3, 'The Thing That Should Not Be', 213, 580973) ,((SELECT id FROM albuns WHERE titulo = 'Master of Puppets' limit 1), 4, 'Welcome Home (Sanitarium)', 141, 445820) ,((SELECT id FROM albuns WHERE titulo = 'Master of Puppets' limit 1), 5, 'Disposable Heroes', 186, 860314) ,((SELECT id FROM albuns WHERE titulo = 'Master of Puppets' limit 1), 6, 'Leper Messiah', 287, 867174) ,((SELECT id FROM albuns WHERE titulo = 'Master of Puppets' limit 1), 7, 'Orion', 167, 414415) ,((SELECT id FROM albuns WHERE titulo = 'Master of Puppets' limit 1), 8, 'Damage, Inc', 192, 487368);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = 'Iron Maiden' LIMIT 1), 'Brave New World', '12', '2000');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'Brave New World' limit 1), 1, 'The Wicker Man', 276, 302260) ,((SELECT id FROM albuns WHERE titulo = 'Brave New World' limit 1), 2, 'Ghost of the Navigator', 289, 676773) ,((SELECT id FROM albuns WHERE titulo = 'Brave New World' limit 1), 3, 'Brave New World', 243, 145383) ,((SELECT id FROM albuns WHERE titulo = 'Brave New World' limit 1), 4, 'Blood Brothers', 293, 814393) ,((SELECT id FROM albuns WHERE titulo = 'Brave New World' limit 1), 5, 'The Mercenary', 267, 807148) ,((SELECT id FROM albuns WHERE titulo = 'Brave New World' limit 1), 6, 'Dream of Mirrors', 149, 69594) ,((SELECT id FROM albuns WHERE titulo = 'Brave New World' limit 1), 7, 'The Fallen Angel', 208, 468890) ,((SELECT id FROM albuns WHERE titulo = 'Brave New World' limit 1), 8, 'The Nomad', 286, 992673) ,((SELECT id FROM albuns WHERE titulo = 'Brave New World' limit 1), 9, 'Out of the Silent Planet', 253, 655141) ,((SELECT id FROM albuns WHERE titulo = 'Brave New World' limit 1), 10, 'The Thin Line Between Love & Hate', 233, 162174);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = 'Beatles' LIMIT 1), 'Abbey Road', '8.99', '1969');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'Abbey Road' limit 1), 1, 'Come Together', 136, 687555) ,((SELECT id FROM albuns WHERE titulo = 'Abbey Road' limit 1), 2, 'Something', 265, 26527) ,((SELECT id FROM albuns WHERE titulo = 'Abbey Road' limit 1), 3, 'Maxwells Silver Hammer', 173, 157507) ,((SELECT id FROM albuns WHERE titulo = 'Abbey Road' limit 1), 4, 'Oh! Darling', 167, 276383) ,((SELECT id FROM albuns WHERE titulo = 'Abbey Road' limit 1), 5, 'Octopuss Garden', 274, 145708) ,((SELECT id FROM albuns WHERE titulo = 'Abbey Road' limit 1), 6, 'I Want You (Shes So Heavy)', 284, 207907) ,((SELECT id FROM albuns WHERE titulo = 'Abbey Road' limit 1), 7, 'Here Comes the Sun', 216, 769074);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = 'Pink Floyd' LIMIT 1), 'The Division Bell', '10.5', '1994');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'The Division Bell' limit 1), 1, 'Cluster One', 207, 767164) ,((SELECT id FROM albuns WHERE titulo = 'The Division Bell' limit 1), 2, 'What Do You Want from Me', 209, 181895) ,((SELECT id FROM albuns WHERE titulo = 'The Division Bell' limit 1), 3, 'Poles Apart', 295, 803179) ,((SELECT id FROM albuns WHERE titulo = 'The Division Bell' limit 1), 4, 'Marooned', 140, 848400) ,((SELECT id FROM albuns WHERE titulo = 'The Division Bell' limit 1), 5, 'A Great Day for Freedom', 197, 967595) ,((SELECT id FROM albuns WHERE titulo = 'The Division Bell' limit 1), 6, 'Wearing the Inside Out', 177, 210461) ,((SELECT id FROM albuns WHERE titulo = 'The Division Bell' limit 1), 7, 'Take It Back', 240, 243754) ,((SELECT id FROM albuns WHERE titulo = 'The Division Bell' limit 1), 8, 'Coming Back to Life', 238, 702631) ,((SELECT id FROM albuns WHERE titulo = 'The Division Bell' limit 1), 9, 'Keep Talking', 164, 523021) ,((SELECT id FROM albuns WHERE titulo = 'The Division Bell' limit 1), 10, 'Lost for Words', 137, 40864) ,((SELECT id FROM albuns WHERE titulo = 'The Division Bell' limit 1), 11, 'High Hopes', 167, 400245);

INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = 'Guns N Roses' LIMIT 1), 'Appetite For Destruction', '7.99', '1987');

INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES ((SELECT id FROM albuns WHERE titulo = 'Appetite For Destruction' limit 1), 1, 'Welcome To The Jungle', 180, 413121) ,((SELECT id FROM albuns WHERE titulo = 'Appetite For Destruction' limit 1), 2, 'Its So Easy', 250, 546370) ,((SELECT id FROM albuns WHERE titulo = 'Appetite For Destruction' limit 1), 3, 'Nightrain', 222, 290685) ,((SELECT id FROM albuns WHERE titulo = 'Appetite For Destruction' limit 1), 4, 'Out Ta Get Me', 172, 475756) ,((SELECT id FROM albuns WHERE titulo = 'Appetite For Destruction' limit 1), 5, 'Mr. Brownstone', 218, 54011) ,((SELECT id FROM albuns WHERE titulo = 'Appetite For Destruction' limit 1), 6, 'Paradise City', 285, 120758) ,((SELECT id FROM albuns WHERE titulo = 'Appetite For Destruction' limit 1), 7, 'My Michelle', 138, 800667) ,((SELECT id FROM albuns WHERE titulo = 'Appetite For Destruction' limit 1), 8, 'Think About You', 124, 496416) ,((SELECT id FROM albuns WHERE titulo = 'Appetite For Destruction' limit 1), 9, 'Sweet Child O Mine', 261, 526867) ,((SELECT id FROM albuns WHERE titulo = 'Appetite For Destruction' limit 1), 10, 'Youre Crazy', 193, 852475) ,((SELECT id FROM albuns WHERE titulo = 'Appetite For Destruction' limit 1), 11, 'Anything Goes', 233, 44173) ,((SELECT id FROM albuns WHERE titulo = 'Appetite For Destruction' limit 1), 12, 'Rocket Queen', 198, 878390);
