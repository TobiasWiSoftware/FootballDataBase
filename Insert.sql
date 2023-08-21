-- Task: Insert sample data from 1. Bundesliga season 2020/2021

INSERT INTO TClub VALUES
/*1*/  (ClubId, 'FC Bayern München e.V.',                      'Oliver Kahn',             'Säbener Str. 51-57',               '81547', 'München',           '1900-02-27'),
/*2*/  (ClubId, 'RasenBallsport Leipzig e.V.',                 'Oliver Mintzlaff',        'Cottaweg 3',                       '04105', 'Leipzig',           '2009-05-19'),
/*3*/  (ClubId, '1. FC Union Berlin e.V.',                     'Dirk Zingler',            'An der Wuhlheide 263',             '12555', 'Berlin',            '1966-01-20'),
/*4*/  (ClubId, 'Borussia VfL Dortmund 1900 e.V.',             'Hans-Joachim Watzke',     'Rheinlanddamm 207-209',            '44137', 'Dortmund',          '1909-12-19'),
/*5*/  (ClubId, 'SC Freiburg e.V.',                            'Oliver Leki',             'Schwarzwaldstraße 193',            '79117', 'Freiburg',          '1904-05-30'),
/*6*/  (ClubId, 'Herta Berliner Sport-Club e.V.',              'Thomas Herrich',          'Hans-Braun-Straße Friesenhaus II', '14053', 'Berlin',            '1892-07-25'),
/*7*/  (ClubId, 'FC Gelsenkirchen-Schalke 04 e.V.',            'Peter Knäbel',            'Ernst-Kuorra-Weg 1',               '45891', 'Gelsenkirchen',     '1904-05-04'),
/*8*/  (ClubId, 'VfB Stuttgart 1893 e.V.',                     'Rainer Adrion',           'Mercedesstraße',                   '70372', 'Stuttgart',         '1893-09-09'),
/*9*/  (ClubId, 'FC Augsburg 1907 e.V.',                       'Markus Krapf',            'Bürgermeister-Ulrich-Straße 90',   '86154', 'Augsburg',          '1907-08-08'),
/*10*/ (ClubId, 'DS Arminia Bielefeld e.V.',                   'Michael Mutzel',          'Melanchthonstraße 31a',            '33615', 'Bielefeld',         '1905-05-03'),
/*11*/ (ClubId, 'Sport-Verein Werder von 1899 e.V.',           'Klaus Filbry',            'Franz-Böhmert-Straße 1c',          '28205', 'Bremen',            '1899-02-04'),
/*12*/ (ClubId, 'TSG Hoffenheim 1899 e.V.',                    'Jan Mayer',              'Horrenberger Str. 58',              '74939', 'Zuzenhausen',       '1899-07-01'),
/*13*/ (ClubId, '1. FC Köln 01/07 e.V.',                       'Christian Keller',       'Frank-Kerner-Allee 1-3',            '50937', 'Köln',              '1948-02-13'),
/*14*/ (ClubId, '1. FSV Mainz 05 e.V.',                        'Stefan Hofmann',         'Isaac-Fulda-Allee 5',               '55124', 'Mainz',             '1905-03-16'),
/*15*/ (ClubId, 'VfL Wolfsburg-Fußball GmbH',                  'Michael Meeske',         'In den Allerwiesen 1',              '38410', 'Wolfsburg',         '1945-09-12'),
/*16*/ (ClubId, 'Eintracht Frankfurt e.V.',                    'Axel Hellmann',          'Alfred-Pfaff-Straße 1',             '60386', 'Frankfurt am Main', '1899-03-08'),
/*17*/ (ClubId, 'Bayer 04 Leverkusen Fußball GmbH',            'Fernando Carro',         'Gustav-Heinemann-Straße 1',         '51373', 'Leverkusen',        '1904-07-01'),
/*18*/ (ClubId, 'Borussia VfL 1900 Mönchengladbach GmbH',      'Stephan A.C. Schippers', 'Hennes-Weisweiler-Allee 1',         '41179', 'Mönchengladbach',   '1900-08-01');

-- Task: Insert all player

INSERT INTO TPlayer SELECT NULL, 'Serge', 'Gnabry', '1995-07-14', 875000, ClubId FROM TCLUB WHERE ClubName = 'FC Bayern München e.V.';

INSERT INTO TPlayer (FirstName, LastName, BirthDate, Salory, ClubId) SELECT 'Robert', 'Lewandowski', '1988-08-21', 1900000, ClubId FROM TCLUB WHERE ClubName = 'FC Bayern München e.V.';

INSERT INTO TPlayer VALUES

-- FC Bayern München

(PlayerId, 'Thomas',             'Müller',          '1989-09-13', 1245833.33, 1),
(PlayerId, 'Manuel',             'Neuer',           '1986-03-27', NULL, 1),
(PlayerId, 'David',              'Alaba',           '1992-06-24', NULL, 1),
(PlayerId, 'Leon',               'Goretzka',        '1995-02-06', NULL, 1),
(PlayerId, 'Kingsley',           'Coman',           '1996-06-13', NULL, 1),
(PlayerId, 'Lucas',              'Hernandez',       '1996-02-14', NULL, 1),
(PlayerId, 'Benjamin',           'Pavard',          '1996-03-28', NULL, 1),
(PlayerId, 'Corentin',           'Tolisso',         '1994-08-03', NULL, 1),
(PlayerId, 'Niklas',             'Süle',            '1995-09-03', NULL, 1),
(PlayerId, 'Douglas',            'Costa',           '1990-09-14', NULL, 1),
(PlayerId, 'Leroy',              'Sané',            '1996-01-11', NULL, 1),
(PlayerId, 'Javi',               'Martinez',        '1988-09-02', NULL, 1),
(PlayerId, 'Chris',              'Richards',        '2000-03-28', NULL, 1),
(PlayerId, 'Alphonso',           'Davies',          '2000-11-02', NULL, 1),
(PlayerId, 'Bouna',              'Sarr',            '1992-01-31', NULL, 1),
(PlayerId, 'Eric Maxim',         'Choupo-Moting',    '1989-03-23', NULL, 1),
(PlayerId, 'Marc',               'Roca',            '1996-11-26', NULL, 1),
(PlayerId, 'Jamal',              'Musiala',         '2003-02-26', NULL, 1),
(PlayerId, 'Joshua',             'Kimmich',         '1995-02-08', 1500000, 1),
(PlayerId, 'Jerome',             'Boateng',         '1988-09-03', NULL, 1),
(PlayerId, 'Jeffrey',            'Goeweleeuw',      '1991-07-10', NULL, 1),

-- Borussia Dortmund
(PlayerId, 'Erling',             'Haaland',         '2000-07-21', NULL, 4),
(PlayerId, 'Jude',               'Bellingham',      '2003-06-29', NULL, 4),
(PlayerId, 'Marco',              'Reus',            '1989-05-31', NULL, 4),
(PlayerId, 'Mats',               'Hummels',         '1988-12-16', NULL, 4),
(PlayerId, 'Jadon',              'Sancho',          '2000-03-25', NULL, 4),
(PlayerId, 'Giovanni',           'Reyna',           '2002-11-13', NULL, 4),
(PlayerId, 'Raphael',            'Guerreiro',       '1993-12-22', NULL, 4),
(PlayerId, 'Axel',               'Witsel',          '1989-01-12', NULL, 4),
(PlayerId, 'Thorgan',            'Hazard',          '1993-03-29', NULL, 4),
(PlayerId, 'Roman',              'Bürki',           '1990-11-14', NULL, 4),
(PlayerId, 'Emre',               'Can',             '1994-01-12', NULL, 4),
(PlayerId, 'Thomas',             'Delaney',         '1991-09-03', NULL, 4),
(PlayerId, 'Julian',             'Brandt',          '1996-05-02', NULL, 4),
(PlayerId, 'Dan-Axel',           'Zagadou',         '1999-06-03', NULL, 4),
(PlayerId, 'Manuel',             'Akanji',          '1995-07-19', NULL, 4),
(PlayerId, 'Lukasz',             'Piszczek',        '1985-06-03', NULL, 4),
(PlayerId, 'Mahmoud',            'Dahoud',          '1996-01-01', NULL, 4),
(PlayerId, 'Reinier',            'Jesus Carvalho',  '2002-01-19', NULL, 4),
(PlayerId, 'Marwin',             'Hitz',            '1987-09-18', NULL, 4),
(PlayerId, 'Mateu',              'Morey',           '2000-03-02', NULL, 4),

-- RB Leipzig
(PlayerId, 'Marcel',             'Sabitzer',        '1994-03-17', NULL, 2),
(PlayerId, 'Dayot',              'Upamecano',       '1998-10-27', NULL, 2),
(PlayerId, 'Yussuf',             'Poulsen',         '1994-06-15', NULL, 2),
(PlayerId, 'Christopher',        'Nkunku',          '1997-11-14', NULL, 2),
(PlayerId, 'Emil',               'Forsberg',        '1991-10-23', NULL, 2),
(PlayerId, 'Konrad',             'Laimer',          '1997-05-27', NULL, 2),
(PlayerId, 'Willi',              'Orban',           '1992-11-03', NULL, 2),
(PlayerId, 'Nordi',              'Mukiele',         '1997-11-01', NULL, 2),
(PlayerId, 'Lukas',              'Klostermann',     '1996-06-03', NULL, 2),
(PlayerId, 'Dani',               'Olmo',            '1998-05-07', NULL, 2),
(PlayerId, 'Tyler',              'Adams',           '1999-02-14', NULL, 2),
(PlayerId, 'Marcel',             'Halstenberg',     '1991-09-27', NULL, 2),
(PlayerId, 'Kevin',              'Kampl',           '1990-10-09', NULL, 2),
(PlayerId, 'Alexander',          'Sørloth',         '1995-12-05', NULL, 2),
(PlayerId, 'Jose',               'Angelino',        '1997-01-04', NULL, 2),
(PlayerId, 'Ibrahima',           'Konate',          '1999-05-25', NULL, 2),
(PlayerId, 'Justin',             'Kluivert',        '1999-05-05', NULL, 2),
(PlayerId, 'Amadou',             'Haidara',         '1998-01-31', NULL, 2),
(PlayerId, 'Péter',              'Gulácsi',         '1990-05-06', NULL, 2),
(PlayerId, 'Benjamin',           'Henrichs',        '1997-02-23', NULL, 2),

-- VfL Wolfsburg
(PlayerId, 'Wout',               'Weghorst',        '1992-08-07', NULL, 15),
(PlayerId, 'Maximilian',         'Arnold',          '1994-05-27', NULL, 15),
(PlayerId, 'Renato',             'Steffen',         '1991-11-03', NULL, 15),
(PlayerId, 'Josip',              'Brekalo',         '1998-06-23', NULL, 15),
(PlayerId, 'Xaver',              'Schlager',        '1997-09-28', NULL, 15),
(PlayerId, 'Kevin',              'Mbabu',           '1995-04-19', NULL, 15),
(PlayerId, 'John',               'Brooks',          '1993-01-28', NULL, 15),
(PlayerId, 'Ridle',              'Baku',            '1998-04-08', NULL, 15),
(PlayerId, 'Yannick',            'Gerhardt',        '1994-03-13', NULL, 15),
(PlayerId, 'Maxence',            'Lacroix',         '2000-04-06', NULL, 15),

-- Eintracht Frankfurt
(PlayerId, 'André',              'Silva',          '1995-11-06', NULL, 16),
(PlayerId, 'Filip',              'Kostić',         '1992-11-01', NULL, 16),
(PlayerId, 'Evan',               'Ndicka',         '1999-08-20', NULL, 16),
(PlayerId, 'Martin',             'Hinteregger',    '1992-09-07', NULL, 16),
(PlayerId, 'Daichi',             'Kamada',         '1996-08-05', NULL, 16),
(PlayerId, 'Branimir',           'Hrgota',         '1993-11-12', NULL, 16),
(PlayerId, 'Mijat',              'Gačinović',      '1995-02-08', NULL, 16),
(PlayerId, 'Sebastien',          'Rode',           '1990-11-11', NULL, 16),
(PlayerId, 'Kevin',              'Trapp',          '1990-07-08', NULL, 16),
(PlayerId, 'Almamy',             'Touré',          '1996-04-28', NULL, 16),
(PlayerId, 'Makoto',             'Hasebe',         '1984-01-18', NULL, 16),
(PlayerId, 'Dominik',            'Kohr',           '1994-01-31', NULL, 16),
(PlayerId, 'David',              'Abraham',        '1986-07-15', NULL, 16),
(PlayerId, 'Djibril',            'Sow',            '1997-02-06', NULL, 16),
(PlayerId, 'Bas',                'Dost',           '1989-05-31', NULL, 16),
(PlayerId, 'Erik',               'Durm',           '1992-05-12', NULL, 16),
(PlayerId, 'Danny',              'da Costa',       '1993-07-13', NULL, 16),
(PlayerId, 'Frederik',           'Rönnow',         '1992-08-04', NULL, 16),
(PlayerId, 'Tuta',               'Nascimento',     '1999-02-13', NULL, 16),
(PlayerId, 'Timothy',            'Chandler',       '1990-03-29', NULL, 16),
(PlayerId, 'Aymen',              'Barkok',         '1998-05-21', NULL, 16),
(PlayerId, 'Ragnar',             'Ache',           '1998-07-28', NULL, 16),
(PlayerId, 'Ajdin',              'Hrustic',        '1996-07-05', NULL, 16),
(PlayerId, 'Jetro',              'Willems',        '1994-03-30', NULL, 16),
(PlayerId, 'Stefan',             'Ilsanker',       '1989-05-18', NULL, 16),

-- Bayer Leverkusen
(PlayerId, 'Lars',               'Bender',         '1989-04-27', NULL, 17),
(PlayerId, 'Sven',               'Bender',         '1989-04-27', NULL, 17),
(PlayerId, 'Leon',               'Bailey',         '1997-08-09', NULL, 17),
(PlayerId, 'Jonathan',           'Tah',            '1996-02-11', NULL, 17),
(PlayerId, 'Lucas',              'Alario',         '1992-10-08', NULL, 17),
(PlayerId, 'Daley',              'Sinkgraven',     '1995-07-04', NULL, 17),
(PlayerId, 'Nadiem',             'Amiri',          '1996-10-27', NULL, 17),
(PlayerId, 'Edmond',             'Tapsoba',        '1999-02-02', NULL, 17),
(PlayerId, 'Moussa',             'Diaby',          '1999-07-07', NULL, 17),
(PlayerId, 'Kerem',              'Demirbay',       '1993-07-03', NULL, 17),
(PlayerId, 'Wendell',            'Nascimento',     '1993-07-20', NULL, 17),
(PlayerId, 'Aleksandar',         'Dragović',       '1991-03-06', NULL, 17),
(PlayerId, 'Florian',            'Wirtz',          '2003-05-03', NULL, 17),
(PlayerId, 'Mitchell',           'Weiser',         '1994-04-21', NULL, 17),
(PlayerId, 'Julian',             'Baumgartlinger', '1988-01-02', NULL, 17),
(PlayerId, 'Charles',            'Aránguiz',       '1989-04-17', NULL, 17),
(PlayerId, 'Lukas',              'Hradecky',       '1989-11-24', NULL, 17),
(PlayerId, 'Patrik',             'Schiсk',         '1996-01-24', NULL, 17),
(PlayerId, 'Karim',              'Bellarabi',      '1990-04-08', NULL, 17),
(PlayerId, 'Exequiel',           'Palacios',       '1998-10-05', NULL, 17),
(PlayerId, 'Paulinho',           'Menezes',        '2000-07-15', NULL, 17),
(PlayerId, 'Tin',                'Jedvaj',         '1995-11-28', NULL, 17),
(PlayerId, 'Ramazan',            'Özcan',          '1984-06-28', NULL, 17),
(PlayerId, 'Joel',               'Pohjanpalo',     '1994-09-13', NULL, 17),
(PlayerId, 'Cem',                'Türkmen',        '2001-03-14', NULL, 17),

-- Borussia Mönchengladbach
(PlayerId, 'Yann',               'Sommer',         '1988-12-17', NULL, 18),
(PlayerId, 'Matthias',           'Ginter',         '1994-01-19', NULL, 18),
(PlayerId, 'Nico',               'Elvedi',         '1996-09-30', NULL, 18),
(PlayerId, 'Ramy',               'Bensebaini',     '1995-04-16', NULL, 18),
(PlayerId, 'Stefan',             'Lainer',         '1992-08-27', NULL, 18),
(PlayerId, 'Denis',              'Zakaria',        '1996-11-20', NULL, 18),
(PlayerId, 'Florian',            'Neuhaus',        '1997-03-16', NULL, 18),
(PlayerId, 'Jonas',              'Hofmann',        '1992-07-14', NULL, 18),
(PlayerId, 'Lars',               'Stindl',         '1988-08-26', NULL, 18),
(PlayerId, 'Alassane',           'Pléa',           '1993-03-10', NULL, 18),
(PlayerId, 'Marcus',             'Thuram',         '1997-08-06', NULL, 18),
(PlayerId, 'Breel',              'Embolo',         '1997-02-14', NULL, 18),
(PlayerId, 'Patrick',            'Herrmann',       '1991-02-12', NULL, 18),
(PlayerId, 'Oscar',              'Wendt',          '1985-10-24', NULL, 18),
(PlayerId, 'Christoph',          'Kramer',         '1991-02-19', NULL, 18),
(PlayerId, 'Tony',               'Jantschke',      '1990-04-07', NULL, 18),
(PlayerId, 'Valentino',          'Lazaro',         '1996-03-24', NULL, 18),
(PlayerId, 'Tobias',             'Sippel',         '1988-03-22', NULL, 18),
(PlayerId, 'Max',                'Grün',           '1987-04-05', NULL, 18),
(PlayerId, 'Ibrahima',           'Traoré',         '1988-04-21', NULL, 18),
(PlayerId, 'Michael',            'Lang',           '1991-02-08', NULL, 18),
(PlayerId, 'Louis',              'Beyer',          '2000-05-19', NULL, 18),
(PlayerId, 'Rocco',              'Reitz',          '2002-05-17', NULL, 18),
(PlayerId, 'Famana',             'Quizera',        '2002-08-11', NULL, 18),
(PlayerId, 'Mamadou',            'Doucouré',       '1998-05-21', NULL, 18),

-- FC Schalke 04
(PlayerId, 'Ralf',               'Fährmann',       '1988-09-27', NULL, 7),
(PlayerId, 'Ozan',               'Kabak',          '2000-03-25', NULL, 7),
(PlayerId, 'Benjamin',           'Stambouli',      '1990-08-13', NULL, 7),
(PlayerId, 'Bastian',            'Oczipka',        '1989-01-12', NULL, 7),
(PlayerId, 'Matija',             'Nastasić',       '1993-03-28', NULL, 7),
(PlayerId, 'Suat',               'Serdar',         '1997-04-11', NULL, 7),
(PlayerId, 'Amine',              'Harit',          '1997-06-18', NULL, 7),
(PlayerId, 'Mark',               'Uth',            '1991-08-24', NULL, 7),
(PlayerId, 'Alessandro',         'Schöpf',         '1994-02-07', NULL, 7),
(PlayerId, 'Rabbi',              'Matondo',        '2000-09-09', NULL, 7),
(PlayerId, 'Tim',                'Becker',         '1997-06-25', NULL, 7),
(PlayerId, 'Salif',              'Sané',           '1990-08-25', NULL, 7),
(PlayerId, 'Steven',             'Skrzybski',      '1992-11-18', NULL, 7),
(PlayerId, 'Can',                'Bozdoğan',       '2001-04-01', NULL, 7),
(PlayerId, 'Nassim',             'Boujellab',      '1999-06-20', NULL, 7),
(PlayerId, 'Ahmed',              'Kutucu',         '2000-03-01', NULL, 7),
(PlayerId, 'Benito',             'Raman',          '1994-11-07', NULL, 7),
(PlayerId, 'Frederik',           'Rönnow',         '1992-08-04', NULL, 7),
(PlayerId, 'Michael',            'Langer',         '1985-01-06', NULL, 7),
(PlayerId, 'Nabil',              'Bentaleb',       '1994-11-24', NULL, 7),
(PlayerId, 'Munir',              'Mercan',         '2000-03-26', NULL, 7),
(PlayerId, 'Hamza',              'Mendyl',         '1997-10-21', NULL, 7),
(PlayerId, 'Malick',             'Thiaw',          '2001-08-08', NULL, 7),
(PlayerId, 'Kilian',             'Carls',          '1997-04-07', NULL, 7),
(PlayerId, 'Levent',             'Mercan',         '2001-08-15', NULL, 7);

-- (GameId, HomeClub, GuestClub, MatchDay, Season, Goals HomeClub, Goals GuestClub)
-- Bayern Munich
INSERT INTO TGame VALUES
(GameId,  1,  7,  1,  '2020/2021', 8, 0),
(GameId,  1, 12,  2,  '2020/2021', 4, 1),
(GameId,  6,  1,  3,  '2020/2021', 4, 3),
(GameId, 10,  1,  4,  '2020/2021', 1, 4),
(GameId,  1,  16, 5,  '2020/2021', 5, 0),
(GameId, 13,   1, 6,  '2020/2021', 1, 2),
(GameId,  4,   1, 7,  '2020/2021', 2, 3),
(GameId,  1,  11, 8,  '2020/2021', 1, 1),
(GameId,  8,   1, 9,  '2020/2021', 1, 3),
(GameId,  1,   2, 10, '2020/2021', 3, 3),
(GameId,  3,   1, 11, '2020/2021', 1, 1),
(GameId,  1,  15, 12, '2020/2021', 2, 1),
(GameId, 17,   1, 13, '2020/2021', 1, 2),
(GameId,  1,  14, 14, '2020/2021', 5, 2),
(GameId, 18,   1, 15, '2020/2021', 3, 2),
(GameId,  1,   5, 16, '2020/2021', 2, 1),
(GameId,  9,   1, 17, '2020/2021', 0, 1),
(GameId,  7,   1, 18, '2020/2021', 0, 4),
(GameId,  1,  12, 19, '2020/2021', 4, 1),
(GameId,  6,   1, 20, '2020/2021', 0, 1),
(GameId,  10,  1, 21, '2020/2021', 3, 3),
(Gameid,  16,  1, 22, '2020/2021', 2, 1),
(GameId,   1, 13, 23, '2020/2021', 5, 1),
(GameId,   1,  4, 24, '2020/2021', 4, 2),
(GameId,  11,  1, 25, '2020/2021', 1, 3),
(GameId,   1,  8, 26, '2020/2021', 4, 0),
(GameId,   2,  1, 27, '2020/2021', 0, 1),
(GameId,   1,  3, 28, '2020/2021', 1, 1),
(GameId,  15,  1, 29, '2020/2021', 2, 3),
(GameId,   1, 17, 30, '2020/2021', 2, 0),
(GameId,  14,  1, 31, '2020/2021', 2, 1),
(GameId,   1, 18, 32, '2020/2021', 6, 0),
(GameId,   5,  1, 33, '2020/2021', 2, 2),
(GameId,   1,  9, 34, '2020/2021', 5, 2);

-- RB Leipzig
Insert INTO TGame VALUES
(GameId,  2, 14, 1, '2020/2021', 3, 1),
(GameId, 17,  2, 2, '2020/2021', 1,1 ),
(GameId,  2,  7, 3, '2020/2021', 4, 0);

-- Goals FC Bayern
-- (GoalId, ClubId, PlayerId, GameMinute, Penalty, Freekick)

-- 1. Matchday
Insert Into TGoal(GoalId, PlayerId, GameMinute, GameId) VALUES
(GoalId, 1, 4, 1),
(GoalId, 6, 19, 1),
(GoalId, 2, 31, 1),
(GoalId, 1, 47, 1),
(GoalID, 1, 59, 1),
(GoalId, 3, 69, 1),
(GoalId, 13, 71, 1),
(GoalId, 20, 81, 1),

-- 2. Matchday

(GoalId, 21, 36, 2),


-- 3. Matchday

(GoalId, 2, 40,3),
(GoalId, 2, 51,3),
(GoalId, 2, 85,3),
(GoalId, 2, 90,3),

-- 4. Matchday

(GoalId, 3, 8, 4),
(GoalId, 2, 25, 4),
(GoalId, 2, 45, 4),
(GoalId, 3, 51, 4),

-- 5. Matchday

(GoalId, 2, 10, 5),
(GoalId, 2, 26, 5),
(GoalId, 2, 60, 5),
(GoalId, 13, 72, 5),
(GoalId, 20, 90, 5),

-- 6. Matchday

(GoalId, 3, 13, 6),
(GoalId, 1, 45, 6),

-- 7. Matchday

(GoalId, 5, 45, 7),
(GoalId, 2, 48, 7),
(GoalId, 13, 80, 7),

-- 8. Matchday

(GoalId, 7, 62, 8),

-- 9. Matchday

(GoalId, 7, 38, 9),
(GoalId, 2, 45, 9),
(GoalId, 12, 87, 9),

-- 10. Matchday

(GoalId, 20, 30, 10),
(GoalId, 3, 34, 10),
(GoalId, 3, 75, 10),

-- 11. Matchday

(GoalId, 2, 67, 11),

-- 12. Matchday

(GoalId, 2, 45, 12),
(GoalId, 2, 50, 12),

-- 13. Matchday

(GoalId, 2, 43, 13),
(GoalId, 2, 90, 13),

-- 14. Matchday

(GoalId, 21, 50, 14),
(GoalId, 13, 55, 14),
(GoalId, 11, 70, 14),
(GoalId, 2, 76, 14),
(GoalId, 2, 83, 14),

-- 15. Matchday

(GoalId, 2, 20, 15),
(GoalId, 6, 26, 15),

-- 16. Matchday

(GoalId, 2, 7, 16),
(GoalId, 3, 74, 16),

-- 17. Matchday

(GoalId, 2, 13, 17),

-- 18. Matchday

(GoalId, 3, 33, 18),
(GoalId, 2, 54, 18),
(GoalId, 3, 88, 18),
(GoalId, 5, 90, 18),

-- 19. Matchday

(GoalId, 22, 32, 19),
(GoalId, 3, 43, 19),
(GoalId, 2, 57, 19),
(GoalId, 1, 63, 19),

-- 20. Matchday

(GoalId, 7, 21, 20),

-- 21. Matchday

(GoalId, 2, 48, 21),
(GoalId, 10, 57, 21),
(GoalId, 16, 69, 21),

-- 22. Matchday

(GoalId, 2, 53, 22),


-- 23. Matchday

(GoalId, 18, 18, 23),
(GoalId, 2, 33, 23),
(GoalId, 2, 65, 23),
(GoalId, 1, 82, 23),
(GoalId, 1, 86, 23),

-- 24. Matchday

(GoalId, 2, 26, 24),
(GoalId, 2, 44, 24),
(GoalId, 6, 88, 24),
(GoalId, 2, 90, 24),

-- 25. Matchday

(GoalId, 6, 22, 25),
(GoalId, 1, 35, 25),
(GoalId, 2, 67, 25),

-- 26. Matchday

(GoalId, 2, 17, 26),
(GoalId, 1, 22, 26),
(GoalId, 2, 23, 26),
(GoalId, 2, 39, 26),

-- 27. Matchday

(GoalId, 6, 38, 27),

-- 28. Matchday

(GoalId, 20, 68, 28),

-- 29. Matchday

(GoalId, 20, 15, 29),
(GoalId, 18, 24, 29),
(GoalId, 20, 37, 29),

-- 30. Matchday

(GoalId, 18, 7, 30),
(GoalId, 21, 13, 30),

-- 31. Matchday

(GoalId, 2, 90, 31),

-- 32. Matchday

(GoalId, 2, 2,  32),
(GoalId, 3, 23, 32),
(GoalId, 2, 34, 32),
(GoalId, 7, 44, 32),
(GoalId, 2, 66, 32),
(GoalId, 13, 86, 32),

-- 33. Matchday

(GoalId, 2, 26, 33),
(GoalId, 13, 53, 33),

-- 34. Matchday

(GoalId, 23, 9, 34),
(GoalId, 1, 23, 34),
(GoalId, 21, 33, 34),
(GoalId, 7, 43, 34),
(GoalId, 2, 90, 34);


