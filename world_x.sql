-- Data damped from local database with IntelliJ IDEA Ultimate - Dump Data to File
-- Table continents

create table continents
(
    id           int auto_increment
        primary key,
    name         varchar(255) null,
    surface_area bigint       null,
    population   bigint       null
);

INSERT INTO world_x.continents (id, name, surface_area, population) VALUES (1, 'Asia', 44579000000, 4164252000);
INSERT INTO world_x.continents (id, name, surface_area, population) VALUES (2, 'Africa', 30370000000, 1022234000);
INSERT INTO world_x.continents (id, name, surface_area, population) VALUES (3, 'North America', 24709000000, 587615000);
INSERT INTO world_x.continents (id, name, surface_area, population) VALUES (4, 'Antarctica', 14000000000, 4490);
INSERT INTO world_x.continents (id, name, surface_area, population) VALUES (5, 'Australia', 8600000000, 41261000);
INSERT INTO world_x.continents (id, name, surface_area, population) VALUES (6, 'South America', 17840000000, 428240000);
INSERT INTO world_x.continents (id, name, surface_area, population) VALUES (7, 'Europe', 10180000000, 742648000);
INSERT INTO world_x.continents (id, name, surface_area, population) VALUES (8, 'Oceania', 0, 0);

-- Table countries

create table countries
(
    id           int auto_increment
        primary key,
    code         varchar(3)   null,
    name         varchar(100) null,
    surface_area double       null,
    population   bigint       null,
    capital      varchar(50)  null,
    continent_id int          null,
    constraint uix_countries_code
        unique (code)
);

INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (1, 'ABW', 'Aruba', 193, 103000, 'Oranjestad', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (2, 'AFG', 'Afghanistan', 652090, 22720000, 'Kabul', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (3, 'AGO', 'Angola', 1246700, 12878000, 'Luanda', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (4, 'AIA', 'Anguilla', 96, 8000, 'The Valley', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (5, 'ALB', 'Albania', 28748, 3401200, 'Tirana', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (6, 'AND', 'Andorra', 468, 78000, 'Andorra la Vella', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (7, 'ANT', 'Netherlands Antilles', 800, 217000, 'Willemstad', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (8, 'ARE', 'United Arab Emirates', 83600, 2441000, 'Abu Dhabi', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (9, 'ARG', 'Argentina', 2780400, 37032000, 'Buenos Aires', 6);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (10, 'ARM', 'Armenia', 29800, 3520000, 'Yerevan', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (11, 'ASM', 'American Samoa', 199, 68000, 'Fagatogo', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (12, 'ATG', 'Antigua and Barbuda', 442, 68000, 'Saint John´s', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (13, 'AUS', 'Australia', 7741220, 18886000, 'Canberra', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (14, 'AUT', 'Austria', 83859, 8091800, 'Wien', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (15, 'AZE', 'Azerbaijan', 86600, 7734000, 'Baku', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (16, 'BDI', 'Burundi', 27834, 6695000, 'Bujumbura', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (17, 'BEL', 'Belgium', 30518, 10239000, 'Bruxelles [Brussel]', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (18, 'BEN', 'Benin', 112622, 6097000, 'Porto-Novo', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (19, 'BFA', 'Burkina Faso', 274000, 11937000, 'Ouagadougou', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (20, 'BGD', 'Bangladesh', 143998, 129155000, 'Dhaka', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (21, 'BGR', 'Bulgaria', 110994, 8190900, 'Sofija', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (22, 'BHR', 'Bahrain', 694, 617000, 'al-Manama', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (23, 'BHS', 'Bahamas', 13878, 307000, 'Nassau', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (24, 'BIH', 'Bosnia and Herzegovina', 51197, 3972000, 'Sarajevo', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (25, 'BLR', 'Belarus', 207600, 10236000, 'Minsk', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (26, 'BLZ', 'Belize', 22696, 241000, 'Belmopan', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (27, 'BMU', 'Bermuda', 53, 65000, 'Hamilton', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (28, 'BOL', 'Bolivia', 1098581, 8329000, 'La Paz', 6);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (29, 'BRA', 'Brazil', 8547403, 170115000, 'Brasília', 6);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (30, 'BRB', 'Barbados', 430, 270000, 'Bridgetown', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (31, 'BRN', 'Brunei', 5765, 328000, 'Bandar Seri Begawan', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (32, 'BTN', 'Bhutan', 47000, 2124000, 'Thimphu', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (33, 'BWA', 'Botswana', 581730, 1622000, 'Gaborone', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (34, 'CAF', 'Central African Republic', 622984, 3615000, 'Bangui', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (35, 'CAN', 'Canada', 9970610, 31147000, 'Ottawa', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (36, 'CCK', 'Cocos (Keeling) Islands', 14, 600, 'West Island', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (37, 'CHE', 'Switzerland', 41284, 7160400, 'Bern', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (38, 'CHL', 'Chile', 756626, 15211000, 'Santiago de Chile', 6);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (39, 'CHN', 'China', 9572900, 1277558000, 'Peking', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (40, 'CIV', 'Côte d’Ivoire', 322463, 14786000, 'Yamoussoukro', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (41, 'CMR', 'Cameroon', 475442, 15085000, 'Yaoundé', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (42, 'COD', 'Congo, The Democratic Republic of the', 2344858, 51654000, 'Kinshasa', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (43, 'COG', 'Congo', 342000, 2943000, 'Brazzaville', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (44, 'COK', 'Cook Islands', 236, 20000, 'Avarua', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (45, 'COL', 'Colombia', 1138914, 42321000, 'Santafé de Bogotá', 6);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (46, 'COM', 'Comoros', 1862, 578000, 'Moroni', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (47, 'CPV', 'Cape Verde', 4033, 428000, 'Praia', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (48, 'CRI', 'Costa Rica', 51100, 4023000, 'San José', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (49, 'CUB', 'Cuba', 110861, 11201000, 'La Habana', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (50, 'CXR', 'Christmas Island', 135, 2500, 'Flying Fish Cove', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (51, 'CYM', 'Cayman Islands', 264, 38000, 'George Town', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (52, 'CYP', 'Cyprus', 9251, 754700, 'Nicosia', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (53, 'CZE', 'Czech Republic', 78866, 10278100, 'Praha', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (54, 'DEU', 'Germany', 357022, 82164700, 'Berlin', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (55, 'DJI', 'Djibouti', 23200, 638000, 'Djibouti', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (56, 'DMA', 'Dominica', 751, 71000, 'Roseau', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (57, 'DNK', 'Denmark', 43094, 5330000, 'København', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (58, 'DOM', 'Dominican Republic', 48511, 8495000, 'Santo Domingo de Guzmán', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (59, 'DZA', 'Algeria', 2381741, 31471000, 'Alger', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (60, 'ECU', 'Ecuador', 283561, 12646000, 'Quito', 6);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (61, 'EGY', 'Egypt', 1001449, 68470000, 'Cairo', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (62, 'ERI', 'Eritrea', 117600, 3850000, 'Asmara', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (63, 'ESH', 'Western Sahara', 266000, 293000, 'El-Aaiún', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (64, 'ESP', 'Spain', 505992, 39441700, 'Madrid', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (65, 'EST', 'Estonia', 45227, 1439200, 'Tallinn', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (66, 'ETH', 'Ethiopia', 1104300, 62565000, 'Addis Abeba', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (67, 'FIN', 'Finland', 338145, 5171300, 'Helsinki [Helsingfors]', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (68, 'FJI', 'Fiji Islands', 18274, 817000, 'Suva', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (69, 'FLK', 'Falkland Islands', 12173, 2000, 'Stanley', 6);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (70, 'FRA', 'France', 551500, 59225700, 'Paris', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (71, 'FRO', 'Faroe Islands', 1399, 43000, 'Tórshavn', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (72, 'FSM', 'Micronesia, Federated States of', 702, 119000, 'Palikir', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (73, 'GAB', 'Gabon', 267668, 1226000, 'Libreville', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (74, 'GBR', 'United Kingdom', 242900, 59623400, 'London', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (75, 'GEO', 'Georgia', 69700, 4968000, 'Tbilisi', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (76, 'GHA', 'Ghana', 238533, 20212000, 'Accra', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (77, 'GIB', 'Gibraltar', 6, 25000, 'Gibraltar', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (78, 'GIN', 'Guinea', 245857, 7430000, 'Conakry', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (79, 'GLP', 'Guadeloupe', 1705, 456000, 'Basse-Terre', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (80, 'GMB', 'Gambia', 11295, 1305000, 'Banjul', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (81, 'GNB', 'Guinea-Bissau', 36125, 1213000, 'Bissau', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (82, 'GNQ', 'Equatorial Guinea', 28051, 453000, 'Malabo', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (83, 'GRC', 'Greece', 131626, 10545700, 'Athenai', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (84, 'GRD', 'Grenada', 344, 94000, 'Saint George´s', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (85, 'GRL', 'Greenland', 2166090, 56000, 'Nuuk', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (86, 'GTM', 'Guatemala', 108889, 11385000, 'Ciudad de Guatemala', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (87, 'GUF', 'French Guiana', 90000, 181000, 'Cayenne', 6);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (88, 'GUM', 'Guam', 549, 168000, 'Agaña', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (89, 'GUY', 'Guyana', 214969, 861000, 'Georgetown', 6);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (90, 'HKG', 'Hong Kong', 1075, 6782000, 'Victoria', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (91, 'HND', 'Honduras', 112088, 6485000, 'Tegucigalpa', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (92, 'HRV', 'Croatia', 56538, 4473000, 'Zagreb', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (93, 'HTI', 'Haiti', 27750, 8222000, 'Port-au-Prince', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (94, 'HUN', 'Hungary', 93030, 10043200, 'Budapest', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (95, 'IDN', 'Indonesia', 1904569, 212107000, 'Jakarta', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (96, 'IND', 'India', 3287263, 1013662000, 'New Delhi', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (97, 'IRL', 'Ireland', 70273, 3775100, 'Dublin', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (98, 'IRN', 'Iran', 1648195, 67702000, 'Teheran', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (99, 'IRQ', 'Iraq', 438317, 23115000, 'Baghdad', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (100, 'ISL', 'Iceland', 103000, 279000, 'Reykjavík', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (101, 'ISR', 'Israel', 21056, 6217000, 'Jerusalem', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (102, 'ITA', 'Italy', 301316, 57680000, 'Roma', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (103, 'JAM', 'Jamaica', 10990, 2583000, 'Kingston', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (104, 'JOR', 'Jordan', 88946, 5083000, 'Amman', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (105, 'JPN', 'Japan', 377829, 126714000, 'Tokyo', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (106, 'KAZ', 'Kazakstan', 2724900, 16223000, 'Astana', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (107, 'KEN', 'Kenya', 580367, 30080000, 'Nairobi', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (108, 'KGZ', 'Kyrgyzstan', 199900, 4699000, 'Bishkek', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (109, 'KHM', 'Cambodia', 181035, 11168000, 'Phnom Penh', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (110, 'KIR', 'Kiribati', 726, 83000, 'Bairiki', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (111, 'KNA', 'Saint Kitts and Nevis', 261, 38000, 'Basseterre', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (112, 'KOR', 'South Korea', 99434, 46844000, 'Seoul', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (113, 'KWT', 'Kuwait', 17818, 1972000, 'Kuwait', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (114, 'LAO', 'Laos', 236800, 5433000, 'Vientiane', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (115, 'LBN', 'Lebanon', 10400, 3282000, 'Beirut', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (116, 'LBR', 'Liberia', 111369, 3154000, 'Monrovia', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (117, 'LBY', 'Libyan Arab Jamahiriya', 1759540, 5605000, 'Tripoli', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (118, 'LCA', 'Saint Lucia', 622, 154000, 'Castries', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (119, 'LIE', 'Liechtenstein', 160, 32300, 'Vaduz', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (120, 'LKA', 'Sri Lanka', 65610, 18827000, 'Colombo', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (121, 'LSO', 'Lesotho', 30355, 2153000, 'Maseru', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (122, 'LTU', 'Lithuania', 65301, 3698500, 'Vilnius', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (123, 'LUX', 'Luxembourg', 2586, 435700, 'Luxembourg [Luxemburg/Lëtzebuerg]', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (124, 'LVA', 'Latvia', 64589, 2424200, 'Riga', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (125, 'MAC', 'Macao', 18, 473000, 'Macao', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (126, 'MAR', 'Morocco', 446550, 28351000, 'Rabat', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (127, 'MCO', 'Monaco', 1.5, 34000, 'Monaco-Ville', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (128, 'MDA', 'Moldova', 33851, 4380000, 'Chisinau', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (129, 'MDG', 'Madagascar', 587041, 15942000, 'Antananarivo', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (130, 'MDV', 'Maldives', 298, 286000, 'Male', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (131, 'MEX', 'Mexico', 1958201, 98881000, 'Ciudad de México', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (132, 'MHL', 'Marshall Islands', 181, 64000, 'Dalap-Uliga-Darrit', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (133, 'MKD', 'Macedonia', 25713, 2024000, 'Skopje', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (134, 'MLI', 'Mali', 1240192, 11234000, 'Bamako', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (135, 'MLT', 'Malta', 316, 380200, 'Valletta', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (136, 'MMR', 'Myanmar', 676578, 45611000, 'Rangoon (Yangon)', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (137, 'MNG', 'Mongolia', 1566500, 2662000, 'Ulan Bator', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (138, 'MNP', 'Northern Mariana Islands', 464, 78000, 'Garapan', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (139, 'MOZ', 'Mozambique', 801590, 19680000, 'Maputo', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (140, 'MRT', 'Mauritania', 1025520, 2670000, 'Nouakchott', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (141, 'MSR', 'Montserrat', 102, 11000, 'Plymouth', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (142, 'MTQ', 'Martinique', 1102, 395000, 'Fort-de-France', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (143, 'MUS', 'Mauritius', 2040, 1158000, 'Port-Louis', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (144, 'MWI', 'Malawi', 118484, 10925000, 'Lilongwe', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (145, 'MYS', 'Malaysia', 329758, 22244000, 'Kuala Lumpur', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (146, 'MYT', 'Mayotte', 373, 149000, 'Mamoutzou', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (147, 'NAM', 'Namibia', 824292, 1726000, 'Windhoek', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (148, 'NCL', 'New Caledonia', 18575, 214000, 'Nouméa', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (149, 'NER', 'Niger', 1267000, 10730000, 'Niamey', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (150, 'NFK', 'Norfolk Island', 36, 2000, 'Kingston', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (151, 'NGA', 'Nigeria', 923768, 111506000, 'Abuja', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (152, 'NIC', 'Nicaragua', 130000, 5074000, 'Managua', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (153, 'NIU', 'Niue', 260, 2000, 'Alofi', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (154, 'NLD', 'Netherlands', 41526, 15864000, 'Amsterdam', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (155, 'NOR', 'Norway', 323877, 4478500, 'Oslo', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (156, 'NPL', 'Nepal', 147181, 23930000, 'Kathmandu', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (157, 'NRU', 'Nauru', 21, 12000, 'Yaren', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (158, 'NZL', 'New Zealand', 270534, 3862000, 'Wellington', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (159, 'OMN', 'Oman', 309500, 2542000, 'Masqat', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (160, 'PAK', 'Pakistan', 796095, 156483000, 'Islamabad', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (161, 'PAN', 'Panama', 75517, 2856000, 'Ciudad de Panamá', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (162, 'PCN', 'Pitcairn', 49, 50, 'Adamstown', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (163, 'PER', 'Peru', 1285216, 25662000, 'Lima', 6);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (164, 'PHL', 'Philippines', 300000, 75967000, 'Manila', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (165, 'PLW', 'Palau', 459, 19000, 'Koror', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (166, 'PNG', 'Papua New Guinea', 462840, 4807000, 'Port Moresby', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (167, 'POL', 'Poland', 323250, 38653600, 'Warszawa', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (168, 'PRI', 'Puerto Rico', 8875, 3869000, 'San Juan', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (169, 'PRK', 'North Korea', 120538, 24039000, 'Pyongyang', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (170, 'PRT', 'Portugal', 91982, 9997600, 'Lisboa', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (171, 'PRY', 'Paraguay', 406752, 5496000, 'Asunción', 6);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (172, 'PSE', 'Palestine', 6257, 3101000, 'Gaza', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (173, 'PYF', 'French Polynesia', 4000, 235000, 'Papeete', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (174, 'QAT', 'Qatar', 11000, 599000, 'Doha', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (175, 'REU', 'Réunion', 2510, 699000, 'Saint-Denis', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (176, 'ROM', 'Romania', 238391, 22455500, 'Bucuresti', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (177, 'RUS', 'Russian Federation', 17075400, 146934000, 'Moscow', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (178, 'RWA', 'Rwanda', 26338, 7733000, 'Kigali', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (179, 'SAU', 'Saudi Arabia', 2149690, 21607000, 'Riyadh', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (180, 'SDN', 'Sudan', 2505813, 29490000, 'Khartum', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (181, 'SEN', 'Senegal', 196722, 9481000, 'Dakar', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (182, 'SGP', 'Singapore', 618, 3567000, 'Singapore', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (183, 'SHN', 'Saint Helena', 314, 6000, 'Jamestown', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (184, 'SJM', 'Svalbard and Jan Mayen', 62422, 3200, 'Longyearbyen', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (185, 'SLB', 'Solomon Islands', 28896, 444000, 'Honiara', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (186, 'SLE', 'Sierra Leone', 71740, 4854000, 'Freetown', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (187, 'SLV', 'El Salvador', 21041, 6276000, 'San Salvador', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (188, 'SMR', 'San Marino', 61, 27000, 'San Marino', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (189, 'SOM', 'Somalia', 637657, 10097000, 'Mogadishu', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (190, 'SPM', 'Saint Pierre and Miquelon', 242, 7000, 'Saint-Pierre', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (191, 'STP', 'Sao Tome and Principe', 964, 147000, 'São Tomé', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (192, 'SUR', 'Suriname', 163265, 417000, 'Paramaribo', 6);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (193, 'SVK', 'Slovakia', 49012, 5398700, 'Bratislava', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (194, 'SVN', 'Slovenia', 20256, 1987800, 'Ljubljana', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (195, 'SWE', 'Sweden', 449964, 8861400, 'Stockholm', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (196, 'SWZ', 'Swaziland', 17364, 1008000, 'Mbabane', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (197, 'SYC', 'Seychelles', 455, 77000, 'Victoria', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (198, 'SYR', 'Syria', 185180, 16125000, 'Damascus', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (199, 'TCA', 'Turks and Caicos Islands', 430, 17000, 'Cockburn Town', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (200, 'TCD', 'Chad', 1284000, 7651000, 'N´Djaména', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (201, 'TGO', 'Togo', 56785, 4629000, 'Lomé', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (202, 'THA', 'Thailand', 513115, 61399000, 'Bangkok', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (203, 'TJK', 'Tajikistan', 143100, 6188000, 'Dushanbe', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (204, 'TKL', 'Tokelau', 12, 2000, 'Fakaofo', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (205, 'TKM', 'Turkmenistan', 488100, 4459000, 'Ashgabat', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (206, 'TMP', 'East Timor', 14874, 885000, 'Dili', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (207, 'TON', 'Tonga', 650, 99000, 'Nuku´alofa', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (208, 'TTO', 'Trinidad and Tobago', 5130, 1295000, 'Port-of-Spain', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (209, 'TUN', 'Tunisia', 163610, 9586000, 'Tunis', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (210, 'TUR', 'Turkey', 774815, 66591000, 'Ankara', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (211, 'TUV', 'Tuvalu', 26, 12000, 'Funafuti', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (212, 'TWN', 'Taiwan', 36188, 22256000, 'Taipei', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (213, 'TZA', 'Tanzania', 883749, 33517000, 'Dodoma', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (214, 'UGA', 'Uganda', 241038, 21778000, 'Kampala', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (215, 'UKR', 'Ukraine', 603700, 50456000, 'Kyiv', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (216, 'URY', 'Uruguay', 175016, 3337000, 'Montevideo', 6);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (217, 'USA', 'United States', 9363520, 278357000, 'Washington', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (218, 'UZB', 'Uzbekistan', 447400, 24318000, 'Toskent', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (219, 'VAT', 'Holy See (Vatican City State)', 0.4, 1000, 'Città del Vaticano', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (220, 'VCT', 'Saint Vincent and the Grenadines', 388, 114000, 'Kingstown', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (221, 'VEN', 'Venezuela', 912050, 24170000, 'Caracas', 6);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (222, 'VGB', 'Virgin Islands, British', 151, 21000, 'Road Town', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (223, 'VIR', 'Virgin Islands, U.S.', 347, 93000, 'Charlotte Amalie', 3);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (224, 'VNM', 'Vietnam', 331689, 79832000, 'Hanoi', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (225, 'VUT', 'Vanuatu', 12189, 190000, 'Port-Vila', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (226, 'WLF', 'Wallis and Futuna', 200, 15000, 'Mata-Utu', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (227, 'WSM', 'Samoa', 2831, 180000, 'Apia', 8);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (228, 'YEM', 'Yemen', 527968, 18112000, 'Sanaa', 1);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (229, 'YUG', 'Yugoslavia', 102173, 10640000, 'Beograd', 7);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (230, 'ZAF', 'South Africa', 1221037, 40377000, 'Pretoria', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (231, 'ZMB', 'Zambia', 752618, 9169000, 'Lusaka', 2);
INSERT INTO world_x.countries (id, code, name, surface_area, population, capital, continent_id) VALUES (232, 'ZWE', 'Zimbabwe', 390757, 11669000, 'Harare', 2);