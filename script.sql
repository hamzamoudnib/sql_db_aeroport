
--

CREATE SCHEMA aeroports;


ALTER SCHEMA aeroports OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 170510)
-- Name: aeropot; Type: TABLE; Schema: aeroports; Owner: postgres
--

CREATE TABLE aeroports.aeropot (
    id_aeroport bigint,
    nom text,
    ville text,
    pays text
);


ALTER TABLE aeroports.aeropot OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 170535)
-- Name: avions; Type: TABLE; Schema: aeroports; Owner: postgres
--

CREATE TABLE aeroports.avions (
    id_avion double precision,
    marque text,
    modele text,
    vitesse_max double precision,
    km_avant_entretien bigint
);


ALTER TABLE aeroports.avions OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 170542)
-- Name: cat; Type: TABLE; Schema: aeroports; Owner: postgres
--

CREATE TABLE aeroports.cat (
    id_categorie bigint,
    nom text
);


ALTER TABLE aeroports.cat OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 170517)
-- Name: mesures; Type: TABLE; Schema: aeroports; Owner: postgres
--

CREATE TABLE aeroports.mesures (
    id_mesures double precision,
    date_mesure timestamp without time zone,
    time_mesure text,
    id_categorie bigint,
    valeur bigint,
    id_trajet bigint
);


ALTER TABLE aeroports.mesures OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 170524)
-- Name: pilotes; Type: TABLE; Schema: aeroports; Owner: postgres
--

CREATE TABLE aeroports.pilotes (
    id_pilote bigint,
    nom text,
    prenom text,
    date_entre_service timestamp without time zone,
    nombre_km_vol bigint,
    salaire bigint,
    pays text
);


ALTER TABLE aeroports.pilotes OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 170531)
-- Name: trajet; Type: TABLE; Schema: aeroports; Owner: postgres
--

CREATE TABLE aeroports.trajet (
    id_trajet bigint,
    id_aeroport_depart bigint,
    id_aeroport_arrive bigint,
    km bigint,
    id_pilote bigint,
    id_avion bigint,
    nombre_passages bigint,
    date_depart timestamp without time zone,
    heure_depart time without time zone,
    date_arrive timestamp without time zone,
    heure_arrive time without time zone
);


ALTER TABLE aeroports.trajet OWNER TO postgres;

--
-- TOC entry 2867 (class 0 OID 170510)
-- Dependencies: 210
-- Data for Name: aeropot; Type: TABLE DATA; Schema: aeroports; Owner: postgres
--

INSERT INTO aeroports.aeropot ( id_aeroport, nom, ville, pays) VALUES ( 1, 'Atlanta H.-Jackson', 'Atlanta, Géorgie', 'États-Unis USA');
INSERT INTO aeroports.aeropot ( id_aeroport, nom, ville, pays) VALUES ( 2, 'Pékin-Capitale', 'Chaoyang-Shunyi, Beijing', 'la République populaire de Chine PRC');
INSERT INTO aeroports.aeropot ( id_aeroport, nom, ville, pays) VALUES ( 3, 'Dubaï', 'Garhoud, Dubai', 'Émirats arabes unis UAE');
INSERT INTO aeroports.aeropot ( id_aeroport, nom, ville, pays) VALUES ( 4, 'Los Angeles', 'Los Angeles, Californie', 'États-Unis USA');
INSERT INTO aeroports.aeropot ( id_aeroport, nom, ville, pays) VALUES ( 5, 'Tokyo-Haneda', 'Ōta, Tokyo', 'Japon JPN');
INSERT INTO aeroports.aeropot ( id_aeroport, nom, ville, pays) VALUES ( 6, 'Paris-Charles de Gaulle', 'Roissy-en-France, Île-de-France', 'la France FRA');


--
-- TOC entry 2871 (class 0 OID 170535)
-- Dependencies: 214
-- Data for Name: avions; Type: TABLE DATA; Schema: aeroports; Owner: postgres
--

INSERT INTO aeroports.avions ( id_avion, marque, modele, vitesse_max, km_avant_entretien) VALUES (1,  'Boeing', 'Le Boeing 737', 0.85, 30000);
INSERT INTO aeroports.avions ( id_avion, marque, modele, vitesse_max, km_avant_entretien) VALUES (2,  'AirBus', 'Airbus A320', 0.9, 10000);
INSERT INTO aeroports.avions ( id_avion, marque, modele, vitesse_max, km_avant_entretien) VALUES (3,  'Boeing', 'Boeing 747', 0.75, 231000);
INSERT INTO aeroports.avions ( id_avion, marque, modele, vitesse_max, km_avant_entretien) VALUES (4,  'Boeing', 'Boeing 777', 0.5, 60000);
INSERT INTO aeroports.avions ( id_avion, marque, modele, vitesse_max, km_avant_entretien) VALUES (5,  'AirBus', 'Airbus A330', 0.8, 40000);
INSERT INTO aeroports.avions ( id_avion, marque, modele, vitesse_max, km_avant_entretien) VALUES (6,  'URSS', 'An-2', 0.1, 20);
INSERT INTO aeroports.avions ( id_avion, marque, modele, vitesse_max, km_avant_entretien) VALUES (7,  'URSS', 'Il-86', 0.5, 100000);


--
-- TOC entry 2872 (class 0 OID 170542)
-- Dependencies: 215
-- Data for Name: cat; Type: TABLE DATA; Schema: aeroports; Owner: postgres
--

INSERT INTO aeroports.cat ( id_categorie, nom) VALUES ( 1, 'vitesse');
INSERT INTO aeroports.cat ( id_categorie, nom) VALUES ( 2, 'temperrature');
INSERT INTO aeroports.cat ( id_categorie, nom) VALUES ( 3, 'energie electrique');


--
-- TOC entry 2868 (class 0 OID 170517)
-- Dependencies: 211
-- Data for Name: mesures; Type: TABLE DATA; Schema: aeroports; Owner: postgres
--

INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (0,  '2018-01-02 00:00:00', '03:02:15', 2, 31, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (1,  '2018-01-02 00:00:00', '04:02:15', 2, 27, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (2,  '2018-01-02 00:00:00', '05:02:15', 2, 33, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (3,  '2018-01-02 00:00:00', '06:02:15', 2, 31, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (4,  '2018-01-02 00:00:00', '07:02:15', 2, 34, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (5,  '2018-01-02 00:00:00', '08:02:15', 2, 29, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (6,  '2018-01-02 00:00:00', '09:02:15', 2, 26, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (7,  '2018-01-02 00:00:00', '10:02:15', 2, 27, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (8,  '2018-01-02 00:00:00', '11:02:15', 2, 30, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (9,  '2018-01-02 00:00:00', '12:02:15', 2, 32, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (10,  '2018-01-02 00:00:00', '13:02:15', 2, 28, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (11,  '2018-01-02 00:00:00', '14:02:15', 2, 26, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (12,  '2018-01-02 00:00:00', '15:02:15', 2, 33, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (13,  '2018-01-02 00:00:00', '16:02:15', 2, 33, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (14,  '2018-01-02 00:00:00', '17:02:15', 2, 32, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (15,  '2018-01-02 00:00:00', '18:02:15', 2, 32, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (16,  '2018-01-02 00:00:00', '19:02:15', 2, 27, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (17,  '2018-01-02 00:00:00', '20:02:15', 2, 31, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (18,  '2018-01-02 00:00:00', '21:02:15', 2, 28, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (19,  '2018-01-02 00:00:00', '22:02:15', 2, 25, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (20,  '2018-01-02 00:00:00', '03:02:15', 1, 805, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (21,  '2018-01-02 00:00:00', '04:02:15', 1, 726, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (22,  '2018-01-02 00:00:00', '05:02:15', 1, 855, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (23,  '2018-01-02 00:00:00', '06:02:15', 1, 680, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (24,  '2018-01-02 00:00:00', '07:02:15', 1, 446, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (25,  '2018-01-02 00:00:00', '08:02:15', 1, 721, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (26,  '2018-01-02 00:00:00', '09:02:15', 1, 487, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (27,  '2018-01-02 00:00:00', '10:02:15', 1, 624, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (28,  '2018-01-02 00:00:00', '11:02:15', 1, 583, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (29,  '2018-01-02 00:00:00', '12:02:15', 1, 657, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (30,  '2018-01-02 00:00:00', '13:02:15', 1, 967, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (31,  '2018-01-02 00:00:00', '14:02:15', 1, 476, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (32,  '2018-01-02 00:00:00', '15:02:15', 1, 378, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (33,  '2018-01-02 00:00:00', '16:02:15', 1, 990, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (34,  '2018-01-02 00:00:00', '17:02:15', 1, 846, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (35,  '2018-01-02 00:00:00', '18:02:15', 1, 499, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (36,  '2018-01-02 00:00:00', '19:02:15', 1, 817, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (37,  '2018-01-02 00:00:00', '20:02:15', 1, 391, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (38,  '2018-01-02 00:00:00', '21:02:15', 1, 484, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (39,  '2018-01-02 00:00:00', '22:02:15', 1, 921, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (40,  '2018-01-02 00:00:00', '03:02:15', 3, 2, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (41,  '2018-01-02 00:00:00', '04:02:15', 3, 8, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (42,  '2018-01-02 00:00:00', '05:02:15', 3, 7, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (43,  '2018-01-02 00:00:00', '06:02:15', 3, 2, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (44,  '2018-01-02 00:00:00', '07:02:15', 3, 10, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (45,  '2018-01-02 00:00:00', '08:02:15', 3, 3, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (46,  '2018-01-02 00:00:00', '09:02:15', 3, 6, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (47,  '2018-01-02 00:00:00', '10:02:15', 3, 3, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (48,  '2018-01-02 00:00:00', '11:02:15', 3, 10, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (49,  '2018-01-02 00:00:00', '12:02:15', 3, 10, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (50,  '2018-01-02 00:00:00', '13:02:15', 3, 4, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (51,  '2018-01-02 00:00:00', '14:02:15', 3, 9, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (52,  '2018-01-02 00:00:00', '15:02:15', 3, 8, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (53,  '2018-01-02 00:00:00', '16:02:15', 3, 10, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (54,  '2018-01-02 00:00:00', '17:02:15', 3, 3, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (55,  '2018-01-02 00:00:00', '18:02:15', 3, 7, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (56,  '2018-01-02 00:00:00', '19:02:15', 3, 9, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (57,  '2018-01-02 00:00:00', '20:02:15', 3, 1, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (58,  '2018-01-02 00:00:00', '21:02:15', 3, 5, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (59,  '2018-01-02 00:00:00', '22:02:15', 3, 9, 1);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (60,  '2019-05-09 00:00:00', '05:12:36', 2, 32, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (61,  '2019-05-09 00:00:00', '06:12:36', 2, 28, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (62,  '2019-05-09 00:00:00', '07:12:36', 2, 29, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (63,  '2019-05-09 00:00:00', '08:12:36', 2, 29, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (64,  '2019-05-09 00:00:00', '09:12:36', 2, 26, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (65,  '2019-05-09 00:00:00', '10:12:36', 2, 25, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (66,  '2019-05-09 00:00:00', '11:12:36', 2, 32, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (67,  '2019-05-09 00:00:00', '12:12:36', 2, 34, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (68,  '2019-05-09 00:00:00', '13:12:36', 2, 31, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (69,  '2019-05-09 00:00:00', '14:12:36', 2, 31, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (70,  '2019-05-09 00:00:00', '15:12:36', 2, 31, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (71,  '2019-05-09 00:00:00', '16:12:36', 2, 25, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (72,  '2019-05-09 00:00:00', '17:12:36', 2, 29, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (73,  '2019-05-09 00:00:00', '18:12:36', 2, 29, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (74,  '2019-05-09 00:00:00', '19:12:36', 2, 29, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (75,  '2019-05-09 00:00:00', '20:12:36', 2, 33, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (76,  '2019-05-09 00:00:00', '21:12:36', 2, 33, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (77,  '2019-05-09 00:00:00', '22:12:36', 2, 31, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (78,  '2019-05-09 00:00:00', '23:12:36', 2, 28, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (79,  '2019-05-09 00:00:00', '1900-01-01 00:12:36', 2, 27, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (80,  '2019-05-09 00:00:00', '05:12:36', 1, 866, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (81,  '2019-05-09 00:00:00', '06:12:36', 1, 793, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (82,  '2019-05-09 00:00:00', '07:12:36', 1, 547, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (83,  '2019-05-09 00:00:00', '08:12:36', 1, 438, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (84,  '2019-05-09 00:00:00', '09:12:36', 1, 514, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (85,  '2019-05-09 00:00:00', '10:12:36', 1, 886, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (86,  '2019-05-09 00:00:00', '11:12:36', 1, 1041, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (87,  '2019-05-09 00:00:00', '12:12:36', 1, 781, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (88,  '2019-05-09 00:00:00', '13:12:36', 1, 519, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (89,  '2019-05-09 00:00:00', '14:12:36', 1, 868, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (90,  '2019-05-09 00:00:00', '15:12:36', 1, 703, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (91,  '2019-05-09 00:00:00', '16:12:36', 1, 847, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (92,  '2019-05-09 00:00:00', '17:12:36', 1, 1024, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (93,  '2019-05-09 00:00:00', '18:12:36', 1, 1024, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (94,  '2019-05-09 00:00:00', '19:12:36', 1, 839, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (95,  '2019-05-09 00:00:00', '20:12:36', 1, 949, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (96,  '2019-05-09 00:00:00', '21:12:36', 1, 603, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (97,  '2019-05-09 00:00:00', '22:12:36', 1, 828, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (98,  '2019-05-09 00:00:00', '23:12:36', 1, 550, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (99,  '2019-05-09 00:00:00', '1900-01-01 00:12:36', 1, 390, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (100, '2019-05-09 00:00:00', '05:12:36', 3, 7, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (101, '2019-05-09 00:00:00', '06:12:36', 3, 3, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (102, '2019-05-09 00:00:00', '07:12:36', 3, 9, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (103, '2019-05-09 00:00:00', '08:12:36', 3, 4, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (104, '2019-05-09 00:00:00', '09:12:36', 3, 2, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (105, '2019-05-09 00:00:00', '10:12:36', 3, 3, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (106, '2019-05-09 00:00:00', '11:12:36', 3, 4, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (107, '2019-05-09 00:00:00', '12:12:36', 3, 3, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (108, '2019-05-09 00:00:00', '13:12:36', 3, 3, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (109, '2019-05-09 00:00:00', '14:12:36', 3, 3, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (110, '2019-05-09 00:00:00', '15:12:36', 3, 5, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (111, '2019-05-09 00:00:00', '16:12:36', 3, 7, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (112, '2019-05-09 00:00:00', '17:12:36', 3, 7, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (113, '2019-05-09 00:00:00', '18:12:36', 3, 6, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (114, '2019-05-09 00:00:00', '19:12:36', 3, 8, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (115, '2019-05-09 00:00:00', '20:12:36', 3, 3, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (116, '2019-05-09 00:00:00', '21:12:36', 3, 3, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (117, '2019-05-09 00:00:00', '22:12:36', 3, 2, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (118, '2019-05-09 00:00:00', '23:12:36', 3, 5, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (119, '2019-05-09 00:00:00', '1900-01-01 00:12:36', 3, 9, 2);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (120, '2020-12-03 00:00:00', '05:12:36', 2, 28, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (121, '2020-12-03 00:00:00', '06:12:36', 2, 32, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (122, '2020-12-03 00:00:00', '07:12:36', 2, 30, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (123, '2020-12-03 00:00:00', '08:12:36', 2, 34, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (124, '2020-12-03 00:00:00', '09:12:36', 2, 30, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (125, '2020-12-03 00:00:00', '10:12:36', 2, 33, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (126, '2020-12-03 00:00:00', '11:12:36', 2, 25, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (127, '2020-12-03 00:00:00', '12:12:36', 2, 32, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (128, '2020-12-03 00:00:00', '13:12:36', 2, 29, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (129, '2020-12-03 00:00:00', '14:12:36', 2, 29, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (130, '2020-12-03 00:00:00', '15:12:36', 2, 28, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (131, '2020-12-03 00:00:00', '16:12:36', 2, 29, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (132, '2020-12-03 00:00:00', '17:12:36', 2, 33, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (133, '2020-12-03 00:00:00', '18:12:36', 2, 32, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (134, '2020-12-03 00:00:00', '19:12:36', 2, 29, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (135, '2020-12-03 00:00:00', '20:12:36', 2, 34, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (136, '2020-12-03 00:00:00', '21:12:36', 2, 29, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (137, '2020-12-03 00:00:00', '22:12:36', 2, 29, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (138, '2020-12-03 00:00:00', '23:12:36', 2, 33, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (139, '2020-12-03 00:00:00', '1900-01-01 00:12:36', 2, 31, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (140, '2020-12-03 00:00:00', '05:12:36', 1, 903, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (141, '2020-12-03 00:00:00', '06:12:36', 1, 412, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (142, '2020-12-03 00:00:00', '07:12:36', 1, 653, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (143, '2020-12-03 00:00:00', '08:12:36', 1, 1008, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (144, '2020-12-03 00:00:00', '09:12:36', 1, 512, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (145, '2020-12-03 00:00:00', '10:12:36', 1, 402, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (146, '2020-12-03 00:00:00', '11:12:36', 1, 697, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (147, '2020-12-03 00:00:00', '12:12:36', 1, 780, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (148, '2020-12-03 00:00:00', '13:12:36', 1, 442, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (149, '2020-12-03 00:00:00', '14:12:36', 1, 655, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (150, '2020-12-03 00:00:00', '15:12:36', 1, 444, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (151, '2020-12-03 00:00:00', '16:12:36', 1, 424, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (152, '2020-12-03 00:00:00', '17:12:36', 1, 895, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (153, '2020-12-03 00:00:00', '18:12:36', 1, 932, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (154, '2020-12-03 00:00:00', '19:12:36', 1, 865, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (155, '2020-12-03 00:00:00', '20:12:36', 1, 932, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (156, '2020-12-03 00:00:00', '21:12:36', 1, 933, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (157, '2020-12-03 00:00:00', '22:12:36', 1, 588, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (158, '2020-12-03 00:00:00', '23:12:36', 1, 966, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (159, '2020-12-03 00:00:00', '1900-01-01 00:12:36', 1, 474, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (160, '2020-12-03 00:00:00', '05:12:36', 3, 7, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (161, '2020-12-03 00:00:00', '06:12:36', 3, 4, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (162, '2020-12-03 00:00:00', '07:12:36', 3, 8, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (163, '2020-12-03 00:00:00', '08:12:36', 3, 5, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (164, '2020-12-03 00:00:00', '09:12:36', 3, 6, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (165, '2020-12-03 00:00:00', '10:12:36', 3, 10, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (166, '2020-12-03 00:00:00', '11:12:36', 3, 2, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (167, '2020-12-03 00:00:00', '12:12:36', 3, 9, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (168, '2020-12-03 00:00:00', '13:12:36', 3, 2, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (169, '2020-12-03 00:00:00', '14:12:36', 3, 7, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (170, '2020-12-03 00:00:00', '15:12:36', 3, 8, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (171, '2020-12-03 00:00:00', '16:12:36', 3, 10, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (172, '2020-12-03 00:00:00', '17:12:36', 3, 4, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (173, '2020-12-03 00:00:00', '18:12:36', 3, 4, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (174, '2020-12-03 00:00:00', '19:12:36', 3, 9, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (175, '2020-12-03 00:00:00', '20:12:36', 3, 2, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (176, '2020-12-03 00:00:00', '21:12:36', 3, 8, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (177, '2020-12-03 00:00:00', '22:12:36', 3, 6, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (178, '2020-12-03 00:00:00', '23:12:36', 3, 6, 3);
INSERT INTO aeroports.mesures ( id_mesures, date_mesure, time_mesure, id_categorie, valeur, id_trajet) VALUES (179, '2020-12-03 00:00:00', '1900-01-01 00:12:36', 3, 8, 3);


--
-- TOC entry 2869 (class 0 OID 170524)
-- Dependencies: 212
-- Data for Name: pilotes; Type: TABLE DATA; Schema: aeroports; Owner: postgres
--

INSERT INTO aeroports.pilotes ( id_pilote, nom, prenom, date_entre_service, nombre_km_vol, salaire, pays) VALUES ( 1, 'Miller', 'Jonathan', '2000-03-15 00:00:00', 50000, 50000, 'USA');
INSERT INTO aeroports.pilotes ( id_pilote, nom, prenom, date_entre_service, nombre_km_vol, salaire, pays) VALUES ( 2, 'Huan ', 'Ma', '1980-12-03 00:00:00', 1000, 200, 'CHINE');
INSERT INTO aeroports.pilotes ( id_pilote, nom, prenom, date_entre_service, nombre_km_vol, salaire, pays) VALUES ( 3, 'Dunyana ', 'Adara ', '2005-07-09 00:00:00', 17000, 40500, 'TUNISIE');


--
-- TOC entry 2870 (class 0 OID 170531)
-- Dependencies: 213
-- Data for Name: trajet; Type: TABLE DATA; Schema: aeroports; Owner: postgres
--

INSERT INTO aeroports.trajet ( id_trajet, id_aeroport_depart, id_aeroport_arrive, km, id_pilote, id_avion, nombre_passages, date_depart, heure_depart, date_arrive, heure_arrive) VALUES ( 1, 1, 3, 100000, 1, 3, 350, '2018-01-02 00:00:00', '03:02:15', '2018-01-02 00:00:00', '03:02:15');
INSERT INTO aeroports.trajet ( id_trajet, id_aeroport_depart, id_aeroport_arrive, km, id_pilote, id_avion, nombre_passages, date_depart, heure_depart, date_arrive, heure_arrive) VALUES ( 2, 5, 2, 20000, 2, 1, 241, '2019-05-09 00:00:00', '10:12:36', '2019-05-09 00:00:00', '10:12:36');
INSERT INTO aeroports.trajet ( id_trajet, id_aeroport_depart, id_aeroport_arrive, km, id_pilote, id_avion, nombre_passages, date_depart, heure_depart, date_arrive, heure_arrive) VALUES ( 3, 3, 4, 5000, 3, 4, 178, '2020-12-03 00:00:00', '05:12:36', '2020-12-03 00:00:00', '05:12:36');

