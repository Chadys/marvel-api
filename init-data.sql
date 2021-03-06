DROP TABLE IF EXISTS Character;
CREATE TABLE Character (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    story TEXT NOT NULL,
    abilities TEXT NOT NULL,
    img VARCHAR(200) NOT NULL,
    header VARCHAR(200) NOT NULL
);

DROP TABLE IF EXISTS "Group";
CREATE TABLE "Group" (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    story TEXT NOT NULL,
    img VARCHAR(200) NOT NULL,
    header VARCHAR(200) NOT NULL
);

DROP TABLE IF EXISTS GroupMember;
CREATE TABLE GroupMember (
    id INT NOT NULL PRIMARY KEY,
    character_id INT NOT NULL,
    group_id INT NOT NULL,
    FOREIGN KEY(character_id) REFERENCES Character(id),
    FOREIGN KEY(group_id) REFERENCES "Group"(id)
);

INSERT INTO Character (id, name, story, abilities, img, header)
    VALUES (
               1,
               'WOLVERINE',
               'From the northern wilderness of Canada hails one of the gruffest, most irascible, totally cynical and brooding member of the X-Men ever to grace the team with his presence.',
               'Indestructible claws,Healing powers,Enhanced senses',
               'assets/images/wolverine.jpg',
               'assets/images/wolverine_header.png'
           ),
           (
               2,
               'Storm',
               'White haired cool girl',
               'Weather control, Flight',
               'assets/images/storm.jpg',
               'assets/images/storm_header.png'
           ),
           (
               3,
               'IRON MAN',
               'Having created a wondrous suit of armor to keep himself alive, Tony has revised it dozens of times, each version with increased capabilities, faster operation, reduced energy usage, and adaptability to the greatest threats the universe has to offer.',
               '360 vision,Energy blast,Powerful Armor',
               'assets/images/Ironman.jpg',
               'assets/images/ironman_header.png'
           );

INSERT INTO "Group" (id, name, story, img, header)
    VALUES (
               1,
               'X-MEN',
               'Realizing mutants were the next step in human evolution, Professor Charles Xavier gathered gifted teenagers to be his first class of students. His goal to protect and educate the next generation of homo superior, while pursuing a dream of harmony.',
               'assets/images/x-men.jpg',
               'assets/images/xmen_header.jpg'
           ),
           (
               2,
               'Guardians of the galaxy',
               'This group of intergalactic outlaws, turned unlikely saviors of the galaxy, are typically without a plan and bicker constantly. But they care deeply about one another and usually get the job done, legal or otherwise.',
               'assets/images/guardian_of_the_galaxy.jpg',
               'assets/images/guardian_of_the_galaxy_header.jpg'
           ),
           (
               3,
               'Avengers',
               'The Avengers began as a group of extraordinary individuals who were assembled to defeat Loki and his Chitauri army in New York City. Since then, the team has expanded its roster and faced a host of new threats, while dealing with their own turmoil.',
               'assets/images/avengers.jpg',
               'assets/images/avengers_header.jpg'
           ),
           (
               4,
               'SHIELD',
               'blabla',
               'assets/images/shield.jpg',
               'assets/images/shield_header.jpg'
           );

INSERT INTO GroupMember (id, character_id, group_id)
    VALUES (
               1,
               1,
               1
           ),
           (
               2,
               2,
               1
           ),
           (
               3,
               3,
               3
           ),
           (
               4,
               3,
               4
           );