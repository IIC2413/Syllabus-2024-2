--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Postgres.app)
-- Dumped by pg_dump version 16.2 (Postgres.app)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

CREATE SCHEMA prueba;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--


CREATE TABLE prueba.cliente (
    id integer NOT NULL,
    nombre character varying(100),
    email character varying(100) NOT NULL,
    telefono bigint NOT NULL,
    clave character varying(12) NOT NULL
);


ALTER TABLE prueba.cliente OWNER TO postgres;

--
-- Name: pedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE prueba.pedido (
    id integer,
    cliente integer,
    plato character varying(100),
    fecha date,
    hora time without time zone
);


ALTER TABLE prueba.pedido OWNER TO postgres;

--
-- Name: plato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE prueba.plato (
	id integer NOT NULL,
    nombre character varying(100),
    descripcion character varying(500),
    ingredientes character varying(500),
    precio integer
    
);


ALTER TABLE prueba.plato OWNER TO postgres;

--
-- Name: pl_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prueba.pl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE prueba.pl_id_seq OWNER TO postgres;

--
-- Name: pl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prueba.pl_id_seq OWNED BY prueba.plato.id;


--
-- Name: plato id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prueba.plato ALTER COLUMN id SET DEFAULT nextval('prueba.pl_id_seq'::regclass);


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY prueba.cliente (id, nombre, email, telefono, clave) FROM stdin;
0	Francisca Ancic	francisca.ancic@uc.cl	56982736498	DCCBasesDe
1	Antonio Rivera	Antonio.Rivera@bbdduc.utopia	56994087603	JTWDPFHP41
2	Nicolás Crisosto	Nicolás.Crisosto@bbdduc.utopia	56954244905	MLDFFUNI26
3	Ignacia Río	Ignacia.Río@bbdduc.utopia	56978404926	MYDOBCKU39
4	Bruno Rico	Bruno.Rico@bbdduc.utopia	56912455786	IEAFDVCF97
5	Andrés Sanchez	Andrés.Sanchez@bbdduc.utopia	56949344433	YENSNRNO61
6	Elías Santibáñez	Elías.Santibáñez@bbdduc.utopia	56926960527	ZQRXFHFM74
7	Nicolás Zambrano	Nicolás.Zambrano@bbdduc.utopia	56931050629	JRJKHATM77
8	Andrés Balzan	Andrés.Balzan@bbdduc.utopia	56952442400	TKWWHWKO40
9	Diego Fernández	Diego.Fernández@bbdduc.utopia	56984559741	HKZBAUXP50
10	Angeles Monzon	Angeles.Monzon@bbdduc.utopia	56997824629	GDPIPZUA18
11	José Dauber	José.Dauber@bbdduc.utopia	56972922150	EPYMMUCO73
12	Santiago García	Santiago.García@bbdduc.utopia	56952755951	MEJRJSPC60
13	Agustín Matte	Agustín.Matte@bbdduc.utopia	56911904638	JQMUGFRS73
14	Humberto Gómez	Humberto.Gómez@bbdduc.utopia	56917734245	LPTHAFZZ96
15	Ignacio Mellado	Ignacio.Mellado@bbdduc.utopia	56929043134	GHZTVCGO25
16	Ignacia Rolando	Ignacia.Rolando@bbdduc.utopia	56975853566	BFMTFREO37
17	Nicolás Plaza	Nicolás.Plaza@bbdduc.utopia	56948382969	OCDLAPZJ78
18	Abel Gandolfi	Abel.Gandolfi@bbdduc.utopia	56959418199	IFJBWGKD57
19	Andrea Guevara	Andrea.Guevara@bbdduc.utopia	56920906448	KFDOYAQS32
20	Eduardo Cortez	Eduardo.Cortez@bbdduc.utopia	56919173831	UPCEULWZ31
21	Humberto Hormann	Humberto.Hormann@bbdduc.utopia	56922739885	IRGIXRUF55
22	Ignacio Conejeros	Ignacio.Conejeros@bbdduc.utopia	56996425322	HTTBPQES86
23	Ignacia Greene	Ignacia.Greene@bbdduc.utopia	56950298097	KIIWHWBM22
24	Nicolás Muñoz	Nicolás.Muñoz@bbdduc.utopia	56920134472	WLZIRQFV21
25	Alejandro Daroca	Alejandro.Daroca@bbdduc.utopia	56969171652	TAOVJQJH93
26	Paz Egnem	Paz.Egnem@bbdduc.utopia	56998928895	EBTDEAAF69
27	Andrés Barrera	Andrés.Barrera@bbdduc.utopia	56970163398	BRQSGRRG39
28	Antonio Larrain	Antonio.Larrain@bbdduc.utopia	56986608501	ZYBJKZIU10
29	Andrés Gallardo	Andrés.Gallardo@bbdduc.utopia	56987751736	JNAKMRKL13
30	Andrés Ruiz	Andrés.Ruiz@bbdduc.utopia	56999974951	VNNIABHH84
31	Yerhov Silberberg	Yerhov.Silberberg@bbdduc.utopia	56958595412	XXQOOUHA71
32	Díaz Barrera	Díaz.Barrera@bbdduc.utopia	56979797000	TJPRYLFO57
33	Ozzy Baldini	Ozzy.Baldini@bbdduc.utopia	56918496384	AZOILMWX26
34	Ernst Bustos	Ernst.Bustos@bbdduc.utopia	56990556669	DJWMAAZF15
35	Javier Madrid	Javier.Madrid@bbdduc.utopia	56983532648	DMKHRKER16
36	Jesús Estremadoyro	Jesús.Estremadoyro@bbdduc.utopia	56939814656	DVROGVPU77
37	Enrique Costa	Enrique.Costa@bbdduc.utopia	56944727920	KJXDCTDA49
38	Jesús Valera	Jesús.Valera@bbdduc.utopia	56982456563	OVQGTEMW63
39	Eduardo González	Eduardo.González@bbdduc.utopia	56980225681	TNSZDDIV86
40	Andrés Saavedra	Andrés.Saavedra@bbdduc.utopia	56937385754	QCUMKMGG62
41	Jesús Bahamonde	Jesús.Bahamonde@bbdduc.utopia	56942449591	HIWUOGZH55
42	Javier Arias	Javier.Arias@bbdduc.utopia	56952403273	GFIMBFZC49
43	Paz Peña	Paz.Peña@bbdduc.utopia	56979457945	SVPRLIVA18
44	Andrés Meza	Andrés.Meza@bbdduc.utopia	56918693660	FCQSQMBZ95
45	Elena Morales	Elena.Morales@bbdduc.utopia	56991800035	XHXSQNOR32
46	Robinson Hermosilla	Robinson.Hermosilla@bbdduc.utopia	56962202135	KZJMIZVJ61
47	Ignacia Oyarzún	Ignacia.Oyarzún@bbdduc.utopia	56974715554	LUVWRWSK86
48	Elena Alarcón	Elena.Alarcón@bbdduc.utopia	56913400258	FSVHRPAT95
49	Alfredo Catalán	Alfredo.Catalán@bbdduc.utopia	56953813429	VLLDNFCW84
50	Elena Cintolesi	Elena.Cintolesi@bbdduc.utopia	56994912598	LCFPEUDJ61
51	Antonia Contreras	Antonia.Contreras@bbdduc.utopia	56992465219	GQNVGQQG71
52	Pedro Correa	Pedro.Correa@bbdduc.utopia	56970405475	OWVATYES35
53	Andrés Cortés	Andrés.Cortés@bbdduc.utopia	56960848445	PDOXXLPX97
54	Ignacio Arias	Ignacio.Arias@bbdduc.utopia	56942112726	JZYGCPSN17
55	Andrés Reinhardt	Andrés.Reinhardt@bbdduc.utopia	56964549056	BJIWZQTW63
56	Macarena Galleguillos	Macarena.Galleguillos@bbdduc.utopia	56971256145	LXPQGWTC28
57	Macarena Saldaña	Macarena.Saldaña@bbdduc.utopia	56992987026	KRRIIOSP80
58	Andrés Benavides	Andrés.Benavides@bbdduc.utopia	56990161158	OXSMRDNJ12
59	Yan Zhong	Yan.Zhong@bbdduc.utopia	56979322678	ZCBBYWIL90
60	Jose Castelblanco	Jose.Castelblanco@bbdduc.utopia	56959584691	GAXLWWAD31
61	Segundo Collinao	Segundo.Collinao@bbdduc.utopia	56939259756	ONPBOBAR98
62	Macarena Lungenstrass	Macarena.Lungenstrass@bbdduc.utopia	56946043276	BASRVYEE88
63	Macarena Martínez	Macarena.Martínez@bbdduc.utopia	56920471929	BNTJIEYK56
64	Andrés Méndez	Andrés.Méndez@bbdduc.utopia	56945479777	RJQIXKTP45
65	Pablo González	Pablo.González@bbdduc.utopia	56933287960	SEOEKWGH27
66	Enrique Mingo	Enrique.Mingo@bbdduc.utopia	56975491767	DXASOBIP90
67	Antonella Roncagliolo	Antonella.Roncagliolo@bbdduc.utopia	56919543513	LDFDVPCM10
68	Pablo Montes	Pablo.Montes@bbdduc.utopia	56969486380	BEWIQTMP31
69	Agustin Reyes	Agustin.Reyes@bbdduc.utopia	56972317149	SFCGUHRR74
70	Enrique Reyes	Enrique.Reyes@bbdduc.utopia	56992916965	TVIDOCBW91
71	Pablo O\nRyan	Pablo.ORyan@bbdduc.utopia	56942270623	HKUQYNXP23
72	Sayen Reyes	Sayen.Reyes@bbdduc.utopia	56979276556	HEEDUDUV45
73	Alejandro Díaz	Alejandro.Díaz@bbdduc.utopia	56911393679	QPQRASOG33
74	Alejandro Benítez	Alejandro.Benítez@bbdduc.utopia	56948349144	NADGGMGN83
75	Pablo Muse	Pablo.Muse@bbdduc.utopia	56914065203	EPCCYMCA16
76	Alejandro Sierra	Alejandro.Sierra@bbdduc.utopia	56953951328	DQJGQVPX81
77	Eduardo Behrens	Eduardo.Behrens@bbdduc.utopia	56986067376	QMYGZHBX37
78	Ignacia Ruiz	Ignacia.Ruiz@bbdduc.utopia	56950030575	CCPAQWPN84
79	Gabriel Moraga	Gabriel.Moraga@bbdduc.utopia	56987323604	AHOSMSNT44
80	Eduardo Osorio	Eduardo.Osorio@bbdduc.utopia	56929888277	BUNMEPQZ18
81	Nicolás Ayala	Nicolás.Ayala@bbdduc.utopia	56980151108	IXGVNCAN75
82	Antonio Ponce	Antonio.Ponce@bbdduc.utopia	56954377391	COEMTSSM90
83	Eduardo Palacios	Eduardo.Palacios@bbdduc.utopia	56934597282	SEBZYDBJ72
84	Jesús Ramírez	Jesús.Ramírez@bbdduc.utopia	56971637154	JXNQYATQ93
85	Andrea Videla	Andrea.Videla@bbdduc.utopia	56950618151	WVSVGUEE64
86	Eduardo Vilches	Eduardo.Vilches@bbdduc.utopia	56931609717	EYBSHXCC41
87	Domingo Carvajal	Domingo.Carvajal@bbdduc.utopia	56979003476	EFMMFQHK67
88	Alonso Zanni	Alonso.Zanni@bbdduc.utopia	56994570022	IEBVNYXI43
89	Esteban Marshall	Esteban.Marshall@bbdduc.utopia	56955449517	CZCHIXXH79
90	Sofía Tapia	Sofía.Tapia@bbdduc.utopia	56991500199	WSDRDBYE73
91	Florencia Torres	Florencia.Torres@bbdduc.utopia	56932303710	YZQNUIBX47
92	Angeles Castro	Angeles.Castro@bbdduc.utopia	56959299328	ULRXDGYB17
93	Alejandro Vicencio	Alejandro.Vicencio@bbdduc.utopia	56938142982	ADKLCEIF71
94	Reñasco Quezada	Reñasco.Quezada@bbdduc.utopia	56945242595	SXEOAWVW31
95	Andrés Ramírez	Andrés.Ramírez@bbdduc.utopia	56916929795	XBMEENCU58
96	Andrés Montt	Andrés.Montt@bbdduc.utopia	56948744007	QAJNFGOW94
97	Alonso Valladares	Alonso.Valladares@bbdduc.utopia	56973662532	RIHZWLYZ84
98	Rovira González	Rovira.González@bbdduc.utopia	56925740912	BOEMYKTJ59
99	Ignacio González	Ignacio.González@bbdduc.utopia	56939915678	JCKVSHCJ13
100	Antonio Moreno	Antonio.Moreno@bbdduc.utopia	56952471970	TSNKEMFC69
101	Enoc Asenjo	Enoc.Asenjo@bbdduc.utopia	56941158099	VVBMOMFX32
102	José Martín	José.Martín@bbdduc.utopia	56940106497	VYGHSQAH32
103	Sebastián Salazar	Sebastián.Salazar@bbdduc.utopia	56927343422	QLDRKWWJ56
104	Carina Durán	Carina.Durán@bbdduc.utopia	56940377887	VKDGDSCI84
105	Nicolás Tromilen	Nicolás.Tromilen@bbdduc.utopia	56951649872	QFTYSBDZ60
106	Catalina Schiappacasse	Catalina.Schiappacasse@bbdduc.utopia	56992742231	UQVLXVLU55
107	Giuseppe Horta	Giuseppe.Horta@bbdduc.utopia	56946663788	OBUKBXNV87
108	Catalina Montenegro	Catalina.Montenegro@bbdduc.utopia	56977003934	TMTUBNCO80
109	Eduardo Bustos	Eduardo.Bustos@bbdduc.utopia	56982296886	IHGPJQJT37
110	Silva Intyre	Silva.Intyre@bbdduc.utopia	56953891586	BGOWKXFT67
111	Antonio Smith	Antonio.Smith@bbdduc.utopia	56910621964	SFMLYEPN70
112	José Oyaneder	José.Oyaneder@bbdduc.utopia	56980474851	TACUHRPE11
113	Belen Torres	Belen.Torres@bbdduc.utopia	56957962597	JJROZCZD53
114	Ignacio Alvarado	Ignacio.Alvarado@bbdduc.utopia	56964674648	TGTCVQWP46
115	Antonio Meneghini	Antonio.Meneghini@bbdduc.utopia	56946929895	LLJOQOVV50
116	Paz Arancibia	Paz.Arancibia@bbdduc.utopia	56921118683	BKWCYKGL53
117	Eduardo Wood	Eduardo.Wood@bbdduc.utopia	56935753575	TFCGTJVR58
118	Ignacio Muñoz	Ignacio.Muñoz@bbdduc.utopia	56940880991	LJQFCSTI65
119	Andrea Moya	Andrea.Moya@bbdduc.utopia	56924197128	ORWQDFOJ71
120	Ignacio Perry	Ignacio.Perry@bbdduc.utopia	56986797679	UWQDSMVC92
121	Ignacio López	Ignacio.López@bbdduc.utopia	56929374838	HIQQWOOX17
122	Andrea Renftel	Andrea.Renftel@bbdduc.utopia	56982568099	WKYSPBCM79
123	Kay Zalaquett	Kay.Zalaquett@bbdduc.utopia	56996240470	UOALFPLA39
\.


--
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY prueba.pedido (id, cliente, plato, fecha, hora) FROM stdin;
1	1	0	2023-12-19	14:57:50
3	3	49  81	2023-06-03	17:22:11
4	4	92	2023-03-02	06:08:06
6	6	58  82	2023-01-29	23:22:45
8	8	5  6	2023-09-15	14:50:58
7	7	1  19  56  6	2023-09-23	09:18:36
10	10	7  26  28	2023-05-11	20:27:25
12	12	83	2023-07-26	04:09:58
13	13	91	2023-10-04	22:49:09
19	19	77  22	2023-05-20	02:01:55
15	15	2	2023-02-02	22:11:38
16	16	20  41  10	2023-10-04	10:30:13
17	17	6	2023-07-16	12:52:44
18	18	21	2023-03-05	15:20:47
20	20	24  91  89	2023-10-20	08:30:56
21	21	93	2023-03-28	22:35:38
22	22	48	2023-07-08	15:20:40
23	23	93	2023-09-29	23:27:09
25	25	62	2023-11-02	05:33:11
27	27	8	2023-07-10	07:10:09
24	24	40	2023-07-23	00:51:52
29	29	19	2023-05-19	08:40:47
31	31	77  39	2023-03-25	10:09:21
34	34	3  22	2023-09-18	09:53:27
38	38	64	2023-06-24	20:15:38
39	39	49	2023-07-18	19:56:57
40	40	38	2024-04-13	15:24:02
26	26	70  4	2023-12-12	17:24:07
46	46	73  81	2024-03-22	14:29:35
76	76	5  10	2023-06-20	11:20:26
78	78	87  32	2023-05-01	12:09:52
79	79	55  53	2024-04-08	02:49:56
36	36	92  31  3	2023-07-01	07:24:38
82	82	70  57	2023-12-23	01:37:25
37	37	47  90	2023-06-18	10:00:35
41	41	21	2023-05-01	15:19:28
0	0	0  29  62	2024-04-11	21:08:57
2	2	59  87	2023-04-05	13:48:48
43	43	31  98  32	2023-07-30	11:55:18
44	44	84	2023-01-18	17:14:14
45	45	99	2023-12-25	18:45:55
54	54	94	2023-12-01	23:12:30
56	56	65	2024-02-10	10:47:33
57	57	60  16	2023-05-19	00:26:08
58	58	15	2024-01-30	10:30:40
60	60	43	2023-10-01	14:31:02
63	63	95  65  44	2023-01-20	06:33:54
65	65	88	2023-10-12	00:20:34
71	71	40  75	2023-08-23	01:24:32
72	72	89  87	2023-10-26	11:46:40
73	73	9  40  3	2023-03-08	21:21:46
77	77	20	2023-07-19	17:22:18
81	81	5	2024-01-20	01:25:19
105	105	60  80	2023-07-24	19:00:17
106	106	82	2023-09-13	00:30:17
107	107	87  21  1	2024-02-28	17:05:26
108	108	9  21	2024-03-06	02:01:44
109	109	49	2023-07-03	21:15:11
110	110	92	2024-01-21	21:23:41
111	111	54  96	2023-10-26	17:28:56
112	112	24  38  96	2023-11-23	08:12:45
113	113	47  16  48  41	2024-04-02	08:58:33
114	114	2  5  16  35  96	2023-11-19	11:40:11
84	84	39  49	2023-11-29	22:49:19
116	116	38  83  91	2023-04-20	11:29:35
117	117	55  48	2023-05-19	15:46:28
118	118	2	2023-08-19	01:11:51
119	119	12  14  19	2024-04-10	11:04:12
120	120	69  67	2023-03-22	00:04:38
121	121	42  46	2024-01-07	03:02:06
122	122	74  85	2024-02-09	11:34:29
123	123	6	2023-05-15	11:00:25
11	11	7  34	2023-03-28	23:15:59
100	100	11  15	2023-06-30	15:27:53
74	74	98   87	2023-08-25	00:25:00
55	55	94	2023-07-24	15:36:10
80	80	23  20	2023-09-08	14:39:26
14	14	46  52  75	2023-10-06	02:26:50
53	53	65  75  42  82	2023-11-30	15:05:06
42	42	5  18	2023-08-10	11:05:53
9	9	88	2023-08-30	12:30:00
5	5	4  37	2023-08-29	10:59:17
115	115	16	2024-03-12	14:31:32
85	85	32	2023-08-14	15:14:10
88	88	39  95	2023-06-15	03:13:33
91	91	24  15  16	2024-04-25	16:28:22
95	95	16  11	2023-12-24	20:31:07
97	97	55  44  3	2023-12-04	19:49:57
99	99	30  65	2023-04-18	04:39:14
103	103	33	2023-06-28	04:10:43
28	28	8	2023-11-22	15:04:39
94	94	43	2023-01-03	22:50:34
59	59	82  75  14	2023-08-17	15:57:53
83	83	47	2023-03-31	20:19:40
47	47	3	2024-02-15	22:22:11
48	48	3  68	2023-05-24	11:50:12
49	49	18  28	2023-10-12	10:21:03
50	50	26  18	2023-12-20	05:45:41
51	51	96	2024-01-15	06:56:41
52	52	14  76	2023-08-18	17:13:05
30	30	13  27	2023-02-20	03:39:07
32	32	42  69	2023-09-02	22:26:02
33	33	90	2023-05-26	20:44:51
61	61	13  59	2023-08-07	14:43:33
62	62	92  93  99	2024-02-21	19:13:59
64	64	55  74	2023-07-01	16:46:02
66	66	35  41	2024-01-16	16:17:31
67	67	3  40	2024-01-03	21:24:35
68	68	91  89  75	2023-11-02	08:38:52
69	69	31  56	2023-08-14	20:23:58
70	70	94  74	2023-05-06	10:16:50
35	35	13  23	2023-11-30	17:26:50
75	75	91	2023-11-10	18:30:55
86	86	80  1	2023-05-20	00:33:56
87	87	21  64	2023-03-23	14:54:12
89	89	88	2023-12-22	07:21:15
90	90	1  64	2023-10-23	20:45:54
92	92	77  96	2023-04-03	16:23:10
93	93	37	2023-12-04	13:40:52
96	96	58  59	2023-05-06	13:51:35
98	98	39	2023-10-14	15:43:10
101	101	79  11  30  97	2024-03-02	01:33:28
102	102	44	2023-09-16	12:53:23
104	104	17  78	2023-05-03	07:55:52
\.


--
-- Data for Name: plato; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY prueba.plato (nombre, descripcion, ingredientes, precio, id) FROM stdin;
DCCHamburguer	Hamburguesa con palta, tomate, mayonesa, rica para pasar la hora de almuerzo	hamburguesa, palta, tomate, mayonesa	5000	1
Sushi	Una selección de rollitos de sushi tradicionales japoneses, servidos con wasabi y jengibre encurtido.	Arroz de sushi, algas nori, pescado crudo (como salmón, atún o pez mantequilla), aguacate, pepino, cangrejo, vinagre de arroz, azúcar, sal	16000	2
Pizza Margarita	Una pizza clásica italiana con salsa de tomate, mozzarella fresca y albahaca fresca.	Masa de pizza, salsa de tomate, mozzarella fresca, albahaca fresca, aceite de oliva.	7000	3
Pizza Margarita	Una pizza clásica italiana con salsa de tomate, mozzarella fresca y albahaca fresca.	Masa de pizza, salsa de tomate, mozzarella fresca, albahaca fresca, aceite de oliva.	16000	4
Pizza Margarita	Una pizza clásica italiana con salsa de tomate, mozzarella fresca y albahaca fresca.	Masa de pizza, salsa de tomate, mozzarella fresca, albahaca fresca, aceite de oliva.	16000	5
Pizza Margarita	Una pizza clásica italiana con salsa de tomate, mozzarella fresca y albahaca fresca.	Masa de pizza, salsa de tomate, mozzarella fresca, albahaca fresca, aceite de oliva.	16000	6
Pizza Margarita	Una pizza clásica italiana con salsa de tomate, mozzarella fresca y albahaca fresca.	Masa de pizza, salsa de tomate, mozzarella fresca, albahaca fresca, aceite de oliva.	16000	7
Pizza Margarita	Una pizza clásica italiana con salsa de tomate, mozzarella fresca y albahaca fresca.	Masa de pizza, salsa de tomate, mozzarella fresca, albahaca fresca, aceite de oliva.	16000	8
Pollo al Curry	Trozos de pollo cocidos en una salsa cremosa de curry, servidos con arroz basmati.	Pollo, cebolla, ajo, jengibre, pasta de curry, leche de coco, tomates, especias (cúrcuma, comino, cilantro, etc.), arroz basmati.	7000	9
Paella	Un plato de arroz español tradicional, cocido con mariscos, pollo, chorizo y vegetales, sazonado con azafrán.	Arroz bomba, mejillones, langostinos, pollo, chorizo, pimientos, cebolla, ajo, azafrán, caldo de pescado.	4000	10
Enchiladas	Tortillas de maíz rellenas de pollo desmenuzado, cubiertas con salsa de tomate picante y queso rallado, horneadas hasta que estén doradas.	Tortillas de maíz, pollo desmenuzado, salsa de tomate, chiles jalapeños, queso rallado, crema agria, cilantro.	16000	11
Spaghetti Carbonara	Spaghetti cocidos al dente, mezclados con una salsa cremosa de huevo, queso parmesano, panceta o tocino y pimienta negra.	Spaghetti, huevos, queso parmesano rallado, panceta o tocino, pimienta negra.	6000	12
Tacos al Pastor	Tacos mexicanos rellenos de carne de cerdo marinada con especias y piña asada, servidos con cilantro y cebolla.	Tortillas de maíz, carne de cerdo marinada, piña, cilantro, cebolla, salsa de tomate.	19000	13
Risotto	Arroz italiano cremoso cocido lentamente en caldo y mezclado con champiñones, espárragos y queso parmesano.	Arroz arborio, caldo de verduras, champiñones, espárragos, cebolla, ajo, vino blanco, queso parmesano.	16000	14
Hamburguesa con Queso	Una jugosa hamburguesa de carne de res, servida en un pan sin gluten con queso cheddar derretido, lechuga, tomate y cebolla.	Carne de res molida, pan sin gluten, queso cheddar, lechuga, tomate, cebolla, condimentos (ketchup, mostaza, etc.).	16000	15
Hamburguesa con Queso	Una jugosa hamburguesa de carne de res, servida en un pan sin gluten con queso cheddar derretido, lechuga, tomate y cebolla.	Carne de res molida, pan sin gluten, queso cheddar, lechuga, tomate, cebolla, condimentos (ketchup, mostaza, etc.).	16000	16
Hamburguesa con Queso	Una jugosa hamburguesa de carne de res, servida en un pan sin gluten con queso cheddar derretido, lechuga, tomate y cebolla.	Carne de res molida, pan sin gluten, queso cheddar, lechuga, tomate, cebolla, condimentos (ketchup, mostaza, etc.).	16000	17
Hamburguesa con Queso	Una jugosa hamburguesa de carne de res, servida en un pan sin gluten con queso cheddar derretido, lechuga, tomate y cebolla.	Carne de res molida, pan sin gluten, queso cheddar, lechuga, tomate, cebolla, condimentos (ketchup, mostaza, etc.).	16000	18
Hamburguesa con Queso	Una jugosa hamburguesa de carne de res, servida en un pan sin gluten con queso cheddar derretido, lechuga, tomate y cebolla.	Carne de res molida, pan sin gluten, queso cheddar, lechuga, tomate, cebolla, condimentos (ketchup, mostaza, etc.).	16000	19
Hamburguesa con Queso	Una jugosa hamburguesa de carne de res, servida en un pan sin gluten con queso cheddar derretido, lechuga, tomate y cebolla.	Carne de res molida, pan sin gluten, queso cheddar, lechuga, tomate, cebolla, condimentos (ketchup, mostaza, etc.).	16000	20
Hamburguesa con Queso	Una jugosa hamburguesa de carne de res, servida en un pan sin gluten con queso cheddar derretido, lechuga, tomate y cebolla.	Carne de res molida, pan sin gluten, queso cheddar, lechuga, tomate, cebolla, condimentos (ketchup, mostaza, etc.).	16000	21
Ceviche	Trozos de pescado crudo marinados en jugo de limón, con cebolla roja, cilantro y chiles picantes.	Pescado blanco fresco (como corvina o lenguado), limón, cebolla roja, cilantro, chiles picantes, sal.	16000	22
Pad Thai	Fideos de arroz salteados con camarones, tofu o pollo, y mezclados con huevo, brotes de soja, cacahuetes y salsa de tamarindo.	Fideos de arroz, camarones/tofu/pollo, huevo, brotes de soja, cebollas verdes, cacahuetes, salsa de tamarindo, azúcar, salsa de pescado.	18000	23
Lasaña	Capas de pasta cocida al horno con salsa de tomate, carne molida, queso ricotta y mozzarella, cubiertas con queso parmesano.	Pasta para lasaña, carne molida, salsa de tomate, queso ricotta, queso mozzarella, queso parmesano, hierbas italianas.	5000	24
Burritos	Tortillas de harina rellenas de arroz, frijoles, carne de res desmenuzada, queso, lechuga y salsa.	Tortillas de harina, arroz, frijoles, carne de res desmenuzada, queso, lechuga, salsa (salsa de tomate, salsa picante, etc.).	11000	25
Bistec a la Parrilla	Un filete de carne de res jugoso y tierno, marinado y luego a la parrilla a la perfección.	Bistec de carne de res, sal, pimienta, hierbas secas (opcional), aceite de oliva.	17000	26
Carne Asada	Filete de carne (generalmente de res) marinado y asado a la parrilla o en el horno.	Filete de carne (res), marinada (aceite de oliva, ajo, limón, cilantro, etc.), sal, pimienta.	20000	27
Fideos Ramen	Fideos japoneses servidos en un caldo caliente, acompañados de diferentes guarniciones como cerdo, huevo, cebolla verde y alga nori.	Fideos ramen, caldo de huesos de cerdo o pollo, cerdo cocido o chashu, huevo cocido, cebolla verde, alga nori, brotes de bambú, maíz, pasta miso (opcional).	18000	28
Moussaka	Un plato griego similar a lasaña, hecho con capas de berenjenas, carne picada (generalmente cordero), salsa de tomate y bechamel.	Berenjenas, carne picada de cordero o res, cebolla, ajo, tomates, salsa de tomate, harina, leche, mantequilla, queso rallado, nuez moscada.	18000	29
Pollo a la Naranja	Trozos de pollo marinados y cocidos en una salsa dulce y picante de naranja, servidos con arroz blanco.	Pollo, jugo de naranja, salsa de soja, miel, jengibre, ajo, almidón de maíz, arroz blanco.	17000	30
Pescado a la Parrilla	Filetes de pescado sazonados y cocidos a la parrilla hasta que estén tiernos y dorados, servidos con una guarnición de vegetales	Filetes de pescado (como salmón, lubina o trucha), aceite de oliva, sal, pimienta, limón, vegetales para acompañar (zanahorias, brócoli, espárragos, etc.).	13000	31
Shawarma	Carne marinada, generalmente cordero, pollo o ternera, asada verticalmente y luego rebanada finamente, servida en pan de pita con ensaladas y salsas.	Carne de cordero, pollo o ternera, yogur, limón, ajo, comino, pimienta, pan de pita, lechuga, tomate, cebolla, tahini, salsa de yogur.	5000	32
Chili con Carne	Un guiso picante de carne molida, frijoles, tomates y especias, servido tradicionalmente con arroz o pan de maíz.	Carne molida de res, frijoles rojos, tomates, cebolla, pimiento, ajo, chiles, comino, orégano, caldo de carne, sal, pimienta.	20000	33
Dim Sum	Una variedad de bocados chinos pequeños y sabrosos, que pueden incluir dumplings, bollos al vapor, rollos de primavera y más.	Varían según el tipo de dim sum, pero pueden incluir carne de cerdo, camarones, cangrejo, vegetales, masa de harina de trigo o arroz, condimentos y salsas.	13000	34
Tarta de Manzana	Una tarta dulce hecha con una base de masa quebrada, rellena de manzanas cortadas y sazonadas con canela y azúcar.	Masa quebrada, manzanas, azúcar, canela, harina, mantequilla, huevo (para barnizar).	19000	35
Camarones al Ajillo	Camarones salteados en aceite de oliva con ajo picado, perejil y chiles rojos, servidos con pan para mojar en la deliciosa salsa.	Camarones, aceite de oliva, ajo, perejil, chiles rojos secos, sal, pimienta.	5000	36
Kebab	Trozos de carne (generalmente cordero, pollo o ternera) marinados y asados en un pincho, servidos en pan pita con verduras y salsas.	Carne marinada, pan de pita, lechuga, tomate, cebolla, pepino, salsas (tahini, salsa de yogur, etc.).	19000	37
Fajitas	Tiras de carne (generalmente pollo, ternera o cerdo) salteadas con pimientos y cebollas, servidas en tortillas de harina con acompañamientos como queso, guacamole y crema agria.	Carne (pollo, ternera, cerdo), pimientos, cebollas, tortillas de harina, queso, guacamole, crema agria, condimentos (comino, chile en polvo, etc.).	5000	38
Bacalao al Pil Pil	Un plato español en el que el bacalao se cocina lentamente en aceite de oliva con ajo, creando una salsa emulsionada.	Bacalao, aceite de oliva, ajo, guindilla (opcional).	19000	39
Arroz con Pollo	Un plato de arroz cocido con trozos de pollo, verduras y especias, típico de muchas cocinas del mundo.	Arroz, pollo, cebolla, pimiento, ajo, guisantes, zanahoria, caldo de pollo, azafrán, sal, pimienta.	8000	40
Tortilla Española	Un plato español clásico hecho con huevos batidos y papas fritas, cocido en una sartén hasta que esté dorado por fuera y tierno por dentro.	Huevos, papas, cebolla, aceite de oliva, sal.	11000	41
Chiles Rellenos	Chile poblano asado y pelado, relleno de queso o una mezcla de carne molida, arroz y especias, luego frito o horneado.	Chile poblano, queso, carne molida, arroz, tomates, cebolla, ajo, especias.	20000	42
Pasta Primavera	Pasta italiana con una variedad de verduras de temporada, como zanahorias, calabacines, tomates cherry y espárragos, en una salsa ligera.	Pasta, zanahorias, calabacines, tomates cherry, espárragos, ajo, aceite de oliva, hierbas frescas (albahaca, perejil), queso parmesano (opcional).	17000	43
Pollo Teriyaki	Trozos de pollo marinados en salsa teriyaki (a base de salsa de soja, mirin y azúcar), luego asados o salteados.	Pollo, salsa de soja, mirin, sake (opcional), azúcar, ajo, jengibre, aceite de sésamo, semillas de sésamo (para decorar).	16000	44
Poutine	Un plato canadiense que consiste en papas fritas cubiertas con queso en trozos y cubiertas con salsa de carne.	Papas, queso en trozos (tradicionalmente queso en grano), salsa de carne (generalmente salsa gravy).	5000	45
Tamales	Maíz molido mezclado con manteca de cerdo, relleno de carne, pollo, queso o frijoles, envuelto en hojas de maíz y cocido al vapor.	Masa de maíz, manteca de cerdo, relleno (carne, pollo, queso, frijoles), hojas de maíz.	11000	46
Pastrami Sandwich	Rebanadas de carne de vacuno pastrami entre rebanadas de pan, a menudo con mostaza y pepinillos.	Carne de vacuno pastrami, pan, mostaza, pepinillos.	5000	47
Pollo a la Parmesana	Filete de pollo empanizado, cubierto con salsa de tomate y queso mozzarella, gratinado al horno.	Pechuga de pollo, pan rallado, queso parmesano, huevos, salsa de tomate, queso mozzarella.	8000	48
Ratatouille	Un guiso francés de vegetales como berenjena, calabacín, tomates y pimientos, cocidos lentamente con hierbas provenzales.	Berenjena, calabacín, tomates, pimientos, cebolla, ajo, aceite de oliva, hierbas provenzales (tomillo, orégano, albahaca), sal, pimienta.	18000	49
Salmón al Horno	Filete de salmón sazonado y horneado hasta que esté tierno y escamoso.	Filete de salmón, aceite de oliva, sal, pimienta, hierbas (opcional), rodajas de limón (para decorar).	18000	50
Gyros	Rodajas finas de "carne" vegana o de tofu sazonadas con especias griegas, servidas en pan pita con vegetales y salsa de yogur (opcional).	"Carne" vegana o tofu, especias griegas (orégano, comino, pimienta, etc.), pan pita, lechuga, tomate, cebolla, salsa de yogur (opcional).	4000	51
Pollo Tikka Masala	Trozos de pollo marinados y cocidos en una salsa cremosa de tomate, yogur y especias indias.	Pollo, yogur, tomates, cebolla, ajo, jengibre, chiles, especias garam masala (cúrcuma, comino, cilantro, etc.), crema, cilantro fresco.	19000	52
Empanadas	Pastelitos de masa rellenos de carne, pollo, queso o verduras, horneados o fritos.	Masa para empanadas (harina, manteca, agua, sal), relleno (carne, pollo, queso, cebolla, especias).	10000	53
Fideuà	Un plato similar a la paella, pero hecho con fideos en lugar de arroz, generalmente con mariscos y vegetales.	Fideos, caldo de pescado, mariscos (gambas, mejillones, calamares), pimientos, cebolla, ajo, tomate, azafrán, aceite de oliva.	8000	54
Tortellini	Pasta fresca en forma de pequeños sombreros rellenos de carne, queso o espinacas.	Masa de pasta (harina, huevos, agua, sal), relleno (carne, queso, espinacas), salsa (salsa de tomate, crema, mantequilla y salvia).	14000	55
Tom Yum	Una sopa picante y ácida de la cocina tailandesa, generalmente hecha con camarones, setas y hierbas aromáticas.	Caldo de pollo o de camarón, limoncillo, galanga, hojas de lima kaffir, chiles, camarones, setas, salsa de pescado, jugo de lima, cilantro.	8000	56
Croquetas de Jamón	Bolitas fritas de masa de bechamel y jamón serrano.	Jamón serrano, harina, mantequilla, leche, pan rallado, huevo, aceite de oliva.	14000	57
Coq au Vin	Un guiso francés de pollo cocido en vino tinto con champiñones, cebollas y hierbas.	Pollo, vino tinto, champiñones, cebolla, ajo, zanahorias, caldo de pollo, tomillo, laurel.	16000	58
Arroz Frito	Arroz salteado en un wok con vegetales, huevos y trozos de carne (opcional), sazonado con salsa de soja.	Arroz cocido, vegetales (guisantes, zanahorias, cebollas), huevos, carne (opcional), salsa de soja, aceite de sésamo.	12000	59
Biryani	Un plato de arroz aromático de origen indio, cocido con especias, carne (generalmente pollo o cordero) y a menudo se complementa con frutos secos y hierbas frescas.	Arroz basmati, pollo o cordero, cebolla, yogur, tomates, jengibre, ajo, especias (cúrcuma, comino, canela, clavo de olor), frutos secos (almendras, pasas), cilantro fresco.	4000	60
Falafel	Bolitas fritas de garbanzos o habas sazonadas con especias, servidas generalmente en pan de pita con ensalada y salsa tahini.	Garbanzos, cilantro, perejil, cebolla, ajo, comino, cilantro en polvo, harina de garbanzo, aceite para freír.	15000	61
Goulash	Un guiso húngaro rico y reconfortante hecho con carne (tradicionalmente de res), cebollas, pimientos y paprika, servido con pan o pasta.	Carne de res, cebolla, pimientos, tomate, pimentón ahumado, caldo de carne, aceite de oliva, sal, pimienta.	11000	62
Ravioli	Pasta rellena de forma cuadrada u ovalada, tradicionalmente rellena de queso, carne o espinacas	Masa de pasta (harina, huevos, sal), relleno (queso ricotta, espinacas, carne, etc.), salsa (salsa de tomate, salsa de crema, etc.).	13000	63
Tempura	Vegetales o mariscos enharinados y fritos brevemente en aceite, un plato japonés popular.	Vegetales (brotes de brócoli, pimientos, calabacín), camarones o pescado blanco, harina de tempura, agua fría, aceite para freír.	5000	64
Churrasco	Tiras de carne asadas a la parrilla, especialmente populares en América Latina.	Carne (generalmente carne de res), sal, pimienta, adobo (opcional).	8000	65
Sopa de Cebolla	Una sopa francesa reconfortante y rica, hecha con cebollas caramelizadas, caldo de carne y vino blanco, cubierto con pan y queso gratinado.	Cebollas, caldo de carne, vino blanco, mantequilla, harina, pan, queso Gruyère.	9000	66
Estofado de Ternera	Un guiso lento de carne de ternera cocida con vegetales en un rico caldo.	Carne de ternera, cebolla, zanahoria, apio, caldo de carne, vino tinto, tomates, hierbas (tomillo, laurel), aceite de oliva.	20000	67
Pollo Katsu	Filete de pechuga de pollo empanizado, frito y cortado en rebanadas, servido con salsa de curry o salsa tonkatsu.	Pechuga de pollo, pan rallado, harina, huevo, aceite para freír, salsa de curry o salsa tonkatsu.	19000	68
Frittata	 Una especie de tortilla italiana hecha con huevos batidos y diversos ingredientes como verduras, queso, carne o mariscos.	Huevos, verduras (pimientos, cebollas, espinacas), queso (parmesano, mozzarella), carne o mariscos (opcional), aceite de oliva.	15000	70
Pescado en Papillote	Filetes de pescado cocidos al vapor en un paquete de papel de aluminio o pergamino, generalmente con vegetales y hierbas.	Filetes de pescado (como salmón o lubina), verduras (zanahorias, pimientos, calabacín), hierbas (tomillo, perejil), aceite de oliva, limón.	18000	71
Albóndigas	Bolas de masa cocidas y generalmente servidas en salsa, comúnmente hechas con carne, pero también hay versiones vegetarianas.	Carne molida (res, cerdo, pollo), cebolla, ajo, pan rallado, huevo, especias.	14000	72
Tiramisú	Un postre italiano hecho con capas de bizcochos de soletilla empapados en café y crema de mascarpone.	Bizcochos de soletilla, café espresso, queso mascarpone, huevos, azúcar, cacao en polvo.	9000	73
Kofta	Brochetas de carne picada sazonada y generalmente asada o a la parrilla, popular en la cocina del Medio Oriente y del sur de Asia.	Carne molida (cordero, res, pollo o pavo), cebolla, ajo, perejil, comino, cilantro, canela, nuez moscada, sal.	8000	74
Fish and Chips	Trozos de pescado empanizados y fritos, servidos con papas fritas, un plato clásico de la cocina británica.	Filetes de pescado blanco (merluza, bacalao), harina, levadura, cerveza (opcional), papas, aceite para freír.	18000	75
Pollo Marsala	Filetes de pollo cocidos en una salsa rica y cremosa de vino marsala, champiñones y hierbas.	Pechugas de pollo, champiñones, vino marsala, caldo de pollo, crema, harina, mantequilla, perejil.	14000	76
Jambalaya	Un plato de arroz picante de la cocina cajún y criolla de Luisiana, generalmente cocido con salchichas, pollo, mariscos y una variedad de vegetales.	Arroz, salchichas ahumadas, pollo, camarones o langostinos, tomates, pimientos, apio, cebolla, ajo, especias cajún.	5000	77
Asado	Un plato chileno de carne asada a la parrilla, típicamente servida con ensaladas y papas fritas.	Carne (como vacuno o cerdo), sal, pimienta, papas, vegetales para ensalada (lechuga, tomate, cebolla), aderezos (opcional).	15000	78
Huevo Ranchero	Huevos fritos sobre una tortilla de maíz con salsa de tomate y chiles, un desayuno tradicional mexicano.	Huevos, tortillas de maíz, salsa de tomate, chiles (jalapeños o serranos), cebolla, cilantro.	4000	79
Carpaccio	Finas láminas de carne cruda (generalmente de res) marinadas y servidas con aderezos como aceite de oliva, limón y queso parmesano.	Filete de res, aceite de oliva, jugo de limón, queso parmesano, rúcula (opcional), sal, pimienta.	14000	80
Ensalada César	Una ensalada clásica con lechuga romana, crutones, queso parmesano y aderezo César.	Lechuga romana, crutones, queso parmesano, aceite de oliva, ajo, mostaza Dijon, salsa Worcestershire, jugo de limón, anchoas (opcional), huevo, sal, pimienta.	12000	81
Sopa de Lentejas	Una sopa reconfortante hecha con lentejas cocidas, generalmente con verduras como zanahorias, cebollas y apio.	Lentejas, cebolla, zanahoria, apio, ajo, tomate, caldo de verduras, aceite de oliva, especias (comino, pimentón, laurel), sal, pimienta.	17000	82
Tagliatelle	Pasta larga y plana, similar a los fettuccine, originaria de la cocina italiana.	Harina de trigo, huevos, sal, agua (opcional para ajustar la consistencia de la masa).	16000	83
Torta de Chocolate	Un postre decadente hecho con una base de bizcocho de chocolate y cubierto con ganache de chocolate.	Harina de almendras, cacao en polvo, azúcar, huevos, mantequilla, chocolate negro, crema para batir, extracto de vainilla.	17000	84
Pastel de Choclo	Un pastel chileno hecho con una base de puré de maíz (choclo) y relleno con una mezcla de carne, pollo, cebolla y aceitunas (versión tradicional) o vegetales (versión vegana).	Maíz desgranado (choclo), cebolla, pimiento rojo, aceitunas (opcional), aceite de oliva, sal, azúcar, hojas de maíz para envolver.	13000	85
Estofado de Cordero	Un guiso sabroso hecho con carne de cordero cocida lentamente con vegetales en un caldo aromático.	Carne de cordero, cebolla, zanahoria, apio, tomate, caldo de cordero o de verduras, vino tinto (opcional), hierbas (romero, tomillo), aceite de oliva, sal, pimienta.	7000	86
Crepes Suzette	Crepes flambéados en una salsa de naranja y Grand Marnier, un clásico postre francés.	Crepes (harina, huevos, leche, mantequilla), naranjas, azúcar, mantequilla, Grand Marnier (u otro licor de naranja), ralladura de naranja.	6000	87
Pollo al Horno	Pechugas de pollo sazonadas y horneadas hasta que estén tiernas y doradas.	Pechugas de pollo, aceite de oliva, sal, pimienta, hierbas aromáticas (tomillo, romero, etc.).	16000	89
Samosas	Empanadillas fritas o al horno rellenas de una mezcla de verduras, papas y especias, típicas de la cocina india.	Masa para empanadillas (harina, agua, aceite, sal), relleno (papas, guisantes, zanahorias, cebolla, especias como comino, cúrcuma, garam masala), aceite para freír.	19000	90
Tacos de Pescado	Filetes de pescado empanizados y fritos, servidos en tortillas de maíz con aderezos como repollo rallado, salsa de crema y cilantro.	Filetes de pescado (como tilapia o mahi-mahi), harina de maíz, huevo, aceite para freír, tortillas de maíz, repollo rallado, salsa de crema, cilantro, limón.	8000	91
Fajitas de Pollo	Tiras de pollo marinadas y asadas, generalmente servidas con tiras de pimientos y cebollas en tortillas de harina.	Pollo, pimientos, cebolla, tortillas de harina, especias para fajitas (comino, pimentón, chile en polvo), aceite de oliva.	6000	93
Ensalada Caprese	Una ensalada italiana clásica hecha con tomates frescos, mozzarella de búfala, hojas de albahaca y aceite de oliva.	Tomates maduros, mozzarella de búfala (o queso vegano tipo mozzarella), hojas de albahaca fresca, aceite de oliva virgen extra, vinagre balsámico, sal, pimienta.	12000	94
Sopa Minestrone	Una sopa italiana rica y abundante llena de verduras, frijoles y pasta.	Caldo de verduras, tomates, zanahorias, apio, cebolla, judías verdes, judías blancas, pasta (como codos o espaguetis rotos), aceite de oliva, hierbas frescas (albahaca, perejil), sal, pimienta.	16000	95
Quiche Lorraine	Un pastel salado francés hecho con una masa de hojaldre rellena de una mezcla de huevos batidos, crema, tocino y queso.	Masa para quiche (harina, mantequilla, agua, sal), huevos, crema de leche (o alternativa vegana), tocino vegano (opcional), queso vegano rallado, sal, pimienta, nuez moscada.	7000	96
Carpaccio de Salmón	Finas láminas de salmón crudo marinadas con aceite de oliva, jugo de limón, eneldo y alcaparras, servidas como aperitivo.	Filete de salmón fresco, aceite de oliva, jugo de limón, eneldo fresco, alcaparras, rúcula (para servir).	9000	97
Pato Pekinés	 Un plato chino de pato asado servido con panqueques finos, salsa hoisin, cebollino y pepino en juliana.	Pato, panqueques para pato pekinés (o tortillas de harina), salsa hoisin, cebollino, pepino, cebolla verde.	17000	98
Crema de Mariscos	Una sopa cremosa hecha con una variedad de mariscos como camarones, mejillones y calamares, cocidos en caldo de pescado con verduras.	Caldo de pescado, camarones, mejillones, calamares, cebolla, zanahoria, apio, patatas, leche de coco (o crema de coco), sal, pimienta.	7000	99
Filete Wellington	Un filete de ternera cubierto con foie gras (o un relleno vegetal), envuelto en hojaldre y horneado.	Filete de ternera, hojaldre (asegúrate de que sea vegano), foie gras vegano o un relleno vegetal como champiñones y espinacas, huevo batido (o alternativa vegana), sal, pimienta.	20000	100
DCCHamburguer	Hamburguesa con palta, tomate, mayonesa, rica para pasar la hora de almuerzo	hamburguesa, palta, tomate, mayonesa	5000	102
Pasta Alfredo	Una pasta cremosa y reconfortante hecha con una salsa a base de mantequilla, crema y queso parmesano.	Pasta (como fettuccine), mantequilla, crema espesa, queso parmesano rallado, ajo, nuez moscada, perejil fresco, sal, pimienta.	19000	103
Ratatouille	Un guiso francés tradicionalmente hecho con una variedad de vegetales de verano como berenjenas, calabacines, tomates, pimientos y cebollas, cocidos lentamente en aceite de oliva con hierbas provenzales.	Berenjenas, calabacines, tomates, pimientos (rojos y verdes), cebollas, ajo, aceite de oliva, tomate triturado (o salsa de tomate), hierbas provenzales (tomillo, orégano, albahaca), sal, pimienta.	4000	104
Pollo a la Crema	Una receta clásica en la que los filetes de pollo se cocinan en una salsa cremosa y aromática, a menudo con champiñones y hierbas.	Pechugas de pollo, champiñones, cebolla, ajo, caldo de pollo, crema de leche, vino blanco (opcional), mantequilla, harina (para espesar la salsa), perejil, sal, pimienta.	9000	105
Pastel de Carne	Plato reconfortante, compuesto por una mezcla de carne picada sazonada y otros ingredientes	Carne picada (de res, cerdo, o una mezcla), cebolla, ajo, zanahoria, apio, perejil, pan rallado o migas de pan, huevo, leche, mostaza (opcional), salsa Worcestershire, sal y pimienta, aceite de oliva.	8000	106
Moussaka	Plato tradicional de la cocina griega, consistente en capas de berenjena, carne picada de cordero o res sazonada, cubierta con una salsa de tomate y bechamel, horneada hasta que esté dorada y burbujeante.	Berenjena, carne picada de cordero o res, salsa de tomate, bechamel, cebolla, ajo, aceite de oliva, sal y pimienta, orégano, queso rallado (opcional, para gratinar).	15000	107
Sándwich Cubano	Un clásico de la cocina caribeña, compuesto por capas de jamón, cerdo asado, queso suizo, pepinillos y mostaza, todo prensado entre dos rebanadas de pan cubano y tostado.	Jamón, cerdo asado, queso suizo, pepinillos, mostaza, pan cubano.	12000	108
Ensalada Griega	Ensalada fresca y saludable de la cocina griega, compuesta por pepino, tomate, cebolla roja, aceitunas kalamata, queso feta, aderezada con aceite de oliva, orégano y zumo de limón.	Pepino, tomate, cebolla roja, aceitunas kalamata, queso feta, aceite de oliva, orégano, zumo de limón.	4000	109
Carne en Salsa	Trozos de carne tierna cocidos lentamente en una salsa aromática y sabrosa, a menudo a base de tomate, cebolla, ajo, hierbas y especias.	Carne, tomate, cebolla, ajo, hierbas (laurel, tomillo, orégano), especias (pimienta, comino), caldo de carne, aceite de oliva, sal.	16000	110
Canelones	Plato italiano relleno de pasta de lasaña enrollada con carne picada, espinacas, ricotta, y cubierto con salsa de tomate y bechamel.	Pasta para canelones, carne picada, espinacas, ricotta, salsa de tomate, bechamel, queso rallado, ajo, cebolla, sal y pimienta.	19000	112
Sushi	Una selección de rollitos de sushi tradicionales japoneses, servidos con wasabi y jengibre encurtido.	Arroz de sushi, algas nori, pescado crudo (como salmón, atún o pez mantequilla), aguacate, pepino, cangrejo, vinagre de arroz, azúcar, sal	17000	113
Canelones	Plato italiano relleno de pasta de lasaña enrollada con carne picada, espinacas, ricotta, y cubierto con salsa de tomate y bechamel.	Pasta para canelones, carne picada, espinacas, ricotta, salsa de tomate, bechamel, queso rallado, ajo, cebolla, sal y pimienta.	19000	114
Canelones	Plato italiano relleno de pasta de lasaña enrollada con carne picada, espinacas, ricotta, y cubierto con salsa de tomate y bechamel.	Pasta para canelones, carne picada, espinacas, ricotta, salsa de tomate, bechamel, queso rallado, ajo, cebolla, sal y pimienta.	19000	115
Bistec a la Parrilla	Un filete de carne de res jugoso y tierno, marinado y luego a la parrilla a la perfección.	Bistec de carne de res, sal, pimienta, hierbas secas (opcional), aceite de oliva.	6000	116
Fideos Ramen	Fideos japoneses servidos en un caldo caliente, acompañados de diferentes guarniciones como cerdo, huevo, cebolla verde y alga nori.	Fideos ramen, caldo de huesos de cerdo o pollo, cerdo cocido o chashu, huevo cocido, cebolla verde, alga nori, brotes de bambú, maíz, pasta miso (opcional).	4000	117
Moussaka	Un plato griego similar a lasaña, hecho con capas de berenjenas, carne picada (generalmente cordero), salsa de tomate y bechamel.	Berenjenas, carne picada de cordero o res, cebolla, ajo, tomates, salsa de tomate, harina, leche, mantequilla, queso rallado, nuez moscada.	7000	118
Pollo a la Naranja	Trozos de pollo marinados y cocidos en una salsa dulce y picante de naranja, servidos con arroz blanco.	Pollo, jugo de naranja, salsa de soja, miel, jengibre, ajo, almidón de maíz, arroz blanco.	7000	119
Pescado a la Parrilla	Filetes de pescado sazonados y cocidos a la parrilla hasta que estén tiernos y dorados, servidos con una guarnición de vegetales	Filetes de pescado (como salmón, lubina o trucha), aceite de oliva, sal, pimienta, limón, vegetales para acompañar (zanahorias, brócoli, espárragos, etc.).	17000	120
Shawarma	Carne marinada, generalmente cordero, pollo o ternera, asada verticalmente y luego rebanada finamente, servida en pan de pita con ensaladas y salsas.	Carne de cordero, pollo o ternera, yogur, limón, ajo, comino, pimienta, pan de pita, lechuga, tomate, cebolla, tahini, salsa de yogur.	4000	121
Chili con Carne	Un guiso picante de carne molida, frijoles, tomates y especias, servido tradicionalmente con arroz o pan de maíz.	Carne molida de res, frijoles rojos, tomates, cebolla, pimiento, ajo, chiles, comino, orégano, caldo de carne, sal, pimienta.	20000	122
Dim Sum	Una variedad de bocados chinos pequeños y sabrosos, que pueden incluir dumplings, bollos al vapor, rollos de primavera y más.	Varían según el tipo de dim sum, pero pueden incluir carne de cerdo, camarones, cangrejo, vegetales, masa de harina de trigo o arroz, condimentos y salsas.	5000	123
Tarta de Manzana	Una tarta dulce hecha con una base de masa quebrada, rellena de manzanas cortadas y sazonadas con canela y azúcar.	Masa quebrada, manzanas, azúcar, canela, harina, mantequilla, huevo (para barnizar).	20000	124
Camarones al Ajillo	Camarones salteados en aceite de oliva con ajo picado, perejil y chiles rojos, servidos con pan para mojar en la deliciosa salsa.	Camarones, aceite de oliva, ajo, perejil, chiles rojos secos, sal, pimienta.	14000	125
Kebab	Trozos de carne (generalmente cordero, pollo o ternera) marinados y asados en un pincho, servidos en pan pita con verduras y salsas.	Carne marinada, pan de pita, lechuga, tomate, cebolla, pepino, salsas (tahini, salsa de yogur, etc.).	17000	126
Fajitas	Tiras de carne (generalmente pollo, ternera o cerdo) salteadas con pimientos y cebollas, servidas en tortillas de harina con acompañamientos como queso, guacamole y crema agria.	Carne (pollo, ternera, cerdo), pimientos, cebollas, tortillas de harina, queso, guacamole, crema agria, condimentos (comino, chile en polvo, etc.).	15000	127
Bacalao al Pil Pil	Un plato español en el que el bacalao se cocina lentamente en aceite de oliva con ajo, creando una salsa emulsionada.	Bacalao, aceite de oliva, ajo, guindilla (opcional).	19000	128
Arroz con Pollo	Un plato de arroz cocido con trozos de pollo, verduras y especias, típico de muchas cocinas del mundo.	Arroz, pollo, cebolla, pimiento, ajo, guisantes, zanahoria, caldo de pollo, azafrán, sal, pimienta.	19000	129
Tortilla Española	Un plato español clásico hecho con huevos batidos y papas fritas, cocido en una sartén hasta que esté dorado por fuera y tierno por dentro.	Huevos, papas, cebolla, aceite de oliva, sal.	4000	130
Chiles Rellenos	Chile poblano asado y pelado, relleno de queso o una mezcla de carne molida, arroz y especias, luego frito o horneado.	Chile poblano, queso, carne molida, arroz, tomates, cebolla, ajo, especias.	18000	131
Pasta Primavera	Pasta italiana con una variedad de verduras de temporada, como zanahorias, calabacines, tomates cherry y espárragos, en una salsa ligera.	Pasta, zanahorias, calabacines, tomates cherry, espárragos, ajo, aceite de oliva, hierbas frescas (albahaca, perejil), queso parmesano (opcional).	13000	132
Pollo Teriyaki	Trozos de pollo marinados en salsa teriyaki (a base de salsa de soja, mirin y azúcar), luego asados o salteados.	Pollo, salsa de soja, mirin, sake (opcional), azúcar, ajo, jengibre, aceite de sésamo, semillas de sésamo (para decorar).	16000	133
Poutine	Un plato canadiense que consiste en papas fritas cubiertas con queso en trozos y cubiertas con salsa de carne.	Papas, queso en trozos (tradicionalmente queso en grano), salsa de carne (generalmente salsa gravy).	14000	134
Tamales	Maíz molido mezclado con manteca de cerdo, relleno de carne, pollo, queso o frijoles, envuelto en hojas de maíz y cocido al vapor.	Masa de maíz, manteca de cerdo, relleno (carne, pollo, queso, frijoles), hojas de maíz.	7000	135
Pastrami Sandwich	Rebanadas de carne de vacuno pastrami entre rebanadas de pan, a menudo con mostaza y pepinillos.	Carne de vacuno pastrami, pan, mostaza, pepinillos.	18000	136
Pollo a la Parmesana	Filete de pollo empanizado, cubierto con salsa de tomate y queso mozzarella, gratinado al horno.	Pechuga de pollo, pan rallado, queso parmesano, huevos, salsa de tomate, queso mozzarella.	15000	137
Ratatouille	Un guiso francés de vegetales como berenjena, calabacín, tomates y pimientos, cocidos lentamente con hierbas provenzales.	Berenjena, calabacín, tomates, pimientos, cebolla, ajo, aceite de oliva, hierbas provenzales (tomillo, orégano, albahaca), sal, pimienta.	9000	138
Salmón al Horno	Filete de salmón sazonado y horneado hasta que esté tierno y escamoso.	Filete de salmón, aceite de oliva, sal, pimienta, hierbas (opcional), rodajas de limón (para decorar).	16000	139
Gyros	Rodajas finas de "carne" vegana o de tofu sazonadas con especias griegas, servidas en pan pita con vegetales y salsa de yogur (opcional).	"Carne" vegana o tofu, especias griegas (orégano, comino, pimienta, etc.), pan pita, lechuga, tomate, cebolla, salsa de yogur (opcional).	17000	140
Pollo Tikka Masala	Trozos de pollo marinados y cocidos en una salsa cremosa de tomate, yogur y especias indias.	Pollo, yogur, tomates, cebolla, ajo, jengibre, chiles, especias garam masala (cúrcuma, comino, cilantro, etc.), crema, cilantro fresco.	12000	141
Carne Asada	Filete de carne (generalmente de res) marinado y asado a la parrilla o en el horno.	Filete de carne (res), marinada (aceite de oliva, ajo, limón, cilantro, etc.), sal, pimienta.	16000	142
Empanadas	Pastelitos de masa rellenos de carne, pollo, queso o verduras, horneados o fritos.	Masa para empanadas (harina, manteca, agua, sal), relleno (carne, pollo, queso, cebolla, especias).	16000	143
Empanadas	Pastelitos de masa rellenos de carne, pollo, queso o verduras, horneados o fritos.	Masa para empanadas (harina, manteca, agua, sal), relleno (carne, pollo, queso, cebolla, especias).	14000	144
Fideuà	Un plato similar a la paella, pero hecho con fideos en lugar de arroz, generalmente con mariscos y vegetales.	Fideos, caldo de pescado, mariscos (gambas, mejillones, calamares), pimientos, cebolla, ajo, tomate, azafrán, aceite de oliva.	13000	145
Tortellini	Pasta fresca en forma de pequeños sombreros rellenos de carne, queso o espinacas.	Masa de pasta (harina, huevos, agua, sal), relleno (carne, queso, espinacas), salsa (salsa de tomate, crema, mantequilla y salvia).	14000	146
Tom Yum	Una sopa picante y ácida de la cocina tailandesa, generalmente hecha con camarones, setas y hierbas aromáticas.	Caldo de pollo o de camarón, limoncillo, galanga, hojas de lima kaffir, chiles, camarones, setas, salsa de pescado, jugo de lima, cilantro.	8000	147
Croquetas de Jamón	Bolitas fritas de masa de bechamel y jamón serrano.	Jamón serrano, harina, mantequilla, leche, pan rallado, huevo, aceite de oliva.	7000	148
Coq au Vin	Un guiso francés de pollo cocido en vino tinto con champiñones, cebollas y hierbas.	Pollo, vino tinto, champiñones, cebolla, ajo, zanahorias, caldo de pollo, tomillo, laurel.	7000	149
Arroz Frito	Arroz salteado en un wok con vegetales, huevos y trozos de carne (opcional), sazonado con salsa de soja.	Arroz cocido, vegetales (guisantes, zanahorias, cebollas), huevos, carne (opcional), salsa de soja, aceite de sésamo.	19000	150
Biryani	Un plato de arroz aromático de origen indio, cocido con especias, carne (generalmente pollo o cordero) y a menudo se complementa con frutos secos y hierbas frescas.	Arroz basmati, pollo o cordero, cebolla, yogur, tomates, jengibre, ajo, especias (cúrcuma, comino, canela, clavo de olor), frutos secos (almendras, pasas), cilantro fresco.	20000	151
Falafel	Bolitas fritas de garbanzos o habas sazonadas con especias, servidas generalmente en pan de pita con ensalada y salsa tahini.	Garbanzos, cilantro, perejil, cebolla, ajo, comino, cilantro en polvo, harina de garbanzo, aceite para freír.	13000	152
Goulash	Un guiso húngaro rico y reconfortante hecho con carne (tradicionalmente de res), cebollas, pimientos y paprika, servido con pan o pasta.	Carne de res, cebolla, pimientos, tomate, pimentón ahumado, caldo de carne, aceite de oliva, sal, pimienta.	10000	153
Ravioli	Pasta rellena de forma cuadrada u ovalada, tradicionalmente rellena de queso, carne o espinacas	Masa de pasta (harina, huevos, sal), relleno (queso ricotta, espinacas, carne, etc.), salsa (salsa de tomate, salsa de crema, etc.).	16000	154
Tempura	Vegetales o mariscos enharinados y fritos brevemente en aceite, un plato japonés popular.	Vegetales (brotes de brócoli, pimientos, calabacín), camarones o pescado blanco, harina de tempura, agua fría, aceite para freír.	17000	155
Churrasco	Tiras de carne asadas a la parrilla, especialmente populares en América Latina.	Carne (generalmente carne de res), sal, pimienta, adobo (opcional).	9000	156
Sopa de Cebolla	Una sopa francesa reconfortante y rica, hecha con cebollas caramelizadas, caldo de carne y vino blanco, cubierto con pan y queso gratinado.	Cebollas, caldo de carne, vino blanco, mantequilla, harina, pan, queso Gruyère.	11000	157
Estofado de Ternera	Un guiso lento de carne de ternera cocida con vegetales en un rico caldo.	Carne de ternera, cebolla, zanahoria, apio, caldo de carne, vino tinto, tomates, hierbas (tomillo, laurel), aceite de oliva.	20000	158
Pollo Katsu	Filete de pechuga de pollo empanizado, frito y cortado en rebanadas, servido con salsa de curry o salsa tonkatsu.	Pechuga de pollo, pan rallado, harina, huevo, aceite para freír, salsa de curry o salsa tonkatsu.	10000	159
Frittata	 Una especie de tortilla italiana hecha con huevos batidos y diversos ingredientes como verduras, queso, carne o mariscos.	Huevos, verduras (pimientos, cebollas, espinacas), queso (parmesano, mozzarella), carne o mariscos (opcional), aceite de oliva.	20000	161
Pescado en Papillote	Filetes de pescado cocidos al vapor en un paquete de papel de aluminio o pergamino, generalmente con vegetales y hierbas.	Filetes de pescado (como salmón o lubina), verduras (zanahorias, pimientos, calabacín), hierbas (tomillo, perejil), aceite de oliva, limón.	5000	162
Albóndigas	Bolas de masa cocidas y generalmente servidas en salsa, comúnmente hechas con carne, pero también hay versiones vegetarianas.	Carne molida (res, cerdo, pollo), cebolla, ajo, pan rallado, huevo, especias.	8000	163
Tiramisú	Un postre italiano hecho con capas de bizcochos de soletilla empapados en café y crema de mascarpone.	Bizcochos de soletilla, café espresso, queso mascarpone, huevos, azúcar, cacao en polvo.	15000	164
Kofta	Brochetas de carne picada sazonada y generalmente asada o a la parrilla, popular en la cocina del Medio Oriente y del sur de Asia.	Carne molida (cordero, res, pollo o pavo), cebolla, ajo, perejil, comino, cilantro, canela, nuez moscada, sal.	17000	165
Fish and Chips	Trozos de pescado empanizados y fritos, servidos con papas fritas, un plato clásico de la cocina británica.	Filetes de pescado blanco (merluza, bacalao), harina, levadura, cerveza (opcional), papas, aceite para freír.	12000	166
Pollo Marsala	Filetes de pollo cocidos en una salsa rica y cremosa de vino marsala, champiñones y hierbas.	Pechugas de pollo, champiñones, vino marsala, caldo de pollo, crema, harina, mantequilla, perejil.	18000	167
Jambalaya	Un plato de arroz picante de la cocina cajún y criolla de Luisiana, generalmente cocido con salchichas, pollo, mariscos y una variedad de vegetales.	Arroz, salchichas ahumadas, pollo, camarones o langostinos, tomates, pimientos, apio, cebolla, ajo, especias cajún.	18000	168
Asado	Un plato chileno de carne asada a la parrilla, típicamente servida con ensaladas y papas fritas.	Carne (como vacuno o cerdo), sal, pimienta, papas, vegetales para ensalada (lechuga, tomate, cebolla), aderezos (opcional).	14000	169
Huevo Ranchero	Huevos fritos sobre una tortilla de maíz con salsa de tomate y chiles, un desayuno tradicional mexicano.	Huevos, tortillas de maíz, salsa de tomate, chiles (jalapeños o serranos), cebolla, cilantro.	16000	170
Carpaccio	Finas láminas de carne cruda (generalmente de res) marinadas y servidas con aderezos como aceite de oliva, limón y queso parmesano.	Filete de res, aceite de oliva, jugo de limón, queso parmesano, rúcula (opcional), sal, pimienta.	9000	171
Ensalada César	Una ensalada clásica con lechuga romana, crutones, queso parmesano y aderezo César.	Lechuga romana, crutones, queso parmesano, aceite de oliva, ajo, mostaza Dijon, salsa Worcestershire, jugo de limón, anchoas (opcional), huevo, sal, pimienta.	13000	172
Sopa de Lentejas	Una sopa reconfortante hecha con lentejas cocidas, generalmente con verduras como zanahorias, cebollas y apio.	Lentejas, cebolla, zanahoria, apio, ajo, tomate, caldo de verduras, aceite de oliva, especias (comino, pimentón, laurel), sal, pimienta.	7000	173
Tagliatelle	Pasta larga y plana, similar a los fettuccine, originaria de la cocina italiana.	Harina de trigo, huevos, sal, agua (opcional para ajustar la consistencia de la masa).	10000	174
Torta de Chocolate	Un postre decadente hecho con una base de bizcocho de chocolate y cubierto con ganache de chocolate.	Harina de almendras, cacao en polvo, azúcar, huevos, mantequilla, chocolate negro, crema para batir, extracto de vainilla.	10000	175
Pastel de Choclo	Un pastel chileno hecho con una base de puré de maíz (choclo) y relleno con una mezcla de carne, pollo, cebolla y aceitunas (versión tradicional) o vegetales (versión vegana).	Maíz desgranado (choclo), cebolla, pimiento rojo, aceitunas (opcional), aceite de oliva, sal, azúcar, hojas de maíz para envolver.	17000	176
Estofado de Cordero	Un guiso sabroso hecho con carne de cordero cocida lentamente con vegetales en un caldo aromático.	Carne de cordero, cebolla, zanahoria, apio, tomate, caldo de cordero o de verduras, vino tinto (opcional), hierbas (romero, tomillo), aceite de oliva, sal, pimienta.	14000	177
Crepes Suzette	Crepes flambéados en una salsa de naranja y Grand Marnier, un clásico postre francés.	Crepes (harina, huevos, leche, mantequilla), naranjas, azúcar, mantequilla, Grand Marnier (u otro licor de naranja), ralladura de naranja.	5000	178
Pollo al Horno	Pechugas de pollo sazonadas y horneadas hasta que estén tiernas y doradas.	Pechugas de pollo, aceite de oliva, sal, pimienta, hierbas aromáticas (tomillo, romero, etc.).	12000	180
Samosas	Empanadillas fritas o al horno rellenas de una mezcla de verduras, papas y especias, típicas de la cocina india.	Masa para empanadillas (harina, agua, aceite, sal), relleno (papas, guisantes, zanahorias, cebolla, especias como comino, cúrcuma, garam masala), aceite para freír.	13000	181
Tacos de Pescado	Filetes de pescado empanizados y fritos, servidos en tortillas de maíz con aderezos como repollo rallado, salsa de crema y cilantro.	Filetes de pescado (como tilapia o mahi-mahi), harina de maíz, huevo, aceite para freír, tortillas de maíz, repollo rallado, salsa de crema, cilantro, limón.	16000	182
Fajitas de Pollo	Tiras de pollo marinadas y asadas, generalmente servidas con tiras de pimientos y cebollas en tortillas de harina.	Pollo, pimientos, cebolla, tortillas de harina, especias para fajitas (comino, pimentón, chile en polvo), aceite de oliva.	20000	184
Ensalada Caprese	Una ensalada italiana clásica hecha con tomates frescos, mozzarella de búfala, hojas de albahaca y aceite de oliva.	Tomates maduros, mozzarella de búfala (o queso vegano tipo mozzarella), hojas de albahaca fresca, aceite de oliva virgen extra, vinagre balsámico, sal, pimienta.	17000	185
Sopa Minestrone	Una sopa italiana rica y abundante llena de verduras, frijoles y pasta.	Caldo de verduras, tomates, zanahorias, apio, cebolla, judías verdes, judías blancas, pasta (como codos o espaguetis rotos), aceite de oliva, hierbas frescas (albahaca, perejil), sal, pimienta.	15000	186
Quiche Lorraine	Un pastel salado francés hecho con una masa de hojaldre rellena de una mezcla de huevos batidos, crema, tocino y queso.	Masa para quiche (harina, mantequilla, agua, sal), huevos, crema de leche (o alternativa vegana), tocino vegano (opcional), queso vegano rallado, sal, pimienta, nuez moscada.	19000	187
Carpaccio de Salmón	Finas láminas de salmón crudo marinadas con aceite de oliva, jugo de limón, eneldo y alcaparras, servidas como aperitivo.	Filete de salmón fresco, aceite de oliva, jugo de limón, eneldo fresco, alcaparras, rúcula (para servir).	7000	188
Pato Pekinés	 Un plato chino de pato asado servido con panqueques finos, salsa hoisin, cebollino y pepino en juliana.	Pato, panqueques para pato pekinés (o tortillas de harina), salsa hoisin, cebollino, pepino, cebolla verde.	11000	189
Crema de Mariscos	Una sopa cremosa hecha con una variedad de mariscos como camarones, mejillones y calamares, cocidos en caldo de pescado con verduras.	Caldo de pescado, camarones, mejillones, calamares, cebolla, zanahoria, apio, patatas, leche de coco (o crema de coco), sal, pimienta.	9000	190
Filete Wellington	Un filete de ternera cubierto con foie gras (o un relleno vegetal), envuelto en hojaldre y horneado.	Filete de ternera, hojaldre (asegúrate de que sea vegano), foie gras vegano o un relleno vegetal como champiñones y espinacas, huevo batido (o alternativa vegana), sal, pimienta.	11000	191
Pasta Alfredo	Una pasta cremosa y reconfortante hecha con una salsa a base de mantequilla, crema y queso parmesano.	Pasta (como fettuccine), mantequilla, crema espesa, queso parmesano rallado, ajo, nuez moscada, perejil fresco, sal, pimienta.	4000	193
Empanadas	Pastelitos de masa rellenos de carne, pollo, queso o verduras, horneados o fritos.	Masa para empanadas (harina, manteca, agua, sal), relleno (carne, pollo, queso, cebolla, especias).	15000	194
Ratatouille	Un guiso francés tradicionalmente hecho con una variedad de vegetales de verano como berenjenas, calabacines, tomates, pimientos y cebollas, cocidos lentamente en aceite de oliva con hierbas provenzales.	Berenjenas, calabacines, tomates, pimientos (rojos y verdes), cebollas, ajo, aceite de oliva, tomate triturado (o salsa de tomate), hierbas provenzales (tomillo, orégano, albahaca), sal, pimienta.	8000	195
Pollo a la Crema	Una receta clásica en la que los filetes de pollo se cocinan en una salsa cremosa y aromática, a menudo con champiñones y hierbas.	Pechugas de pollo, champiñones, cebolla, ajo, caldo de pollo, crema de leche, vino blanco (opcional), mantequilla, harina (para espesar la salsa), perejil, sal, pimienta.	6000	196
Pastel de Carne	Plato reconfortante, compuesto por una mezcla de carne picada sazonada y otros ingredientes	Carne picada (de res, cerdo, o una mezcla), cebolla, ajo, zanahoria, apio, perejil, pan rallado o migas de pan, huevo, leche, mostaza (opcional), salsa Worcestershire, sal y pimienta, aceite de oliva.	5000	197
Moussaka	Plato tradicional de la cocina griega, consistente en capas de berenjena, carne picada de cordero o res sazonada, cubierta con una salsa de tomate y bechamel, horneada hasta que esté dorada y burbujeante.	Berenjena, carne picada de cordero o res, salsa de tomate, bechamel, cebolla, ajo, aceite de oliva, sal y pimienta, orégano, queso rallado (opcional, para gratinar).	7000	198
Sándwich Cubano	Un clásico de la cocina caribeña, compuesto por capas de jamón, cerdo asado, queso suizo, pepinillos y mostaza, todo prensado entre dos rebanadas de pan cubano y tostado.	Jamón, cerdo asado, queso suizo, pepinillos, mostaza, pan cubano.	12000	199
Ensalada Griega	Ensalada fresca y saludable de la cocina griega, compuesta por pepino, tomate, cebolla roja, aceitunas kalamata, queso feta, aderezada con aceite de oliva, orégano y zumo de limón.	Pepino, tomate, cebolla roja, aceitunas kalamata, queso feta, aceite de oliva, orégano, zumo de limón.	7000	200
Carne en Salsa	Trozos de carne tierna cocidos lentamente en una salsa aromática y sabrosa, a menudo a base de tomate, cebolla, ajo, hierbas y especias.	Carne, tomate, cebolla, ajo, hierbas (laurel, tomillo, orégano), especias (pimienta, comino), caldo de carne, aceite de oliva, sal.	12000	201
Canelones	Plato italiano relleno de pasta de lasaña enrollada con carne picada, espinacas, ricotta, y cubierto con salsa de tomate y bechamel.	Pasta para canelones, carne picada, espinacas, ricotta, salsa de tomate, bechamel, queso rallado, ajo, cebolla, sal y pimienta.	15000	203
DCCHamburguer	Hamburguesa con palta, tomate, mayonesa, rica para pasar la hora de almuerzo	hamburguesa, palta, tomate, mayonesa	5000	204
Sushi	Una selección de rollitos de sushi tradicionales japoneses, servidos con wasabi y jengibre encurtido.	Arroz de sushi, algas nori, pescado crudo (como salmón, atún o pez mantequilla), aguacate, pepino, cangrejo, vinagre de arroz, azúcar, sal	4000	205
Pizza Margarita	Una pizza clásica italiana con salsa de tomate, mozzarella fresca y albahaca fresca.	Masa de pizza, salsa de tomate, mozzarella fresca, albahaca fresca, aceite de oliva.	17000	206
Pollo al Curry	Trozos de pollo cocidos en una salsa cremosa de curry, servidos con arroz basmati.	Pollo, cebolla, ajo, jengibre, pasta de curry, leche de coco, tomates, especias (cúrcuma, comino, cilantro, etc.), arroz basmati.	9000	207
Paella	Un plato de arroz español tradicional, cocido con mariscos, pollo, chorizo y vegetales, sazonado con azafrán.	Arroz bomba, mejillones, langostinos, pollo, chorizo, pimientos, cebolla, ajo, azafrán, caldo de pescado.	4000	208
Enchiladas	Tortillas de maíz rellenas de pollo desmenuzado, cubiertas con salsa de tomate picante y queso rallado, horneadas hasta que estén doradas.	Tortillas de maíz, pollo desmenuzado, salsa de tomate, chiles jalapeños, queso rallado, crema agria, cilantro.	19000	209
Spaghetti Carbonara	Spaghetti cocidos al dente, mezclados con una salsa cremosa de huevo, queso parmesano, panceta o tocino y pimienta negra.	Spaghetti, huevos, queso parmesano rallado, panceta o tocino, pimienta negra.	11000	210
Tacos al Pastor	Tacos mexicanos rellenos de carne de cerdo marinada con especias y piña asada, servidos con cilantro y cebolla.	Tortillas de maíz, carne de cerdo marinada, piña, cilantro, cebolla, salsa de tomate.	16000	211
Risotto	Arroz italiano cremoso cocido lentamente en caldo y mezclado con champiñones, espárragos y queso parmesano.	Arroz arborio, caldo de verduras, champiñones, espárragos, cebolla, ajo, vino blanco, queso parmesano.	20000	212
Hamburguesa con Queso	Una jugosa hamburguesa de carne de res, servida en un pan sin gluten con queso cheddar derretido, lechuga, tomate y cebolla.	Carne de res molida, pan sin gluten, queso cheddar, lechuga, tomate, cebolla, condimentos (ketchup, mostaza, etc.).	18000	213
Pad Thai	Fideos de arroz salteados con camarones, tofu o pollo, y mezclados con huevo, brotes de soja, cacahuetes y salsa de tamarindo.	Fideos de arroz, camarones/tofu/pollo, huevo, brotes de soja, cebollas verdes, cacahuetes, salsa de tamarindo, azúcar, salsa de pescado.	11000	214
Lasaña	Capas de pasta cocida al horno con salsa de tomate, carne molida, queso ricotta y mozzarella, cubiertas con queso parmesano.	Pasta para lasaña, carne molida, salsa de tomate, queso ricotta, queso mozzarella, queso parmesano, hierbas italianas.	15000	215
Burritos	Tortillas de harina rellenas de arroz, frijoles, carne de res desmenuzada, queso, lechuga y salsa.	Tortillas de harina, arroz, frijoles, carne de res desmenuzada, queso, lechuga, salsa (salsa de tomate, salsa picante, etc.).	16000	216
Bistec a la Parrilla	Un filete de carne de res jugoso y tierno, marinado y luego a la parrilla a la perfección.	Bistec de carne de res, sal, pimienta, hierbas secas (opcional), aceite de oliva.	7000	217
Fideos Ramen	Fideos japoneses servidos en un caldo caliente, acompañados de diferentes guarniciones como cerdo, huevo, cebolla verde y alga nori.	Fideos ramen, caldo de huesos de cerdo o pollo, cerdo cocido o chashu, huevo cocido, cebolla verde, alga nori, brotes de bambú, maíz, pasta miso (opcional).	19000	218
Moussaka	Un plato griego similar a lasaña, hecho con capas de berenjenas, carne picada (generalmente cordero), salsa de tomate y bechamel.	Berenjenas, carne picada de cordero o res, cebolla, ajo, tomates, salsa de tomate, harina, leche, mantequilla, queso rallado, nuez moscada.	13000	219
Pollo a la Naranja	Trozos de pollo marinados y cocidos en una salsa dulce y picante de naranja, servidos con arroz blanco.	Pollo, jugo de naranja, salsa de soja, miel, jengibre, ajo, almidón de maíz, arroz blanco.	18000	220
Pescado a la Parrilla	Filetes de pescado sazonados y cocidos a la parrilla hasta que estén tiernos y dorados, servidos con una guarnición de vegetales	Filetes de pescado (como salmón, lubina o trucha), aceite de oliva, sal, pimienta, limón, vegetales para acompañar (zanahorias, brócoli, espárragos, etc.).	8000	221
Shawarma	Carne marinada, generalmente cordero, pollo o ternera, asada verticalmente y luego rebanada finamente, servida en pan de pita con ensaladas y salsas.	Carne de cordero, pollo o ternera, yogur, limón, ajo, comino, pimienta, pan de pita, lechuga, tomate, cebolla, tahini, salsa de yogur.	11000	222
Chili con Carne	Un guiso picante de carne molida, frijoles, tomates y especias, servido tradicionalmente con arroz o pan de maíz.	Carne molida de res, frijoles rojos, tomates, cebolla, pimiento, ajo, chiles, comino, orégano, caldo de carne, sal, pimienta.	5000	223
Dim Sum	Una variedad de bocados chinos pequeños y sabrosos, que pueden incluir dumplings, bollos al vapor, rollos de primavera y más.	Varían según el tipo de dim sum, pero pueden incluir carne de cerdo, camarones, cangrejo, vegetales, masa de harina de trigo o arroz, condimentos y salsas.	6000	224
Tarta de Manzana	Una tarta dulce hecha con una base de masa quebrada, rellena de manzanas cortadas y sazonadas con canela y azúcar.	Masa quebrada, manzanas, azúcar, canela, harina, mantequilla, huevo (para barnizar).	19000	225
Camarones al Ajillo	Camarones salteados en aceite de oliva con ajo picado, perejil y chiles rojos, servidos con pan para mojar en la deliciosa salsa.	Camarones, aceite de oliva, ajo, perejil, chiles rojos secos, sal, pimienta.	15000	226
Kebab	Trozos de carne (generalmente cordero, pollo o ternera) marinados y asados en un pincho, servidos en pan pita con verduras y salsas.	Carne marinada, pan de pita, lechuga, tomate, cebolla, pepino, salsas (tahini, salsa de yogur, etc.).	14000	227
Fajitas	Tiras de carne (generalmente pollo, ternera o cerdo) salteadas con pimientos y cebollas, servidas en tortillas de harina con acompañamientos como queso, guacamole y crema agria.	Carne (pollo, ternera, cerdo), pimientos, cebollas, tortillas de harina, queso, guacamole, crema agria, condimentos (comino, chile en polvo, etc.).	14000	228
Bacalao al Pil Pil	Un plato español en el que el bacalao se cocina lentamente en aceite de oliva con ajo, creando una salsa emulsionada.	Bacalao, aceite de oliva, ajo, guindilla (opcional).	18000	229
Arroz con Pollo	Un plato de arroz cocido con trozos de pollo, verduras y especias, típico de muchas cocinas del mundo.	Arroz, pollo, cebolla, pimiento, ajo, guisantes, zanahoria, caldo de pollo, azafrán, sal, pimienta.	18000	230
Tortilla Española	Un plato español clásico hecho con huevos batidos y papas fritas, cocido en una sartén hasta que esté dorado por fuera y tierno por dentro.	Huevos, papas, cebolla, aceite de oliva, sal.	8000	231
Chiles Rellenos	Chile poblano asado y pelado, relleno de queso o una mezcla de carne molida, arroz y especias, luego frito o horneado.	Chile poblano, queso, carne molida, arroz, tomates, cebolla, ajo, especias.	19000	232
Pasta Primavera	Pasta italiana con una variedad de verduras de temporada, como zanahorias, calabacines, tomates cherry y espárragos, en una salsa ligera.	Pasta, zanahorias, calabacines, tomates cherry, espárragos, ajo, aceite de oliva, hierbas frescas (albahaca, perejil), queso parmesano (opcional).	6000	233
Pollo Teriyaki	Trozos de pollo marinados en salsa teriyaki (a base de salsa de soja, mirin y azúcar), luego asados o salteados.	Pollo, salsa de soja, mirin, sake (opcional), azúcar, ajo, jengibre, aceite de sésamo, semillas de sésamo (para decorar).	10000	234
Poutine	Un plato canadiense que consiste en papas fritas cubiertas con queso en trozos y cubiertas con salsa de carne.	Papas, queso en trozos (tradicionalmente queso en grano), salsa de carne (generalmente salsa gravy).	14000	235
Tamales	Maíz molido mezclado con manteca de cerdo, relleno de carne, pollo, queso o frijoles, envuelto en hojas de maíz y cocido al vapor.	Masa de maíz, manteca de cerdo, relleno (carne, pollo, queso, frijoles), hojas de maíz.	12000	236
Pastrami Sandwich	Rebanadas de carne de vacuno pastrami entre rebanadas de pan, a menudo con mostaza y pepinillos.	Carne de vacuno pastrami, pan, mostaza, pepinillos.	12000	237
Pollo a la Parmesana	Filete de pollo empanizado, cubierto con salsa de tomate y queso mozzarella, gratinado al horno.	Pechuga de pollo, pan rallado, queso parmesano, huevos, salsa de tomate, queso mozzarella.	13000	238
Ratatouille	Un guiso francés de vegetales como berenjena, calabacín, tomates y pimientos, cocidos lentamente con hierbas provenzales.	Berenjena, calabacín, tomates, pimientos, cebolla, ajo, aceite de oliva, hierbas provenzales (tomillo, orégano, albahaca), sal, pimienta.	16000	239
Salmón al Horno	Filete de salmón sazonado y horneado hasta que esté tierno y escamoso.	Filete de salmón, aceite de oliva, sal, pimienta, hierbas (opcional), rodajas de limón (para decorar).	7000	240
Gyros	Rodajas finas de "carne" vegana o de tofu sazonadas con especias griegas, servidas en pan pita con vegetales y salsa de yogur (opcional).	"Carne" vegana o tofu, especias griegas (orégano, comino, pimienta, etc.), pan pita, lechuga, tomate, cebolla, salsa de yogur (opcional).	17000	241
Pollo Tikka Masala	Trozos de pollo marinados y cocidos en una salsa cremosa de tomate, yogur y especias indias.	Pollo, yogur, tomates, cebolla, ajo, jengibre, chiles, especias garam masala (cúrcuma, comino, cilantro, etc.), crema, cilantro fresco.	7000	242
Carne Asada	Filete de carne (generalmente de res) marinado y asado a la parrilla o en el horno.	Filete de carne (res), marinada (aceite de oliva, ajo, limón, cilantro, etc.), sal, pimienta.	6000	243
Fideuà	Un plato similar a la paella, pero hecho con fideos en lugar de arroz, generalmente con mariscos y vegetales.	Fideos, caldo de pescado, mariscos (gambas, mejillones, calamares), pimientos, cebolla, ajo, tomate, azafrán, aceite de oliva.	19000	244
Tortellini	Pasta fresca en forma de pequeños sombreros rellenos de carne, queso o espinacas.	Masa de pasta (harina, huevos, agua, sal), relleno (carne, queso, espinacas), salsa (salsa de tomate, crema, mantequilla y salvia).	15000	245
Tom Yum	Una sopa picante y ácida de la cocina tailandesa, generalmente hecha con camarones, setas y hierbas aromáticas.	Caldo de pollo o de camarón, limoncillo, galanga, hojas de lima kaffir, chiles, camarones, setas, salsa de pescado, jugo de lima, cilantro.	9000	246
Croquetas de Jamón	Bolitas fritas de masa de bechamel y jamón serrano.	Jamón serrano, harina, mantequilla, leche, pan rallado, huevo, aceite de oliva.	12000	247
Coq au Vin	Un guiso francés de pollo cocido en vino tinto con champiñones, cebollas y hierbas.	Pollo, vino tinto, champiñones, cebolla, ajo, zanahorias, caldo de pollo, tomillo, laurel.	6000	248
Arroz Frito	Arroz salteado en un wok con vegetales, huevos y trozos de carne (opcional), sazonado con salsa de soja.	Arroz cocido, vegetales (guisantes, zanahorias, cebollas), huevos, carne (opcional), salsa de soja, aceite de sésamo.	19000	249
Biryani	Un plato de arroz aromático de origen indio, cocido con especias, carne (generalmente pollo o cordero) y a menudo se complementa con frutos secos y hierbas frescas.	Arroz basmati, pollo o cordero, cebolla, yogur, tomates, jengibre, ajo, especias (cúrcuma, comino, canela, clavo de olor), frutos secos (almendras, pasas), cilantro fresco.	11000	250
Falafel	Bolitas fritas de garbanzos o habas sazonadas con especias, servidas generalmente en pan de pita con ensalada y salsa tahini.	Garbanzos, cilantro, perejil, cebolla, ajo, comino, cilantro en polvo, harina de garbanzo, aceite para freír.	16000	251
Goulash	Un guiso húngaro rico y reconfortante hecho con carne (tradicionalmente de res), cebollas, pimientos y paprika, servido con pan o pasta.	Carne de res, cebolla, pimientos, tomate, pimentón ahumado, caldo de carne, aceite de oliva, sal, pimienta.	15000	252
Ravioli	Pasta rellena de forma cuadrada u ovalada, tradicionalmente rellena de queso, carne o espinacas	Masa de pasta (harina, huevos, sal), relleno (queso ricotta, espinacas, carne, etc.), salsa (salsa de tomate, salsa de crema, etc.).	6000	253
Tempura	Vegetales o mariscos enharinados y fritos brevemente en aceite, un plato japonés popular.	Vegetales (brotes de brócoli, pimientos, calabacín), camarones o pescado blanco, harina de tempura, agua fría, aceite para freír.	12000	254
Churrasco	Tiras de carne asadas a la parrilla, especialmente populares en América Latina.	Carne (generalmente carne de res), sal, pimienta, adobo (opcional).	19000	255
Sopa de Cebolla	Una sopa francesa reconfortante y rica, hecha con cebollas caramelizadas, caldo de carne y vino blanco, cubierto con pan y queso gratinado.	Cebollas, caldo de carne, vino blanco, mantequilla, harina, pan, queso Gruyère.	10000	256
Estofado de Ternera	Un guiso lento de carne de ternera cocida con vegetales en un rico caldo.	Carne de ternera, cebolla, zanahoria, apio, caldo de carne, vino tinto, tomates, hierbas (tomillo, laurel), aceite de oliva.	14000	257
Pollo Katsu	Filete de pechuga de pollo empanizado, frito y cortado en rebanadas, servido con salsa de curry o salsa tonkatsu.	Pechuga de pollo, pan rallado, harina, huevo, aceite para freír, salsa de curry o salsa tonkatsu.	9000	258
Frittata	 Una especie de tortilla italiana hecha con huevos batidos y diversos ingredientes como verduras, queso, carne o mariscos.	Huevos, verduras (pimientos, cebollas, espinacas), queso (parmesano, mozzarella), carne o mariscos (opcional), aceite de oliva.	10000	260
Pescado en Papillote	Filetes de pescado cocidos al vapor en un paquete de papel de aluminio o pergamino, generalmente con vegetales y hierbas.	Filetes de pescado (como salmón o lubina), verduras (zanahorias, pimientos, calabacín), hierbas (tomillo, perejil), aceite de oliva, limón.	16000	261
Albóndigas	Bolas de masa cocidas y generalmente servidas en salsa, comúnmente hechas con carne, pero también hay versiones vegetarianas.	Carne molida (res, cerdo, pollo), cebolla, ajo, pan rallado, huevo, especias.	20000	262
Tiramisú	Un postre italiano hecho con capas de bizcochos de soletilla empapados en café y crema de mascarpone.	Bizcochos de soletilla, café espresso, queso mascarpone, huevos, azúcar, cacao en polvo.	18000	263
Kofta	Brochetas de carne picada sazonada y generalmente asada o a la parrilla, popular en la cocina del Medio Oriente y del sur de Asia.	Carne molida (cordero, res, pollo o pavo), cebolla, ajo, perejil, comino, cilantro, canela, nuez moscada, sal.	7000	264
Fish and Chips	Trozos de pescado empanizados y fritos, servidos con papas fritas, un plato clásico de la cocina británica.	Filetes de pescado blanco (merluza, bacalao), harina, levadura, cerveza (opcional), papas, aceite para freír.	15000	265
Pollo Marsala	Filetes de pollo cocidos en una salsa rica y cremosa de vino marsala, champiñones y hierbas.	Pechugas de pollo, champiñones, vino marsala, caldo de pollo, crema, harina, mantequilla, perejil.	16000	266
Jambalaya	Un plato de arroz picante de la cocina cajún y criolla de Luisiana, generalmente cocido con salchichas, pollo, mariscos y una variedad de vegetales.	Arroz, salchichas ahumadas, pollo, camarones o langostinos, tomates, pimientos, apio, cebolla, ajo, especias cajún.	9000	267
Asado	Un plato chileno de carne asada a la parrilla, típicamente servida con ensaladas y papas fritas.	Carne (como vacuno o cerdo), sal, pimienta, papas, vegetales para ensalada (lechuga, tomate, cebolla), aderezos (opcional).	4000	268
Huevo Ranchero	Huevos fritos sobre una tortilla de maíz con salsa de tomate y chiles, un desayuno tradicional mexicano.	Huevos, tortillas de maíz, salsa de tomate, chiles (jalapeños o serranos), cebolla, cilantro.	15000	269
Carpaccio	Finas láminas de carne cruda (generalmente de res) marinadas y servidas con aderezos como aceite de oliva, limón y queso parmesano.	Filete de res, aceite de oliva, jugo de limón, queso parmesano, rúcula (opcional), sal, pimienta.	7000	270
Ensalada César	Una ensalada clásica con lechuga romana, crutones, queso parmesano y aderezo César.	Lechuga romana, crutones, queso parmesano, aceite de oliva, ajo, mostaza Dijon, salsa Worcestershire, jugo de limón, anchoas (opcional), huevo, sal, pimienta.	11000	271
Sopa de Lentejas	Una sopa reconfortante hecha con lentejas cocidas, generalmente con verduras como zanahorias, cebollas y apio.	Lentejas, cebolla, zanahoria, apio, ajo, tomate, caldo de verduras, aceite de oliva, especias (comino, pimentón, laurel), sal, pimienta.	19000	272
Tagliatelle	Pasta larga y plana, similar a los fettuccine, originaria de la cocina italiana.	Harina de trigo, huevos, sal, agua (opcional para ajustar la consistencia de la masa).	13000	273
Torta de Chocolate	Un postre decadente hecho con una base de bizcocho de chocolate y cubierto con ganache de chocolate.	Harina de almendras, cacao en polvo, azúcar, huevos, mantequilla, chocolate negro, crema para batir, extracto de vainilla.	8000	274
Pastel de Choclo	Un pastel chileno hecho con una base de puré de maíz (choclo) y relleno con una mezcla de carne, pollo, cebolla y aceitunas (versión tradicional) o vegetales (versión vegana).	Maíz desgranado (choclo), cebolla, pimiento rojo, aceitunas (opcional), aceite de oliva, sal, azúcar, hojas de maíz para envolver.	19000	275
Estofado de Cordero	Un guiso sabroso hecho con carne de cordero cocida lentamente con vegetales en un caldo aromático.	Carne de cordero, cebolla, zanahoria, apio, tomate, caldo de cordero o de verduras, vino tinto (opcional), hierbas (romero, tomillo), aceite de oliva, sal, pimienta.	5000	276
Crepes Suzette	Crepes flambéados en una salsa de naranja y Grand Marnier, un clásico postre francés.	Crepes (harina, huevos, leche, mantequilla), naranjas, azúcar, mantequilla, Grand Marnier (u otro licor de naranja), ralladura de naranja.	5000	277
Pollo al Horno	Pechugas de pollo sazonadas y horneadas hasta que estén tiernas y doradas.	Pechugas de pollo, aceite de oliva, sal, pimienta, hierbas aromáticas (tomillo, romero, etc.).	5000	279
Samosas	Empanadillas fritas o al horno rellenas de una mezcla de verduras, papas y especias, típicas de la cocina india.	Masa para empanadillas (harina, agua, aceite, sal), relleno (papas, guisantes, zanahorias, cebolla, especias como comino, cúrcuma, garam masala), aceite para freír.	7000	280
Tacos de Pescado	Filetes de pescado empanizados y fritos, servidos en tortillas de maíz con aderezos como repollo rallado, salsa de crema y cilantro.	Filetes de pescado (como tilapia o mahi-mahi), harina de maíz, huevo, aceite para freír, tortillas de maíz, repollo rallado, salsa de crema, cilantro, limón.	10000	281
Fajitas de Pollo	Tiras de pollo marinadas y asadas, generalmente servidas con tiras de pimientos y cebollas en tortillas de harina.	Pollo, pimientos, cebolla, tortillas de harina, especias para fajitas (comino, pimentón, chile en polvo), aceite de oliva.	7000	283
Ensalada Caprese	Una ensalada italiana clásica hecha con tomates frescos, mozzarella de búfala, hojas de albahaca y aceite de oliva.	Tomates maduros, mozzarella de búfala (o queso vegano tipo mozzarella), hojas de albahaca fresca, aceite de oliva virgen extra, vinagre balsámico, sal, pimienta.	9000	284
Sopa Minestrone	Una sopa italiana rica y abundante llena de verduras, frijoles y pasta.	Caldo de verduras, tomates, zanahorias, apio, cebolla, judías verdes, judías blancas, pasta (como codos o espaguetis rotos), aceite de oliva, hierbas frescas (albahaca, perejil), sal, pimienta.	14000	285
Quiche Lorraine	Un pastel salado francés hecho con una masa de hojaldre rellena de una mezcla de huevos batidos, crema, tocino y queso.	Masa para quiche (harina, mantequilla, agua, sal), huevos, crema de leche (o alternativa vegana), tocino vegano (opcional), queso vegano rallado, sal, pimienta, nuez moscada.	12000	286
Carpaccio de Salmón	Finas láminas de salmón crudo marinadas con aceite de oliva, jugo de limón, eneldo y alcaparras, servidas como aperitivo.	Filete de salmón fresco, aceite de oliva, jugo de limón, eneldo fresco, alcaparras, rúcula (para servir).	11000	287
Pato Pekinés	 Un plato chino de pato asado servido con panqueques finos, salsa hoisin, cebollino y pepino en juliana.	Pato, panqueques para pato pekinés (o tortillas de harina), salsa hoisin, cebollino, pepino, cebolla verde.	15000	288
Crema de Mariscos	Una sopa cremosa hecha con una variedad de mariscos como camarones, mejillones y calamares, cocidos en caldo de pescado con verduras.	Caldo de pescado, camarones, mejillones, calamares, cebolla, zanahoria, apio, patatas, leche de coco (o crema de coco), sal, pimienta.	13000	289
Filete Wellington	Un filete de ternera cubierto con foie gras (o un relleno vegetal), envuelto en hojaldre y horneado.	Filete de ternera, hojaldre (asegúrate de que sea vegano), foie gras vegano o un relleno vegetal como champiñones y espinacas, huevo batido (o alternativa vegana), sal, pimienta.	16000	290
Pasta Alfredo	Una pasta cremosa y reconfortante hecha con una salsa a base de mantequilla, crema y queso parmesano.	Pasta (como fettuccine), mantequilla, crema espesa, queso parmesano rallado, ajo, nuez moscada, perejil fresco, sal, pimienta.	17000	292
Croquetas de Jamón	Bolitas fritas de masa de bechamel y jamón serrano.	Jamón serrano, harina, mantequilla, leche, pan rallado, huevo, aceite de oliva.	18000	293
Ratatouille	Un guiso francés tradicionalmente hecho con una variedad de vegetales de verano como berenjenas, calabacines, tomates, pimientos y cebollas, cocidos lentamente en aceite de oliva con hierbas provenzales.	Berenjenas, calabacines, tomates, pimientos (rojos y verdes), cebollas, ajo, aceite de oliva, tomate triturado (o salsa de tomate), hierbas provenzales (tomillo, orégano, albahaca), sal, pimienta.	7000	294
Pollo a la Crema	Una receta clásica en la que los filetes de pollo se cocinan en una salsa cremosa y aromática, a menudo con champiñones y hierbas.	Pechugas de pollo, champiñones, cebolla, ajo, caldo de pollo, crema de leche, vino blanco (opcional), mantequilla, harina (para espesar la salsa), perejil, sal, pimienta.	17000	295
Pastel de Carne	Plato reconfortante, compuesto por una mezcla de carne picada sazonada y otros ingredientes	Carne picada (de res, cerdo, o una mezcla), cebolla, ajo, zanahoria, apio, perejil, pan rallado o migas de pan, huevo, leche, mostaza (opcional), salsa Worcestershire, sal y pimienta, aceite de oliva.	4000	296
Moussaka	Plato tradicional de la cocina griega, consistente en capas de berenjena, carne picada de cordero o res sazonada, cubierta con una salsa de tomate y bechamel, horneada hasta que esté dorada y burbujeante.	Berenjena, carne picada de cordero o res, salsa de tomate, bechamel, cebolla, ajo, aceite de oliva, sal y pimienta, orégano, queso rallado (opcional, para gratinar).	9000	297
Sándwich Cubano	Un clásico de la cocina caribeña, compuesto por capas de jamón, cerdo asado, queso suizo, pepinillos y mostaza, todo prensado entre dos rebanadas de pan cubano y tostado.	Jamón, cerdo asado, queso suizo, pepinillos, mostaza, pan cubano.	10000	298
Ensalada Griega	Ensalada fresca y saludable de la cocina griega, compuesta por pepino, tomate, cebolla roja, aceitunas kalamata, queso feta, aderezada con aceite de oliva, orégano y zumo de limón.	Pepino, tomate, cebolla roja, aceitunas kalamata, queso feta, aceite de oliva, orégano, zumo de limón.	17000	299
Carne en Salsa	Trozos de carne tierna cocidos lentamente en una salsa aromática y sabrosa, a menudo a base de tomate, cebolla, ajo, hierbas y especias.	Carne, tomate, cebolla, ajo, hierbas (laurel, tomillo, orégano), especias (pimienta, comino), caldo de carne, aceite de oliva, sal.	13000	300
Canelones	Plato italiano relleno de pasta de lasaña enrollada con carne picada, espinacas, ricotta, y cubierto con salsa de tomate y bechamel.	Pasta para canelones, carne picada, espinacas, ricotta, salsa de tomate, bechamel, queso rallado, ajo, cebolla, sal y pimienta.	6000	302
DCCHamburguer	Hamburguesa con palta, tomate, mayonesa, rica para pasar la hora de almuerzo	hamburguesa, palta, tomate, mayonesa	5000	303
Sushi	Una selección de rollitos de sushi tradicionales japoneses, servidos con wasabi y jengibre encurtido.	Arroz de sushi, algas nori, pescado crudo (como salmón, atún o pez mantequilla), aguacate, pepino, cangrejo, vinagre de arroz, azúcar, sal	6000	304
Pizza Margarita	Una pizza clásica italiana con salsa de tomate, mozzarella fresca y albahaca fresca.	Masa de pizza, salsa de tomate, mozzarella fresca, albahaca fresca, aceite de oliva.	5000	305
Pollo al Curry	Trozos de pollo cocidos en una salsa cremosa de curry, servidos con arroz basmati.	Pollo, cebolla, ajo, jengibre, pasta de curry, leche de coco, tomates, especias (cúrcuma, comino, cilantro, etc.), arroz basmati.	12000	306
Paella	Un plato de arroz español tradicional, cocido con mariscos, pollo, chorizo y vegetales, sazonado con azafrán.	Arroz bomba, mejillones, langostinos, pollo, chorizo, pimientos, cebolla, ajo, azafrán, caldo de pescado.	15000	307
Enchiladas	Tortillas de maíz rellenas de pollo desmenuzado, cubiertas con salsa de tomate picante y queso rallado, horneadas hasta que estén doradas.	Tortillas de maíz, pollo desmenuzado, salsa de tomate, chiles jalapeños, queso rallado, crema agria, cilantro.	11000	308
Spaghetti Carbonara	Spaghetti cocidos al dente, mezclados con una salsa cremosa de huevo, queso parmesano, panceta o tocino y pimienta negra.	Spaghetti, huevos, queso parmesano rallado, panceta o tocino, pimienta negra.	16000	309
Tacos al Pastor	Tacos mexicanos rellenos de carne de cerdo marinada con especias y piña asada, servidos con cilantro y cebolla.	Tortillas de maíz, carne de cerdo marinada, piña, cilantro, cebolla, salsa de tomate.	14000	310
Risotto	Arroz italiano cremoso cocido lentamente en caldo y mezclado con champiñones, espárragos y queso parmesano.	Arroz arborio, caldo de verduras, champiñones, espárragos, cebolla, ajo, vino blanco, queso parmesano.	16000	311
Hamburguesa con Queso	Una jugosa hamburguesa de carne de res, servida en un pan sin gluten con queso cheddar derretido, lechuga, tomate y cebolla.	Carne de res molida, pan sin gluten, queso cheddar, lechuga, tomate, cebolla, condimentos (ketchup, mostaza, etc.).	11000	312
Ceviche	Trozos de pescado crudo marinados en jugo de limón, con cebolla roja, cilantro y chiles picantes.	Pescado blanco fresco (como corvina o lenguado), limón, cebolla roja, cilantro, chiles picantes, sal.	9000	313
Pad Thai	Fideos de arroz salteados con camarones, tofu o pollo, y mezclados con huevo, brotes de soja, cacahuetes y salsa de tamarindo.	Fideos de arroz, camarones/tofu/pollo, huevo, brotes de soja, cebollas verdes, cacahuetes, salsa de tamarindo, azúcar, salsa de pescado.	4000	314
Lasaña	Capas de pasta cocida al horno con salsa de tomate, carne molida, queso ricotta y mozzarella, cubiertas con queso parmesano.	Pasta para lasaña, carne molida, salsa de tomate, queso ricotta, queso mozzarella, queso parmesano, hierbas italianas.	15000	315
Burritos	Tortillas de harina rellenas de arroz, frijoles, carne de res desmenuzada, queso, lechuga y salsa.	Tortillas de harina, arroz, frijoles, carne de res desmenuzada, queso, lechuga, salsa (salsa de tomate, salsa picante, etc.).	14000	316
Bistec a la Parrilla	Un filete de carne de res jugoso y tierno, marinado y luego a la parrilla a la perfección.	Bistec de carne de res, sal, pimienta, hierbas secas (opcional), aceite de oliva.	19000	317
Fideos Ramen	Fideos japoneses servidos en un caldo caliente, acompañados de diferentes guarniciones como cerdo, huevo, cebolla verde y alga nori.	Fideos ramen, caldo de huesos de cerdo o pollo, cerdo cocido o chashu, huevo cocido, cebolla verde, alga nori, brotes de bambú, maíz, pasta miso (opcional).	8000	318
Moussaka	Un plato griego similar a lasaña, hecho con capas de berenjenas, carne picada (generalmente cordero), salsa de tomate y bechamel.	Berenjenas, carne picada de cordero o res, cebolla, ajo, tomates, salsa de tomate, harina, leche, mantequilla, queso rallado, nuez moscada.	8000	319
Pescado a la Parrilla	Filetes de pescado sazonados y cocidos a la parrilla hasta que estén tiernos y dorados, servidos con una guarnición de vegetales	Filetes de pescado (como salmón, lubina o trucha), aceite de oliva, sal, pimienta, limón, vegetales para acompañar (zanahorias, brócoli, espárragos, etc.).	20000	320
Shawarma	Carne marinada, generalmente cordero, pollo o ternera, asada verticalmente y luego rebanada finamente, servida en pan de pita con ensaladas y salsas.	Carne de cordero, pollo o ternera, yogur, limón, ajo, comino, pimienta, pan de pita, lechuga, tomate, cebolla, tahini, salsa de yogur.	5000	321
Chili con Carne	Un guiso picante de carne molida, frijoles, tomates y especias, servido tradicionalmente con arroz o pan de maíz.	Carne molida de res, frijoles rojos, tomates, cebolla, pimiento, ajo, chiles, comino, orégano, caldo de carne, sal, pimienta.	19000	322
Dim Sum	Una variedad de bocados chinos pequeños y sabrosos, que pueden incluir dumplings, bollos al vapor, rollos de primavera y más.	Varían según el tipo de dim sum, pero pueden incluir carne de cerdo, camarones, cangrejo, vegetales, masa de harina de trigo o arroz, condimentos y salsas.	19000	323
Tarta de Manzana	Una tarta dulce hecha con una base de masa quebrada, rellena de manzanas cortadas y sazonadas con canela y azúcar.	Masa quebrada, manzanas, azúcar, canela, harina, mantequilla, huevo (para barnizar).	13000	324
Camarones al Ajillo	Camarones salteados en aceite de oliva con ajo picado, perejil y chiles rojos, servidos con pan para mojar en la deliciosa salsa.	Camarones, aceite de oliva, ajo, perejil, chiles rojos secos, sal, pimienta.	9000	325
Kebab	Trozos de carne (generalmente cordero, pollo o ternera) marinados y asados en un pincho, servidos en pan pita con verduras y salsas.	Carne marinada, pan de pita, lechuga, tomate, cebolla, pepino, salsas (tahini, salsa de yogur, etc.).	20000	326
Fajitas	Tiras de carne (generalmente pollo, ternera o cerdo) salteadas con pimientos y cebollas, servidas en tortillas de harina con acompañamientos como queso, guacamole y crema agria.	Carne (pollo, ternera, cerdo), pimientos, cebollas, tortillas de harina, queso, guacamole, crema agria, condimentos (comino, chile en polvo, etc.).	15000	327
Bacalao al Pil Pil	Un plato español en el que el bacalao se cocina lentamente en aceite de oliva con ajo, creando una salsa emulsionada.	Bacalao, aceite de oliva, ajo, guindilla (opcional).	15000	328
Arroz con Pollo	Un plato de arroz cocido con trozos de pollo, verduras y especias, típico de muchas cocinas del mundo.	Arroz, pollo, cebolla, pimiento, ajo, guisantes, zanahoria, caldo de pollo, azafrán, sal, pimienta.	17000	329
Tortilla Española	Un plato español clásico hecho con huevos batidos y papas fritas, cocido en una sartén hasta que esté dorado por fuera y tierno por dentro.	Huevos, papas, cebolla, aceite de oliva, sal.	10000	330
Chiles Rellenos	Chile poblano asado y pelado, relleno de queso o una mezcla de carne molida, arroz y especias, luego frito o horneado.	Chile poblano, queso, carne molida, arroz, tomates, cebolla, ajo, especias.	15000	331
Pasta Primavera	Pasta italiana con una variedad de verduras de temporada, como zanahorias, calabacines, tomates cherry y espárragos, en una salsa ligera.	Pasta, zanahorias, calabacines, tomates cherry, espárragos, ajo, aceite de oliva, hierbas frescas (albahaca, perejil), queso parmesano (opcional).	5000	332
Pollo Teriyaki	Trozos de pollo marinados en salsa teriyaki (a base de salsa de soja, mirin y azúcar), luego asados o salteados.	Pollo, salsa de soja, mirin, sake (opcional), azúcar, ajo, jengibre, aceite de sésamo, semillas de sésamo (para decorar).	10000	333
Poutine	Un plato canadiense que consiste en papas fritas cubiertas con queso en trozos y cubiertas con salsa de carne.	Papas, queso en trozos (tradicionalmente queso en grano), salsa de carne (generalmente salsa gravy).	20000	334
Tamales	Maíz molido mezclado con manteca de cerdo, relleno de carne, pollo, queso o frijoles, envuelto en hojas de maíz y cocido al vapor.	Masa de maíz, manteca de cerdo, relleno (carne, pollo, queso, frijoles), hojas de maíz.	18000	335
Pastrami Sandwich	Rebanadas de carne de vacuno pastrami entre rebanadas de pan, a menudo con mostaza y pepinillos.	Carne de vacuno pastrami, pan, mostaza, pepinillos.	10000	336
Pollo a la Parmesana	Filete de pollo empanizado, cubierto con salsa de tomate y queso mozzarella, gratinado al horno.	Pechuga de pollo, pan rallado, queso parmesano, huevos, salsa de tomate, queso mozzarella.	5000	337
Ratatouille	Un guiso francés de vegetales como berenjena, calabacín, tomates y pimientos, cocidos lentamente con hierbas provenzales.	Berenjena, calabacín, tomates, pimientos, cebolla, ajo, aceite de oliva, hierbas provenzales (tomillo, orégano, albahaca), sal, pimienta.	18000	338
Salmón al Horno	Filete de salmón sazonado y horneado hasta que esté tierno y escamoso.	Filete de salmón, aceite de oliva, sal, pimienta, hierbas (opcional), rodajas de limón (para decorar).	16000	339
Gyros	Rodajas finas de "carne" vegana o de tofu sazonadas con especias griegas, servidas en pan pita con vegetales y salsa de yogur (opcional).	"Carne" vegana o tofu, especias griegas (orégano, comino, pimienta, etc.), pan pita, lechuga, tomate, cebolla, salsa de yogur (opcional).	15000	340
Pollo Tikka Masala	Trozos de pollo marinados y cocidos en una salsa cremosa de tomate, yogur y especias indias.	Pollo, yogur, tomates, cebolla, ajo, jengibre, chiles, especias garam masala (cúrcuma, comino, cilantro, etc.), crema, cilantro fresco.	18000	341
Carne Asada	Filete de carne (generalmente de res) marinado y asado a la parrilla o en el horno.	Filete de carne (res), marinada (aceite de oliva, ajo, limón, cilantro, etc.), sal, pimienta.	19000	342
Fideuà	Un plato similar a la paella, pero hecho con fideos en lugar de arroz, generalmente con mariscos y vegetales.	Fideos, caldo de pescado, mariscos (gambas, mejillones, calamares), pimientos, cebolla, ajo, tomate, azafrán, aceite de oliva.	7000	343
Tortellini	Pasta fresca en forma de pequeños sombreros rellenos de carne, queso o espinacas.	Masa de pasta (harina, huevos, agua, sal), relleno (carne, queso, espinacas), salsa (salsa de tomate, crema, mantequilla y salvia).	15000	344
Tom Yum	Una sopa picante y ácida de la cocina tailandesa, generalmente hecha con camarones, setas y hierbas aromáticas.	Caldo de pollo o de camarón, limoncillo, galanga, hojas de lima kaffir, chiles, camarones, setas, salsa de pescado, jugo de lima, cilantro.	20000	345
Croquetas de Jamón	Bolitas fritas de masa de bechamel y jamón serrano.	Jamón serrano, harina, mantequilla, leche, pan rallado, huevo, aceite de oliva.	15000	346
Coq au Vin	Un guiso francés de pollo cocido en vino tinto con champiñones, cebollas y hierbas.	Pollo, vino tinto, champiñones, cebolla, ajo, zanahorias, caldo de pollo, tomillo, laurel.	18000	347
Arroz Frito	Arroz salteado en un wok con vegetales, huevos y trozos de carne (opcional), sazonado con salsa de soja.	Arroz cocido, vegetales (guisantes, zanahorias, cebollas), huevos, carne (opcional), salsa de soja, aceite de sésamo.	18000	348
Biryani	Un plato de arroz aromático de origen indio, cocido con especias, carne (generalmente pollo o cordero) y a menudo se complementa con frutos secos y hierbas frescas.	Arroz basmati, pollo o cordero, cebolla, yogur, tomates, jengibre, ajo, especias (cúrcuma, comino, canela, clavo de olor), frutos secos (almendras, pasas), cilantro fresco.	14000	349
Falafel	Bolitas fritas de garbanzos o habas sazonadas con especias, servidas generalmente en pan de pita con ensalada y salsa tahini.	Garbanzos, cilantro, perejil, cebolla, ajo, comino, cilantro en polvo, harina de garbanzo, aceite para freír.	10000	350
Goulash	Un guiso húngaro rico y reconfortante hecho con carne (tradicionalmente de res), cebollas, pimientos y paprika, servido con pan o pasta.	Carne de res, cebolla, pimientos, tomate, pimentón ahumado, caldo de carne, aceite de oliva, sal, pimienta.	18000	351
Ravioli	Pasta rellena de forma cuadrada u ovalada, tradicionalmente rellena de queso, carne o espinacas	Masa de pasta (harina, huevos, sal), relleno (queso ricotta, espinacas, carne, etc.), salsa (salsa de tomate, salsa de crema, etc.).	6000	352
Tempura	Vegetales o mariscos enharinados y fritos brevemente en aceite, un plato japonés popular.	Vegetales (brotes de brócoli, pimientos, calabacín), camarones o pescado blanco, harina de tempura, agua fría, aceite para freír.	5000	353
Churrasco	Tiras de carne asadas a la parrilla, especialmente populares en América Latina.	Carne (generalmente carne de res), sal, pimienta, adobo (opcional).	5000	354
Sopa de Cebolla	Una sopa francesa reconfortante y rica, hecha con cebollas caramelizadas, caldo de carne y vino blanco, cubierto con pan y queso gratinado.	Cebollas, caldo de carne, vino blanco, mantequilla, harina, pan, queso Gruyère.	11000	355
Estofado de Ternera	Un guiso lento de carne de ternera cocida con vegetales en un rico caldo.	Carne de ternera, cebolla, zanahoria, apio, caldo de carne, vino tinto, tomates, hierbas (tomillo, laurel), aceite de oliva.	20000	356
Pollo Katsu	Filete de pechuga de pollo empanizado, frito y cortado en rebanadas, servido con salsa de curry o salsa tonkatsu.	Pechuga de pollo, pan rallado, harina, huevo, aceite para freír, salsa de curry o salsa tonkatsu.	8000	357
Frittata	 Una especie de tortilla italiana hecha con huevos batidos y diversos ingredientes como verduras, queso, carne o mariscos.	Huevos, verduras (pimientos, cebollas, espinacas), queso (parmesano, mozzarella), carne o mariscos (opcional), aceite de oliva.	20000	359
Pescado en Papillote	Filetes de pescado cocidos al vapor en un paquete de papel de aluminio o pergamino, generalmente con vegetales y hierbas.	Filetes de pescado (como salmón o lubina), verduras (zanahorias, pimientos, calabacín), hierbas (tomillo, perejil), aceite de oliva, limón.	4000	360
Albóndigas	Bolas de masa cocidas y generalmente servidas en salsa, comúnmente hechas con carne, pero también hay versiones vegetarianas.	Carne molida (res, cerdo, pollo), cebolla, ajo, pan rallado, huevo, especias.	12000	361
Tiramisú	Un postre italiano hecho con capas de bizcochos de soletilla empapados en café y crema de mascarpone.	Bizcochos de soletilla, café espresso, queso mascarpone, huevos, azúcar, cacao en polvo.	4000	362
Kofta	Brochetas de carne picada sazonada y generalmente asada o a la parrilla, popular en la cocina del Medio Oriente y del sur de Asia.	Carne molida (cordero, res, pollo o pavo), cebolla, ajo, perejil, comino, cilantro, canela, nuez moscada, sal.	17000	363
Fish and Chips	Trozos de pescado empanizados y fritos, servidos con papas fritas, un plato clásico de la cocina británica.	Filetes de pescado blanco (merluza, bacalao), harina, levadura, cerveza (opcional), papas, aceite para freír.	11000	364
Jambalaya	Un plato de arroz picante de la cocina cajún y criolla de Luisiana, generalmente cocido con salchichas, pollo, mariscos y una variedad de vegetales.	Arroz, salchichas ahumadas, pollo, camarones o langostinos, tomates, pimientos, apio, cebolla, ajo, especias cajún.	8000	365
Asado	Un plato chileno de carne asada a la parrilla, típicamente servida con ensaladas y papas fritas.	Carne (como vacuno o cerdo), sal, pimienta, papas, vegetales para ensalada (lechuga, tomate, cebolla), aderezos (opcional).	19000	366
Huevo Ranchero	Huevos fritos sobre una tortilla de maíz con salsa de tomate y chiles, un desayuno tradicional mexicano.	Huevos, tortillas de maíz, salsa de tomate, chiles (jalapeños o serranos), cebolla, cilantro.	8000	367
Carpaccio	Finas láminas de carne cruda (generalmente de res) marinadas y servidas con aderezos como aceite de oliva, limón y queso parmesano.	Filete de res, aceite de oliva, jugo de limón, queso parmesano, rúcula (opcional), sal, pimienta.	4000	368
Ensalada César	Una ensalada clásica con lechuga romana, crutones, queso parmesano y aderezo César.	Lechuga romana, crutones, queso parmesano, aceite de oliva, ajo, mostaza Dijon, salsa Worcestershire, jugo de limón, anchoas (opcional), huevo, sal, pimienta.	7000	369
Sopa de Lentejas	Una sopa reconfortante hecha con lentejas cocidas, generalmente con verduras como zanahorias, cebollas y apio.	Lentejas, cebolla, zanahoria, apio, ajo, tomate, caldo de verduras, aceite de oliva, especias (comino, pimentón, laurel), sal, pimienta.	5000	370
Tagliatelle	Pasta larga y plana, similar a los fettuccine, originaria de la cocina italiana.	Harina de trigo, huevos, sal, agua (opcional para ajustar la consistencia de la masa).	7000	371
Torta de Chocolate	Un postre decadente hecho con una base de bizcocho de chocolate y cubierto con ganache de chocolate.	Harina de almendras, cacao en polvo, azúcar, huevos, mantequilla, chocolate negro, crema para batir, extracto de vainilla.	14000	372
Pastel de Choclo	Un pastel chileno hecho con una base de puré de maíz (choclo) y relleno con una mezcla de carne, pollo, cebolla y aceitunas (versión tradicional) o vegetales (versión vegana).	Maíz desgranado (choclo), cebolla, pimiento rojo, aceitunas (opcional), aceite de oliva, sal, azúcar, hojas de maíz para envolver.	17000	373
Estofado de Cordero	Un guiso sabroso hecho con carne de cordero cocida lentamente con vegetales en un caldo aromático.	Carne de cordero, cebolla, zanahoria, apio, tomate, caldo de cordero o de verduras, vino tinto (opcional), hierbas (romero, tomillo), aceite de oliva, sal, pimienta.	8000	374
Crepes Suzette	Crepes flambéados en una salsa de naranja y Grand Marnier, un clásico postre francés.	Crepes (harina, huevos, leche, mantequilla), naranjas, azúcar, mantequilla, Grand Marnier (u otro licor de naranja), ralladura de naranja.	14000	375
Pollo al Horno	Pechugas de pollo sazonadas y horneadas hasta que estén tiernas y doradas.	Pechugas de pollo, aceite de oliva, sal, pimienta, hierbas aromáticas (tomillo, romero, etc.).	19000	377
Samosas	Empanadillas fritas o al horno rellenas de una mezcla de verduras, papas y especias, típicas de la cocina india.	Masa para empanadillas (harina, agua, aceite, sal), relleno (papas, guisantes, zanahorias, cebolla, especias como comino, cúrcuma, garam masala), aceite para freír.	5000	378
Tacos de Pescado	Filetes de pescado empanizados y fritos, servidos en tortillas de maíz con aderezos como repollo rallado, salsa de crema y cilantro.	Filetes de pescado (como tilapia o mahi-mahi), harina de maíz, huevo, aceite para freír, tortillas de maíz, repollo rallado, salsa de crema, cilantro, limón.	14000	379
Fajitas de Pollo	Tiras de pollo marinadas y asadas, generalmente servidas con tiras de pimientos y cebollas en tortillas de harina.	Pollo, pimientos, cebolla, tortillas de harina, especias para fajitas (comino, pimentón, chile en polvo), aceite de oliva.	20000	381
Ensalada Caprese	Una ensalada italiana clásica hecha con tomates frescos, mozzarella de búfala, hojas de albahaca y aceite de oliva.	Tomates maduros, mozzarella de búfala (o queso vegano tipo mozzarella), hojas de albahaca fresca, aceite de oliva virgen extra, vinagre balsámico, sal, pimienta.	17000	382
Sopa Minestrone	Una sopa italiana rica y abundante llena de verduras, frijoles y pasta.	Caldo de verduras, tomates, zanahorias, apio, cebolla, judías verdes, judías blancas, pasta (como codos o espaguetis rotos), aceite de oliva, hierbas frescas (albahaca, perejil), sal, pimienta.	10000	383
Quiche Lorraine	Un pastel salado francés hecho con una masa de hojaldre rellena de una mezcla de huevos batidos, crema, tocino y queso.	Masa para quiche (harina, mantequilla, agua, sal), huevos, crema de leche (o alternativa vegana), tocino vegano (opcional), queso vegano rallado, sal, pimienta, nuez moscada.	6000	384
Carpaccio de Salmón	Finas láminas de salmón crudo marinadas con aceite de oliva, jugo de limón, eneldo y alcaparras, servidas como aperitivo.	Filete de salmón fresco, aceite de oliva, jugo de limón, eneldo fresco, alcaparras, rúcula (para servir).	5000	385
Pato Pekinés	 Un plato chino de pato asado servido con panqueques finos, salsa hoisin, cebollino y pepino en juliana.	Pato, panqueques para pato pekinés (o tortillas de harina), salsa hoisin, cebollino, pepino, cebolla verde.	20000	386
Crema de Mariscos	Una sopa cremosa hecha con una variedad de mariscos como camarones, mejillones y calamares, cocidos en caldo de pescado con verduras.	Caldo de pescado, camarones, mejillones, calamares, cebolla, zanahoria, apio, patatas, leche de coco (o crema de coco), sal, pimienta.	14000	387
Filete Wellington	Un filete de ternera cubierto con foie gras (o un relleno vegetal), envuelto en hojaldre y horneado.	Filete de ternera, hojaldre (asegúrate de que sea vegano), foie gras vegano o un relleno vegetal como champiñones y espinacas, huevo batido (o alternativa vegana), sal, pimienta.	13000	388
Pasta Alfredo	Una pasta cremosa y reconfortante hecha con una salsa a base de mantequilla, crema y queso parmesano.	Pasta (como fettuccine), mantequilla, crema espesa, queso parmesano rallado, ajo, nuez moscada, perejil fresco, sal, pimienta.	15000	390
Ratatouille	Un guiso francés tradicionalmente hecho con una variedad de vegetales de verano como berenjenas, calabacines, tomates, pimientos y cebollas, cocidos lentamente en aceite de oliva con hierbas provenzales.	Berenjenas, calabacines, tomates, pimientos (rojos y verdes), cebollas, ajo, aceite de oliva, tomate triturado (o salsa de tomate), hierbas provenzales (tomillo, orégano, albahaca), sal, pimienta.	10000	391
Pollo a la Crema	Una receta clásica en la que los filetes de pollo se cocinan en una salsa cremosa y aromática, a menudo con champiñones y hierbas.	Pechugas de pollo, champiñones, cebolla, ajo, caldo de pollo, crema de leche, vino blanco (opcional), mantequilla, harina (para espesar la salsa), perejil, sal, pimienta.	8000	392
Pastel de Carne	Plato reconfortante, compuesto por una mezcla de carne picada sazonada y otros ingredientes	Carne picada (de res, cerdo, o una mezcla), cebolla, ajo, zanahoria, apio, perejil, pan rallado o migas de pan, huevo, leche, mostaza (opcional), salsa Worcestershire, sal y pimienta, aceite de oliva.	13000	393
Moussaka	Plato tradicional de la cocina griega, consistente en capas de berenjena, carne picada de cordero o res sazonada, cubierta con una salsa de tomate y bechamel, horneada hasta que esté dorada y burbujeante.	Berenjena, carne picada de cordero o res, salsa de tomate, bechamel, cebolla, ajo, aceite de oliva, sal y pimienta, orégano, queso rallado (opcional, para gratinar).	4000	394
Sándwich Cubano	Un clásico de la cocina caribeña, compuesto por capas de jamón, cerdo asado, queso suizo, pepinillos y mostaza, todo prensado entre dos rebanadas de pan cubano y tostado.	Jamón, cerdo asado, queso suizo, pepinillos, mostaza, pan cubano.	9000	395
Ensalada Griega	Ensalada fresca y saludable de la cocina griega, compuesta por pepino, tomate, cebolla roja, aceitunas kalamata, queso feta, aderezada con aceite de oliva, orégano y zumo de limón.	Pepino, tomate, cebolla roja, aceitunas kalamata, queso feta, aceite de oliva, orégano, zumo de limón.	10000	396
Carne en Salsa	Trozos de carne tierna cocidos lentamente en una salsa aromática y sabrosa, a menudo a base de tomate, cebolla, ajo, hierbas y especias.	Carne, tomate, cebolla, ajo, hierbas (laurel, tomillo, orégano), especias (pimienta, comino), caldo de carne, aceite de oliva, sal.	15000	397
Canelones	Plato italiano relleno de pasta de lasaña enrollada con carne picada, espinacas, ricotta, y cubierto con salsa de tomate y bechamel.	Pasta para canelones, carne picada, espinacas, ricotta, salsa de tomate, bechamel, queso rallado, ajo, cebolla, sal y pimienta.	16000	399
DCCHamburguer	Hamburguesa con palta, tomate, mayonesa, rica para pasar la hora de almuerzo	hamburguesa, palta, tomate, mayonesa	5000	400
Sushi	Una selección de rollitos de sushi tradicionales japoneses, servidos con wasabi y jengibre encurtido.	Arroz de sushi, algas nori, pescado crudo (como salmón, atún o pez mantequilla), aguacate, pepino, cangrejo, vinagre de arroz, azúcar, sal	12000	401
Pizza Margarita	Una pizza clásica italiana con salsa de tomate, mozzarella fresca y albahaca fresca.	Masa de pizza, salsa de tomate, mozzarella fresca, albahaca fresca, aceite de oliva.	16000	402
Pollo al Curry	Trozos de pollo cocidos en una salsa cremosa de curry, servidos con arroz basmati.	Pollo, cebolla, ajo, jengibre, pasta de curry, leche de coco, tomates, especias (cúrcuma, comino, cilantro, etc.), arroz basmati.	19000	403
Paella	Un plato de arroz español tradicional, cocido con mariscos, pollo, chorizo y vegetales, sazonado con azafrán.	Arroz bomba, mejillones, langostinos, pollo, chorizo, pimientos, cebolla, ajo, azafrán, caldo de pescado.	12000	404
Enchiladas	Tortillas de maíz rellenas de pollo desmenuzado, cubiertas con salsa de tomate picante y queso rallado, horneadas hasta que estén doradas.	Tortillas de maíz, pollo desmenuzado, salsa de tomate, chiles jalapeños, queso rallado, crema agria, cilantro.	16000	405
Hamburguesa con Queso	Una jugosa hamburguesa de carne de res, servida en un pan sin gluten con queso cheddar derretido, lechuga, tomate y cebolla.	Carne de res molida, pan sin gluten, queso cheddar, lechuga, tomate, cebolla, condimentos (ketchup, mostaza, etc.).	7000	406
Ceviche	Trozos de pescado crudo marinados en jugo de limón, con cebolla roja, cilantro y chiles picantes.	Pescado blanco fresco (como corvina o lenguado), limón, cebolla roja, cilantro, chiles picantes, sal.	4000	407
Pad Thai	Fideos de arroz salteados con camarones, tofu o pollo, y mezclados con huevo, brotes de soja, cacahuetes y salsa de tamarindo.	Fideos de arroz, camarones/tofu/pollo, huevo, brotes de soja, cebollas verdes, cacahuetes, salsa de tamarindo, azúcar, salsa de pescado.	20000	408
Lasaña	Capas de pasta cocida al horno con salsa de tomate, carne molida, queso ricotta y mozzarella, cubiertas con queso parmesano.	Pasta para lasaña, carne molida, salsa de tomate, queso ricotta, queso mozzarella, queso parmesano, hierbas italianas.	14000	409
Burritos	Tortillas de harina rellenas de arroz, frijoles, carne de res desmenuzada, queso, lechuga y salsa.	Tortillas de harina, arroz, frijoles, carne de res desmenuzada, queso, lechuga, salsa (salsa de tomate, salsa picante, etc.).	16000	410
Bistec a la Parrilla	Un filete de carne de res jugoso y tierno, marinado y luego a la parrilla a la perfección.	Bistec de carne de res, sal, pimienta, hierbas secas (opcional), aceite de oliva.	17000	411
Fideos Ramen	Fideos japoneses servidos en un caldo caliente, acompañados de diferentes guarniciones como cerdo, huevo, cebolla verde y alga nori.	Fideos ramen, caldo de huesos de cerdo o pollo, cerdo cocido o chashu, huevo cocido, cebolla verde, alga nori, brotes de bambú, maíz, pasta miso (opcional).	15000	412
Moussaka	Un plato griego similar a lasaña, hecho con capas de berenjenas, carne picada (generalmente cordero), salsa de tomate y bechamel.	Berenjenas, carne picada de cordero o res, cebolla, ajo, tomates, salsa de tomate, harina, leche, mantequilla, queso rallado, nuez moscada.	12000	413
Pollo a la Naranja	Trozos de pollo marinados y cocidos en una salsa dulce y picante de naranja, servidos con arroz blanco.	Pollo, jugo de naranja, salsa de soja, miel, jengibre, ajo, almidón de maíz, arroz blanco.	6000	414
Pescado a la Parrilla	Filetes de pescado sazonados y cocidos a la parrilla hasta que estén tiernos y dorados, servidos con una guarnición de vegetales	Filetes de pescado (como salmón, lubina o trucha), aceite de oliva, sal, pimienta, limón, vegetales para acompañar (zanahorias, brócoli, espárragos, etc.).	8000	415
Shawarma	Carne marinada, generalmente cordero, pollo o ternera, asada verticalmente y luego rebanada finamente, servida en pan de pita con ensaladas y salsas.	Carne de cordero, pollo o ternera, yogur, limón, ajo, comino, pimienta, pan de pita, lechuga, tomate, cebolla, tahini, salsa de yogur.	11000	416
Chili con Carne	Un guiso picante de carne molida, frijoles, tomates y especias, servido tradicionalmente con arroz o pan de maíz.	Carne molida de res, frijoles rojos, tomates, cebolla, pimiento, ajo, chiles, comino, orégano, caldo de carne, sal, pimienta.	14000	417
Dim Sum	Una variedad de bocados chinos pequeños y sabrosos, que pueden incluir dumplings, bollos al vapor, rollos de primavera y más.	Varían según el tipo de dim sum, pero pueden incluir carne de cerdo, camarones, cangrejo, vegetales, masa de harina de trigo o arroz, condimentos y salsas.	9000	418
Tarta de Manzana	Una tarta dulce hecha con una base de masa quebrada, rellena de manzanas cortadas y sazonadas con canela y azúcar.	Masa quebrada, manzanas, azúcar, canela, harina, mantequilla, huevo (para barnizar).	6000	419
Camarones al Ajillo	Camarones salteados en aceite de oliva con ajo picado, perejil y chiles rojos, servidos con pan para mojar en la deliciosa salsa.	Camarones, aceite de oliva, ajo, perejil, chiles rojos secos, sal, pimienta.	8000	420
Kebab	Trozos de carne (generalmente cordero, pollo o ternera) marinados y asados en un pincho, servidos en pan pita con verduras y salsas.	Carne marinada, pan de pita, lechuga, tomate, cebolla, pepino, salsas (tahini, salsa de yogur, etc.).	14000	421
Fajitas	Tiras de carne (generalmente pollo, ternera o cerdo) salteadas con pimientos y cebollas, servidas en tortillas de harina con acompañamientos como queso, guacamole y crema agria.	Carne (pollo, ternera, cerdo), pimientos, cebollas, tortillas de harina, queso, guacamole, crema agria, condimentos (comino, chile en polvo, etc.).	10000	422
Bacalao al Pil Pil	Un plato español en el que el bacalao se cocina lentamente en aceite de oliva con ajo, creando una salsa emulsionada.	Bacalao, aceite de oliva, ajo, guindilla (opcional).	6000	423
Arroz con Pollo	Un plato de arroz cocido con trozos de pollo, verduras y especias, típico de muchas cocinas del mundo.	Arroz, pollo, cebolla, pimiento, ajo, guisantes, zanahoria, caldo de pollo, azafrán, sal, pimienta.	17000	424
Tortilla Española	Un plato español clásico hecho con huevos batidos y papas fritas, cocido en una sartén hasta que esté dorado por fuera y tierno por dentro.	Huevos, papas, cebolla, aceite de oliva, sal.	12000	425
Chiles Rellenos	Chile poblano asado y pelado, relleno de queso o una mezcla de carne molida, arroz y especias, luego frito o horneado.	Chile poblano, queso, carne molida, arroz, tomates, cebolla, ajo, especias.	6000	426
Pasta Primavera	Pasta italiana con una variedad de verduras de temporada, como zanahorias, calabacines, tomates cherry y espárragos, en una salsa ligera.	Pasta, zanahorias, calabacines, tomates cherry, espárragos, ajo, aceite de oliva, hierbas frescas (albahaca, perejil), queso parmesano (opcional).	9000	427
Pollo Teriyaki	Trozos de pollo marinados en salsa teriyaki (a base de salsa de soja, mirin y azúcar), luego asados o salteados.	Pollo, salsa de soja, mirin, sake (opcional), azúcar, ajo, jengibre, aceite de sésamo, semillas de sésamo (para decorar).	6000	428
Poutine	Un plato canadiense que consiste en papas fritas cubiertas con queso en trozos y cubiertas con salsa de carne.	Papas, queso en trozos (tradicionalmente queso en grano), salsa de carne (generalmente salsa gravy).	8000	429
Tamales	Maíz molido mezclado con manteca de cerdo, relleno de carne, pollo, queso o frijoles, envuelto en hojas de maíz y cocido al vapor.	Masa de maíz, manteca de cerdo, relleno (carne, pollo, queso, frijoles), hojas de maíz.	12000	430
Pastrami Sandwich	Rebanadas de carne de vacuno pastrami entre rebanadas de pan, a menudo con mostaza y pepinillos.	Carne de vacuno pastrami, pan, mostaza, pepinillos.	7000	431
Pollo a la Parmesana	Filete de pollo empanizado, cubierto con salsa de tomate y queso mozzarella, gratinado al horno.	Pechuga de pollo, pan rallado, queso parmesano, huevos, salsa de tomate, queso mozzarella.	14000	432
Ratatouille	Un guiso francés de vegetales como berenjena, calabacín, tomates y pimientos, cocidos lentamente con hierbas provenzales.	Berenjena, calabacín, tomates, pimientos, cebolla, ajo, aceite de oliva, hierbas provenzales (tomillo, orégano, albahaca), sal, pimienta.	11000	433
Salmón al Horno	Filete de salmón sazonado y horneado hasta que esté tierno y escamoso.	Filete de salmón, aceite de oliva, sal, pimienta, hierbas (opcional), rodajas de limón (para decorar).	20000	434
Gyros	Rodajas finas de "carne" vegana o de tofu sazonadas con especias griegas, servidas en pan pita con vegetales y salsa de yogur (opcional).	"Carne" vegana o tofu, especias griegas (orégano, comino, pimienta, etc.), pan pita, lechuga, tomate, cebolla, salsa de yogur (opcional).	11000	435
Pollo Tikka Masala	Trozos de pollo marinados y cocidos en una salsa cremosa de tomate, yogur y especias indias.	Pollo, yogur, tomates, cebolla, ajo, jengibre, chiles, especias garam masala (cúrcuma, comino, cilantro, etc.), crema, cilantro fresco.	18000	436
Carne Asada	Filete de carne (generalmente de res) marinado y asado a la parrilla o en el horno.	Filete de carne (res), marinada (aceite de oliva, ajo, limón, cilantro, etc.), sal, pimienta.	19000	437
Empanadas	Pastelitos de masa rellenos de carne, pollo, queso o verduras, horneados o fritos.	Masa para empanadas (harina, manteca, agua, sal), relleno (carne, pollo, queso, cebolla, especias).	12000	438
Fideuà	Un plato similar a la paella, pero hecho con fideos en lugar de arroz, generalmente con mariscos y vegetales.	Fideos, caldo de pescado, mariscos (gambas, mejillones, calamares), pimientos, cebolla, ajo, tomate, azafrán, aceite de oliva.	8000	439
Tortellini	Pasta fresca en forma de pequeños sombreros rellenos de carne, queso o espinacas.	Masa de pasta (harina, huevos, agua, sal), relleno (carne, queso, espinacas), salsa (salsa de tomate, crema, mantequilla y salvia).	9000	440
Tom Yum	Una sopa picante y ácida de la cocina tailandesa, generalmente hecha con camarones, setas y hierbas aromáticas.	Caldo de pollo o de camarón, limoncillo, galanga, hojas de lima kaffir, chiles, camarones, setas, salsa de pescado, jugo de lima, cilantro.	4000	441
Coq au Vin	Un guiso francés de pollo cocido en vino tinto con champiñones, cebollas y hierbas.	Pollo, vino tinto, champiñones, cebolla, ajo, zanahorias, caldo de pollo, tomillo, laurel.	14000	442
Arroz Frito	Arroz salteado en un wok con vegetales, huevos y trozos de carne (opcional), sazonado con salsa de soja.	Arroz cocido, vegetales (guisantes, zanahorias, cebollas), huevos, carne (opcional), salsa de soja, aceite de sésamo.	19000	443
Biryani	Un plato de arroz aromático de origen indio, cocido con especias, carne (generalmente pollo o cordero) y a menudo se complementa con frutos secos y hierbas frescas.	Arroz basmati, pollo o cordero, cebolla, yogur, tomates, jengibre, ajo, especias (cúrcuma, comino, canela, clavo de olor), frutos secos (almendras, pasas), cilantro fresco.	4000	444
Falafel	Bolitas fritas de garbanzos o habas sazonadas con especias, servidas generalmente en pan de pita con ensalada y salsa tahini.	Garbanzos, cilantro, perejil, cebolla, ajo, comino, cilantro en polvo, harina de garbanzo, aceite para freír.	20000	445
Goulash	Un guiso húngaro rico y reconfortante hecho con carne (tradicionalmente de res), cebollas, pimientos y paprika, servido con pan o pasta.	Carne de res, cebolla, pimientos, tomate, pimentón ahumado, caldo de carne, aceite de oliva, sal, pimienta.	13000	446
Ravioli	Pasta rellena de forma cuadrada u ovalada, tradicionalmente rellena de queso, carne o espinacas	Masa de pasta (harina, huevos, sal), relleno (queso ricotta, espinacas, carne, etc.), salsa (salsa de tomate, salsa de crema, etc.).	10000	447
Tempura	Vegetales o mariscos enharinados y fritos brevemente en aceite, un plato japonés popular.	Vegetales (brotes de brócoli, pimientos, calabacín), camarones o pescado blanco, harina de tempura, agua fría, aceite para freír.	20000	448
Churrasco	Tiras de carne asadas a la parrilla, especialmente populares en América Latina.	Carne (generalmente carne de res), sal, pimienta, adobo (opcional).	5000	449
Sopa de Cebolla	Una sopa francesa reconfortante y rica, hecha con cebollas caramelizadas, caldo de carne y vino blanco, cubierto con pan y queso gratinado.	Cebollas, caldo de carne, vino blanco, mantequilla, harina, pan, queso Gruyère.	13000	450
Estofado de Ternera	Un guiso lento de carne de ternera cocida con vegetales en un rico caldo.	Carne de ternera, cebolla, zanahoria, apio, caldo de carne, vino tinto, tomates, hierbas (tomillo, laurel), aceite de oliva.	6000	451
Pollo Katsu	Filete de pechuga de pollo empanizado, frito y cortado en rebanadas, servido con salsa de curry o salsa tonkatsu.	Pechuga de pollo, pan rallado, harina, huevo, aceite para freír, salsa de curry o salsa tonkatsu.	5000	452
Frittata	 Una especie de tortilla italiana hecha con huevos batidos y diversos ingredientes como verduras, queso, carne o mariscos.	Huevos, verduras (pimientos, cebollas, espinacas), queso (parmesano, mozzarella), carne o mariscos (opcional), aceite de oliva.	7000	454
Pescado en Papillote	Filetes de pescado cocidos al vapor en un paquete de papel de aluminio o pergamino, generalmente con vegetales y hierbas.	Filetes de pescado (como salmón o lubina), verduras (zanahorias, pimientos, calabacín), hierbas (tomillo, perejil), aceite de oliva, limón.	13000	455
Albóndigas	Bolas de masa cocidas y generalmente servidas en salsa, comúnmente hechas con carne, pero también hay versiones vegetarianas.	Carne molida (res, cerdo, pollo), cebolla, ajo, pan rallado, huevo, especias.	12000	456
Tiramisú	Un postre italiano hecho con capas de bizcochos de soletilla empapados en café y crema de mascarpone.	Bizcochos de soletilla, café espresso, queso mascarpone, huevos, azúcar, cacao en polvo.	16000	457
Kofta	Brochetas de carne picada sazonada y generalmente asada o a la parrilla, popular en la cocina del Medio Oriente y del sur de Asia.	Carne molida (cordero, res, pollo o pavo), cebolla, ajo, perejil, comino, cilantro, canela, nuez moscada, sal.	18000	458
Fish and Chips	Trozos de pescado empanizados y fritos, servidos con papas fritas, un plato clásico de la cocina británica.	Filetes de pescado blanco (merluza, bacalao), harina, levadura, cerveza (opcional), papas, aceite para freír.	16000	459
Pollo Marsala	Filetes de pollo cocidos en una salsa rica y cremosa de vino marsala, champiñones y hierbas.	Pechugas de pollo, champiñones, vino marsala, caldo de pollo, crema, harina, mantequilla, perejil.	20000	460
Jambalaya	Un plato de arroz picante de la cocina cajún y criolla de Luisiana, generalmente cocido con salchichas, pollo, mariscos y una variedad de vegetales.	Arroz, salchichas ahumadas, pollo, camarones o langostinos, tomates, pimientos, apio, cebolla, ajo, especias cajún.	8000	461
Asado	Un plato chileno de carne asada a la parrilla, típicamente servida con ensaladas y papas fritas.	Carne (como vacuno o cerdo), sal, pimienta, papas, vegetales para ensalada (lechuga, tomate, cebolla), aderezos (opcional).	20000	462
Carpaccio	Finas láminas de carne cruda (generalmente de res) marinadas y servidas con aderezos como aceite de oliva, limón y queso parmesano.	Filete de res, aceite de oliva, jugo de limón, queso parmesano, rúcula (opcional), sal, pimienta.	8000	463
Ensalada César	Una ensalada clásica con lechuga romana, crutones, queso parmesano y aderezo César.	Lechuga romana, crutones, queso parmesano, aceite de oliva, ajo, mostaza Dijon, salsa Worcestershire, jugo de limón, anchoas (opcional), huevo, sal, pimienta.	8000	464
Sopa de Lentejas	Una sopa reconfortante hecha con lentejas cocidas, generalmente con verduras como zanahorias, cebollas y apio.	Lentejas, cebolla, zanahoria, apio, ajo, tomate, caldo de verduras, aceite de oliva, especias (comino, pimentón, laurel), sal, pimienta.	8000	465
Tagliatelle	Pasta larga y plana, similar a los fettuccine, originaria de la cocina italiana.	Harina de trigo, huevos, sal, agua (opcional para ajustar la consistencia de la masa).	14000	466
Torta de Chocolate	Un postre decadente hecho con una base de bizcocho de chocolate y cubierto con ganache de chocolate.	Harina de almendras, cacao en polvo, azúcar, huevos, mantequilla, chocolate negro, crema para batir, extracto de vainilla.	6000	467
Pastel de Choclo	Un pastel chileno hecho con una base de puré de maíz (choclo) y relleno con una mezcla de carne, pollo, cebolla y aceitunas (versión tradicional) o vegetales (versión vegana).	Maíz desgranado (choclo), cebolla, pimiento rojo, aceitunas (opcional), aceite de oliva, sal, azúcar, hojas de maíz para envolver.	11000	468
Estofado de Cordero	Un guiso sabroso hecho con carne de cordero cocida lentamente con vegetales en un caldo aromático.	Carne de cordero, cebolla, zanahoria, apio, tomate, caldo de cordero o de verduras, vino tinto (opcional), hierbas (romero, tomillo), aceite de oliva, sal, pimienta.	17000	469
Crepes Suzette	Crepes flambéados en una salsa de naranja y Grand Marnier, un clásico postre francés.	Crepes (harina, huevos, leche, mantequilla), naranjas, azúcar, mantequilla, Grand Marnier (u otro licor de naranja), ralladura de naranja.	16000	470
Pollo al Horno	Pechugas de pollo sazonadas y horneadas hasta que estén tiernas y doradas.	Pechugas de pollo, aceite de oliva, sal, pimienta, hierbas aromáticas (tomillo, romero, etc.).	15000	472
Samosas	Empanadillas fritas o al horno rellenas de una mezcla de verduras, papas y especias, típicas de la cocina india.	Masa para empanadillas (harina, agua, aceite, sal), relleno (papas, guisantes, zanahorias, cebolla, especias como comino, cúrcuma, garam masala), aceite para freír.	19000	473
Tacos de Pescado	Filetes de pescado empanizados y fritos, servidos en tortillas de maíz con aderezos como repollo rallado, salsa de crema y cilantro.	Filetes de pescado (como tilapia o mahi-mahi), harina de maíz, huevo, aceite para freír, tortillas de maíz, repollo rallado, salsa de crema, cilantro, limón.	16000	474
Fajitas de Pollo	Tiras de pollo marinadas y asadas, generalmente servidas con tiras de pimientos y cebollas en tortillas de harina.	Pollo, pimientos, cebolla, tortillas de harina, especias para fajitas (comino, pimentón, chile en polvo), aceite de oliva.	9000	476
Ensalada Caprese	Una ensalada italiana clásica hecha con tomates frescos, mozzarella de búfala, hojas de albahaca y aceite de oliva.	Tomates maduros, mozzarella de búfala (o queso vegano tipo mozzarella), hojas de albahaca fresca, aceite de oliva virgen extra, vinagre balsámico, sal, pimienta.	8000	477
Sopa Minestrone	Una sopa italiana rica y abundante llena de verduras, frijoles y pasta.	Caldo de verduras, tomates, zanahorias, apio, cebolla, judías verdes, judías blancas, pasta (como codos o espaguetis rotos), aceite de oliva, hierbas frescas (albahaca, perejil), sal, pimienta.	4000	478
Quiche Lorraine	Un pastel salado francés hecho con una masa de hojaldre rellena de una mezcla de huevos batidos, crema, tocino y queso.	Masa para quiche (harina, mantequilla, agua, sal), huevos, crema de leche (o alternativa vegana), tocino vegano (opcional), queso vegano rallado, sal, pimienta, nuez moscada.	20000	479
Carpaccio de Salmón	Finas láminas de salmón crudo marinadas con aceite de oliva, jugo de limón, eneldo y alcaparras, servidas como aperitivo.	Filete de salmón fresco, aceite de oliva, jugo de limón, eneldo fresco, alcaparras, rúcula (para servir).	19000	480
Pato Pekinés	 Un plato chino de pato asado servido con panqueques finos, salsa hoisin, cebollino y pepino en juliana.	Pato, panqueques para pato pekinés (o tortillas de harina), salsa hoisin, cebollino, pepino, cebolla verde.	5000	481
Crema de Mariscos	Una sopa cremosa hecha con una variedad de mariscos como camarones, mejillones y calamares, cocidos en caldo de pescado con verduras.	Caldo de pescado, camarones, mejillones, calamares, cebolla, zanahoria, apio, patatas, leche de coco (o crema de coco), sal, pimienta.	11000	482
Filete Wellington	Un filete de ternera cubierto con foie gras (o un relleno vegetal), envuelto en hojaldre y horneado.	Filete de ternera, hojaldre (asegúrate de que sea vegano), foie gras vegano o un relleno vegetal como champiñones y espinacas, huevo batido (o alternativa vegana), sal, pimienta.	5000	483
Pasta Alfredo	Una pasta cremosa y reconfortante hecha con una salsa a base de mantequilla, crema y queso parmesano.	Pasta (como fettuccine), mantequilla, crema espesa, queso parmesano rallado, ajo, nuez moscada, perejil fresco, sal, pimienta.	15000	485
Ratatouille	Un guiso francés tradicionalmente hecho con una variedad de vegetales de verano como berenjenas, calabacines, tomates, pimientos y cebollas, cocidos lentamente en aceite de oliva con hierbas provenzales.	Berenjenas, calabacines, tomates, pimientos (rojos y verdes), cebollas, ajo, aceite de oliva, tomate triturado (o salsa de tomate), hierbas provenzales (tomillo, orégano, albahaca), sal, pimienta.	7000	486
Pollo a la Crema	Una receta clásica en la que los filetes de pollo se cocinan en una salsa cremosa y aromática, a menudo con champiñones y hierbas.	Pechugas de pollo, champiñones, cebolla, ajo, caldo de pollo, crema de leche, vino blanco (opcional), mantequilla, harina (para espesar la salsa), perejil, sal, pimienta.	8000	487
Moussaka	Plato tradicional de la cocina griega, consistente en capas de berenjena, carne picada de cordero o res sazonada, cubierta con una salsa de tomate y bechamel, horneada hasta que esté dorada y burbujeante.	Berenjena, carne picada de cordero o res, salsa de tomate, bechamel, cebolla, ajo, aceite de oliva, sal y pimienta, orégano, queso rallado (opcional, para gratinar).	20000	488
Sándwich Cubano	Un clásico de la cocina caribeña, compuesto por capas de jamón, cerdo asado, queso suizo, pepinillos y mostaza, todo prensado entre dos rebanadas de pan cubano y tostado.	Jamón, cerdo asado, queso suizo, pepinillos, mostaza, pan cubano.	19000	489
Ensalada Griega	Ensalada fresca y saludable de la cocina griega, compuesta por pepino, tomate, cebolla roja, aceitunas kalamata, queso feta, aderezada con aceite de oliva, orégano y zumo de limón.	Pepino, tomate, cebolla roja, aceitunas kalamata, queso feta, aceite de oliva, orégano, zumo de limón.	14000	490
Carne en Salsa	Trozos de carne tierna cocidos lentamente en una salsa aromática y sabrosa, a menudo a base de tomate, cebolla, ajo, hierbas y especias.	Carne, tomate, cebolla, ajo, hierbas (laurel, tomillo, orégano), especias (pimienta, comino), caldo de carne, aceite de oliva, sal.	11000	491
\.


--
-- Name: pl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prueba.pl_id_seq', 492, true);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prueba.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- Name: plato pl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prueba.plato
    ADD CONSTRAINT pl_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
