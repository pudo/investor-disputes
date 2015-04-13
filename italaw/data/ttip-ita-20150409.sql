--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ita_cases; Type: TABLE; Schema: public; Owner: fl; Tablespace: 
--

CREATE TABLE ita_cases (
    id integer NOT NULL,
    case_url text,
    applicable_arbitration_rules text,
    case_type text,
    title text,
    outcome text,
    amount_of_damages text,
    economic_sector text,
    country_in_which_this_occurs text
);


ALTER TABLE public.ita_cases OWNER TO fl;

--
-- Name: ita_cases_id_seq; Type: SEQUENCE; Schema: public; Owner: fl
--

CREATE SEQUENCE ita_cases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ita_cases_id_seq OWNER TO fl;

--
-- Name: ita_cases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fl
--

ALTER SEQUENCE ita_cases_id_seq OWNED BY ita_cases.id;


--
-- Name: ita_documents; Type: TABLE; Schema: public; Owner: fl; Tablespace: 
--

CREATE TABLE ita_documents (
    id integer NOT NULL
);


ALTER TABLE public.ita_documents OWNER TO fl;

--
-- Name: ita_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: fl
--

CREATE SEQUENCE ita_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ita_documents_id_seq OWNER TO fl;

--
-- Name: ita_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fl
--

ALTER SEQUENCE ita_documents_id_seq OWNED BY ita_documents.id;


--
-- Name: ita_entities; Type: TABLE; Schema: public; Owner: fl; Tablespace: 
--

CREATE TABLE ita_entities (
    id integer NOT NULL,
    type text,
    case_url text,
    entity text,
    doc_idx integer
);


ALTER TABLE public.ita_entities OWNER TO fl;

--
-- Name: ita_entities_id_seq; Type: SEQUENCE; Schema: public; Owner: fl
--

CREATE SEQUENCE ita_entities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ita_entities_id_seq OWNER TO fl;

--
-- Name: ita_entities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fl
--

ALTER SEQUENCE ita_entities_id_seq OWNED BY ita_entities.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: fl
--

ALTER TABLE ONLY ita_cases ALTER COLUMN id SET DEFAULT nextval('ita_cases_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: fl
--

ALTER TABLE ONLY ita_documents ALTER COLUMN id SET DEFAULT nextval('ita_documents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: fl
--

ALTER TABLE ONLY ita_entities ALTER COLUMN id SET DEFAULT nextval('ita_entities_id_seq'::regclass);


--
-- Data for Name: ita_cases; Type: TABLE DATA; Schema: public; Owner: fl
--

COPY ita_cases (id, case_url, applicable_arbitration_rules, case_type, title, outcome, amount_of_damages, economic_sector, country_in_which_this_occurs) FROM stdin;
1	http://www.italaw.com/cases/35	ICSID	International Investment Agreement	Abaclat and Others v. Argentine Republic, ICSID Case No. ARB/07/5 (formerly Giovanna a Beccara and Others v. The Argentine Republic) 	\N	\N	\N	\N
2	http://www.italaw.com/cases/37	ICSID	Foreign Investment Law	ABCI Investments N.V. v. Republic of Tunisia, ICSID Case No. ARB/04/12 	\N	\N	\N	\N
3	http://www.italaw.com/cases/39	\N	International Investment Agreement	AbitibiBowater Inc., v. Government of Canada	\N	\N	\N	\N
4	http://www.italaw.com/cases/41	ICSID	International Investment Agreement	ADC Affiliate Limited and ADC &amp; ADMC Management Limited v. The Republic of Hungary, ICSID Case No. ARB/03/16 	\N	\N	\N	\N
5	http://www.italaw.com/cases/43	ICSID Additional Facility	International Investment Agreement	ADF Group Inc. v. United States of America, ICSID Case No. ARB (AF)/00/1	\N	\N	\N	\N
6	http://www.italaw.com/cases/47	UNCITRAL (1976)	International Investment Agreement	Adria Beteiligungs GmbH v. The Republic of Croatia, UNCITRAL	\N	\N	\N	\N
7	http://www.italaw.com/cases/49	ICSID	International Investment Agreement	AES Corporation v. The Argentine Republic, ICSID Case No. ARB/02/17 	\N	\N	\N	\N
8	http://www.italaw.com/cases/51	ICSID	International Investment Agreement	AES Summit Generation Ltd. v. The Republic of Hungary, ICSID No. ARB/01/04	\N	\N	\N	\N
9	http://www.italaw.com/cases/56	ICSID	International Investment Agreement	African Holding Company of America, Inc. and Société Africaine de Construction au Congo S.A.R.L. v. La République démocratique du Congo, ICSID Case No. ARB/05/21	\N	\N	\N	\N
10	http://www.italaw.com/cases/57	ICSID	International Investment Agreement	Aguas del Tunari, S.A. v. Republic of Bolivia, ICSID Case No. ARB/02/3 	\N	\N	\N	\N
11	http://www.italaw.com/cases/62	ICSID	International Investment Agreement	Ahmonseto, Inc. and others v. Arab Republic of Egypt, ICSID Case No. ARB/02/15	\N	\N	\N	\N
12	http://www.italaw.com/cases/64	ICSID	International Investment Agreement	AIG Capital Partners, Inc. and CJSC Tema Real Estate Company Ltd. v. The Republic of Kazakhstan, ICSID Case No. ARB/01/6 	\N	\N	\N	\N
13	http://www.italaw.com/cases/65	SCC	International Investment Agreement	Mohammad Ammar Al-Bahloul v. The Republic of Tajikistan, SCC Case No. V (064/2008)	\N	\N	\N	\N
14	http://www.italaw.com/cases/71	ICSID	International Investment Agreement	Alpha Projektholding GmbH v. Ukraine, ICSID Case No. ARB/07/16	\N	\N	\N	\N
15	http://www.italaw.com/cases/74	UNCITRAL (1976)	International Investment Agreement	Alps Finance and Trade AG v. The Slovak Republic, UNCITRAL	\N	\N	\N	\N
16	http://www.italaw.com/cases/76	ICSID	International Investment Agreement	American Manufacturing &amp; Trading, Inc. v. Republic of Zaire, ICSID Case No. ARB/93/1 	\N	\N	\N	\N
17	http://www.italaw.com/cases/79	SCC	International Investment Agreement	Limited Liability Company Amto v. Ukraine, SCC Case No. 080/2005	\N	\N	\N	\N
18	http://www.italaw.com/cases/85	ICSID Additional Facility	International Investment Agreement	Alasdair Ross Anderson et al v. Republic of Costa Rica, ICSID Case No. ARB(AF)/07/3	\N	\N	\N	\N
19	http://www.italaw.com/cases/87	UNCITRAL (1976)	International Investment Agreement	Apotex Inc. v. The Government of the United States of America, UNCITRAL	\N	\N	\N	\N
20	http://www.italaw.com/cases/91	ICSID Additional Facility	International Investment Agreement	Archer Daniels Midland Company and Tate &amp; Lyle Ingredients Americas, Inc. v. The United Mexican States, ICSID Case No. ARB (AF)/04/5	\N	\N	\N	\N
21	http://www.italaw.com/cases/96	ICSID	International Investment Agreement	Asian Agricultural Products Ltd. v. Republic of Sri Lanka, ICSID Case No. ARB/87/3	\N	\N	\N	\N
22	http://www.italaw.com/cases/97	ICSID	International Investment Agreement	ATA Construction, Industrial and Trading Company v. The Hashemite Kingdom of Jordan, ICSID Case No. ARB/08/2	\N	\N	\N	\N
23	http://www.italaw.com/cases/101	ICSID	International Investment Agreement	Mr. Hassan Awdi, Enterprise Business Consultants, Inc. and Alfa El Corporation v. Romania, ICSID Case No. ARB/10/13	\N	\N	\N	\N
24	http://www.italaw.com/cases/103	UNCITRAL (1976)	International Investment Agreement	Austrian Airlines v. The Slovak Republic, UNCITRAL	\N	\N	\N	\N
25	http://www.italaw.com/cases/106	UNCITRAL (1976)	International Investment Agreement	AWG Group Ltd. v. The Argentine Republic, UNCITRAL	\N	\N	\N	\N
26	http://www.italaw.com/cases/114	ICSID Additional Facility	International Investment Agreement	Robert Azinian, Kenneth Davitian, &amp; Ellen Baca v. The United Mexican States, ICSID Case No. ARB (AF)/97/2	\N	\N	\N	\N
27	http://www.italaw.com/cases/116	ICSID	International Investment Agreement	Azpetrol International Holdings B.V., Azpetrol Group B.V. and Azpetrol Oil Services Group B.V. v. The Republic of Azerbaijan, ICSID Case No. ARB/06/15	\N	\N	\N	\N
28	http://www.italaw.com/cases/118	ICSID	International Investment Agreement	Azurix Corp. v. The Argentine Republic, ICSID Case No. ARB/01/12	\N	\N	\N	\N
29	http://www.italaw.com/cases/123	UNCITRAL (1976)	International Investment Agreement	Werner Schneider, acting in his capacity as insolvency administrator of Walter Bau Ag (In Liquidation) v. The Kingdom of Thailand, UNCITRAL (formerly Walter Bau AG (in liquidation) v. The Kingdom of Thailand)	\N	\N	\N	\N
30	http://www.italaw.com/cases/131	ICSID	International Investment Agreement	Bayindir Insaat Turizm Ticaret Ve Sanayi A.S. v. Islamic Republic of Pakistan, ICSID Case No. ARB/03/29	\N	\N	\N	\N
31	http://www.italaw.com/cases/134	ICSID Additional Facility	International Investment Agreement	Bayview Irrigation District et al. v. United Mexican States, ICSID Case No. ARB(AF)/05/1	\N	\N	\N	\N
32	http://www.italaw.com/cases/138	UNCITRAL (1976)	International Investment Agreement	Stephane Benhamou v. Uruguay, UNCITRAL	\N	\N	\N	\N
33	http://www.italaw.com/cases/140	SCC	International Investment Agreement	Vladimir Berschader and Moïse Berschader v. The Russian Federation, SCC Case No. 080/2004	\N	\N	\N	\N
34	http://www.italaw.com/cases/143	UNCITRAL (1976)	International Investment Agreement	BG Group Plc. v. The Republic of Argentina, UNCITRAL	\N	\N	\N	\N
35	http://www.italaw.com/cases/149	SCC	International Investment Agreement	Biedermann International, Inc. v. The Republic of Kazakhstan and The Association for Social and Economic Development of Western Kazakhstan "Intercaspian", SCC Case No. 97/1996	\N	\N	\N	\N
36	http://www.italaw.com/cases/151	UNCITRAL (1976)	International Investment Agreement	Binder v. Czech Republic, UNCITRAL	\N	\N	\N	\N
37	http://www.italaw.com/cases/155	UNCITRAL (1976)	International Investment Agreement	Trinh Vinh Binh v. Vietnam, UNCITRAL	\N	\N	\N	\N
38	http://www.italaw.com/cases/157	ICSID	International Investment Agreement	Biwater Gauff (Tanzania) Ltd. v. United Republic of Tanzania, ICSID Case No. ARB/05/22	\N	\N	\N	\N
39	http://www.italaw.com/cases/168	SCC	International Investment Agreement	Iurii Bogdanov, Agurdino-Invest Ltd. and Agurdino-Chimia JSC v. Republic of Moldova, SCC	\N	\N	\N	\N
40	http://www.italaw.com/cases/169	SCC	International Investment Agreement	Yury Bogdanov v. Republic of Moldova, SCC Arbitration No. V (114/2009)	\N	\N	\N	\N
41	http://www.italaw.com/cases/172	ICSID	International Investment Agreement	BP America Production Company, Pan American Sur SRL, Pan American Fueguina, SRL and Pan American Continental SRL v. The Argentine Republic, ICSID Case No. ARB/04/8	\N	\N	\N	\N
42	http://www.italaw.com/cases/174	ICSID	Foreign Investment Law	Brandes Investment Partners, LP v. The Bolivarian Republic of Venezuela, ICSID Case No. ARB/08/3	\N	\N	\N	\N
43	http://www.italaw.com/cases/177	UNCITRAL (1976)	International Investment Agreement	British Caribbean Bank Limited v. The Government of Belize, UNCITRAL	\N	\N	\N	\N
44	http://www.italaw.com/cases/179	ICSID	International Investment Agreement	Bureau Veritas, Inspection, Valuation, Assessment and Control, BIVAC B.V. v. The Republic of Paraguay, ICSID Case No. ARB/07/9	\N	\N	\N	\N
45	http://www.italaw.com/cases/181	ICSID	International Investment Agreement	Burlington Resources Inc. v. Republic of Ecuador, ICSID Case No. ARB/08/5 (formerly Burlington Resources Inc. and others v. Republic of Ecuador and Empresa Estatal Petróleos del Ecuador (PetroEcuador))	\N	\N	\N	\N
46	http://www.italaw.com/cases/184	ICSID	International Investment Agreement	Camuzzi International S.A. v. The Argentine Republic, ICSID Case No. ARB/03/2	\N	\N	\N	\N
47	http://www.italaw.com/cases/186	ICSID	International Investment Agreement	Camuzzi International S.A. v. República Argentina, ICSID Case No. ARB/03/7	\N	\N	\N	\N
48	http://www.italaw.com/cases/188	UNCITRAL (1976)	International Investment Agreement	The Canadian Cattlemen for Fair Trade v. United States of America, UNCITRAL (formerly Consolidated Canadian Claims v. United States of America)	\N	\N	\N	\N
49	http://www.italaw.com/cases/193	ICSID	International Investment Agreement	AES Summit Generation Limited and AES-Tisza Erömü Kft v. The Republic of Hungary, ICSID Case No. ARB/07/22	\N	\N	\N	\N
50	http://www.italaw.com/cases/200	UNCITRAL (1976)	International Investment Agreement	Canfor Corporation v. United States of America; Terminal Forest Products Ltd. v. United States of America, UNCITRAL (formerly Canfor Corporation v. United States of America; Tembec et al. v. United States of America; Terminal Forest Products Ltd. v. 	\N	\N	\N	\N
51	http://www.italaw.com/cases/211	ICSID	International Investment Agreement	Caratube International Oil Company LLP v. The Republic of Kazakhstan, ICSID Case No. ARB/08/12	\N	\N	\N	\N
52	http://www.italaw.com/cases/221	UNCITRAL (1976)	International Investment Agreement	Cargill v. Poland, UNCITRAL	\N	\N	\N	\N
53	http://www.italaw.com/cases/223	ICSID Additional Facility	International Investment Agreement	Cargill, Incorporated v. United Mexican States, ICSID Case No. ARB(AF)/05/2	\N	\N	\N	\N
54	http://www.italaw.com/cases/227	SCC	International Investment Agreement	CCL v. Republic of Kazakhstan, SCC Case 122/2001	\N	\N	\N	\N
55	http://www.italaw.com/cases/228	ICSID Additional Facility	International Investment Agreement	Cementownia "Nowa Huta" S.A. v. Republic of Turkey, ICSID Case No. ARB(AF)/06/2	\N	\N	\N	\N
56	http://www.italaw.com/cases/230	UNCITRAL (1976)	International Investment Agreement	Cementownia “Nowa Huta” S.A. v. Republic of Turkey, UNCITRAL	\N	\N	\N	\N
57	http://www.italaw.com/cases/232	ICSID	International Investment Agreement	CEMEX Caracas Investments B.V. and CEMEX Caracas II Investments B.V. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/08/15	\N	\N	\N	\N
58	http://www.italaw.com/cases/236	UNCITRAL (1976)	International Investment Agreement	Cesare Galdabini SpA v. Russian Federation, UNCITRAL	\N	\N	\N	\N
59	http://www.italaw.com/cases/238	ICSID	International Investment Agreement	Ceskoslovenska Obchodni Banka, A.S. v. The Slovak Republic, ICSID Case No. ARB/97/4	\N	\N	\N	\N
60	http://www.italaw.com/cases/245	ICSID	International Investment Agreement	Champion Trading Company, Ameritrade International, Inc. v. Arab Republic of Egypt, ICSID Case No. ARB/02/9 (formerly Champion Trading Company, Ameritrade International, Inc., James T. Wahba, John B. Wahba, Timothy T. Wahba v. Arab Republic of Egypt) 	\N	\N	\N	\N
61	http://www.italaw.com/cases/249	UNCITRAL (1976)	International Investment Agreement	Chemtura Corporation v. Government of Canada, UNCITRAL (formerly Crompton Corporation v. Government of Canada) 	\N	\N	\N	\N
62	http://www.italaw.com/cases/251	UNCITRAL (1976)	International Investment Agreement	Chevron Corporation (USA) and Texaco Petroleum Company (USA) v. The Republic of Ecuador, UNCITRAL, PCA Case No.&nbsp;34877	\N	\N	\N	\N
63	http://www.italaw.com/cases/257	UNCITRAL (1976)	International Investment Agreement	Chevron Corporation and Texaco Petroleum Corporation v. The Republic of Ecuador, UNCITRAL, PCA Case No.&nbsp;2009-23	\N	\N	\N	\N
64	http://www.italaw.com/cases/279	UNCITRAL (1976)	International Investment Agreement	China Heilongjiang International Economic &amp; Technical Cooperative Corp., Beijing Shougang Mining Investment Company Ltd., and Qinhuangdaoshi Qinlong International Industrial Co. Ltd. v. Mongolia, UNCITRAL, PCA	\N	\N	\N	\N
65	http://www.italaw.com/cases/281	UNCITRAL (1976)	International Investment Agreement	CME Czech Republic B.V. v. The Czech Republic, UNCITRAL	\N	\N	\N	\N
66	http://www.italaw.com/cases/288	ICSID	International Investment Agreement	CMS Gas Transmission Company v. The Republic of Argentina, ICSID Case No. ARB/01/8	\N	\N	\N	\N
67	http://www.italaw.com/cases/296	ICSID	International Investment Agreement, Foreign Investment Law	Commerce Group Corp. and San Sebastian Gold Mines, Inc. v. The Republic of El Salvador, ICSID Case No. ARB/09/17	\N	\N	\N	\N
68	http://www.italaw.com/cases/309	ICSID	International Investment Agreement	Compañiá de Aguas del Aconquija S.A. and Vivendi Universal S.A. v. Argentine Republic, ICSID Case No. ARB/97/3 (formerly Compañía de Aguas del Aconquija, S.A. and Compagnie Générale des Eaux v. Argentine Republic) 	\N	\N	\N	\N
69	http://www.italaw.com/cases/321	ICSID	International Investment Agreement	ConocoPhillips Petrozuata B.V., ConocoPhillips Hamaca B.V. and ConocoPhillips Gulf of Paria B.V. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/07/30	\N	\N	\N	\N
70	http://www.italaw.com/cases/323	ICSID	International Investment Agreement	Consortium Groupement L.E.S.I.- DIPENTA v. République algérienne démocratique et populaire, ICSID Case No. ARB/03/08	\N	\N	\N	\N
71	http://www.italaw.com/cases/325	ICSID	International Investment Agreement	Consortium RFCC v. Royaume du Maroc, ICSID Case No. ARB/00/6	\N	\N	\N	\N
72	http://www.italaw.com/cases/329	ICSID	International Investment Agreement	Continental Casualty Company v. The Argentine Republic, ICSID Case No. ARB/03/9	\N	\N	\N	\N
73	http://www.italaw.com/cases/345	ICSID Additional Facility	International Investment Agreement	Corn Products International, Inc. v. United Mexican States, ICSID Case No. ARB (AF)/04/1	\N	\N	\N	\N
74	http://www.italaw.com/cases/351	ICC	International Investment Agreement	Crespo and others v. Poland, ICC	\N	\N	\N	\N
75	http://www.italaw.com/cases/353	ICSID	International Investment Agreement	Desert Line Projects LLC v. The Republic of Yemen, ICSID Case No. ARB/05/17	\N	\N	\N	\N
351	http://www.italaw.com/cases/1708	ICSID	International Investment Agreement	Alapli Elektrik B.V. v. Republic of Turkey, ICSID Case No. ARB/08/13	\N	\N	\N	\N
76	http://www.italaw.com/cases/354	UNCITRAL (1976)	International Investment Agreement	Detroit International Bridge Company v. Government of Canada, UNCITRAL, PCA Case No.&nbsp;2012-25	\N	\N	\N	\N
77	http://www.italaw.com/cases/356	ICSID	International Investment Agreement	Duke Energy Electroquil Partners &amp; Electroquil S.A. v. Republic of Ecuador, ICSID Case No. ARB/04/19	\N	\N	\N	\N
78	http://www.italaw.com/cases/361	UNCITRAL (1976)	International Investment Agreement	Dunkeld International Investment Ltd. v. The Government of Belize (Number 1), PCA Case No. 2010-13, UNCITRAL	\N	\N	\N	\N
79	http://www.italaw.com/cases/362	UNCITRAL (1976)	International Investment Agreement	Dunkeld International Investment Ltd. v. The Government of Belize (Number 2), PCA Case No. 2010-21, UNCITRAL	\N	\N	\N	\N
80	http://www.italaw.com/cases/366	ICC	International Investment Agreement	East Cement for Investment Company v. Poland, ICC	\N	\N	\N	\N
81	http://www.italaw.com/cases/368	UNCITRAL (1976)	International Investment Agreement	Eastern Sugar B.V.(Netherlands) v. The Czech Republic, SCC Case No.&nbsp;088/2004	\N	\N	\N	\N
82	http://www.italaw.com/cases/372	ICSID	International Investment Agreement	EDF International S.A., SAUR International S.A. and León Participaciones Argentinas S.A. v. Argentine Republic, ICSID Case No. ARB/03/23	\N	\N	\N	\N
83	http://www.italaw.com/cases/375	ICSID	International Investment Agreement	EDF (Services) Limited v. Romania, ICSID Case No. ARB/05/13	\N	\N	\N	\N
84	http://www.italaw.com/cases/380	ICSID	International Investment Agreement	Electrabel S.A. v. Republic of Hungary, ICSID Case No. ARB/07/19	\N	\N	\N	\N
85	http://www.italaw.com/cases/382	ICSID	International Investment Agreement	El Paso Energy International Company v. The Argentine Republic, ICSID Case No. ARB/03/15	\N	\N	\N	\N
86	http://www.italaw.com/cases/384	ICSID	International Investment Agreement	Emmis International Holding, B.V., Emmis Radio Operating, B.V., MEM Magyar Electronic Media Kereskedelmi és Szolgáltató Kft. v. The Republic of Hungary, ICSID Case No. ARB/12/2	\N	\N	\N	\N
87	http://www.italaw.com/cases/387	ICSID	International Investment Agreement	Empresa Eléctrica del Ecuador, Inc. v. Republic of Ecuador, ICSID Case No. ARB/05/9	\N	\N	\N	\N
88	http://www.italaw.com/cases/389	ICSID	International Investment Agreement	Empresas Lucchetti, S.A. and Lucchetti Peru, S.A. v. The Republic of Peru, ICSID Case No. ARB/03/4 (also known as: Industria Nacional de Alimentos, A.S. and Indalsa Perú S.A. v. The Republic of Peru)	\N	\N	\N	\N
89	http://www.italaw.com/cases/393	UNCITRAL (1976)	International Investment Agreement	EnCana Corporation v. Republic of Ecuador, LCIA Case No. UN3481, UNCITRAL (formerly EnCana Corporation v. Government of the Republic of Ecuador) 	\N	\N	\N	\N
90	http://www.italaw.com/cases/401	ICSID	International Investment Agreement	Enron Corporation and Ponderosa Assets, L.P. v. Argentine Republic, ICSID Case No. ARB/01/3 (also known as: Enron Creditors Recovery Corp. and Ponderosa Assets, L.P. v. The Argentine Republic) 	\N	\N	\N	\N
91	http://www.italaw.com/cases/409	UNCITRAL (1976)	International Investment Agreement	Ethyl Corporation v. The Government of Canada, UNCITRAL	\N	\N	\N	\N
92	http://www.italaw.com/cases/412	\N	International Investment Agreement	Eureko B.V. v. Republic of&nbsp;Poland	\N	\N	\N	\N
93	http://www.italaw.com/cases/417	UNCITRAL (1976)	International Investment Agreement	Achmea B.V. v. The Slovak Republic, UNCITRAL, PCA Case No. 2008-13 (formerly Eureko B.V. v. The Slovak Republic)	\N	\N	\N	\N
94	http://www.italaw.com/cases/419	UNCITRAL (1976)	International Investment Agreement	EuroGas GmbH v. Slovak Republic, UNCITRAL	\N	\N	\N	\N
95	http://www.italaw.com/cases/421	ICSID Additional Facility	International Investment Agreement	Europe Cement Investment &amp; Trade S.A. v. Republic of Turkey, ICSID Case No. ARB(AF)/07/2 	\N	\N	\N	\N
96	http://www.italaw.com/cases/423	UNCITRAL (1976)	International Investment Agreement	European Media Ventures SA v. The Czech Republic, UNCITRAL	\N	\N	\N	\N
97	http://www.italaw.com/cases/427	ICSID	International Investment Agreement	EVN AG v. The former Yugoslav Republic of Macedonia, ICSID Case No. ARB/09/10	\N	\N	\N	\N
98	http://www.italaw.com/cases/429	ICSID	International Investment Agreement	Saba Fakes v. Republic of Turkey, ICSID Case No. ARB/07/20	\N	\N	\N	\N
99	http://www.italaw.com/cases/432	ICSID	International Investment Agreement	Fedax N.V. v. The Republic of Venezuela, ICSID Case No. ARB/96/3	\N	\N	\N	\N
100	http://www.italaw.com/cases/435	ICSID Additional Facility	International Investment Agreement	Marvin Roy Feldman Karpa v. United Mexican States, ICSID Case No. ARB(AF)/99/1 (also known as Marvin Feldman v. Mexico) 	\N	\N	\N	\N
101	http://www.italaw.com/cases/443	ICSID Additional Facility	International Investment Agreement	Fireman&#8217;s Fund Insurance Company v. The United Mexican States, ICSID Case No. ARB(AF)/02/1	\N	\N	\N	\N
102	http://www.italaw.com/cases/446	ICSID Additional Facility	International Investment Agreement	Piero Foresti, Laura de Carli &amp; Others v. The Republic of South Africa, ICSID Case No. ARB(AF)/07/01	\N	\N	\N	\N
103	http://www.italaw.com/cases/452	UNCITRAL (1976)	International Investment Agreement	France Telecom v. Lebanon, UNCITRAL 	\N	\N	\N	\N
104	http://www.italaw.com/cases/456	ICSID	International Investment Agreement	Fraport AG Frankfurt Airport Services Worldwide v. The Republic of the Philippines, ICSID Case No. ARB/03/25	\N	\N	\N	\N
105	http://www.italaw.com/cases/459	UNCITRAL (1976)	International Investment Agreement	Frontier Petroleum Services Ltd. v. The Czech Republic, UNCITRAL	\N	\N	\N	\N
106	http://www.italaw.com/cases/460	ICSID	International Investment Agreement	Philip Morris Brands Sàrl, Philip Morris Products S.A. and Abal Hermanos S.A. v. Oriental Republic of Uruguay, ICSID Case No. ARB/10/7 (formerly FTR Holding SA, Philip Morris Products S.A. and Abal Hermanos S.A. v. Oriental Republic of Uruguay) 	\N	\N	\N	\N
107	http://www.italaw.com/cases/464	ICSID	International Investment Agreement	Ron Fuchs v. The Republic of Georgia, ICSID Case No. ARB/07/15	\N	\N	\N	\N
108	http://www.italaw.com/cases/467	ICSID	International Investment Agreement	Bernardus Henricus Funnekotter and others v. Republic of Zimbabwe, ICSID Case No. ARB/05/6	\N	\N	\N	\N
109	http://www.italaw.com/cases/469	ICSID	International Investment Agreement	F-W Oil Interests, Inc. v. The Republic of Trinidad and Tobago, ICSID Case No. ARB/01/14	\N	\N	\N	\N
110	http://www.italaw.com/cases/471	UNCITRAL (1976)	International Investment Agreement	Vito G. Gallo v. The Government of Canada, UNCITRAL, PCA Case No.&nbsp;55798	\N	\N	\N	\N
111	http://www.italaw.com/cases/474	UNCITRAL (1976)	International Investment Agreement	Gami Investments, Inc. v. The Government of the United Mexican States, UNCITRAL	\N	\N	\N	\N
112	http://www.italaw.com/cases/476	ICSID	International Investment Agreement	Gas Natural SDG, S.A. v. The Argentine Republic, ICSID Case No. ARB/03/10 	\N	\N	\N	\N
113	http://www.italaw.com/cases/478	ICSID	International Investment Agreement	GEA Group Aktiengesellschaft v. Ukraine, ICSID Case No. ARB/08/16 	\N	\N	\N	\N
114	http://www.italaw.com/cases/480	ICSID Additional Facility	International Investment Agreement	Gemplus S.A., SLP S.A., Gemplus Industrial S.A. de C.V. v. The United Mexican States, ICSID Case No. ARB(AF)/04/3	\N	\N	\N	\N
115	http://www.italaw.com/cases/482	ICSID	International Investment Agreement	Generation Ukraine, Inc. v. Ukraine, ICSID Case No. ARB/00/9	\N	\N	\N	\N
116	http://www.italaw.com/cases/484	ICSID	International Investment Agreement	Alex Genin, Eastern Credit Limited, Inc. and A.S. Baltoil v. The Republic of Estonia, ICSID Case No. ARB/99/2	In favour of State	US $0	Financial and insurance activities	\N
117	http://www.italaw.com/cases/487	UNCITRAL (1976)	International Investment Agreement	Glamis Gold, Ltd. v. The United States of America, UNCITRAL	\N	\N	\N	\N
118	http://www.italaw.com/cases/506	ICSID	International Investment Agreement	Global Trading Resource Corp. and Globex International, Inc. v. Ukraine, ICSID Case No. ARB/09/11	\N	\N	\N	\N
119	http://www.italaw.com/cases/508	ICSID	International Investment Agreement	Antoine Goetz et consorts v. République du Burundi, ICSID Case No. ARB/95/3 	\N	\N	\N	\N
120	http://www.italaw.com/cases/510	UNCITRAL (1976)	International Investment Agreement	Grand River Enterprises Six Nations, Ltd., et al. v. United States of America, UNCITRAL	\N	\N	\N	\N
121	http://www.italaw.com/cases/515	ICSID	International Investment Agreement	Philippe Gruslin v. Malaysia, ICSID Case No. ARB/99/3	\N	\N	\N	\N
122	http://www.italaw.com/cases/518	UNCITRAL (1976)	International Investment Agreement	Guaracachi America, Inc. and Rurelec PLC v. The Plurinational State of Bolivia, UNCITRAL, PCA Case No.&nbsp;2011-17	\N	\N	\N	\N
123	http://www.italaw.com/cases/527	ICSID	International Investment Agreement	Gustav F W Hamester GmbH &amp; Co KG v. Republic of Ghana, ICSID Case No. ARB/07/24	\N	\N	\N	\N
124	http://www.italaw.com/cases/529	ICSID	International Investment Agreement	Helnan International Hotels A/S v. Arab Republic of Egypt, ICSID Case No. ARB/05/19	\N	\N	\N	\N
125	http://www.italaw.com/cases/534	UNCITRAL (1976)	International Investment Agreement	HICEE B.V. v. The Slovak Republic, UNCITRAL, PCA Case No.&nbsp;2009-11	\N	\N	\N	\N
126	http://www.italaw.com/cases/538	ICSID	International Investment Agreement	Hochtief AG v. The Argentine Republic, ICSID Case No. ARB/07/31 	\N	\N	\N	\N
127	http://www.italaw.com/cases/541	UNCITRAL (1976)	International Investment Agreement	Melvin J. Howard, Centurion Health Corp. &amp; Howard Family Trust v. The Government of Canada, UNCITRAL, PCA Case No.&nbsp;2009-21	\N	\N	\N	\N
128	http://www.italaw.com/cases/544	UNCITRAL (1976)	International Investment Agreement	Hulley Enterprises Limited (Cyprus) v. The Russian Federation, UNCITRAL, PCA Case No. AA&nbsp;226	\N	\N	\N	\N
129	http://www.italaw.com/cases/546	ICSID	International Investment Agreement	IBM World Trade Corporation v. República del Ecuador, ICSID Case No. ARB/02/10	\N	\N	\N	\N
130	http://www.italaw.com/cases/551	UNCITRAL (1976)	International Investment Agreement	ICS Inspection and Control Services Limited (United Kingdom) v. The Republic of Argentina, UNCITRAL, PCA Case No.&nbsp;2010-9	\N	\N	\N	\N
131	http://www.italaw.com/cases/554	ICSID	International Investment Agreement	Impregilo S.p.A. v. Argentine Republic, ICSID Case No. ARB/07/17 	\N	\N	\N	\N
132	http://www.italaw.com/cases/556	ICSID	International Investment Agreement	Impregilo S.p.A. v. Islamic Republic of Pakistan, ICSID Case No. ARB/03/3 	\N	\N	\N	\N
133	http://www.italaw.com/cases/562	ICSID	International Investment Agreement	Inceysa Vallisoletana S.L. v. Republic of El Salvador, ICSID Case No. ARB/03/26	\N	\N	\N	\N
134	http://www.italaw.com/cases/565	ICSID	International Investment Agreement	Inmaris Perestroika Sailing Maritime Services GmbH and Others v. Ukraine, ICSID Case No. ARB/08/8	\N	\N	\N	\N
135	http://www.italaw.com/cases/567	ICSID	Foreign Investment Law	International Quantum Resources Limited, Frontier SPRL et Compagnie Minière de Sakania SPRL v. République démocratique du Congo, ICSID Case No. ARB/10/21	\N	\N	\N	\N
136	http://www.italaw.com/cases/571	UNCITRAL (1976)	International Investment Agreement	International Thunderbird Gaming Corporation v. The United Mexican States, UNCITRAL	\N	\N	\N	\N
137	http://www.italaw.com/cases/577	UNCITRAL (1976)	International Investment Agreement	Invesmart v. Czech Republic, UNCITRAL	\N	\N	\N	\N
138	http://www.italaw.com/cases/580	\N	International Investment Agreement	Italian Republic v. Republic of Cuba, ad hoc state-state&nbsp;arbitration	\N	\N	\N	\N
139	http://www.italaw.com/cases/584	ICSID	International Investment Agreement	Itera International Energy LLC and Itera Group NV v. Georgia, ICSID Case No. ARB/08/7 	\N	\N	\N	\N
140	http://www.italaw.com/cases/587	ICSID	International Investment Agreement	Jan de Nul N.V. and Dredging International N.V. v. Arab Republic of Egypt, ICSID Case No. ARB/04/13	\N	\N	\N	\N
141	http://www.italaw.com/cases/590	ICSID	International Investment Agreement	Joy Mining Machinery Limited v. Arab Republic of Egypt, ICSID Case No. ARB/03/11	\N	\N	\N	\N
142	http://www.italaw.com/cases/593	ICC	International Investment Agreement	Kaliningrad Region v. Lithuania, ICC	\N	\N	\N	\N
143	http://www.italaw.com/cases/597	ICSID Additional Facility	International Investment Agreement	Talsud S.A. v. The United Mexican States, ICSID Case No. ARB(AF)/04/4	\N	\N	\N	\N
144	http://www.italaw.com/cases/599	ICSID	International Investment Agreement	Ioannis Kardassopoulos v. The Republic of Georgia, ICSID Case No. ARB/05/18	\N	\N	\N	\N
145	http://www.italaw.com/cases/604	UNCITRAL (1976)	International Investment Agreement, Foreign Investment Law, Contract	Khan Resources Inc., Khan Resources B.V., and Cauc Holding Company Ltd. v. The Government of Mongolia, UNCITRAL	\N	\N	\N	\N
146	http://www.italaw.com/cases/608	ICSID	International Investment Agreement	Lanco International Inc. v. The Argentine Republic, ICSID Case No. ARB/97/6	\N	\N	\N	\N
147	http://www.italaw.com/cases/610	UNCITRAL (1976)	International Investment Agreement	Ronald S. Lauder v. The Czech Republic, UNCITRAL	\N	\N	\N	\N
148	http://www.italaw.com/cases/612	ICSID Additional Facility	International Investment Agreement	Joseph Charles Lemire v. Ukraine, ICSID Case No. ARB(AF)/98/1	\N	\N	\N	\N
149	http://www.italaw.com/cases/614	ICSID	International Investment Agreement	Joseph Charles Lemire v. Ukraine, ICSID Case No. ARB/06/18	\N	\N	\N	\N
150	http://www.italaw.com/cases/618	ICSID	International Investment Agreement	L.E.S.I. S.p.A. and ASTALDI S.p.A. v. République Algérienne Démocratique et Populaire, ICSID Case No. ARB/05/3 	\N	\N	\N	\N
151	http://www.italaw.com/cases/621	ICSID	International Investment Agreement	LG&amp;E Energy Corp., LG&amp;E Capital Corp., and LG&amp;E International, Inc .v. Argentine Republic, ICSID Case No. ARB/02/1	\N	\N	\N	\N
152	http://www.italaw.com/cases/626	ICSID	International Investment Agreement	Libananco Holdings Co. Limited v. Republic of Turkey, ICSID Case No. ARB/06/8	\N	\N	\N	\N
153	http://www.italaw.com/cases/628	UNCITRAL (1976)	International Investment Agreement	Link-Trading Joint Stock Company v. Department for Customs Control of the Republic of Moldova, UNCITRAL	\N	\N	\N	\N
154	http://www.italaw.com/cases/632	ICSID Additional Facility	International Investment Agreement	Loewen Group, Inc. and Raymond L. Loewen v. United States of America, ICSID Case No. ARB(AF)/98/3	\N	\N	\N	\N
155	http://www.italaw.com/cases/641	ICSID	International Investment Agreement	Emilio Agustín Maffezini v. The Kingdom of Spain, ICSID Case No. ARB/97/7	\N	\N	\N	\N
156	http://www.italaw.com/cases/646	ICSID	International Investment Agreement	Malaysian Historical Salvors, SDN, BHD v. The Government of Malaysia, ICSID Case No. ARB/05/10	\N	\N	\N	\N
157	http://www.italaw.com/cases/660	ICSID	International Investment Agreement	Malicorp Limited v. The Arab Republic of Egypt, ICSID Case No. ARB/08/18 	\N	\N	\N	\N
158	http://www.italaw.com/cases/662	ICSID	International Investment Agreement	M.C.I. Power Group L.C. and New Turbine, Inc. v. Republic of Ecuador, ICSID Case No. ARB/03/6	\N	\N	\N	\N
159	http://www.italaw.com/cases/665	SCC	International Investment Agreement	Mercuria Energy Group Limited v. Republic of Poland, SCC 	\N	\N	\N	\N
160	http://www.italaw.com/cases/669	ICSID	International Investment Agreement	Merrill &amp; Ring Forestry L.P. v. The Government of Canada, UNCITRAL, ICSID Administered&nbsp;Case 	\N	\N	\N	\N
161	http://www.italaw.com/cases/671	ICSID Additional Facility	International Investment Agreement	Metalclad Corporation v. The United Mexican States, ICSID Case No. ARB(AF)/97/1	\N	\N	\N	\N
162	http://www.italaw.com/cases/680	ICSID	International Investment Agreement	Metalpar S.A. and Buen Aire S.A. v. The Argentine Republic, ICSID Case No. ARB/03/5	\N	\N	\N	\N
163	http://www.italaw.com/cases/683	UNCITRAL (1976)	International Investment Agreement	Methanex Corporation v. United States of America, UNCITRAL	\N	\N	\N	\N
164	http://www.italaw.com/cases/697	ICSID	International Investment Agreement	Ioan Micula, Viorel Micula, S.C. European Food S.A, S.C. Starmill S.R.L. and S.C. Multipack S.R.L. v. Romania, ICSID Case No. ARB/05/20	\N	\N	\N	\N
165	http://www.italaw.com/cases/699	ICSID	International Investment Agreement	Middle East Cement Shipping and Handling Co. S.A. v. Arab Republic of Egypt, ICSID Case No. ARB/99/6	\N	\N	\N	\N
166	http://www.italaw.com/cases/702	ICSID	International Investment Agreement	Mihaly International Corporation v. Democratic Socialist Republic of Sri Lanka, ICSID Case No. ARB/00/2 	\N	\N	\N	\N
167	http://www.italaw.com/cases/705	ICSID	International Investment Agreement	Millicom International Operations B.V. and Sentel GSM SA v. The Republic of Senegal, ICSID Case No. ARB/08/20	\N	\N	\N	\N
168	http://www.italaw.com/cases/707	ICSID Additional Facility	International Investment Agreement	David Minnotte &amp; Robert Lewis v. Republic of Poland, ICSID Case No. ARB (AF)/10/1	\N	\N	\N	\N
169	http://www.italaw.com/cases/709	ICSID	International Investment Agreement	Mr. Patrick Mitchell v. Democratic Republic of the Congo, ICSID Case No. ARB/99/7	\N	\N	\N	\N
170	http://www.italaw.com/cases/713	ICSID	International Investment Agreement	Mobil Corporation, Venezuela Holdings, B.V., Mobil Cerro Negro Holding, Ltd., Mobil Venezolana de Petróleos Holdings, Inc., Mobil Cerro Negro, Ltd., and Mobil Venezolana de Petróleos, Inc. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/07/	\N	\N	\N	\N
171	http://www.italaw.com/cases/715	ICSID Additional Facility	International Investment Agreement	Mondev International Ltd. v. United States of America, ICSID Case No. ARB(AF)/99/2	\N	\N	\N	\N
172	http://www.italaw.com/cases/717	ICSID	International Investment Agreement	MTD Equity Sdn. Bhd. and MTD Chile S.A. v. Republic of Chile, ICSID Case No. ARB/01/7 	\N	\N	\N	\N
173	http://www.italaw.com/cases/723	ICSID	International Investment Agreement	Murphy Exploration and Production Company International v. Republic of Ecuador, ICSID Case No. ARB/08/4	\N	\N	\N	\N
174	http://www.italaw.com/cases/725	UNCITRAL (1976)	International Investment Agreement	Mytilineos Holdings SA v. The State Union of Serbia &amp; Montenegro and Republic of Serbia, UNCITRAL	\N	\N	\N	\N
175	http://www.italaw.com/cases/728	SCC	International Investment Agreement	William Nagel v. The Czech Republic, SCC Case No.&nbsp;049/2002 	\N	\N	\N	\N
176	http://www.italaw.com/cases/732	UNCITRAL (1976)	International Investment Agreement	National Grid plc v. The Argentine Republic, UNCITRAL 	\N	\N	\N	\N
177	http://www.italaw.com/cases/739	ICSID	International Investment Agreement	Nations Energy Corporation, Electric Machinery Enterprises Inc., and Jamie Jurado v. The Republic of Panama, ICSID Case No. ARB/06/19	\N	\N	\N	\N
178	http://www.italaw.com/cases/743	UNCITRAL (1976)	International Investment Agreement	Georg Nepolsky v. Czech Republic, UNCITRAL	\N	\N	\N	\N
179	http://www.italaw.com/cases/745	ICSID	International Investment Agreement	Noble Energy, Inc. and Machalapower Cia. Ltda. v. The Republic of Ecuador and Consejo Nacional de Electricidad, ICSID Case No. ARB/05/12	\N	\N	\N	\N
180	http://www.italaw.com/cases/747	ICSID	International Investment Agreement	Noble Ventures, Inc. v. Romania, ICSID Case No. ARB/01/11	\N	\N	\N	\N
181	http://www.italaw.com/cases/750	UNCITRAL (1976)	International Investment Agreement	Nordzucker v. Poland, UNCITRAL	\N	\N	\N	\N
182	http://www.italaw.com/cases/753	UNCITRAL (1976)	International Investment Agreement	Nova Scotia Power Incorporated (Canada) v. República Bolivariana de Venezuela, UNCITRAL	\N	\N	\N	\N
183	http://www.italaw.com/cases/756	UNCITRAL (1976)	International Investment Agreement	Pren Nreka v. Czech Republic, UNCITRAL	\N	\N	\N	\N
184	http://www.italaw.com/cases/759	SCC	International Investment Agreement	Nykomb Synergetics Technology Holding AB v. The Republic of Latvia, SCC	\N	\N	\N	\N
185	http://www.italaw.com/cases/761	UNCITRAL (1976)	International Investment Agreement	Occidental Exploration and Production Company v. The Republic of Ecuador, LCIA Case No. UN3467	\N	\N	\N	\N
186	http://www.italaw.com/cases/767	ICSID	International Investment Agreement	Occidental Petroleum Corporation and Occidental Exploration and Production Company v. The Republic of Ecuador, ICSID Case No. ARB/06/11	\N	\N	\N	\N
187	http://www.italaw.com/cases/770	ICSID	International Investment Agreement	Oko Pankki Oyj, VTB Bank (Deutschland) AG and Sampo Bank Plc v. The Republic of Estonia, ICSID Case No. ARB/04/6 (formerly OKO Osuuspankkien Keskuspankki Oyj and others v. Republic of Estonia)	\N	\N	\N	\N
188	http://www.italaw.com/cases/776	ICSID	International Investment Agreement	Eudoro Armando Olguín v. Republic of Paraguay, ICSID Case No. ARB/98/5	\N	\N	\N	\N
189	http://www.italaw.com/cases/779	ICSID	Foreign Investment Law	OPIC Karimum Corporation v. The Bolivarian Republic of Venezuela, ICSID Case No. ARB/10/14	\N	\N	\N	\N
190	http://www.italaw.com/cases/781	UNCITRAL (1976)	International Investment Agreement	Oxus Gold plc v. Republic of Uzbekistan, the State Committee of Uzbekistan for Geology &amp; Mineral Resources, and Navoi Mining &amp; Metallurgical Kombinat, UNCITRAL	\N	\N	\N	\N
191	http://www.italaw.com/cases/783	ICSID	International Investment Agreement, Foreign Investment Law	Pac Rim Cayman LLC v. Republic of El Salvador, ICSID Case No. ARB/09/12	\N	\N	\N	\N
429	http://www.italaw.com/cases/2119	UNCITRAL (1976)	International Investment Agreement	AES Solar and others v. Spain, UNCITRAL	\N	\N	\N	\N
192	http://www.italaw.com/cases/808	ICSID	International Investment Agreement	Pan American Energy LLC and BP Argentina Exploration Company v. The Argentine Republic, ICSID Case No. ARB/03/13	\N	\N	\N	\N
193	http://www.italaw.com/cases/810	ICSID	International Investment Agreement	Pantechniki S.A. Contractors &amp; Engineers (Greece) v. The Republic of Albania, ICSID Case No. ARB/07/21	\N	\N	\N	\N
194	http://www.italaw.com/cases/812	ICSID	International Investment Agreement	Parkerings-Compagniet AS v. Republic of Lithuania, ICSID Case No. ARB/05/8	\N	\N	\N	\N
195	http://www.italaw.com/cases/814	ICSID	International Investment Agreement	Participaciones Inversiones Portuarias SARL v. Gabonese Republic, ICSID Case No. ARB/08/17	\N	\N	\N	\N
196	http://www.italaw.com/cases/816	UNCITRAL (1976)	International Investment Agreement	Sergei Paushok, CJSC Golden East Company and CJSC Vostokneftegaz Company v. The Government of Mongolia, UNCITRAL	\N	\N	\N	\N
197	http://www.italaw.com/cases/819	ICSID	International Investment Agreement	Perenco Ecuador Ltd. v. The Republic of Ecuador and Empresa Estatal Petróleos del Ecuador (Petroecuador), ICSID Case No. ARB/08/6	\N	\N	\N	\N
198	http://www.italaw.com/cases/823	UNCITRAL (1976)	Foreign Investment Law	Petrobart Limited v. The Kyrgyz Republic, UNCITRAL	\N	\N	\N	\N
199	http://www.italaw.com/cases/825	SCC	International Investment Agreement	Petrobart Limited v. The Kyrgyz Republic, SCC Case No.&nbsp;126/2003	\N	\N	\N	\N
200	http://www.italaw.com/cases/829	ICSID	International Investment Agreement	Victor Pey Casado and President Allende Foundation v. Republic of Chile, ICSID Case No. ARB/98/2	\N	\N	\N	\N
201	http://www.italaw.com/cases/850	ICSID	International Investment Agreement	Phoenix Action, Ltd. v. The Czech Republic, ICSID Case No. ARB/06/5	\N	\N	\N	\N
202	http://www.italaw.com/cases/851	UNCITRAL (1976)	International Investment Agreement	Philip Morris Asia Limited v. The Commonwealth of Australia, UNCITRAL, PCA Case No.&nbsp;2012-12	\N	\N	\N	\N
203	http://www.italaw.com/cases/857	ICSID	International Investment Agreement	Plama Consortium Limited v. Republic of Bulgaria, ICSID Case No. ARB/03/24	\N	\N	\N	\N
204	http://www.italaw.com/cases/860	UNCITRAL (1976)	International Investment Agreement	Polska Energetyka Holding S.A. v. Republic of Turkey, UNCITRAL	\N	\N	\N	\N
205	http://www.italaw.com/cases/863	UNCITRAL (1976)	International Investment Agreement	Pope &amp; Talbot Inc. v. The Government of Canada, UNCITRAL	\N	\N	\N	\N
206	http://www.italaw.com/cases/880	ICSID	International Investment Agreement	PSEG Global, Inc., The North American Coal Corporation, and Konya Ingin Electrik Üretim ve Ticaret Limited Sirketi v. Republic of Turkey, ICSID Case No. ARB/02/5	\N	\N	\N	\N
207	http://www.italaw.com/cases/883	ICSID Additional Facility	International Investment Agreement	Quadrant Pacific Growth Fund L.P. and Canasco Holdings Inc. v. Republic of Costa Rica, ICSID Case No. ARB(AF)/08/1	\N	\N	\N	\N
208	http://www.italaw.com/cases/885	ICSID	International Investment Agreement	Quiborax S.A., Non Metallic Minerals S.A. and Allan Fosk Kaplún v. Plurinational State of Bolivia, ICSID Case No. ARB/06/2	\N	\N	\N	\N
209	http://www.italaw.com/cases/887	ICSID	International Investment Agreement	Railroad Development Corporation v. Republic of Guatemala, ICSID Case No. ARB/07/23	\N	\N	\N	\N
210	http://www.italaw.com/cases/901	ICSID	International Investment Agreement	Rail World Estonia LLC, Railroad Development Corporation and EEIF Rail BV v. Republic of Estonia, ICSID Case No. ARB/06/6	\N	\N	\N	\N
211	http://www.italaw.com/cases/903	SCC	International Investment Agreement	Remington Worldwide Limited v. Ukraine, SCC	\N	\N	\N	\N
212	http://www.italaw.com/cases/906	\N	International Investment Agreement	The Renco Group, Inc. v. The Republic of Peru, ICSID Case No. UNCT/13/1	\N	\N	\N	\N
213	http://www.italaw.com/cases/915	SCC	International Investment Agreement	Renta 4 S.V.S.A, Ahorro Corporación Emergentes F.I., Ahorro Corporación Eurofondo F.I., Rovime Inversiones SICAV S.A., Quasar de Valors SICAV S.A., Orgor de Valores SICAV S.A., GBI 9000 SICAV S.A. v. The Russian Federation, SCC No.&nbsp;24/2007	\N	\N	\N	\N
214	http://www.italaw.com/cases/918	UNCITRAL (1976)	International Investment Agreement	Romak S.A.(Switzerland) v . The Republic of Uzbekistan, UNCITRAL, PCA Case No. AA280 	\N	\N	\N	\N
215	http://www.italaw.com/cases/920	ICSID	International Investment Agreement	The Rompetrol Group N.V. v. Romania, ICSID Case No. ARB/06/3	\N	\N	\N	\N
216	http://www.italaw.com/cases/923	SCC	International Investment Agreement	RosInvestCo UK Ltd. v. The Russian Federation, SCC Case No.&nbsp;V079/2005	\N	\N	\N	\N
217	http://www.italaw.com/cases/927	ICSID	International Investment Agreement	Spyridon Roussalis v. Romania, ICSID Case No. ARB/06/1	\N	\N	\N	\N
218	http://www.italaw.com/cases/937	ICSID	International Investment Agreement	Rachel S. Grynberg, Stephen M. Grynberg, Miriam Z. Grynberg and RSM Production Company v. Grenada, ICSID Case No. ARB/10/6 	\N	\N	\N	\N
219	http://www.italaw.com/cases/940	ICSID	Contract	RSM Production Corporation v. Grenada, ICSID Case No. ARB/05/14 	\N	\N	\N	\N
220	http://www.italaw.com/cases/942	ICSID	International Investment Agreement	Rumeli Telekom A.S. and Telsim Mobil Telekomunikasyon Hizmetleri A.S. v. Republic of Kazakhstan, ICSID Case No. ARB/05/16	\N	\N	\N	\N
221	http://www.italaw.com/cases/946	UNCITRAL (1976)	International Investment Agreement	Saar Papier Vertriebs GmbH v. Poland, UNCITRAL	\N	\N	\N	\N
222	http://www.italaw.com/cases/951	ICSID	International Investment Agreement	Saipem S.p.A. v. The People&#8217;s Republic of Bangladesh, ICSID Case No. ARB/05/07	\N	\N	\N	\N
223	http://www.italaw.com/cases/954	ICSID	International Investment Agreement	Salini Costruttori S.p.A. and Italstrade S.p.A. v. The Hashemite Kingdom of Jordan, ICSID Case No. ARB/02/13	\N	\N	\N	\N
224	http://www.italaw.com/cases/958	ICSID	International Investment Agreement	Salini Costruttori S.p.A. and Italstrade S.p.A. v. Kingdom of Morocco, ICSID Case No. ARB/00/4 	\N	\N	\N	\N
225	http://www.italaw.com/cases/961	UNCITRAL (1976)	International Investment Agreement	Saluka Investments B.V. v. The Czech Republic, UNCITRAL	\N	\N	\N	\N
226	http://www.italaw.com/cases/965	UNCITRAL (1976)	International Investment Agreement	Ashok Sancheti v. United Kingdom, UNCITRAL	\N	\N	\N	\N
227	http://www.italaw.com/cases/967	ICSID	International Investment Agreement	S &amp; T Oil Equipment and Machinery Ltd. v. Romania, ICSID Case No. ARB/07/13	\N	\N	\N	\N
228	http://www.italaw.com/cases/969	UNCITRAL (1976)	International Investment Agreement	S.D. Myers, Inc. v. Government of Canada, UNCITRAL	\N	\N	\N	\N
229	http://www.italaw.com/cases/982	ad hoc	International Investment Agreement	Mr. Franz Sedelmayer v. The Russian Federation, SCC	\N	\N	\N	\N
230	http://www.italaw.com/cases/1002	ICSID	International Investment Agreement	Sempra Energy International v. The Argentine Republic, ICSID Case No. ARB/02/16	\N	\N	\N	\N
231	http://www.italaw.com/cases/1009	ICSID	International Investment Agreement	SGS Société Générale de Surveillance S.A. v. Islamic Republic of Pakistan, ICSID Case No. ARB/01/13	\N	\N	\N	\N
509	http://www.italaw.com/cases/2626	SCC	International Investment Agreement	Grand Torg SRL v.&nbsp;Moldova	\N	\N	\N	\N
232	http://www.italaw.com/cases/1016	ICSID	International Investment Agreement	SGS Société Générale de Surveillance S.A. v. The Republic of Paraguay, ICSID Case No. ARB/07/29	\N	\N	\N	\N
233	http://www.italaw.com/cases/1018	ICSID	International Investment Agreement	SGS Société Générale de Surveillance S.A. v. Republic of the Philippines, ICSID Case No. ARB/02/6	\N	\N	\N	\N
234	http://www.italaw.com/cases/1022	ICSID	International Investment Agreement	Waguih Elie George Siag and Clorinda Vecchi v. The Arab Republic of Egypt, ICSID Case No. ARB/05/15	\N	\N	\N	\N
235	http://www.italaw.com/cases/1026	ICSID	International Investment Agreement	Siemens A.G. v. The Argentine Republic, ICSID Case No. ARB/02/8	\N	\N	\N	\N
236	http://www.italaw.com/cases/1033	UNCITRAL (1976)	International Investment Agreement	Sky Petroleum, Inc. v. Ministry of Economy, Trade, and Energy of Albania et al, UNCITRAL	\N	\N	\N	\N
237	http://www.italaw.com/cases/1035	ICSID	International Investment Agreement	Sociedad Anónima Eduardo Vieira v. República de Chile, ICSID Case No. ARB/04/7	\N	\N	\N	\N
238	http://www.italaw.com/cases/1039	UNCITRAL (1976)	International Investment Agreement	Société Générale In respect of DR Energy Holdings Limited and Empresa Distribuidora de Electricidad del Este, S.A. v. The Dominican Republic, UNCITRAL, LCIA Case No. UN&nbsp;7927	\N	\N	\N	\N
239	http://www.italaw.com/cases/1041	ICSID	International Investment Agreement	Hussein Nuaman Soufraki v. The United Arab Emirates, ICSID Case No. ARB/02/7	\N	\N	\N	\N
240	http://www.italaw.com/cases/1046	ICSID	International Investment Agreement	Standard Chartered Bank v. The United Republic of Tanzania, ICSID Case No. ARB/10/12	\N	\N	\N	\N
241	http://www.italaw.com/cases/1048	ICSID	International Investment Agreement	Suez, Sociedad General de Aguas de Barcelona S.A., and InterAguas Servicios Integrales del Agua S.A. v. The Argentine Republic, ICSID Case No. ARB/03/17 (formerly Aguas Provinciales de Santa Fe S.A, Suez, Sociedad General de Aguas de Barcelona, S.A., and	\N	\N	\N	\N
242	http://www.italaw.com/cases/1057	ICSID	International Investment Agreement	Suez, Sociedad General de Aguas de Barcelona, S.A.and Vivendi Universal, S.A. v. Argentine Republic, ICSID Case No. ARB/03/19 (formerly Aguas Argentinas, S.A., Suez, Sociedad General de Aguas de Barcelona, S.A.and Vivendi Universal, S.A. v. Argentine Re	\N	\N	\N	\N
243	http://www.italaw.com/cases/1066	UNCITRAL (1976)	International Investment Agreement	Swembalt AB, Sweden v. The Republic of Latvia, UNCITRAL	\N	\N	\N	\N
244	http://www.italaw.com/cases/1070	ICSID	International Investment Agreement	Adel A Hamadi Al Tamimi v. Sultanate of Oman, ICSID Case No. ARB/11/33	\N	\N	\N	\N
245	http://www.italaw.com/cases/1072	\N	International Investment Agreement	Tanmiah v. Tunisia, Arab Investment&nbsp;Court	\N	\N	\N	\N
246	http://www.italaw.com/cases/1074	UNCITRAL (1976)	International Investment Agreement	TCW Group, Inc and Dominican Energy Holdings, L.P. v. The Dominican Republic, UNCITRAL	\N	\N	\N	\N
247	http://www.italaw.com/cases/1087	ICSID Additional Facility	International Investment Agreement	Técnicas Medioambientales Tecmed, S.A. v. The United Mexican States, ICSID Case No. ARB (AF)/00/2	\N	\N	\N	\N
248	http://www.italaw.com/cases/1089	ICSID	International Investment Agreement	Telefónica S.A. v. The Argentine Republic, ICSID Case No. ARB/03/20	\N	\N	\N	\N
249	http://www.italaw.com/cases/1091	UNCITRAL (1976)	International Investment Agreement	Telekom Malaysia Berhad v. The Republic of Ghana, Case No. HA/RK 2004,&nbsp;667	\N	\N	\N	\N
250	http://www.italaw.com/cases/1093	ICSID	International Investment Agreement	Telenor Mobile Communications A.S. v. The Republic of Hungary, ICSID Case No. ARB/04/15	\N	\N	\N	\N
251	http://www.italaw.com/cases/1096	ICSID	International Investment Agreement, Foreign Investment Law	Tidewater Inc., Tidewater Investment SRL, Tidewater Caribe, C.A., Twenty Grand Offshore, L.L.C., Point Marine, L.L.C., Twenty Grand Marine Service, L.L.C., Jackson Marine, L.L.C. and Zapata Gulf Marine Operators, L.L.C. v. The Bolivarian Republic of V	\N	\N	\N	\N
252	http://www.italaw.com/cases/1099	ICSID	International Investment Agreement	Tokios Tokelés v. Ukraine, ICSID Case No. ARB/02/18	\N	\N	\N	\N
253	http://www.italaw.com/cases/1105	ICSID	International Investment Agreement	Total S.A. v. The Argentine Republic, ICSID Case No. ARB/04/01	\N	\N	\N	\N
254	http://www.italaw.com/cases/1108	ICSID	International Investment Agreement	Toto Costruzioni Generali S.p.A. v. The Republic of Lebanon, ICSID Case No. ARB/07/12	\N	\N	\N	\N
255	http://www.italaw.com/cases/1110	ICSID	Foreign Investment Law	Tradex Hellas S.A. v. Republic of Albania, ICSID Case No. ARB/94/2	\N	\N	\N	\N
256	http://www.italaw.com/cases/1113	ICSID	International Investment Agreement	Trans-Global Petroleum, Inc. v. The Hashemite Kingdom of Jordan, ICSID Case No. ARB/07/25	\N	\N	\N	\N
257	http://www.italaw.com/cases/1118	ICSID	International Investment Agreement	TSA Spectrum de Argentina S.A. v. Argentine Republic, ICSID Case No. ARB/05/5	\N	\N	\N	\N
258	http://www.italaw.com/cases/1122	LCIA	International Investment Agreement, Contract	TS Investment Corp. v. Republic of Armenia, LCIA	\N	\N	\N	\N
259	http://www.italaw.com/cases/1124	ICSID	International Investment Agreement	Tulip Real Estate and Development Netherlands B.V. v. Republic of Turkey, ICSID Case No. ARB/11/28	\N	\N	\N	\N
260	http://www.italaw.com/cases/1126	ICSID	International Investment Agreement	Señor Tza Yap Shum v. The Republic of Peru, ICSID Case No. ARB/07/6 	\N	\N	\N	\N
261	http://www.italaw.com/cases/1130	UNCITRAL (1976)	International Investment Agreement	Ulemek v. Croatia, UNCITRAL	\N	\N	\N	\N
262	http://www.italaw.com/cases/1132	UNCITRAL (1976)	International Investment Agreement	Ulysseas, Inc. v. The Republic of Ecuador, UNCITRAL	\N	\N	\N	\N
263	http://www.italaw.com/cases/1134	ICSID	International Investment Agreement	Marion Unglaube v. Republic of Costa Rica, ICSID Case No. ARB/08/1	\N	\N	\N	\N
264	http://www.italaw.com/cases/1136	ICSID	International Investment Agreement	Reinhard Unglaube v. Republic of Costa Rica, ICSID Case No. ARB/09/20 	\N	\N	\N	\N
265	http://www.italaw.com/cases/1138	UNCITRAL (1976)	International Investment Agreement	United Parcel Service of America Inc. v. Government of Canada, UNCITRAL 	\N	\N	\N	\N
266	http://www.italaw.com/cases/1141	ICSID	International Investment Agreement	Universal Compression International Holdings, S.L.U. v. The Bolivarian Republic of Venezuela, ICSID Case No.&nbsp;Arb/10/9	\N	\N	\N	\N
267	http://www.italaw.com/cases/1144	ICSID	International Investment Agreement	Urbaser S.A. and Consorcio de Aguas Bilbao Bizkaia, Bilbao Biskaia Ur Partzuergoa v. The Argentine Republic, ICSID Case No. ARB/07/26 	\N	\N	\N	\N
268	http://www.italaw.com/cases/1146	ICSID Additional Facility	International Investment Agreement	Vannessa Ventures Ltd. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB(AF)04/6	\N	\N	\N	\N
269	http://www.italaw.com/cases/1148	ICSID	International Investment Agreement	Vattenfall AB, Vattenfall Europe AG, Vattenfall Europe Generation AG v. Federal Republic of Germany, ICSID Case No. ARB/09/6 (formerly Vattenfall AB, Vattenfall Europe AG, Vattenfall Europe Generation AG &amp; Co. KG v. The Federal Republic of Germany)	\N	\N	\N	\N
270	http://www.italaw.com/cases/1151	UNCITRAL (1976)	International Investment Agreement	Veteran Petroleum Limited (Cyprus) v. The Russian Federation, UNCITRAL, PCA Case No. AA&nbsp;228	\N	\N	\N	\N
271	http://www.italaw.com/cases/1153	UNCITRAL (1976)	International Investment Agreement	Vivendi v. Republic of Poland, UNCITRAL	\N	\N	\N	\N
272	http://www.italaw.com/cases/1155	ICSID Additional Facility	International Investment Agreement	Waste Management, Inc. v. United Mexican States, ICSID Case No. ARB(AF)/98/2	\N	\N	\N	\N
273	http://www.italaw.com/cases/1158	ICSID Additional Facility	International Investment Agreement	Waste Management, Inc. v. United Mexican States (“Number 2”), ICSID Case No. ARB(AF)/00/3	\N	\N	\N	\N
274	http://www.italaw.com/cases/1162	ICSID	International Investment Agreement	Wena Hotels Ltd. v. Arab Republic of Egypt, ICSID Case No. ARB/98/4	\N	\N	\N	\N
275	http://www.italaw.com/cases/1167	ICSID	International Investment Agreement	Western NIS Enterprise Fund v. Ukraine, ICSID Case No. ARB/04/2 	\N	\N	\N	\N
276	http://www.italaw.com/cases/1169	UNCITRAL (1976)	International Investment Agreement	White Industries Australia Limited v. The Republic of India, UNCITRAL 	\N	\N	\N	\N
277	http://www.italaw.com/cases/1171	ICSID	International Investment Agreement	Wintershall Aktiengesellschaft v. Argentine Republic, ICSID Case No. ARB/04/14	\N	\N	\N	\N
278	http://www.italaw.com/cases/1173	ICSID	International Investment Agreement	Yaung Chi Oo Trading Pte. Ltd. v. Government of the Union of Myanmar, ASEAN I.D. Case No. ARB/01/1	\N	\N	\N	\N
279	http://www.italaw.com/cases/1175	UNCITRAL (1976)	International Investment Agreement	Yukos Universal Limited (Isle of Man) v. The Russian Federation, UNCITRAL, PCA Case No. AA&nbsp;227	\N	\N	\N	\N
280	http://www.italaw.com/cases/1177	UNCITRAL (1976)	International Investment Agreement	Compagnie International de Maintenance (CIM) v. Ethiopia, UNCITRAL	\N	\N	\N	\N
281	http://www.italaw.com/cases/1179	UNCITRAL (1976)	International Investment Agreement	Les Laboratoires Servier, S.A.A., Biofarma, S.A.S., Arts et Techniques du Progres S.A.S. v. Republic of Poland, UNCITRAL	\N	\N	\N	\N
282	http://www.italaw.com/cases/1185	\N	International Investment Agreement	Konsortium Oeconomismus v. Czech&nbsp;Republic 	\N	\N	\N	\N
283	http://www.italaw.com/cases/1188	ICSID	International Investment Agreement	Rafat Ali Rizvi v. Republic of Indonesia, ICSID Case No. ARB/11/13	\N	\N	\N	\N
284	http://www.italaw.com/cases/1191	\N	International Investment Agreement	Merck v.&nbsp;Ecuador	\N	\N	\N	\N
285	http://www.italaw.com/cases/1196	\N	International Investment Agreement	Saint Marys VCNA, LLC v. Government of&nbsp;Canada	\N	\N	\N	\N
286	http://www.italaw.com/cases/1198	UNCITRAL (1976)	International Investment Agreement	Murphy Exploration &amp; Production Company – International v. Republic of Ecuador, UNCITRAL, PCA Case No. AA434	\N	\N	\N	\N
287	http://www.italaw.com/cases/1200	UNCITRAL (1976)	International Investment Agreement	Telekom Malaysia Berhad v. The Republic of Ghana, Case No. HA/RK 2004,&nbsp;788	\N	\N	\N	\N
288	http://www.italaw.com/cases/1217	\N	International Investment Agreement	Mercer International Inc. v. Government of Canada, ICSID Case No. ARB(AF)/12/3	\N	\N	\N	\N
289	http://www.italaw.com/cases/1220	ICSID	International Investment Agreement	Kılıç İnşaat İthalat İhracat Sanayi ve Ticaret Anonim Şirketi v. Turkmenistan, ICSID Case No. ARB/10/1	\N	\N	\N	\N
290	http://www.italaw.com/cases/1222	UNCITRAL (1976)	International Investment Agreement	Jan Oostergetel and Theodora Laurentius v. The Slovak Republic, UNCITRAL 	\N	\N	\N	\N
291	http://www.italaw.com/cases/1225	ICSID Additional Facility	International Investment Agreement	Mobil Investments Canada Inc. and Murphy Oil Corporation v. Canada, ICSID Case No. ARB(AF)/07/4	\N	\N	\N	\N
292	http://www.italaw.com/cases/1230	\N	\N	Desarrollos en Salud S.A. S/Concurso preventivo/ S/ Incidente de Revisión (N.V. NISSHO IWAI&nbsp;S.A. (BENELUX)) 	\N	\N	\N	\N
293	http://www.italaw.com/cases/1231	\N	\N	Dunkeld International Investments Ltd. v.&nbsp;Belize	\N	\N	\N	\N
294	http://www.italaw.com/cases/1232	\N	\N	Wilson Beimar Magne Hinojosa, Diputado Nacional contra Eduardo Rodríguez Veltzé, Presidente Constitucional de la República de Bolivia, y&nbsp;otro	\N	\N	\N	\N
295	http://www.italaw.com/cases/1233	\N	\N	Council of Canadians et al. v. Attorney General of&nbsp;Canada	\N	\N	\N	\N
296	http://www.italaw.com/cases/1234	\N	\N	 Ruling of the Constitutional Court of&nbsp;Ecuador:	\N	\N	\N	\N
297	http://www.italaw.com/cases/1235	\N	\N	Rulings of the Constitutional Court of&nbsp;Ecuador:	\N	\N	\N	\N
298	http://www.italaw.com/cases/1236	\N	\N	Commission of the European Commission v. Republic of Austria, European Court of Justice Case&nbsp;C-205/06	\N	\N	\N	\N
299	http://www.italaw.com/cases/1237	\N	\N	Commission of the European Commission v. Kingdom of Sweden, European Court of Justice Case&nbsp;C-249/06	\N	\N	\N	\N
300	http://www.italaw.com/cases/1238	\N	\N	Kohlhofer and Minarik v. Czech Republic, ECHR Applications nos. 32921/03, 28464/04 and&nbsp;5344/05	\N	\N	\N	\N
301	http://www.italaw.com/cases/1239	\N	\N	SGS Société Générale de Surveillance S.A. v. Islamic Republic of Pakistan, ICSID Case No.&nbsp;ARB/01/13	\N	\N	\N	\N
302	http://www.italaw.com/cases/1240	\N	\N	Interpretation by the Venezuelan Political and Administrative Chamber of the Supreme Tribunal of&nbsp;Justice:	\N	\N	\N	\N
303	http://www.italaw.com/cases/1241	\N	\N	Interpretation by the Venezuelan Constitutional Chamber of the Supreme Tribunal of&nbsp;Justice:	\N	\N	\N	\N
304	http://www.italaw.com/cases/1242	\N	\N	Interpretation by the Venezuelan Constitutional Chamber of the Supreme Tribunal of&nbsp;Justice:	\N	\N	\N	\N
305	http://www.italaw.com/cases/1252	\N	\N	Council of Canadians, CUPW and the Charter Committee on Poverty Issues v. the Attorney General of&nbsp;Canada	\N	\N	\N	\N
306	http://www.italaw.com/cases/1282	\N	International Investment Agreement	Plain Packaging of Tobacco Products&nbsp;Dispute 	\N	\N	\N	Canada
307	http://www.italaw.com/cases/1290	LCIA	Other Treaty Based	United States v. Canada, LCIA Case No.&nbsp;81010	\N	\N	Agriculture, forestry and fishing	\N
308	http://www.italaw.com/cases/1445	\N	International Investment Agreement	Peter Franz Vocklinghaus v. Czech&nbsp;Republic	\N	\N	\N	\N
309	http://www.italaw.com/cases/1451	\N	\N	SGS Société Générale de Surveillance S.A. v. Islamic Republic of Pakistan, ICSID Case No.&nbsp;ARB/01/13	\N	\N	\N	\N
310	http://www.italaw.com/cases/1454	ICSID	International Investment Agreement	Adem Dogan v. Turkmenistan, ICSID Case No. ARB/09/9	\N	\N	\N	\N
311	http://www.italaw.com/cases/1456	ICSID	International Investment Agreement	SAUR International SA v. Republic of Argentina, ICSID Case No. ARB/04/4	\N	\N	\N	\N
312	http://www.italaw.com/cases/1458	\N	International Investment Agreement	Intertrade Holding GmbH v. Czech&nbsp;Republic	\N	\N	\N	\N
313	http://www.italaw.com/cases/1460	ICSID	International Investment Agreement	H&amp;H Enterprises Investments, Inc. v. Arab Republic of Egypt, ICSID Case No. ARB&nbsp;09/15	\N	\N	\N	\N
314	http://www.italaw.com/cases/1470	ICSID	International Investment Agreement	Border Timbers Limited, Border Timbers International (Private) Limited, and Hangani Development Co. (Private) Limited v. Republic of Zimbabwe, ICSID Case No. ARB/10/25	\N	\N	\N	\N
315	http://www.italaw.com/cases/1472	ICSID	International Investment Agreement	Bernhard von Pezold and Others v. Republic of Zimbabwe, ICSID Case No. ARB/10/15	\N	\N	\N	\N
316	http://www.italaw.com/cases/1477	ICSID Additional Facility	International Investment Agreement	Telefónica S.A. v. United Mexican States, ICSID Case No. ARB(AF)/12/4	\N	\N	\N	\N
317	http://www.italaw.com/cases/1479	ICSID	International Investment Agreement	Churchill Mining PLC and Planet Mining Pty Ltd v. Republic of Indonesia, ICSID Case No. ARB/12/14 and&nbsp;12/40	\N	\N	\N	\N
318	http://www.italaw.com/cases/1487	ICSID	International Investment Agreement	Antoine Goetz &amp; Others and S.A. Affinage des Metaux v. Republic of Burundi, ICSID Case No. ARB/01/2	\N	\N	\N	\N
319	http://www.italaw.com/cases/1490	ICSID	Foreign Investment Law	Getma International and others v. Republic of Guinea, ICSID Case No. ARB/11/29	\N	\N	\N	\N
320	http://www.italaw.com/cases/1492	UNCITRAL (1976)	International Investment Agreement	Intersema Bau AG v. Libya (UNCITRAL)	\N	\N	\N	\N
321	http://www.italaw.com/cases/1494	UNCITRAL (1976)	International Investment Agreement	Republic of Ecuador v. United States of America (PCA Case No.&nbsp;2012-5)	\N	\N	\N	\N
322	http://www.italaw.com/cases/1506	ICSID Additional Facility	International Investment Agreement, Foreign Investment Law	Sistem Mühendislik Inşaat Sanayi ve Ticaret A.Ş. v. Kyrgyz Republic, ICSID Case No. ARB(AF)/06/1	\N	\N	\N	\N
323	http://www.italaw.com/cases/1511	ICSID	International Investment Agreement	Bidzina Ivanishvili v. Georgia, ICSID Case No. ARB/12/27	\N	\N	\N	\N
324	http://www.italaw.com/cases/1513	ICSID	International Investment Agreement	Blue Bank International &amp; Trust (Barbados) Ltd. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB&nbsp;12/20	\N	\N	\N	\N
325	http://www.italaw.com/cases/1516	ICSID Additional Facility	International Investment Agreement	Swisslion DOO Skopje v. The Former Yugoslav Republic of Macedonia, ICSID Case No. ARB/09/16	\N	\N	\N	\N
326	http://www.italaw.com/cases/1518	ICSID	International Investment Agreement	Iberdrola Energía S.A. v. Republic of Guatemala, ICSID Case No. ARB/09/5	\N	\N	\N	\N
327	http://www.italaw.com/cases/1520	ICSID	International Investment Agreement	Daimler Financial Services AG v. Argentine Republic, ICSID Case No. ARB/05/1	\N	\N	\N	\N
328	http://www.italaw.com/cases/1524	ICSID	International Investment Agreement	 Flughafen Zürich A.G. and Gestión e Ingenería IDC S.A. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/10/19	\N	\N	\N	\N
329	http://www.italaw.com/cases/1527	UNCITRAL (1976)	International Investment Agreement	Hesham T. M. Al Warraq v. Republic of Indonesia, UNCITRAL	\N	\N	\N	\N
330	http://www.italaw.com/cases/1530	ICSID Additional Facility	International Investment Agreement	Crystallex International Corporation v. Bolivarian Republic of Venezuela, ICSID Case No. ARB(AF)/11/2	\N	\N	\N	\N
331	http://www.italaw.com/cases/1543	UNCITRAL (1976)	Foreign Investment Law, Contract	Ruby Roz Agricol and Kaseem Omar v. Kazakhstan, UNCITRAL	\N	\N	\N	\N
332	http://www.italaw.com/cases/1545	UNCITRAL (1976)	Foreign Investment Law	World Wide Minerals v. Republic of Kazakhstan, UNCITRAL (Case&nbsp;1)	\N	\N	\N	\N
333	http://www.italaw.com/cases/1547	UNCITRAL (1976)	International Investment Agreement	Laskaridis Shipping Co. LTD, Lavinia Corporation, A.K.Laskaridis and P.K.Laskaridis v. Ukraine, UNCITRAL	\N	\N	\N	\N
334	http://www.italaw.com/cases/1563	ICSID	International Investment Agreement	Bosh International, Inc and B&amp;P Ltd Foreign Investments Enterprise v. Ukraine, ICSID Case No. ARB/08/11	\N	\N	\N	\N
335	http://www.italaw.com/cases/1579	ICSID	International Investment Agreement	Karmer Marble Tourism Construction Industry and Commerce Limited Liability Company v. Georgia, ICSID Case No. ARB/08/19	\N	\N	\N	\N
336	http://www.italaw.com/cases/1581	UNCITRAL (1976)	International Investment Agreement	iZee Enterprises LLC, Lazer-2 Tbilisi Ltd., and Cafe Rustaveli Ltd. v. Georgia, UNCITRAL 	\N	\N	\N	\N
337	http://www.italaw.com/cases/1585	UNCITRAL (2010)	International Investment Agreement	Windstream Energy LLC v. Government of Canada, UNCITRAL 	\N	\N	\N	\N
338	http://www.italaw.com/cases/1588	UNCITRAL (1976)	International Investment Agreement	William Ralph Clayton, William Richard Clayton, Douglas Clayton, Daniel Clayton and Bilcon of Delaware Inc. v. Government of Canada, UNCITRAL, PCA Case No.&nbsp;2009-04	In favour of Investor	\N	Mining and quarrying	\N
339	http://www.italaw.com/cases/1603	UNCITRAL (1976)	International Investment Agreement	Merck Sharpe &amp; Dohme (I.A.) Corporation v. The Republic of Ecuador, UNCITRAL, PCA	\N	\N	\N	\N
340	http://www.italaw.com/cases/1606	UNCITRAL (1976)	International Investment Agreement	Lone Pine Resources Inc. v. The Government of Canada, UNCITRAL	\N	\N	\N	\N
341	http://www.italaw.com/cases/1619	UNCITRAL (1976)	International Investment Agreement	Mesa Power Group, LLC v. Government of Canada, UNCITRAL, PCA Case No.&nbsp;2012-17	\N	\N	\N	\N
342	http://www.italaw.com/cases/1625	UNCITRAL (1976)	International Investment Agreement	Eli Lilly and Company v. The Government of Canada, UNCITRAL, ICSID Case No. UNCT/14/2	\N	\N	\N	\N
343	http://www.italaw.com/cases/1629	ICSID	International Investment Agreement	TECO Guatemala Holdings, LLC v. Republic of Guatemala, ICSID Case No. ARB/10/23	\N	\N	\N	\N
344	http://www.italaw.com/cases/1631	ICSID	International Investment Agreement	Tethyan Copper Company Pty Limited v. Islamic Republic of Pakistan, ICSID Case No. ARB/12/1	\N	\N	\N	\N
345	http://www.italaw.com/cases/1648	ICSID	International Investment Agreement	Teinver S.A., Transportes de Cercanías S.A. and Autobuses Urbanos del Sur S.A. v. The Argentine Republic, ICSID Case No. ARB/09/1	\N	\N	\N	\N
346	http://www.italaw.com/cases/1651	ICSID	International Investment Agreement	M. Meerapfel Söhne AG v. Central African Republic, ICSID Case No. ARB/07/10	\N	\N	\N	\N
347	http://www.italaw.com/cases/1654	ICSID	International Investment Agreement	Vattenfall AB and others v. Federal Republic of Germany, ICSID Case No. ARB/12/12	\N	\N	\N	\N
348	http://www.italaw.com/cases/1656	ICSID	International Investment Agreement	Novera AD, Novera Properties B.V. and Novera Properties N.V. v. Republic of Bulgaria, ICSID Case No. ARB/12/16	\N	\N	\N	\N
349	http://www.italaw.com/cases/1687	ICSID Additional Facility	International Investment Agreement	Apotex Holdings Inc. and Apotex Inc. v. United States of America, ICSID Case No. ARB(AF)/12/1	\N	\N	\N	\N
350	http://www.italaw.com/cases/1706	UNCITRAL (1976)	International Investment Agreement	European American Investment Bank AG (EURAM) v. Slovak Republic, UNCITRAL 	\N	\N	\N	\N
352	http://www.italaw.com/cases/1712	\N	International Investment Agreement	James Falgout, Barbara Falgout, Clarence Johnson and Retire in Chiriqui, S.A v. The Republic of&nbsp;Panama	\N	\N	\N	\N
353	http://www.italaw.com/cases/1731	ICSID	Contract	Astaldi S.p.A. v. Republic of Honduras, ICSID Case No. ARB/07/32	\N	\N	\N	\N
354	http://www.italaw.com/cases/1734	ICSID Additional Facility	International Investment Agreement	Vincent J. Ryan, Schooner Capital LLC, and Atlantic Investment Partners LLC v. Republic of Poland, ICSID Case No. ARB(AF)/11/3	\N	\N	\N	\N
355	http://www.italaw.com/cases/1745	ICSID	International Investment Agreement	Deutsche Bank AG v. Democratic Socialist Republic of Sri Lanka, ICSID Case No. ARB/09/2	\N	\N	\N	\N
356	http://www.italaw.com/cases/1750	ICSID	International Investment Agreement	Ambiente Ufficio S.p.A. and others v. Argentine Republic, ICSID Case No. ARB/08/9 (formerly Giordano Alpi and others v. Argentine&nbsp;Republic)	\N	\N	\N	\N
357	http://www.italaw.com/cases/1763	ICSID	Contract	Elsamex, S.A. v. Republic of Honduras, ICSID Case No. ARB/09/4	\N	\N	\N	\N
358	http://www.italaw.com/cases/1765	ICSID	International Investment Agreement	Accession Mezzanine Capital L.P. and Danubius Kereskedöház Vagyonkezelö Zrt. v. Hungary, ICSID Case No. ARB/12/3	\N	\N	\N	\N
359	http://www.italaw.com/cases/1784	ICSID	International Investment Agreement	Saint-Gobain Performance Plastics Europe v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/12/13	\N	\N	\N	\N
360	http://www.italaw.com/cases/1786	ICSID	International Investment Agreement	Agility for Public Warehousing Company K.S.C. v. Islamic Republic of Pakistan, ICSID Case No. ARB/11/8	\N	\N	\N	\N
361	http://www.italaw.com/cases/1797	\N	International Investment Agreement	Victims of the Stanford Ponzi Scheme v. The Government of the United States of&nbsp;America	\N	\N	\N	\N
362	http://www.italaw.com/cases/1812	\N	International Investment Agreement	Albertis v. The Government of Bolivia, UNCITRAL, PCA	\N	\N	\N	\N
363	http://www.italaw.com/cases/1824	\N	International Investment Agreement	Attila Dogan Construction and Installation Co. v. The Sultanate of&nbsp;Oman 	\N	\N	\N	\N
364	http://www.italaw.com/cases/1833	ICSID	International Investment Agreement	Slovak Gas Holding BV, GDF International SAS and E.ON Ruhrgas International GmbH v. Slovak Republic, ICSID Case No. ARB/12/7	\N	\N	\N	\N
365	http://www.italaw.com/cases/1846	ICSID	International Investment Agreement	Mr. Franck Charles Arif v. Republic of Moldova, ICSID Case No. ARB/11/23	\N	\N	\N	\N
366	http://www.italaw.com/cases/1871	ICSID Additional Facility	International Investment Agreement	Abengoa S.A. y COFIDES S.A. v. United Mexican States, ICSID Case No. ARB(AF)/09/2	\N	\N	\N	\N
367	http://www.italaw.com/cases/1881	ICSID	International Investment Agreement	Pan American Energy LLC v. Plurinational State of Bolivia, ICSID Case No. ARB/10/8	\N	\N	\N	\N
368	http://www.italaw.com/cases/1898	UNCITRAL (1976)	International Investment Agreement	InterTrade Holding GmbH v. The Czech Republic, UNCITRAL, PCA	\N	\N	\N	\N
369	http://www.italaw.com/cases/1903	UNCITRAL (1976)	International Investment Agreement	U.S. Steel Global Holdings I B.V. v. The Slovak Republic, UNCITRAL, PCA Case No.&nbsp;2013-6	\N	\N	\N	\N
370	http://www.italaw.com/cases/1904	UNCITRAL (1976)	International Investment Agreement	Ilya Levitis v. The Kyrgyz Republic, UNCITRAL	\N	\N	\N	\N
371	http://www.italaw.com/cases/1911	ICSID	International Investment Agreement, Contract	Repsol YPF Ecuador, S.A. and others v. Republic of Ecuador and Empresa Estatal Petróleos del Ecuador (PetroEcuador), ICSID Case No. ARB/08/10	\N	\N	\N	\N
372	http://www.italaw.com/cases/1912	ICSID	International Investment Agreement, Contract	Repsol YPF Ecuador, S.A. and others v. Republic of Ecuador and Empresa Estatal Petróleos del Ecuador (PetroEcuador), ICSID Case No. ARB/08/10	\N	\N	\N	\N
373	http://www.italaw.com/cases/1913	ICSID	International Investment Agreement, Contract	Repsol YPF Ecuador, S.A. and others v. Republic of Ecuador and Empresa Estatal Petróleos del Ecuador (PetroEcuador), ICSID Case No. ARB/08/10	\N	\N	\N	\N
374	http://www.italaw.com/cases/1918	ICSID Additional Facility	International Investment Agreement	Consolidated Exploration Holdings Ltd. and others v. Kyrgyz Republic, ICSID Case No. ARB(AF)/13/1	\N	\N	\N	\N
375	http://www.italaw.com/cases/1920	\N	Foreign Investment Law	Mikhail Nadel v. The Kyrgyz&nbsp;Republic	\N	\N	\N	\N
376	http://www.italaw.com/cases/1921	UNCITRAL (1976)	International Investment Agreement, Foreign Investment Law	Mikhail Nadel and Ithaca Holdings Inc. v. The Kyrgyz Republic, UNCITRAL 	\N	\N	\N	\N
377	http://www.italaw.com/cases/1924	UNCITRAL (1976)	International Investment Agreement	OAO Gazprom v. The Republic of Lithuania, UNCITRAL	\N	\N	\N	\N
378	http://www.italaw.com/cases/1926	ICSID	International Investment Agreement	Ampal-American Israel Corporation and others v. Arab Republic of Egypt, ICSID Case No. ARB/12/11	\N	\N	\N	\N
379	http://www.italaw.com/cases/1933	\N	International Investment Agreement	Bycell (Maxim Naumchenko, Andrey Polouektov and Tenoch Holdings Ltd) v.&nbsp;India	\N	\N	\N	\N
380	http://www.italaw.com/cases/1935	\N	International Investment Agreement	Capital Global and Kaif Investment v.&nbsp;India	\N	\N	\N	\N
381	http://www.italaw.com/cases/1937	ICSID	International Investment Agreement	Dan Cake S.A. v. Hungary, ICSID Case No. ARB/12/9	\N	\N	\N	\N
382	http://www.italaw.com/cases/1939	ICSID	International Investment Agreement	Isolux Corsán Concesiones S.A. v. Republic of Peru, ICSID Case No. ARB/12/5 (formerly Elecnor S.A. and Isolux Corsán Concesiones S.A. v. Republic of Peru)	\N	\N	\N	\N
383	http://www.italaw.com/cases/1941	ICSID	International Investment Agreement	Fábrica de Vidrios Los Andes, C.A. and Owens-Illinois de Venezuela, C.A. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/12/21	\N	\N	\N	\N
384	http://www.italaw.com/cases/1945	\N	International Investment Agreement	Axiata Group v.&nbsp;India	\N	\N	\N	\N
385	http://www.italaw.com/cases/1962	\N	International Investment Agreement	CC/Devas (Mauritius) Ltd., Devas Employees Mauritius Private Limited and Telecom Devas Mauritius Limited v. India, UNCITRAL	\N	\N	\N	\N
386	http://www.italaw.com/cases/1964	ICSID	International Investment Agreement	Gelsenwasser AG v. People&#8217;s Democratic Republic of Algeria, ICSID Case No. ARB/12/32	\N	\N	\N	\N
387	http://www.italaw.com/cases/1966	ICSID	International Investment Agreement	Georg Gavrilovic and Gavrilovic d.o.o. v. Republic of Croatia, ICSID Case No. ARB/12/39	\N	\N	\N	\N
388	http://www.italaw.com/cases/1968	ICSID	International Investment Agreement	Grupo Francisco Hernando Contreras v. Republic of Equatorial Guinea, ICSID Case No. ARB(AF)/12/2	\N	\N	\N	\N
389	http://www.italaw.com/cases/1970	ICSID	International Investment Agreement	Guardian Fiduciary Trust, Ltd, f/k/a Capital Conservator Savings &amp; Loan, Ltd v. Macedonia, former Yugoslav Republic of, ICSID Case No. ARB/12/31	\N	\N	\N	\N
390	http://www.italaw.com/cases/1972	ICSID	International Investment Agreement	Inversión y Gestión de Bienes, IGB, S.L. and IGB18 Las Rozas, S.L. v. Kingdom of Spain, ICSID Case No. ARB/12/17	\N	\N	\N	\N
391	http://www.italaw.com/cases/1977	ICSID	International Investment Agreement	Liman Caspian Oil BV and NCL Dutch Investment BV v. Republic of Kazakhstan, ICSID Case No. ARB/07/14	\N	\N	\N	\N
392	http://www.italaw.com/cases/2010	ICSID	International Investment Agreement	Burimi SRL and Eagle Games SH.A v. Republic of Albania, ICSID Case No. ARB/11/18	\N	\N	\N	\N
393	http://www.italaw.com/cases/2020	ICSID Additional Facility	International Investment Agreement	Lao Holdings N.V. v. Lao People’s Democratic Republic, ICSID Case No. ARB(AF)/12/6	\N	\N	\N	\N
394	http://www.italaw.com/cases/2022	ICSID	International Investment Agreement	LSF-KEB Holdings SCA and others v. Republic of Korea, ICSID Case No. ARB/12/37	\N	\N	\N	\N
395	http://www.italaw.com/cases/2024	ICSID	International Investment Agreement	Karkey Karadeniz Elektrik Uretim A.S. v. Islamic Republic of Pakistan, ICSID Case No. ARB/13/1	\N	\N	\N	\N
396	http://www.italaw.com/cases/2026	ICSID	International Investment Agreement	Marco Gavazzi and Stefano Gavazzi v. Romania, ICSID Case No. ARB/12/25	\N	\N	\N	\N
397	http://www.italaw.com/cases/2028	ICSID Additional Facility	International Investment Agreement, Foreign Investment Law	MNSS B.V. and Recupero Credito Acciaio N.V. v. Montenegro, ICSID Case No. ARB(AF)/12/8	\N	\N	\N	\N
398	http://www.italaw.com/cases/2032	UNCITRAL (1976)	International Investment Agreement	Mr. Ali Allawi v. Pakistan, UNCITRAL	\N	\N	\N	\N
399	http://www.italaw.com/cases/2034	UNCITRAL (1976)	International Investment Agreement	Mr. Yosef Maiman and Others v. Egypt, UNCITRAL	\N	\N	\N	\N
400	http://www.italaw.com/cases/2036	ICSID	International Investment Agreement	Muhammet Çap &amp; Sehil Inşaat Endustri ve Ticaret Ltd. Sti. v. Turkmenistan, ICSID Case No. ARB/12/6	\N	\N	\N	\N
401	http://www.italaw.com/cases/2038	UNCITRAL (1976)	International Investment Agreement	Orascom Telelcom Holding v. Algeria, UNCITRAL	\N	\N	\N	\N
402	http://www.italaw.com/cases/2040	ICSID	International Investment Agreement	Orascom TMT Investments S.à r.l. v. People&#8217;s Democratic Republic of Algeria, ICSID Case No. ARB/12/35	\N	\N	\N	\N
403	http://www.italaw.com/cases/2042	ICSID	International Investment Agreement	Ping An Life Insurance Company of China, Limited and Ping An Insurance (Group) Company of China, Limited v. Kingdom of Belgium, ICSID Case No. ARB/12/29	\N	\N	\N	\N
404	http://www.italaw.com/cases/2044	\N	International Investment Agreement	Progas Energy Ltd. v.&nbsp;Pakistan	\N	\N	\N	\N
405	http://www.italaw.com/cases/2046	ICSID	International Investment Agreement	Repsol, S.A. and Repsol Butano, S.A. v. Argentine Republic, ICSID Case No. ARB/12/38	\N	\N	\N	\N
406	http://www.italaw.com/cases/2048	ICSID Additional Facility	International Investment Agreement	Rusoro Mining Ltd. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB(AF)/12/5	\N	\N	\N	\N
407	http://www.italaw.com/cases/2050	UNCITRAL (1976)	International Investment Agreement	Sanum Investments Limited v. Lao People’s Democratic Republic, UNCITRAL, PCA Case No.&nbsp;2013-13	\N	\N	\N	\N
408	http://www.italaw.com/cases/2052	ICSID	International Investment Agreement	Supervision y Control S.A. v. Republic of Costa Rica, ICSID Case No. ARB/12/4	\N	\N	\N	\N
409	http://www.italaw.com/cases/2055	UNCITRAL (1976)	Foreign Investment Law, Contract	Carl A. Sax and others v. The City of St. Petersburg, UNCITRAL	\N	\N	\N	\N
410	http://www.italaw.com/cases/2062	ICSID	International Investment Agreement	Joseph Houben v. Republic of Burundi, ICSID Case No. ARB/13/7	\N	\N	\N	\N
411	http://www.italaw.com/cases/2068	ICSID	International Investment Agreement	Marfin Investment Group v. The Republic of Cyprus, ICSID Case No. ARB/13/27	\N	\N	\N	\N
412	http://www.italaw.com/cases/2070	UNCITRAL (1976)	International Investment Agreement	CEZ v. The Republic of Albania, UNCITRAL	\N	\N	\N	\N
413	http://www.italaw.com/cases/2073	ICSID	International Investment Agreement	Poštová banka, a.s. and ISTROKAPITAL SE v. Hellenic Republic, ICSID Case No. ARB/13/8	\N	\N	\N	\N
414	http://www.italaw.com/cases/2076	UNCITRAL (1976)	International Investment Agreement	Luigiterzo Bosca v. Lithuania, UNCITRAL	\N	\N	\N	\N
415	http://www.italaw.com/cases/2078	ICSID	International Investment Agreement	Convial Callao S.A. and CCI - Compañía de Concesiones de Infraestructura S.A. v. Republic of Peru, ICSID Case No. ARB/10/2	\N	\N	\N	\N
416	http://www.italaw.com/cases/2080	UNCITRAL (1976)	International Investment Agreement	Antaris Solar GmbH and others v. Czech Repulic, UNCITRAL	\N	\N	\N	\N
417	http://www.italaw.com/cases/2082	SCC	International Investment Agreement	Charanne and Construction Investments v. Spain, SCC	\N	\N	\N	\N
418	http://www.italaw.com/cases/2084	ICSID	International Investment Agreement	Tenaris S.A. and Talta - Trading e Marketing Sociedade Unipessoal Lda. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/12/23	\N	\N	\N	\N
419	http://www.italaw.com/cases/2089	ICSID	International Investment Agreement	Ternium S.A. and Consorcio Siderurgia Amazonia S.L. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/12/19	\N	\N	\N	\N
420	http://www.italaw.com/cases/2091	ICSID	International Investment Agreement	Transban Investments Corp. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/12/24	\N	\N	\N	\N
421	http://www.italaw.com/cases/2093	ICSID	International Investment Agreement	Tullow Uganda Operations PTY LTD v. Republic of Uganda, ICSID Case No. ARB/12/34	\N	\N	\N	\N
422	http://www.italaw.com/cases/2095	ICSID	International Investment Agreement	UAB E energija (Lithuania) v. Republic of Latvia, ICSID Case No. ARB/12/33	\N	\N	\N	\N
423	http://www.italaw.com/cases/2097	ICSID	International Investment Agreement	Valle Verde Sociedad Financiera S.L. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/12/18	\N	\N	\N	\N
424	http://www.italaw.com/cases/2099	ICSID	International Investment Agreement	Venoklim Holding B.V. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/12/22	\N	\N	\N	\N
425	http://www.italaw.com/cases/2101	ICSID	International Investment Agreement	Veolia Propreté v. Arab Republic of Egypt, ICSID Case No. ARB/12/15	\N	\N	\N	\N
426	http://www.italaw.com/cases/2108	ICSID	International Investment Agreement, Contract	Corporación Quiport S.A. and others v. Republic of Ecuador, ICSID Case No. ARB/09/23	\N	\N	\N	\N
427	http://www.italaw.com/cases/2110	UNCITRAL (1976)	International Investment Agreement	Spence International Investments, LLC, Bob F. Spence, Joseph M. Holsten, Brenda K. Copher, Ronald E. Copher, Brette E. Berkowitz, Trevor B. Berkowitz, Aaron C. Berkowitz and Glen Gremillion v. The Government of the Republic of Costa Rica, UNCITRAL	\N	\N	\N	\N
428	http://www.italaw.com/cases/2112	ICSID	International Investment Agreement	International Company for Railway Systems (ICRS) v. Hashemite Kingdom of Jordan, ICSID Case No. ARB/09/13	\N	\N	\N	\N
430	http://www.italaw.com/cases/2121	UNCITRAL (1976)	International Investment Agreement	South American Silver Limited v. Bolivia, UNCITRAL, PCA Case&nbsp;No. 2013-15	\N	\N	\N	\N
431	http://www.italaw.com/cases/2123	ICSID	International Investment Agreement	Impresa Grassetto S. p. A., in liquidation v. Republic of Slovenia, ICSID Case No. ARB/13/10	\N	\N	\N	\N
432	http://www.italaw.com/cases/2125	ICSID	International Investment Agreement	Cervin Investissements S.A. and Rhone Investissements S.A. v. Republic of Costa Rica, ICSID Case No. ARB/13/2	\N	\N	\N	\N
433	http://www.italaw.com/cases/2127	ICSID	International Investment Agreement	Valores Mundiales, S.L. and Consorcio Andino S.L. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/13/11	\N	\N	\N	\N
434	http://www.italaw.com/cases/2129	ICSID	International Investment Agreement	Ossama Al Sharif v. Arab Republic of Egypt, ICSID Case No. ARB/13/3	\N	\N	\N	\N
435	http://www.italaw.com/cases/2131	ICSID	International Investment Agreement	Caratube International Oil Company LLP and Devincci Salah Hourani v. Republic of Kazakhstan, ICSID Case No. ARB/13/13	\N	\N	\N	\N
436	http://www.italaw.com/cases/2151	ICSID	International Investment Agreement	Ossama Al Sharif v. Arab Republic of Egypt, ICSID Case No. ARB/13/4	\N	\N	\N	\N
437	http://www.italaw.com/cases/2153	ICSID	International Investment Agreement	Ossama Al Sharif v. Arab Republic of Egypt, ICSID Case No. ARB/13/5	\N	\N	\N	\N
438	http://www.italaw.com/cases/2160	ICSID	International Investment Agreement	Lieven J. van Riet, Chantal C. van Riet and Christopher van Riet v. Republic of Croatia, ICSID Case No. ARB/13/12	\N	\N	\N	\N
439	http://www.italaw.com/cases/2171	ICSID	International Investment Agreement	EVN AG v. Republic of Bulgaria, ICSID Case No. ARB/13/17	\N	\N	\N	\N
440	http://www.italaw.com/cases/2176	ICSID	International Investment Agreement	Garanti Koza LLP v. Turkmenistan, ICSID Case No. ARB/11/20	\N	\N	\N	\N
441	http://www.italaw.com/cases/2183	ICSID	International Investment Agreement	Mobil Exploration and Development Inc. Suc. Argentina and Mobil Argentina S.A. v. Argentine Republic, ICSID Case No. ARB/04/16	\N	\N	\N	\N
442	http://www.italaw.com/cases/2185	\N	International Investment Agreement, Foreign Investment Law, Contract	Mohamed Abdulmohsen Al-Kharafi &amp; Sons Co. v. Libya and&nbsp;others	\N	\N	\N	\N
443	http://www.italaw.com/cases/2215	\N	\N	Hupacasath First Nation v. Canada (Minister of Foreign Affairs), Challenge to Canada-China FIPA in Federal Court of&nbsp;Canada	\N	\N	\N	\N
444	http://www.italaw.com/cases/2219	ICSID	International Investment Agreement	Ömer Dede and Serdar Elhüseyni v. Romania, ICSID Case No. ARB/10/22	\N	\N	\N	\N
445	http://www.italaw.com/cases/2221	ICSID	International Investment Agreement, Foreign Investment Law	Güneş Tekstil Konfeksiyon Sanayi ve Ticaret Limited Şirketi and others v. Republic of Uzbekistan, ICSID Case No. ARB/13/19	\N	\N	\N	\N
446	http://www.italaw.com/cases/2230	ICSID	International Investment Agreement	Erbil Serter v. French Republic, ICSID Case No. ARB/13/22	\N	\N	\N	\N
447	http://www.italaw.com/cases/2235	ICSID	International Investment Agreement	Edenred S.A. v. Hungary, ICSID Case No. ARB/13/21	\N	\N	\N	\N
448	http://www.italaw.com/cases/2242	ICSID	International Investment Agreement	Transglobal Green Energy, LLC and Transglobal Green Energy de Panama, S.A. v. The Republic of Panama, ICSID	\N	\N	\N	\N
449	http://www.italaw.com/cases/2250	ICSID	International Investment Agreement, Foreign Investment Law	Highbury International AVV and Ramstein Trading Inc. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/11/1	\N	\N	\N	\N
450	http://www.italaw.com/cases/2252	ICSID	International Investment Agreement	Spentex Netherlands, B.V. v. Republic of Uzbekistan, ICSID Case No. ARB/13/26	\N	\N	\N	\N
451	http://www.italaw.com/cases/2256	UNCITRAL (1976)	International Investment Agreement	Swissbourgh Diamond Mines (Pty) Limited and others v. The Kingdom of Lesotho, UNCITRAL	\N	\N	\N	\N
452	http://www.italaw.com/cases/2258	ICSID	International Investment Agreement	Infinito Gold Ltd. v. Costa Rica, ICSID Case No. ARB/14/5	\N	\N	\N	\N
453	http://www.italaw.com/cases/2262	UNCITRAL (1976)	International Investment Agreement	Khaitan Holdings Mauritius Limited v. India, UNCITRAL	\N	\N	\N	\N
454	http://www.italaw.com/cases/2264	UNCITRAL (1976)	International Investment Agreement	ECE Projektmanagement v. The Czech Republic, UNCITRAL	\N	\N	\N	\N
455	http://www.italaw.com/cases/2268	ICSID	International Investment Agreement	Lundin Tunisia B. V. v. Republic of Tunisia, ICSID Case No. ARB/12/30	\N	\N	\N	\N
456	http://www.italaw.com/cases/2272	ICSID	International Investment Agreement	Metal-Tech Ltd. v. Republic of Uzbekistan, ICSID Case No. ARB/10/3	\N	\N	\N	\N
457	http://www.italaw.com/cases/2275	ICSID Additional Facility	International Investment Agreement	Deutsche Telekom v. India, ICSID	\N	\N	\N	\N
458	http://www.italaw.com/cases/2277	ICSID	International Investment Agreement	KT Asia Investment Group B.V. v. Republic of Kazakhstan, ICSID Case No. ARB/09/8	\N	\N	\N	\N
459	http://www.italaw.com/cases/2284	\N	Contract	Stans Energy v. Kyrgyz&nbsp;Republic	\N	\N	\N	\N
460	http://www.italaw.com/cases/2288	ICSID	International Investment Agreement	AES Corporation and Tau Power B.V. v. Republic of Kazakhstan, ICSID Case No. ARB/10/16	\N	\N	\N	\N
461	http://www.italaw.com/cases/2291	ICSID Additional Facility	International Investment Agreement	Cemusa - Corporación Europea de Mobiliario Urbano, S.A. and Corporación Americana de Equipamientos Urbanos, S.L. v. United Mexican States, ICSID Case No. ARB(AF)/13/2	\N	\N	\N	\N
462	http://www.italaw.com/cases/2294	ICSID	International Investment Agreement	ASA International S.p.A. v. Arab Republic of Egypt, ICSID Case No. ARB/13/23	\N	\N	\N	\N
463	http://www.italaw.com/cases/2297	ICSID	International Investment Agreement	Indorama International Finance Limited v. Arab Republic of Egypt, ICSID Case No. ARB/11/32	\N	\N	\N	\N
464	http://www.italaw.com/cases/2299	ICSID	International Investment Agreement	Hussain Sajwani, Damac Park Avenue for Real Estate Development S.A.E., and Damac Gamsha Bay for Development S.A.E. v. Arab Republic of Egypt, ICSID Case No. ARB/11/16	\N	\N	\N	\N
465	http://www.italaw.com/cases/2301	ICSID	International Investment Agreement	Bawabet Al Kuwait Holding Company v. Arab Republic of Egypt, ICSID Case No. ARB/11/6	\N	\N	\N	\N
466	http://www.italaw.com/cases/2303	SCC	International Investment Agreement	CSP Equity Investment Sarl v.&nbsp;Spain	\N	\N	\N	\N
467	http://www.italaw.com/cases/2307	\N	International Investment Agreement	 Mr. Gennady Mykhailenko &amp; United Pipe Export Company Trading Ag v. The Republic of&nbsp;Belarus	\N	\N	\N	\N
468	http://www.italaw.com/cases/2317	ICSID	International Investment Agreement	RREEF Infrastructure (G.P.) Limited and RREEF Pan-European Infrastructure Two Lux S.à r.l. v. Kingdom of Spain, ICSID Case No. ARB/13/30	\N	\N	\N	\N
469	http://www.italaw.com/cases/2319	ICSID	International Investment Agreement	Antin Infrastructure Services Luxembourg S.à.r.l. and Antin Energia Termosolar B.V. v. Kingdom of Spain, ICSID Case No. ARB/13/31	\N	\N	\N	\N
470	http://www.italaw.com/cases/2347	ICSID	Foreign Investment Law, Contract	AHS Niger and Menzies Middle East and Africa S.A. v. Republic of Niger, ICSID Case No. ARB/11/11	\N	\N	\N	\N
471	http://www.italaw.com/cases/2354	UNCITRAL (1976)	International Investment Agreement	World Wide Minerals v. Republic of Kazakhstan, UNCITRAL (Case&nbsp;2)	\N	\N	\N	\N
472	http://www.italaw.com/cases/2358	SCC	International Investment Agreement	Anatolie Stati, Gabriel Stati, Ascom Group SA and Terra Raf Trans Traiding Ltd v. Kazakhstan, SCC	\N	\N	\N	\N
473	http://www.italaw.com/cases/2360	UNCITRAL (1976)	International Investment Agreement	Erhas and others v. Turkmenistan, UNCITRAL	\N	\N	\N	\N
474	http://www.italaw.com/cases/2370	UNCITRAL (1976)	International Investment Agreement	Michael McKenzie v. Vietnam, UNCITRAL	\N	\N	\N	\N
475	http://www.italaw.com/cases/2391	ICSID	Foreign Investment Law	Antoine Abou Lahoud and Leila Bounafeh-Abou Lahoud v. Democratic Republic of the Congo, ICSID Case No. ARB/10/4	\N	\N	\N	\N
476	http://www.italaw.com/cases/2404	UNCITRAL (1976)	International Investment Agreement	RECOFI v. Vietnam, UNCITRAL 	\N	\N	\N	\N
477	http://www.italaw.com/cases/2406	\N	International Investment Agreement	Longreef Investments A.V.V. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/11/5	\N	\N	\N	\N
478	http://www.italaw.com/cases/2408	UNCITRAL (1976)	International Investment Agreement	TRACO Deutsche Travertinwerke GmbH v. The Republic of Poland, UNCITRAL	\N	\N	\N	\N
479	http://www.italaw.com/cases/2410	\N	International Investment Agreement	Swiss Investor v. Republic of South Africa, UNCITRAL	\N	\N	\N	\N
480	http://www.italaw.com/cases/2444	ICSID	International Investment Agreement	Renée Rose Levy de Levi v. Republic of Peru, ICSID Case No. ARB/10/17	\N	\N	\N	\N
481	http://www.italaw.com/cases/2447	UNCITRAL (2010)	International Investment Agreement	ST-AD GmbH v. Republic of Bulgaria, UNCITRAL, PCA Case No.&nbsp;2011-06	\N	\N	\N	\N
482	http://www.italaw.com/cases/2456	ICSID	International Investment Agreement	Unión Fenosa Gas, S.A. v. Arab Republic of Egypt, ICSID Case No. ARB/14/4	\N	\N	\N	\N
483	http://www.italaw.com/cases/2463	ICSID	International Investment Agreement	Central European Aluminium Company v. Montenegro, ICSID 	\N	\N	\N	\N
484	http://www.italaw.com/cases/2465	UNCITRAL (1976)	International Investment Agreement	Farouk Bozbey v. Turkmenistan, UNCITRAL	\N	\N	\N	\N
485	http://www.italaw.com/cases/2467	UNCITRAL (1976)	International Investment Agreement	JSC BTA Bank v. Kyrgyz Republic, UNCITRAL	\N	\N	\N	\N
486	http://www.italaw.com/cases/2469	ICSID	International Investment Agreement	Koch Minerals Sàrl and Koch Nitrogen International Sàrl v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/11/19	\N	\N	\N	\N
487	http://www.italaw.com/cases/2475	ICSID	International Investment Agreement	African Petroleum Gambia Limited (Block A4) v. Republic of The Gambia, ICSID Case No. ARB/14/7 	\N	\N	\N	\N
488	http://www.italaw.com/cases/2477	ICSID	International Investment Agreement	African Petroleum Gambia Limited (Block A1) v. Republic of The Gambia, ICSID Case No. ARB/14/6	\N	\N	\N	\N
489	http://www.italaw.com/cases/2480	ICC	International Investment Agreement	Vladimir Antonov v. Republic of&nbsp;Lithuania	\N	\N	\N	\N
490	http://www.italaw.com/cases/2487	ICSID	International Investment Agreement	Caravelí Cotaruse Transmisora de Energía S.A.C. v. Republic of Peru, ICSID Case No. ARB/11/9	\N	\N	\N	\N
491	http://www.italaw.com/cases/2494	ICSID	International Investment Agreement	National Gas S.A.E. v. Arab Republic of Egypt, ICSID Case No. ARB/11/7 	\N	\N	\N	\N
492	http://www.italaw.com/cases/2513	ICSID Additional Facility	International Investment Agreement	Anglo American PLC v. Bolivarian Republic of Venezuela, ICSID Case No. ARB(AF)/14/1	\N	\N	\N	\N
493	http://www.italaw.com/cases/2515	UNCITRAL (1976)	International Investment Agreement	Voltaic Network GmbH v. Czech Republic, UNCITRAL	\N	\N	\N	\N
494	http://www.italaw.com/cases/2516	ICSID	International Investment Agreement	MOL Hungarian Oil and Gas Company Plc v. Republic of Croatia, ICSID Case No. ARB/13/32	\N	\N	\N	\N
495	http://www.italaw.com/cases/2532	ICSID Additional Facility	International Investment Agreement	Nova Scotia Power Incorporated v. Bolivarian Republic of Venezuela, ICSID Case No. ARB(AF)/11/1&nbsp; 	\N	\N	\N	\N
496	http://www.italaw.com/cases/2540	ICSID	International Investment Agreement	AS Tallinna Vesi v. Estonia, ICSID	\N	\N	\N	\N
497	http://www.italaw.com/cases/2542	\N	International Investment Agreement	Lindzor Capital Partners v.&nbsp;Uruguay	\N	\N	\N	\N
498	http://www.italaw.com/cases/2544	UNCITRAL (1976)	International Investment Agreement	Vodafone v. India, UNCITRAL	\N	\N	\N	\N
499	http://www.italaw.com/cases/2546	\N	International Investment Agreement	Nokia v.&nbsp;India	\N	\N	\N	\N
500	http://www.italaw.com/cases/2556	ICSID	International Investment Agreement	Renée Rose Levy and Gremcitel S.A. v. Republic of Peru, ICSID Case No. ARB/11/17&nbsp; 	\N	\N	\N	\N
501	http://www.italaw.com/cases/2558	ICSID	International Investment Agreement	Highbury International AVV, Compañía Minera de Bajo Caroní AVV, and Ramstein Trading Inc. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/14/10	\N	\N	\N	\N
502	http://www.italaw.com/cases/2560	ICSID	International Investment Agreement	İçkale İnşaat Limited Şirketi v. Turkmenistan, ICSID Case No. ARB/10/24	\N	\N	\N	\N
503	http://www.italaw.com/cases/2564	UNCITRAL (1976)	International Investment Agreement	Achmea B.V. v. The Slovak Republic, UNCITRAL, PCA Case No. 2013-12 (Number&nbsp;2)	\N	\N	\N	\N
504	http://www.italaw.com/cases/2579	UNCITRAL (1976)	International Investment Agreement	 Energoalians SARL v. Republic of Moldova, UNCITRAL	\N	\N	Electricity, gas, steam and air conditioning supply	\N
505	http://www.italaw.com/cases/2581	\N	International Investment Agreement	JML Heirs LLC and J.M. Longyear LLC v.&nbsp;Canada	\N	\N	\N	\N
506	http://www.italaw.com/cases/2583	ICSID	Foreign Investment Law	Société Industrielle des Boissons de Guinée v. Republic of Guinea, ICSID Case No. ARB/12/8	\N	\N	\N	\N
507	http://www.italaw.com/cases/2585	ICSID	International Investment Agreement	NextEra Energy Global Holdings B.V. and NextEra Energy Spain Holdings B.V. v. Kingdom of Spain, ICSID Case No. ARB/14/11	\N	\N	\N	\N
508	http://www.italaw.com/cases/2587	ad hoc	Domestic Court	Diag Human S.E. v. The Czech&nbsp;Republic	\N	\N	\N	\N
510	http://www.italaw.com/cases/2634	SCC	International Investment Agreement	Yuri Bogdanov and Yulia Bogdanova v. Republic of Moldova, SCC Case No.&nbsp;V091/2012	\N	\N	\N	\N
511	http://www.italaw.com/cases/2637	\N	International Investment Agreement	Lee John Beck and Central Asian Development Corporation v. Kyrgyz&nbsp;Republic	\N	\N	\N	\N
512	http://www.italaw.com/cases/2640	\N	International Investment Agreement	OKKV (OKKB) and others v. Kyrgyz&nbsp;Republic	\N	\N	\N	\N
513	http://www.italaw.com/cases/2690	ICSID Additional Facility	International Investment Agreement	Corona Materials LLC v. Dominican Republic, ICSID Case No. ARB(AF)/14/3	\N	\N	\N	\N
514	http://www.italaw.com/cases/2693	UNCITRAL (1976)	International Investment Agreement	KBR, Inc. v. United Mexican States, ICSID Case No. UNCT/14/1	\N	\N	\N	\N
515	http://www.italaw.com/cases/2698	\N	International Investment Agreement	Michael, Lisa and Rachel Ballantine v. Dominican&nbsp;Republic	\N	\N	\N	\N
516	http://www.italaw.com/cases/2706	ICSID	International Investment Agreement	RSM Production Corporation v. Saint Lucia, ICSID Case No. ARB/12/10	\N	\N	\N	\N
517	http://www.italaw.com/cases/2723	ICSID	International Investment Agreement	Nusa Tenggara Partnership B.V. and PT Newmont Nusa Tenggara v. Republic of Indonesia, ICSID Case No. ARB/14/15	\N	\N	\N	\N
518	http://www.italaw.com/cases/2727	ICSID Additional Facility	International Investment Agreement	Gold Reserve Inc. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB(AF)/09/1	\N	\N	\N	\N
519	http://www.italaw.com/cases/2735	UNCITRAL (1976)	International Investment Agreement	Turkcell v. Islamic Republic of Iran, UNCITRAL	\N	\N	\N	\N
520	http://www.italaw.com/cases/2750	\N	\N	Interpretation of Article 11 of Moscow Convention on the Protection of Investor Rights Summary Judgment of the Economic Court of the Commonwealth of Independent States&nbsp;(Russian)	\N	\N	\N	\N
521	http://www.italaw.com/cases/2768	ICSID	International Investment Agreement	Vigotop Limited v. Hungary, ICSID Case No. ARB/11/22	\N	\N	\N	\N
522	http://www.italaw.com/cases/2770	ICSID	Foreign Investment Law	PNG Sustainable Development Program Ltd. v. Independent State of Papua New Guinea, ICSID Case No. ARB/13/33	\N	\N	\N	\N
523	http://www.italaw.com/cases/2783	ICSID	International Investment Agreement	Giovanni Alemanni and Others v. The Argentine Republic, ICSID Case No. ARB/07/8	\N	\N	\N	\N
524	http://www.italaw.com/cases/2797	UNCITRAL (2010)	International Investment Agreement	Mytilineos Holdings SA v. Republic of Serbia, UNCITRAL	\N	\N	\N	\N
525	http://www.italaw.com/cases/2848	ICSID	International Investment Agreement	Bear Creek Mining Corporation v. Republic of Peru, ICSID Case No. ARB/14/2	\N	\N	\N	\N
526	http://www.italaw.com/cases/2850	UNCITRAL (1976)	International Investment Agreement	Forminster Enterprises Limited (Cyprus) v. Czech Republic, UNCITRAL	\N	\N	\N	\N
527	http://www.italaw.com/cases/2852	ICSID	International Investment Agreement	Fraport AG Frankfurt Airport Services Worldwide v. Republic of the Philippines, ICSID Case No. ARB/11/12	\N	\N	\N	\N
528	http://www.italaw.com/cases/2869	UNCITRAL (1976)	International Investment Agreement	Serafín García Armas and Karina García Gruber v. The Bolivarian Republic of Venezuela, UNCITRAL, Caso CPA No.&nbsp;2013-3	\N	\N	\N	\N
529	http://www.italaw.com/cases/2946	\N	Treaty Interpretation by Domestic Courts	Desarrollos en Salud S.A. S/Concurso preventivo/ S/ Incidente de Revisión (N.V. NISSHO IWAI S.A. (BENELUX)) 	\N	\N	\N	Argentina
530	http://www.italaw.com/cases/2959	UNCITRAL (1976)	International Investment Agreement	David R. Aven and Others v. Republic of Costa Rica, UNCITRAL	\N	\N	\N	\N
531	http://www.italaw.com/cases/2979	ICSID	International Investment Agreement	OI European Group B.V. v. Bolivarian Republic of Venezuela, ICSID Case No. ARB/11/25	In favour of Investor	US $372,461,982	Manufacturing	\N
532	http://www.italaw.com/cases/2988	SCC	International Investment Agreement	TSIKinvest LLC v. Republic of Moldova, SCC Emergency Arbitration No. EA (2014/053)	\N	\N	Financial and insurance activities	\N
\.


--
-- Name: ita_cases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fl
--

SELECT pg_catalog.setval('ita_cases_id_seq', 532, true);


--
-- Data for Name: ita_documents; Type: TABLE DATA; Schema: public; Owner: fl
--

COPY ita_documents (id) FROM stdin;
\.


--
-- Name: ita_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fl
--

SELECT pg_catalog.setval('ita_documents_id_seq', 1, false);


--
-- Data for Name: ita_entities; Type: TABLE DATA; Schema: public; Owner: fl
--

COPY ita_entities (id, type, case_url, entity, doc_idx) FROM stdin;
1	claimant	http://www.italaw.com/cases/35	Abaclat and Others	\N
2	respondent_state	http://www.italaw.com/cases/35	Argentina	\N
3	investment_treaty	http://www.italaw.com/cases/35	Argentina-Italy BIT	\N
4	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	0
5	respondent_appointee	http://www.italaw.com/cases/35	Georges Abi-Saab	0
6	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	0
7	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	1
8	respondent_appointee	http://www.italaw.com/cases/35	Georges Abi-Saab	1
9	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	1
10	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	2
11	respondent_appointee	http://www.italaw.com/cases/35	Georges Abi-Saab	2
12	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	2
13	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	3
14	respondent_appointee	http://www.italaw.com/cases/35	Georges Abi-Saab	3
15	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	3
16	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	4
17	respondent_appointee	http://www.italaw.com/cases/35	Georges Abi-Saab	4
18	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	4
19	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	5
20	respondent_appointee	http://www.italaw.com/cases/35	Georges Abi-Saab	5
21	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	5
22	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	6
23	respondent_appointee	http://www.italaw.com/cases/35	Georges Abi-Saab	6
24	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	6
25	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	7
26	respondent_appointee	http://www.italaw.com/cases/35	Georges Abi-Saab	7
27	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	7
28	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	8
29	respondent_appointee	http://www.italaw.com/cases/35	Georges Abi-Saab	8
30	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	8
31	respondent_appointee	http://www.italaw.com/cases/35	Georges Abi-Saab	9
32	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	10
33	respondent_appointee	http://www.italaw.com/cases/35	Georges Abi-Saab	10
34	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	10
35	respondent_appointee	http://www.italaw.com/cases/35	Georges Abi-Saab	12
36	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	15
37	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	15
38	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	15
39	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	16
40	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	16
41	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	16
42	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	17
43	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	17
44	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	17
45	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	18
46	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	19
47	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	19
48	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	20
49	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	20
50	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	20
51	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	21
52	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	21
53	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	22
54	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	24
55	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	24
56	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	24
57	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	26
58	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	26
59	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	27
60	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	29
61	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	29
62	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	29
63	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	30
64	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	30
65	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	30
66	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	31
67	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	31
68	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	31
69	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	32
70	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	32
71	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	32
72	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	33
73	arbitrator	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	33
74	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	33
75	arbitrator	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	34
76	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	35
77	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	35
78	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	35
79	arbitrator	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	36
80	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	37
81	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	37
82	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	38
83	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	39
84	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	39
85	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	40
86	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	41
87	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	41
88	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	42
89	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	43
90	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	43
91	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	44
92	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	46
93	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	46
94	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	47
95	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	48
96	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	48
97	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	48
98	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	49
99	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	49
100	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	49
101	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	50
102	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	50
103	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	50
104	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	51
105	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	51
106	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	52
107	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	53
108	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	53
109	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	54
110	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	55
111	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	55
112	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	55
113	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	56
114	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	56
115	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	57
116	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	58
117	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	58
118	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	58
119	claimant_appointee	http://www.italaw.com/cases/35	Albert Jan van den Berg	59
120	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	59
121	respondent_appointee	http://www.italaw.com/cases/35	Santiago Torres Bernárdez	60
122	chair_president	http://www.italaw.com/cases/35	Pierre Tercier	61
123	claimant	http://www.italaw.com/cases/37	ABCI Investments N.V.	\N
124	respondent_state	http://www.italaw.com/cases/37	Tunisia	\N
125	claimant_appointee	http://www.italaw.com/cases/37	Piero Bernardini	0
126	respondent_appointee	http://www.italaw.com/cases/37	Brigitte Stern	0
127	chair_president	http://www.italaw.com/cases/37	Francisco Orrego Vicuña	0
128	claimant_appointee	http://www.italaw.com/cases/37	Piero Bernardini	1
129	respondent_appointee	http://www.italaw.com/cases/37	Brigitte Stern	1
130	chair_president	http://www.italaw.com/cases/37	Francisco Orrego Vicuña	1
131	claimant	http://www.italaw.com/cases/39	AbitibiBowater Inc.	\N
132	respondent_state	http://www.italaw.com/cases/39	Canada	\N
133	investment_treaty	http://www.italaw.com/cases/39	NAFTA	\N
134	claimant	http://www.italaw.com/cases/41	ADC Affiliate Limited	\N
135	respondent_state	http://www.italaw.com/cases/41	Hungary	\N
136	investment_treaty	http://www.italaw.com/cases/41	Cyprus-Hungary BIT	\N
137	claimant_appointee	http://www.italaw.com/cases/41	Charles Brower	0
138	respondent_appointee	http://www.italaw.com/cases/41	Albert Jan van den Berg	0
139	chair_president	http://www.italaw.com/cases/41	Neil Kaplan	0
140	claimant	http://www.italaw.com/cases/43	ADF Group Inc.	\N
141	respondent_state	http://www.italaw.com/cases/43	United States of America	\N
142	investment_treaty	http://www.italaw.com/cases/43	NAFTA	\N
143	claimant_appointee	http://www.italaw.com/cases/43	Armand de Mestral	0
144	respondent_appointee	http://www.italaw.com/cases/43	Carolyn Lamm	0
145	chair_president	http://www.italaw.com/cases/43	Florentino Feliciano	0
146	claimant_appointee	http://www.italaw.com/cases/43	Armand de Mestral	1
147	respondent_appointee	http://www.italaw.com/cases/43	Carolyn Lamm	1
148	chair_president	http://www.italaw.com/cases/43	Florentino Feliciano	1
149	claimant_appointee	http://www.italaw.com/cases/43	Armand de Mestral	2
150	respondent_appointee	http://www.italaw.com/cases/43	Carolyn Lamm	2
151	chair_president	http://www.italaw.com/cases/43	Florentino Feliciano	2
152	claimant	http://www.italaw.com/cases/47	Adria Beteiligungs GmbH	\N
153	respondent_state	http://www.italaw.com/cases/47	Croatia	\N
154	investment_treaty	http://www.italaw.com/cases/47	Austria-Croatia BIT	\N
155	country_in_which_this_occurs	http://www.italaw.com/cases/47	Netherlands	1
156	claimant	http://www.italaw.com/cases/49	AES Corporation	\N
157	respondent_state	http://www.italaw.com/cases/49	Argentina	\N
158	investment_treaty	http://www.italaw.com/cases/49	Argentina-United States BIT	\N
159	claimant_appointee	http://www.italaw.com/cases/49	Karl-Heinz Böckstiegel	0
160	respondent_appointee	http://www.italaw.com/cases/49	Domingo Bello Janeiro	0
161	chair_president	http://www.italaw.com/cases/49	Pierre-Marie Dupuy	0
162	claimant	http://www.italaw.com/cases/51	AES Summit Generation Ltd.	\N
163	respondent_state	http://www.italaw.com/cases/51	Hungary	\N
164	investment_treaty	http://www.italaw.com/cases/51	Energy Charter Treaty (ECT)	\N
165	claimant	http://www.italaw.com/cases/56	African Holding Company of America	\N
166	claimant	http://www.italaw.com/cases/56	Inc.	\N
167	claimant	http://www.italaw.com/cases/56	Société Africaine de Construction au Congo S.A.R.L.	\N
168	respondent_state	http://www.italaw.com/cases/56	Congo Democratic Republic of (formerly Zaire)	\N
169	investment_treaty	http://www.italaw.com/cases/56	Dominican Republic of Congo-United States BIT	\N
170	claimant_appointee	http://www.italaw.com/cases/56	O.L.O. de Witt Wijnen	0
171	claimant_appointee	http://www.italaw.com/cases/56	O.L.O. de Witt Wijnen	1
172	respondent_appointee	http://www.italaw.com/cases/56	Dominique Grisay	1
173	chair_president	http://www.italaw.com/cases/56	Francisco Orrego Vicuña	1
174	claimant	http://www.italaw.com/cases/57	Aguas del Tunari	\N
175	claimant	http://www.italaw.com/cases/57	S.A.	\N
176	respondent_state	http://www.italaw.com/cases/57	Bolivia	\N
177	investment_treaty	http://www.italaw.com/cases/57	Bolivia-Netherlands BIT	\N
178	other_expert	http://www.italaw.com/cases/57	Merritt Fox	0
179	other_expert	http://www.italaw.com/cases/57	Nico Schrijver	1
180	other_expert	http://www.italaw.com/cases/57	Rudolf Dolzer	2
181	claimant_appointee	http://www.italaw.com/cases/57	Henri Alvarez	4
182	respondent_appointee	http://www.italaw.com/cases/57	José Luis Alberro-Semerena	4
183	chair_president	http://www.italaw.com/cases/57	David Caron	4
184	claimant_appointee	http://www.italaw.com/cases/57	Henri Alvarez	5
185	respondent_appointee	http://www.italaw.com/cases/57	José Luis Alberro-Semerena	5
186	chair_president	http://www.italaw.com/cases/57	David Caron	5
187	claimant	http://www.italaw.com/cases/62	Ahmonseto	\N
188	claimant	http://www.italaw.com/cases/62	Inc.	\N
189	respondent_state	http://www.italaw.com/cases/62	Egypt	\N
190	investment_treaty	http://www.italaw.com/cases/62	Egypt-United States BIT	\N
191	claimant	http://www.italaw.com/cases/64	AIG Capital Partners	\N
192	claimant	http://www.italaw.com/cases/64	Inc.	\N
193	claimant	http://www.italaw.com/cases/64	CJSC Tema Real Estate Company Ltd.	\N
194	respondent_state	http://www.italaw.com/cases/64	Kazakhstan	\N
195	investment_treaty	http://www.italaw.com/cases/64	Kazakhstan-United States BIT	\N
196	claimant_appointee	http://www.italaw.com/cases/64	Piero Bernardini	0
197	respondent_appointee	http://www.italaw.com/cases/64	Branko Vukmir	0
198	chair_president	http://www.italaw.com/cases/64	Fali Nariman	0
199	country_in_which_this_occurs	http://www.italaw.com/cases/64	United Kingdom	1
200	claimant	http://www.italaw.com/cases/65	Al-Bahloul	\N
201	respondent_state	http://www.italaw.com/cases/65	Tajikistan	\N
202	investment_treaty	http://www.italaw.com/cases/65	Energy Charter Treaty (ECT)	\N
203	claimant_appointee	http://www.italaw.com/cases/65	Richard Happ	0
204	respondent_appointee	http://www.italaw.com/cases/65	Ivan Zykin	0
205	chair_president	http://www.italaw.com/cases/65	Jeffrey Hertzfeld	0
206	claimant_appointee	http://www.italaw.com/cases/65	Richard Happ	1
207	respondent_appointee	http://www.italaw.com/cases/65	Ivan Zykin	1
208	chair_president	http://www.italaw.com/cases/65	Jeffrey Hertzfeld	1
209	claimant	http://www.italaw.com/cases/71	Alpha Projektholding GmbH	\N
210	respondent_state	http://www.italaw.com/cases/71	Ukraine	\N
211	investment_treaty	http://www.italaw.com/cases/71	Austria-Ukraine BIT	\N
212	respondent_appointee	http://www.italaw.com/cases/71	Stanimir Alexandrov	0
213	chair_president	http://www.italaw.com/cases/71	Davis Robinson	0
214	claimant_appointee	http://www.italaw.com/cases/71	Yoram Turbowicz	1
215	respondent_appointee	http://www.italaw.com/cases/71	Stanimir Alexandrov	1
216	chair_president	http://www.italaw.com/cases/71	Davis Robinson	1
217	claimant	http://www.italaw.com/cases/74	Alps Finance and Trade AG	\N
218	respondent_state	http://www.italaw.com/cases/74	Slovak Republic	\N
219	investment_treaty	http://www.italaw.com/cases/74	Slovak Republic-Switzerland BIT	\N
220	claimant_appointee	http://www.italaw.com/cases/74	Hans Stuber	0
221	respondent_appointee	http://www.italaw.com/cases/74	Bohuslav Klein	0
222	chair_president	http://www.italaw.com/cases/74	Antonio Crivellaro	0
223	claimant	http://www.italaw.com/cases/76	American Manufacturing & Trading	\N
224	claimant	http://www.italaw.com/cases/76	Inc.	\N
225	respondent_state	http://www.italaw.com/cases/76	Congo Democratic Republic of (formerly Zaire)	\N
226	investment_treaty	http://www.italaw.com/cases/76	Dominican Republic of Congo-United States BIT	\N
227	claimant_appointee	http://www.italaw.com/cases/76	Heribert Golsong	0
228	claimant_appointee	http://www.italaw.com/cases/76	Heribert Golsong	1
229	respondent_appointee	http://www.italaw.com/cases/76	Kéba Mbuye	1
230	chair_president	http://www.italaw.com/cases/76	Sompong Sucharitkul	1
231	claimant	http://www.italaw.com/cases/79	Amto	\N
232	respondent_state	http://www.italaw.com/cases/79	Ukraine	\N
233	investment_treaty	http://www.italaw.com/cases/79	Energy Charter Treaty (ECT)	\N
234	claimant_appointee	http://www.italaw.com/cases/79	Per Runeland	0
235	respondent_appointee	http://www.italaw.com/cases/79	Christer Söderulnd	0
236	chair_president	http://www.italaw.com/cases/79	Bernardo Cremades	0
237	claimant	http://www.italaw.com/cases/85	Alasdair Ross Anderson	\N
238	respondent_state	http://www.italaw.com/cases/85	Costa Rica	\N
239	investment_treaty	http://www.italaw.com/cases/85	Canada-Costa Rica BIT	\N
240	claimant_appointee	http://www.italaw.com/cases/85	Jeswald Salacuse	0
241	respondent_appointee	http://www.italaw.com/cases/85	Raúl Vinuesa	0
242	chair_president	http://www.italaw.com/cases/85	Sandra Morelli Rico	0
243	claimant	http://www.italaw.com/cases/87	Apotex Inc.	\N
244	respondent_state	http://www.italaw.com/cases/87	United States of America	\N
245	investment_treaty	http://www.italaw.com/cases/87	NAFTA	\N
246	claimant_appointee	http://www.italaw.com/cases/87	Clifford Davidson	4
247	respondent_appointee	http://www.italaw.com/cases/87	Fern Smith	4
248	chair_president	http://www.italaw.com/cases/87	Toby Landau	4
249	claimant_appointee	http://www.italaw.com/cases/87	Clifford Davidson	9
250	respondent_appointee	http://www.italaw.com/cases/87	Fern Smith	9
251	chair_president	http://www.italaw.com/cases/87	Toby Landau	9
252	claimant_appointee	http://www.italaw.com/cases/87	Clifford Davidson	12
253	respondent_appointee	http://www.italaw.com/cases/87	Fern Smith	12
254	chair_president	http://www.italaw.com/cases/87	Toby Landau	12
255	claimant_appointee	http://www.italaw.com/cases/87	Clifford Davidson	13
256	respondent_appointee	http://www.italaw.com/cases/87	Fern Smith	13
257	chair_president	http://www.italaw.com/cases/87	Toby Landau	13
258	claimant_appointee	http://www.italaw.com/cases/87	Clifford Davidson	14
259	respondent_appointee	http://www.italaw.com/cases/87	Fern Smith	14
260	chair_president	http://www.italaw.com/cases/87	Toby Landau	14
261	claimant	http://www.italaw.com/cases/91	Archer Daniels Midland Company	\N
262	claimant	http://www.italaw.com/cases/91	Tate & Lyle Ingredients Americas	\N
263	claimant	http://www.italaw.com/cases/91	Inc.	\N
264	respondent_state	http://www.italaw.com/cases/91	Mexico	\N
265	investment_treaty	http://www.italaw.com/cases/91	NAFTA	\N
266	claimant_appointee	http://www.italaw.com/cases/91	Arthur Rovine	0
267	respondent_appointee	http://www.italaw.com/cases/91	Eduardo Siqueiros	0
268	chair_president	http://www.italaw.com/cases/91	Bernardo Cremades	0
269	claimant_appointee	http://www.italaw.com/cases/91	Arthur Rovine	2
270	respondent_appointee	http://www.italaw.com/cases/91	Eduardo Siqueiros	2
271	chair_president	http://www.italaw.com/cases/91	Bernardo Cremades	2
272	claimant_appointee	http://www.italaw.com/cases/91	Arthur Rovine	3
273	respondent_appointee	http://www.italaw.com/cases/91	Eduardo Siqueiros	3
274	chair_president	http://www.italaw.com/cases/91	Bernardo Cremades	3
275	claimant	http://www.italaw.com/cases/96	Asian Agricultural Products Ltd.	\N
276	respondent_state	http://www.italaw.com/cases/96	Sri Lanka	\N
277	investment_treaty	http://www.italaw.com/cases/96	Sri Lanka-United Kingdom BIT	\N
278	respondent_appointee	http://www.italaw.com/cases/96	Samuel Asante	0
279	claimant_appointee	http://www.italaw.com/cases/96	Berthold Goldman	1
280	respondent_appointee	http://www.italaw.com/cases/96	Samuel Asante	1
281	chair_president	http://www.italaw.com/cases/96	Ahmed El-Kosheri	1
282	claimant	http://www.italaw.com/cases/97	ATA Construction	\N
283	claimant	http://www.italaw.com/cases/97	Industrial and Trading Company	\N
284	respondent_state	http://www.italaw.com/cases/97	Jordan	\N
285	investment_treaty	http://www.italaw.com/cases/97	Jordan-Turkey BIT	\N
286	claimant_appointee	http://www.italaw.com/cases/97	Ahmed El-Kosheri	0
287	respondent_appointee	http://www.italaw.com/cases/97	Michael Reisman	0
288	chair_president	http://www.italaw.com/cases/97	L. Yves Fortier	0
289	claimant_appointee	http://www.italaw.com/cases/97	Ahmed El-Kosheri	1
290	respondent_appointee	http://www.italaw.com/cases/97	Michael Reisman	1
291	chair_president	http://www.italaw.com/cases/97	L. Yves Fortier	1
292	annulment_committee_president	http://www.italaw.com/cases/97	Gilbert Guillaume	2
293	annulment_committee_members	http://www.italaw.com/cases/97	Juan Fernández-Armesto	2
294	annulment_committee_members	http://www.italaw.com/cases/97	Bernard Hanotiau	2
295	claimant	http://www.italaw.com/cases/101	Awdi	\N
296	claimant	http://www.italaw.com/cases/101	Enterprise Business Consultants Inc.	\N
297	respondent_state	http://www.italaw.com/cases/101	Romania	\N
298	investment_treaty	http://www.italaw.com/cases/101	Romania-United States BIT	\N
299	arbitrator	http://www.italaw.com/cases/101	Rudolf Dolzer	1
300	arbitrator	http://www.italaw.com/cases/101	Hamid G. Gharavi	1
301	chair_president	http://www.italaw.com/cases/101	Piero Bernardini	1
302	claimant_appointee	http://www.italaw.com/cases/101	Hamid Gharavi	2
303	respondent_appointee	http://www.italaw.com/cases/101	Rudolf Dolzer	2
304	chair_president	http://www.italaw.com/cases/101	Piero Bernardini	2
305	claimant	http://www.italaw.com/cases/103	Austrian Airlines	\N
306	respondent_state	http://www.italaw.com/cases/103	Slovak Republic	\N
307	investment_treaty	http://www.italaw.com/cases/103	Austria-Slovak Republic BIT	\N
308	claimant_appointee	http://www.italaw.com/cases/103	Charles Brower	0
309	respondent_appointee	http://www.italaw.com/cases/103	Vojtěch Trapl	0
310	chair_president	http://www.italaw.com/cases/103	Gabrielle Kaufmann-Kohler	0
311	claimant	http://www.italaw.com/cases/106	AWG Group Ltd.	\N
312	respondent_state	http://www.italaw.com/cases/106	Argentina	\N
313	investment_treaty	http://www.italaw.com/cases/106	Argentina-United Kingdom BIT	\N
314	claimant_appointee	http://www.italaw.com/cases/106	Gabrielle Kaufmann-Kohler	1
315	respondent_appointee	http://www.italaw.com/cases/106	Pedro Nikken	1
316	chair_president	http://www.italaw.com/cases/106	Jeswald Salacuse	1
317	chair_president	http://www.italaw.com/cases/106	Jeswald Salacuse	2
318	respondent_appointee	http://www.italaw.com/cases/106	Pedro Nikken	3
319	chair_president	http://www.italaw.com/cases/106	Jeswald Salacuse	3
320	respondent_appointee	http://www.italaw.com/cases/106	Pedro Nikken	4
321	chair_president	http://www.italaw.com/cases/106	Jeswald Salacuse	4
322	claimant_appointee	http://www.italaw.com/cases/106	Gabrielle Kaufmann-Kohler	5
323	respondent_appointee	http://www.italaw.com/cases/106	Pedro Nikken	5
324	chair_president	http://www.italaw.com/cases/106	Jeswald Salacuse	5
325	claimant	http://www.italaw.com/cases/114	Azinian	\N
326	claimant	http://www.italaw.com/cases/114	Davitian	\N
327	claimant	http://www.italaw.com/cases/114	Baca	\N
328	respondent_state	http://www.italaw.com/cases/114	Mexico	\N
329	investment_treaty	http://www.italaw.com/cases/114	NAFTA	\N
330	arbitrator	http://www.italaw.com/cases/114	Benjamin Civiletti	0
331	arbitrator	http://www.italaw.com/cases/114	Claus von Wobeser	0
332	chair_president	http://www.italaw.com/cases/114	Jan Paulsson	0
333	claimant	http://www.italaw.com/cases/116	Azpetrol International Holdings B.V.	\N
334	respondent_state	http://www.italaw.com/cases/116	Azerbaijan	\N
335	investment_treaty	http://www.italaw.com/cases/116	Energy Charter Treaty (ECT)	\N
336	claimant_appointee	http://www.italaw.com/cases/116	Charles Brower	0
337	respondent_appointee	http://www.italaw.com/cases/116	Christopher Greenwood	0
338	chair_president	http://www.italaw.com/cases/116	Florentino Feliciano	0
339	claimant	http://www.italaw.com/cases/118	Azurix Corp.	\N
340	respondent_state	http://www.italaw.com/cases/118	Argentina	\N
341	investment_treaty	http://www.italaw.com/cases/118	Argentina-United States BIT	\N
342	other_expert	http://www.italaw.com/cases/118	Comadira	0
343	other_expert	http://www.italaw.com/cases/118	Fernandez	1
344	other_expert	http://www.italaw.com/cases/118	Solomoni	2
345	claimant_appointee	http://www.italaw.com/cases/118	Elihu Lauterpacht	3
346	respondent_appointee	http://www.italaw.com/cases/118	Daniel Martins	3
347	chair_president	http://www.italaw.com/cases/118	Andrés Rigo Sureda	3
348	claimant_appointee	http://www.italaw.com/cases/118	Marc Lalonde	4
349	respondent_appointee	http://www.italaw.com/cases/118	Daniel Martins	4
350	chair_president	http://www.italaw.com/cases/118	Andrés Rigo Sureda	4
351	annulment_committee_president	http://www.italaw.com/cases/118	Gavan Griffith	5
352	annulment_committee_members	http://www.italaw.com/cases/118	Bola Ajibola	5
353	annulment_committee_members	http://www.italaw.com/cases/118	Michael Hwang	5
354	annulment_committee_president	http://www.italaw.com/cases/118	Gavan Griffith	6
355	annulment_committee_members	http://www.italaw.com/cases/118	Bola Ajibola	6
356	annulment_committee_members	http://www.italaw.com/cases/118	Michael Hwang	6
357	claimant	http://www.italaw.com/cases/123	Bau	\N
358	respondent_state	http://www.italaw.com/cases/123	Thailand	\N
359	investment_treaty	http://www.italaw.com/cases/123	Germany-Thailand BIT	\N
360	claimant_appointee	http://www.italaw.com/cases/123	Marc Lalonde	1
361	respondent_appointee	http://www.italaw.com/cases/123	Jayavadh Bunnag	1
362	chair_president	http://www.italaw.com/cases/123	Ian Barker	1
363	country_in_which_this_occurs	http://www.italaw.com/cases/123	United States of America	2
364	country_in_which_this_occurs	http://www.italaw.com/cases/123	United States of America	3
365	country_in_which_this_occurs	http://www.italaw.com/cases/123	United States of America	4
366	country_in_which_this_occurs	http://www.italaw.com/cases/123	United States of America	5
367	country_in_which_this_occurs	http://www.italaw.com/cases/123	United States of America	6
368	country_in_which_this_occurs	http://www.italaw.com/cases/123	United States of America	7
369	country_in_which_this_occurs	http://www.italaw.com/cases/123	Germany	8
370	country_in_which_this_occurs	http://www.italaw.com/cases/123	Germany	9
371	claimant	http://www.italaw.com/cases/131	Bayindir Insaat Turizm Ticaret Ve Sanayi A.S.	\N
372	respondent_state	http://www.italaw.com/cases/131	Pakistan	\N
373	investment_treaty	http://www.italaw.com/cases/131	Pakistan-Turkey BIT	\N
374	claimant_appointee	http://www.italaw.com/cases/131	Karl-Heinz Böckstiegel	0
375	respondent_appointee	http://www.italaw.com/cases/131	Franklin Berman	0
376	chair_president	http://www.italaw.com/cases/131	Gabrielle Kaufmann-Kohler	0
377	claimant_appointee	http://www.italaw.com/cases/131	Karl-Heinz Böckstiegel	1
378	respondent_appointee	http://www.italaw.com/cases/131	Franklin Berman	1
379	chair_president	http://www.italaw.com/cases/131	Gabrielle Kaufmann-Kohler	1
380	claimant	http://www.italaw.com/cases/134	Bayview Irrigation District	\N
381	respondent_state	http://www.italaw.com/cases/134	Mexico	\N
382	investment_treaty	http://www.italaw.com/cases/134	NAFTA	\N
383	claimant_appointee	http://www.italaw.com/cases/134	Edwin Meese	0
384	respondent_appointee	http://www.italaw.com/cases/134	Ignacio Gómez-Palacio	0
385	chair_president	http://www.italaw.com/cases/134	Vaughan Lowe	0
386	country_in_which_this_occurs	http://www.italaw.com/cases/134	Canada	1
387	claimant	http://www.italaw.com/cases/138	Benhamou	\N
388	respondent_state	http://www.italaw.com/cases/138	Uruguay	\N
389	investment_treaty	http://www.italaw.com/cases/138	France-Uruguay BIT	\N
390	claimant	http://www.italaw.com/cases/140	Berschander	\N
391	respondent_state	http://www.italaw.com/cases/140	Russian Federation	\N
392	investment_treaty	http://www.italaw.com/cases/140	Belgium-Russian Federation BIT	\N
393	claimant_appointee	http://www.italaw.com/cases/140	Todd Weiler	0
394	respondent_appointee	http://www.italaw.com/cases/140	Sergei Lebedev	0
395	chair_president	http://www.italaw.com/cases/140	Bengt Sjövall	0
396	claimant_appointee	http://www.italaw.com/cases/140	Todd Weiler	1
397	respondent_appointee	http://www.italaw.com/cases/140	Sergei Lebedev	1
398	chair_president	http://www.italaw.com/cases/140	Bengt Sjövall	1
399	claimant	http://www.italaw.com/cases/143	BG Group Plc.	\N
400	respondent_state	http://www.italaw.com/cases/143	Argentina	\N
401	investment_treaty	http://www.italaw.com/cases/143	Argentina-United Kingdom BIT	\N
402	other_expert	http://www.italaw.com/cases/143	Benedict Kingsbury	0
403	claimant_appointee	http://www.italaw.com/cases/143	Albert Jan van den Berg	1
404	respondent_appointee	http://www.italaw.com/cases/143	Alejandro Garro	1
405	chair_president	http://www.italaw.com/cases/143	Guillermo Aguilar Alvarez	1
406	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	2
407	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	3
408	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	4
409	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	5
410	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	6
411	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	7
412	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	8
413	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	9
414	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	10
415	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	11
416	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	12
417	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	13
418	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	14
419	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	23
420	country_in_which_this_occurs	http://www.italaw.com/cases/143	United States of America	24
421	claimant	http://www.italaw.com/cases/149	Biedermann International	\N
422	claimant	http://www.italaw.com/cases/149	Inc.	\N
423	respondent_state	http://www.italaw.com/cases/149	Kazakhstan	\N
424	investment_treaty	http://www.italaw.com/cases/149	Kazakhstan-United States BIT	\N
425	claimant	http://www.italaw.com/cases/151	Binder	\N
426	respondent_state	http://www.italaw.com/cases/151	Czech Republic	\N
427	investment_treaty	http://www.italaw.com/cases/151	Czech Republic-Germany BIT	\N
428	arbitrator	http://www.italaw.com/cases/151	Jurgen Creutzig	0
429	arbitrator	http://www.italaw.com/cases/151	Emmanuel Gaillard	0
430	chair_president	http://www.italaw.com/cases/151	Hans Danelius	0
431	claimant_appointee	http://www.italaw.com/cases/151	Jurgen Creutzig	2
432	respondent_appointee	http://www.italaw.com/cases/151	Emmanuel Gaillard	2
433	chair_president	http://www.italaw.com/cases/151	Hans Danelius	2
434	claimant	http://www.italaw.com/cases/155	Binh	\N
435	respondent_state	http://www.italaw.com/cases/155	Vietnam	\N
436	investment_treaty	http://www.italaw.com/cases/155	Netherlands-Vietnam BIT	\N
437	arbitrator	http://www.italaw.com/cases/155	C. Mark Baker	0
438	arbitrator	http://www.italaw.com/cases/155	Brigitte Stern	0
439	arbitrator	http://www.italaw.com/cases/155	Kaj Hobér	0
440	claimant	http://www.italaw.com/cases/157	Biwater Gauff (Tanzania) Ltd.	\N
441	respondent_state	http://www.italaw.com/cases/157	Tanzania	\N
442	investment_treaty	http://www.italaw.com/cases/157	Tanzania-United Kingdom BIT	\N
443	claimant_appointee	http://www.italaw.com/cases/157	Gary Born	0
444	respondent_appointee	http://www.italaw.com/cases/157	Toby Landau	0
445	chair_president	http://www.italaw.com/cases/157	Bernard Hanotiau	0
446	claimant_appointee	http://www.italaw.com/cases/157	Gary Born	1
447	respondent_appointee	http://www.italaw.com/cases/157	Toby Landau	1
448	chair_president	http://www.italaw.com/cases/157	Bernard Hanotiau	1
449	claimant_appointee	http://www.italaw.com/cases/157	Gary Born	2
450	respondent_appointee	http://www.italaw.com/cases/157	Toby Landau	2
451	chair_president	http://www.italaw.com/cases/157	Bernard Hanotiau	2
452	claimant_appointee	http://www.italaw.com/cases/157	Gary Born	3
453	respondent_appointee	http://www.italaw.com/cases/157	Toby Landau	3
454	chair_president	http://www.italaw.com/cases/157	Bernard Hanotiau	3
455	claimant_appointee	http://www.italaw.com/cases/157	Gary Born	4
456	respondent_appointee	http://www.italaw.com/cases/157	Toby Landau	4
457	chair_president	http://www.italaw.com/cases/157	Bernard Hanotiau	4
458	claimant_appointee	http://www.italaw.com/cases/157	Gary Born	5
459	respondent_appointee	http://www.italaw.com/cases/157	Toby Landau	5
460	chair_president	http://www.italaw.com/cases/157	Bernard Hanotiau	5
461	claimant_appointee	http://www.italaw.com/cases/157	Gary Born	6
462	respondent_appointee	http://www.italaw.com/cases/157	Toby Landau	6
463	chair_president	http://www.italaw.com/cases/157	Bernard Hanotiau	6
464	claimant_appointee	http://www.italaw.com/cases/157	Gary Born	7
465	claimant_appointee	http://www.italaw.com/cases/157	Gary Born	8
466	respondent_appointee	http://www.italaw.com/cases/157	Toby Landau	8
467	chair_president	http://www.italaw.com/cases/157	Bernard Hanotiau	8
468	claimant	http://www.italaw.com/cases/168	Bogdanov	\N
469	claimant	http://www.italaw.com/cases/168	Agurdino-Invest Ltd.	\N
470	respondent_state	http://www.italaw.com/cases/168	Moldova	\N
471	investment_treaty	http://www.italaw.com/cases/168	Moldova-Russian Federation BIT	\N
472	chair_president	http://www.italaw.com/cases/168	Giuditta Cordero Moss	0
473	claimant	http://www.italaw.com/cases/169	Bogdanov	\N
474	respondent_state	http://www.italaw.com/cases/169	Moldova	\N
475	investment_treaty	http://www.italaw.com/cases/169	Moldova-Russian Federation BIT	\N
476	chair_president	http://www.italaw.com/cases/169	Bo Nilsson	0
477	claimant	http://www.italaw.com/cases/172	BP America Production Company	\N
478	claimant	http://www.italaw.com/cases/172	Pan American Sur SRL	\N
479	respondent_state	http://www.italaw.com/cases/172	Argentina	\N
480	investment_treaty	http://www.italaw.com/cases/172	Argentina-United States BIT	\N
481	claimant_appointee	http://www.italaw.com/cases/172	Albert Jan van den Berg	0
482	respondent_appointee	http://www.italaw.com/cases/172	Brigitte Stern	0
483	chair_president	http://www.italaw.com/cases/172	Lucius Caflisch	0
484	claimant	http://www.italaw.com/cases/174	Brandes Investment Partners	\N
485	claimant	http://www.italaw.com/cases/174	LP	\N
486	respondent_state	http://www.italaw.com/cases/174	Venezuela	\N
487	claimant_appointee	http://www.italaw.com/cases/174	Karl-Heinz Böckstiegel	0
488	respondent_appointee	http://www.italaw.com/cases/174	Brigitte Stern	0
489	chair_president	http://www.italaw.com/cases/174	Robert Briner	0
490	claimant_appointee	http://www.italaw.com/cases/174	Karl-Heinz Böckstiegel	1
491	respondent_appointee	http://www.italaw.com/cases/174	Brigitte Stern	1
492	chair_president	http://www.italaw.com/cases/174	Rodrigo Oreamuno Blanco	1
493	claimant	http://www.italaw.com/cases/177	British Caribbean Bank Limited	\N
494	respondent_state	http://www.italaw.com/cases/177	Belize	\N
495	investment_treaty	http://www.italaw.com/cases/177	Belize-United Kingdom BIT	\N
496	arbitrator	http://www.italaw.com/cases/177	Rodrigo Oreamuno Blanco	1
497	arbitrator	http://www.italaw.com/cases/177	John Beechey	1
498	chair_president	http://www.italaw.com/cases/177	Albert Jan van den Berg	1
499	arbitrator	http://www.italaw.com/cases/177	Rodrigo Oreamuno Blanco	2
500	arbitrator	http://www.italaw.com/cases/177	John Beechey	2
501	chair_president	http://www.italaw.com/cases/177	Albert Jan van den Berg	2
502	arbitrator	http://www.italaw.com/cases/177	Rodrigo Oreamuno Blanco	3
503	arbitrator	http://www.italaw.com/cases/177	John Beechey	3
504	chair_president	http://www.italaw.com/cases/177	Albert Jan van den Berg	3
505	country_in_which_this_occurs	http://www.italaw.com/cases/177	Belize	4
506	country_in_which_this_occurs	http://www.italaw.com/cases/177	Belize	6
507	country_in_which_this_occurs	http://www.italaw.com/cases/177	Belize	7
508	country_in_which_this_occurs	http://www.italaw.com/cases/177	Caribbean Court of Justice	8
509	arbitrator	http://www.italaw.com/cases/177	Rodrigo Oreamuno Blanco	9
510	arbitrator	http://www.italaw.com/cases/177	John Beechey	9
511	chair_president	http://www.italaw.com/cases/177	Albert Jan van den Berg	9
512	arbitrator	http://www.italaw.com/cases/177	John Beechey	11
513	arbitrator	http://www.italaw.com/cases/177	Rodrigo Oreamuno Blanco	11
514	chair_president	http://www.italaw.com/cases/177	Albert Jan van den Berg	11
515	arbitrator	http://www.italaw.com/cases/177	John Beechey	12
516	arbitrator	http://www.italaw.com/cases/177	Rodrigo Oreamuno Blanco	12
517	chair_president	http://www.italaw.com/cases/177	Albert Jan van den Berg	12
518	arbitrator	http://www.italaw.com/cases/177	John Beechey	13
519	arbitrator	http://www.italaw.com/cases/177	Rodrigo Oreamuno Blanco	13
520	chair_president	http://www.italaw.com/cases/177	Albert Jan van den Berg	13
521	chair_president	http://www.italaw.com/cases/177	Albert Jan van den Berg	14
522	chair_president	http://www.italaw.com/cases/177	Albert Jan van den Berg	15
523	chair_president	http://www.italaw.com/cases/177	Albert Jan van den Berg	16
524	arbitrator	http://www.italaw.com/cases/177	John Beechey	17
525	arbitrator	http://www.italaw.com/cases/177	Rodrigo Oreamuno Blanco	17
526	chair_president	http://www.italaw.com/cases/177	Albert Jan van den Berg	17
527	chair_president	http://www.italaw.com/cases/177	Albert Jan van den Berg	18
528	chair_president	http://www.italaw.com/cases/177	Albert Jan van den Berg	19
529	chair_president	http://www.italaw.com/cases/177	Albert Jan van den Berg	20
530	claimant	http://www.italaw.com/cases/179	Bureau Veritas	\N
531	claimant	http://www.italaw.com/cases/179	Inspection	\N
532	claimant	http://www.italaw.com/cases/179	Valuation	\N
533	claimant	http://www.italaw.com/cases/179	Assessment and Control	\N
534	claimant	http://www.italaw.com/cases/179	BIVAC B.V.	\N
535	respondent_state	http://www.italaw.com/cases/179	Paraguay	\N
536	investment_treaty	http://www.italaw.com/cases/179	Netherlands-Paraguay BIT	\N
537	claimant_appointee	http://www.italaw.com/cases/179	L. Yves Fortier	0
538	respondent_appointee	http://www.italaw.com/cases/179	Philippe Sands	0
539	chair_president	http://www.italaw.com/cases/179	Rolf Knieper	0
540	claimant_appointee	http://www.italaw.com/cases/179	L. Yves Fortier	1
541	respondent_appointee	http://www.italaw.com/cases/179	Philippe Sands	1
542	chair_president	http://www.italaw.com/cases/179	Rolf Knieper	1
543	claimant	http://www.italaw.com/cases/181	Burlington Resources Inc.	\N
544	respondent_state	http://www.italaw.com/cases/181	Ecuador	\N
545	investment_treaty	http://www.italaw.com/cases/181	Ecuador-United States BIT	\N
546	claimant_appointee	http://www.italaw.com/cases/181	Francisco Orrego Vicuña	0
547	respondent_appointee	http://www.italaw.com/cases/181	Brigitte Stern	0
548	chair_president	http://www.italaw.com/cases/181	Gabrielle Kaufmann-Kohler	0
549	claimant_appointee	http://www.italaw.com/cases/181	Francisco Orrego Vicuña	1
550	respondent_appointee	http://www.italaw.com/cases/181	Brigitte Stern	1
551	chair_president	http://www.italaw.com/cases/181	Gabrielle Kaufmann-Kohler	1
552	claimant_appointee	http://www.italaw.com/cases/181	Francisco Orrego Vicuña	2
553	respondent_appointee	http://www.italaw.com/cases/181	Brigitte Stern	2
554	chair_president	http://www.italaw.com/cases/181	Gabrielle Kaufmann-Kohler	2
555	claimant_appointee	http://www.italaw.com/cases/181	Francisco Orrego Vicuña	3
556	respondent_appointee	http://www.italaw.com/cases/181	Brigitte Stern	3
557	chair_president	http://www.italaw.com/cases/181	Gabrielle Kaufmann-Kohler	3
558	claimant	http://www.italaw.com/cases/184	Camuzzi International S.A.	\N
559	respondent_state	http://www.italaw.com/cases/184	Argentina	\N
560	investment_treaty	http://www.italaw.com/cases/184	Argentina-Belgium-Luxembourg BIT	\N
561	other_expert	http://www.italaw.com/cases/184	Michael Reisman	0
562	claimant_appointee	http://www.italaw.com/cases/184	Marc Lalonde	1
563	respondent_appointee	http://www.italaw.com/cases/184	Sandra Morelli Rico	1
564	chair_president	http://www.italaw.com/cases/184	Francisco Orrego Vicuña	1
565	other_expert	http://www.italaw.com/cases/184	Anne-Marie Slaughter	2
566	other_expert	http://www.italaw.com/cases/184	William Burke-White	2
567	claimants_expert	http://www.italaw.com/cases/184	José Alvarez	3
568	other_expert	http://www.italaw.com/cases/184	William Burke-White	4
569	other_expert	http://www.italaw.com/cases/184	Anne-Marie Slaughter	4
570	claimant	http://www.italaw.com/cases/186	Camuzzi International S.A.	\N
571	respondent_state	http://www.italaw.com/cases/186	Argentina	\N
572	investment_treaty	http://www.italaw.com/cases/186	Argentina-Belgium-Luxembourg BIT	\N
573	claimant_appointee	http://www.italaw.com/cases/186	Henri Alvarez	0
574	respondent_appointee	http://www.italaw.com/cases/186	Héctor Gros Espiell	0
575	chair_president	http://www.italaw.com/cases/186	Enrique Gómez-Pinzón	0
576	claimant	http://www.italaw.com/cases/188	Canadian Cattlemen for Fair Trade	\N
577	respondent_state	http://www.italaw.com/cases/188	United States of America	\N
578	investment_treaty	http://www.italaw.com/cases/188	NAFTA	\N
579	arbitrator	http://www.italaw.com/cases/188	James Bacchus	0
580	arbitrator	http://www.italaw.com/cases/188	Lucinda Low	0
581	chair_president	http://www.italaw.com/cases/188	Karl-Heinz Böckstiegel	0
582	arbitrator	http://www.italaw.com/cases/188	James Bacchus	1
583	arbitrator	http://www.italaw.com/cases/188	Lucinda Low	1
584	chair_president	http://www.italaw.com/cases/188	Karl-Heinz Böckstiegel	1
585	arbitrator	http://www.italaw.com/cases/188	James Bacchus	2
586	arbitrator	http://www.italaw.com/cases/188	Lucinda Low	2
587	chair_president	http://www.italaw.com/cases/188	Karl-Heinz Böckstiegel	2
588	arbitrator	http://www.italaw.com/cases/188	James Bacchus	3
589	arbitrator	http://www.italaw.com/cases/188	Lucinda Low	3
590	chair_president	http://www.italaw.com/cases/188	Karl-Heinz Böckstiegel	3
591	claimant	http://www.italaw.com/cases/193	AES Summit Generation Limited	\N
592	respondent_state	http://www.italaw.com/cases/193	Hungary	\N
593	investment_treaty	http://www.italaw.com/cases/193	Energy Charter Treaty (ECT)	\N
594	claimant_appointee	http://www.italaw.com/cases/193	Piet Eeckhout	0
595	claimant_appointee	http://www.italaw.com/cases/193	J. William Rowley	1
596	respondent_appointee	http://www.italaw.com/cases/193	Brigitte Stern	1
597	chair_president	http://www.italaw.com/cases/193	Claus von Wobeser	1
598	annulment_committee_president	http://www.italaw.com/cases/193	Bernard Hanotiau	2
599	annulment_committee_members	http://www.italaw.com/cases/193	Rolf Knieper	2
600	annulment_committee_members	http://www.italaw.com/cases/193	Abdulqawi Ahmed Yusuf	2
601	claimant	http://www.italaw.com/cases/200	Canfor Corporation	\N
602	claimant	http://www.italaw.com/cases/200	Terminal Forest Products Ltd.	\N
603	respondent_state	http://www.italaw.com/cases/200	United States of America	\N
604	investment_treaty	http://www.italaw.com/cases/200	NAFTA	\N
605	arbitrator	http://www.italaw.com/cases/200	Armand de Mestral	0
606	arbitrator	http://www.italaw.com/cases/200	Davis Robinson	0
607	chair_president	http://www.italaw.com/cases/200	Albert Jan van den Berg	0
608	arbitrator	http://www.italaw.com/cases/200	Armand de Mestral	1
609	arbitrator	http://www.italaw.com/cases/200	Davis Robinson	1
610	chair_president	http://www.italaw.com/cases/200	Albert Jan van den Berg	1
611	arbitrator	http://www.italaw.com/cases/200	Armand de Mestral	2
612	arbitrator	http://www.italaw.com/cases/200	Davis Robinson	2
613	chair_president	http://www.italaw.com/cases/200	Albert Jan van den Berg	2
614	arbitrator	http://www.italaw.com/cases/200	Armand de Mestral	3
615	arbitrator	http://www.italaw.com/cases/200	Davis Robinson	3
616	chair_president	http://www.italaw.com/cases/200	Albert Jan van den Berg	3
617	country_in_which_this_occurs	http://www.italaw.com/cases/200	United States of America	4
618	arbitrator	http://www.italaw.com/cases/200	Armand de Mestral	7
619	arbitrator	http://www.italaw.com/cases/200	Davis Robinson	7
620	chair_president	http://www.italaw.com/cases/200	Albert Jan van den Berg	7
621	arbitrator	http://www.italaw.com/cases/200	Armand de Mestral	8
622	arbitrator	http://www.italaw.com/cases/200	Davis Robinson	8
623	chair_president	http://www.italaw.com/cases/200	Albert Jan van den Berg	8
624	country_in_which_this_occurs	http://www.italaw.com/cases/200	United States of America	9
625	claimant	http://www.italaw.com/cases/211	Caratube International Oil Company LLP	\N
626	respondent_state	http://www.italaw.com/cases/211	Kazakhstan	\N
627	investment_treaty	http://www.italaw.com/cases/211	Kazakhstan-United States BIT	\N
628	claimant_appointee	http://www.italaw.com/cases/211	Gavan Griffith	2
629	respondent_appointee	http://www.italaw.com/cases/211	Kamal Hossain	2
630	chair_president	http://www.italaw.com/cases/211	Karl-Heinz Böckstiegel	2
631	claimant_appointee	http://www.italaw.com/cases/211	Gavan Griffith	4
632	respondent_appointee	http://www.italaw.com/cases/211	Kamal Hossain	4
633	chair_president	http://www.italaw.com/cases/211	Karl-Heinz Böckstiegel	4
634	claimant_appointee	http://www.italaw.com/cases/211	Gavan Griffith	5
635	respondent_appointee	http://www.italaw.com/cases/211	Kamal Hossain	5
636	chair_president	http://www.italaw.com/cases/211	Karl-Heinz Böckstiegel	5
637	claimant_appointee	http://www.italaw.com/cases/211	Gavan Griffith	6
638	respondent_appointee	http://www.italaw.com/cases/211	Kamal Hossain	6
639	chair_president	http://www.italaw.com/cases/211	Karl-Heinz Böckstiegel	6
640	country_in_which_this_occurs	http://www.italaw.com/cases/211	United States of America	7
641	claimant_appointee	http://www.italaw.com/cases/211	Gavan Griffith	8
642	respondent_appointee	http://www.italaw.com/cases/211	Kamal Hossain	8
643	chair_president	http://www.italaw.com/cases/211	Karl-Heinz Böckstiegel	8
644	claimant_appointee	http://www.italaw.com/cases/211	Gavan Griffith	9
645	respondent_appointee	http://www.italaw.com/cases/211	Kamal Hossain	9
646	chair_president	http://www.italaw.com/cases/211	Karl-Heinz Böckstiegel	9
647	claimant_appointee	http://www.italaw.com/cases/211	Gavan Griffith	10
648	respondent_appointee	http://www.italaw.com/cases/211	Kamal Hossain	10
649	chair_president	http://www.italaw.com/cases/211	Karl-Heinz Böckstiegel	10
650	claimant_appointee	http://www.italaw.com/cases/211	Gavan Griffith	11
651	respondent_appointee	http://www.italaw.com/cases/211	Kamal Hossain	11
652	chair_president	http://www.italaw.com/cases/211	Karl-Heinz Böckstiegel	11
653	annulment_committee_president	http://www.italaw.com/cases/211	Juan Fernández-Armesto	13
654	annulment_committee_members	http://www.italaw.com/cases/211	Cecil Abraham	13
655	annulment_committee_members	http://www.italaw.com/cases/211	Hans Danelius	13
656	annulment_committee_president	http://www.italaw.com/cases/211	Juan Fernández-Armesto	14
657	annulment_committee_members	http://www.italaw.com/cases/211	Tan Sri Dato Cecil W.M. Abraham	14
658	annulment_committee_members	http://www.italaw.com/cases/211	Hans Danelius	14
659	claimant	http://www.italaw.com/cases/221	Cargill	\N
660	respondent_state	http://www.italaw.com/cases/221	Poland	\N
661	investment_treaty	http://www.italaw.com/cases/221	Poland-United States Business and Economic Relations Treaty	\N
662	claimant	http://www.italaw.com/cases/223	Cargill Incorporated	\N
663	respondent_state	http://www.italaw.com/cases/223	Mexico	\N
664	investment_treaty	http://www.italaw.com/cases/223	NAFTA	\N
665	claimant_appointee	http://www.italaw.com/cases/223	David Caron	0
666	respondent_appointee	http://www.italaw.com/cases/223	Donald McRae	0
667	chair_president	http://www.italaw.com/cases/223	Michael Pryles	0
668	country_in_which_this_occurs	http://www.italaw.com/cases/223	Canada	1
669	country_in_which_this_occurs	http://www.italaw.com/cases/223	Canada	2
670	country_in_which_this_occurs	http://www.italaw.com/cases/223	Canada	4
671	country_in_which_this_occurs	http://www.italaw.com/cases/223	Canada	5
672	country_in_which_this_occurs	http://www.italaw.com/cases/223	Canada	6
673	country_in_which_this_occurs	http://www.italaw.com/cases/223	United States of America	7
674	claimant	http://www.italaw.com/cases/227	CCL	\N
675	respondent_state	http://www.italaw.com/cases/227	Kazakhstan	\N
676	investment_treaty	http://www.italaw.com/cases/227	Kazakhstan-United States BIT	\N
677	arbitrator	http://www.italaw.com/cases/227	James Carter	0
678	arbitrator	http://www.italaw.com/cases/227	Christer Söderulnd	0
679	arbitrator	http://www.italaw.com/cases/227	James Carter	1
680	arbitrator	http://www.italaw.com/cases/227	Christer Söderulnd	1
681	arbitrator	http://www.italaw.com/cases/227	James Carter	2
682	arbitrator	http://www.italaw.com/cases/227	Christer Söderulnd	2
683	claimant	http://www.italaw.com/cases/228	Cementownia "Nowa Huta" S.A.	\N
684	respondent_state	http://www.italaw.com/cases/228	Turkey	\N
685	investment_treaty	http://www.italaw.com/cases/228	Energy Charter Treaty (ECT)	\N
686	other_expert	http://www.italaw.com/cases/228	Mehmet Bahtiyar	0
687	claimant_appointee	http://www.italaw.com/cases/228	Marc Lalonde	1
688	respondent_appointee	http://www.italaw.com/cases/228	J. Christopher Thomas	1
689	chair_president	http://www.italaw.com/cases/228	Pierre Tercier	1
690	claimant	http://www.italaw.com/cases/230	Cementownia “Nowa Huta” S.A.	\N
691	respondent_state	http://www.italaw.com/cases/230	Turkey	\N
692	investment_treaty	http://www.italaw.com/cases/230	Poland-Turkey BIT	\N
693	claimant	http://www.italaw.com/cases/232	CEMEX Caracas Investments B.V.	\N
694	respondent_state	http://www.italaw.com/cases/232	Venezuela	\N
695	investment_treaty	http://www.italaw.com/cases/232	Netherlands-Venezuela BIT	\N
696	respondent_appointee	http://www.italaw.com/cases/232	Georges Abi-Saab	0
697	chair_president	http://www.italaw.com/cases/232	Gilbert Guillaume	0
698	claimant_appointee	http://www.italaw.com/cases/232	Robert von Mehren	1
699	respondent_appointee	http://www.italaw.com/cases/232	Georges Abi-Saab	1
700	chair_president	http://www.italaw.com/cases/232	Gilbert Guillaume	1
701	claimant_appointee	http://www.italaw.com/cases/232	Robert von Mehren	2
702	respondent_appointee	http://www.italaw.com/cases/232	Georges Abi-Saab	2
703	chair_president	http://www.italaw.com/cases/232	Gilbert Guillaume	2
704	claimant	http://www.italaw.com/cases/236	Cesare Galdabini SpA	\N
705	respondent_state	http://www.italaw.com/cases/236	Russian Federation	\N
706	investment_treaty	http://www.italaw.com/cases/236	Italy-Russian Federation BIT	\N
707	claimant	http://www.italaw.com/cases/238	Ceskoslovenska Obchodni Banka	\N
708	claimant	http://www.italaw.com/cases/238	A.S.	\N
709	respondent_state	http://www.italaw.com/cases/238	Slovak Republic	\N
710	investment_treaty	http://www.italaw.com/cases/238	Czech Republic-Slovak Republic BIT	\N
711	other_expert	http://www.italaw.com/cases/238	Frischberg	0
712	other_expert	http://www.italaw.com/cases/238	T.H. Hart	1
713	other_expert	http://www.italaw.com/cases/238	J. Dedic	2
714	claimant_appointee	http://www.italaw.com/cases/238	Andreas Bucher	3
715	respondent_appointee	http://www.italaw.com/cases/238	Piero Bernardini	3
716	chair_president	http://www.italaw.com/cases/238	Thomas Buergenthal	3
717	claimant_appointee	http://www.italaw.com/cases/238	Andreas Bucher	4
718	respondent_appointee	http://www.italaw.com/cases/238	Piero Bernardini	4
719	chair_president	http://www.italaw.com/cases/238	Thomas Buergenthal	4
720	claimant_appointee	http://www.italaw.com/cases/238	Andreas Bucher	5
721	respondent_appointee	http://www.italaw.com/cases/238	Piero Bernardini	5
722	chair_president	http://www.italaw.com/cases/238	Hans van Houtte	5
723	claimant	http://www.italaw.com/cases/245	Champion Trading Company	\N
724	claimant	http://www.italaw.com/cases/245	Ameritrade International Inc.	\N
725	respondent_state	http://www.italaw.com/cases/245	Egypt	\N
726	investment_treaty	http://www.italaw.com/cases/245	Egypt-United States BIT	\N
727	claimant_appointee	http://www.italaw.com/cases/245	L. Yves Fortier	0
728	respondent_appointee	http://www.italaw.com/cases/245	Laurent Aynès	0
729	chair_president	http://www.italaw.com/cases/245	Robert Briner	0
730	claimant_appointee	http://www.italaw.com/cases/245	L. Yves Fortier	1
731	respondent_appointee	http://www.italaw.com/cases/245	Laurent Aynès	1
732	chair_president	http://www.italaw.com/cases/245	Robert Briner	1
733	claimant	http://www.italaw.com/cases/249	Chemtura Corporation	\N
734	respondent_state	http://www.italaw.com/cases/249	Canada	\N
735	investment_treaty	http://www.italaw.com/cases/249	NAFTA	\N
736	arbitrator	http://www.italaw.com/cases/249	Charles Brower	0
737	arbitrator	http://www.italaw.com/cases/249	James Crawford	0
738	chair_president	http://www.italaw.com/cases/249	Gabrielle Kaufmann-Kohler	0
739	claimant	http://www.italaw.com/cases/251	Chevron Corporation	\N
740	claimant	http://www.italaw.com/cases/251	Texaco Petroleum Company	\N
741	respondent_state	http://www.italaw.com/cases/251	Ecuador	\N
742	investment_treaty	http://www.italaw.com/cases/251	Ecuador-United States BIT	\N
743	other_expert	http://www.italaw.com/cases/251	Jan Paulsson	0
744	claimant_appointee	http://www.italaw.com/cases/251	Charles Brower	1
745	respondent_appointee	http://www.italaw.com/cases/251	Albert Jan van den Berg	1
746	chair_president	http://www.italaw.com/cases/251	Karl-Heinz Böckstiegel	1
747	other_expert	http://www.italaw.com/cases/251	Nico Schrijver	2
748	claimant_appointee	http://www.italaw.com/cases/251	Charles Brower	4
749	respondent_appointee	http://www.italaw.com/cases/251	Albert Jan van den Berg	4
750	chair_president	http://www.italaw.com/cases/251	Karl-Heinz Böckstiegel	4
751	claimant_appointee	http://www.italaw.com/cases/251	Charles Brower	5
752	respondent_appointee	http://www.italaw.com/cases/251	Albert Jan van den Berg	5
753	chair_president	http://www.italaw.com/cases/251	Karl-Heinz Böckstiegel	5
754	claimant_appointee	http://www.italaw.com/cases/251	Charles Brower	6
755	respondent_appointee	http://www.italaw.com/cases/251	Albert Jan van den Berg	6
756	chair_president	http://www.italaw.com/cases/251	Karl-Heinz Böckstiegel	6
757	country_in_which_this_occurs	http://www.italaw.com/cases/251	United States of America	8
758	country_in_which_this_occurs	http://www.italaw.com/cases/251	Netherlands	9
759	claimant	http://www.italaw.com/cases/257	Chevron Corporation	\N
760	claimant	http://www.italaw.com/cases/257	Texaco Petroleum Corporation	\N
761	respondent_state	http://www.italaw.com/cases/257	Ecuador	\N
762	investment_treaty	http://www.italaw.com/cases/257	Ecuador-United States BIT	\N
763	respondents_expert	http://www.italaw.com/cases/257	Michael Reisman	1
764	country_in_which_this_occurs	http://www.italaw.com/cases/257	United States of America	2
765	claimant_appointee	http://www.italaw.com/cases/257	Horacio Grigera Naón	4
766	respondent_appointee	http://www.italaw.com/cases/257	Vaughan Lowe	4
767	chair_president	http://www.italaw.com/cases/257	V.V. Veeder	4
768	claimants_expert	http://www.italaw.com/cases/257	David Caron	6
769	claimant_appointee	http://www.italaw.com/cases/257	Horacio Grigera Naón	11
770	respondent_appointee	http://www.italaw.com/cases/257	Vaughan Lowe	11
771	chair_president	http://www.italaw.com/cases/257	V.V. Veeder	11
772	country_in_which_this_occurs	http://www.italaw.com/cases/257	United States of America	12
773	claimant_appointee	http://www.italaw.com/cases/257	Horacio Grigera Naón	13
774	respondent_appointee	http://www.italaw.com/cases/257	Vaughan Lowe	13
775	chair_president	http://www.italaw.com/cases/257	V.V. Veeder	13
776	claimant_appointee	http://www.italaw.com/cases/257	Horacio Grigera Naón	17
777	respondent_appointee	http://www.italaw.com/cases/257	Vaughan Lowe	17
778	chair_president	http://www.italaw.com/cases/257	V.V. Veeder	17
779	claimant_appointee	http://www.italaw.com/cases/257	Horacio Grigera Naón	18
780	respondent_appointee	http://www.italaw.com/cases/257	Vaughan Lowe	18
781	chair_president	http://www.italaw.com/cases/257	V.V. Veeder	18
782	claimant_appointee	http://www.italaw.com/cases/257	Horacio Grigera Naón	19
783	respondent_appointee	http://www.italaw.com/cases/257	Vaughan Lowe	19
784	chair_president	http://www.italaw.com/cases/257	V.V. Veeder	19
785	claimants_expert	http://www.italaw.com/cases/257	Jan Paulsson	20
786	claimant_appointee	http://www.italaw.com/cases/257	Horacio Grigera Naón	22
787	respondent_appointee	http://www.italaw.com/cases/257	Vaughan Lowe	22
788	chair_president	http://www.italaw.com/cases/257	V.V. Veeder	22
789	country_in_which_this_occurs	http://www.italaw.com/cases/257	Canada	23
790	country_in_which_this_occurs	http://www.italaw.com/cases/257	United States of America	24
791	claimant_appointee	http://www.italaw.com/cases/257	Horacio Grigera Naón	26
792	respondent_appointee	http://www.italaw.com/cases/257	Vaughan Lowe	26
793	chair_president	http://www.italaw.com/cases/257	V.V. Veeder	26
794	country_in_which_this_occurs	http://www.italaw.com/cases/257	Canada	28
795	country_in_which_this_occurs	http://www.italaw.com/cases/257	United States of America	29
796	country_in_which_this_occurs	http://www.italaw.com/cases/257	Argentina	30
797	claimant_appointee	http://www.italaw.com/cases/257	Horacio Grigera Naón	31
798	respondent_appointee	http://www.italaw.com/cases/257	Vaughan Lowe	31
799	chair_president	http://www.italaw.com/cases/257	V.V. Veeder	31
800	country_in_which_this_occurs	http://www.italaw.com/cases/257	United States of America	32
801	claimant_appointee	http://www.italaw.com/cases/257	Horacio Grigera Naón	36
802	respondent_appointee	http://www.italaw.com/cases/257	Vaughan Lowe	36
803	chair_president	http://www.italaw.com/cases/257	V.V. Veeder	36
804	claimant_appointee	http://www.italaw.com/cases/257	Horacio Grigera Naón	37
805	claimant	http://www.italaw.com/cases/279	China Heilongjiang International Economic & Technical Cooperative Corp.	\N
806	claimant	http://www.italaw.com/cases/279	Beijing Shougang Mining Investment Company Ltd.	\N
807	claimant	http://www.italaw.com/cases/279	Qinhuangdaoshi Qinlong International Industrial Co. Ltd.	\N
808	respondent_state	http://www.italaw.com/cases/279	Mongolia	\N
809	investment_treaty	http://www.italaw.com/cases/279	China-Mongolia BIT	\N
810	arbitrator	http://www.italaw.com/cases/279	Mark Clodfelter	0
811	arbitrator	http://www.italaw.com/cases/279	Yas Banifatemi	0
812	chair_president	http://www.italaw.com/cases/279	Donald Francis Donovan	0
813	claimant	http://www.italaw.com/cases/281	CME Czech Republic B.V.	\N
814	respondent_state	http://www.italaw.com/cases/281	Czech Republic	\N
815	investment_treaty	http://www.italaw.com/cases/281	Czech Republic-Netherlands BIT	\N
816	other_expert	http://www.italaw.com/cases/281	J. Dedic	0
817	claimant_appointee	http://www.italaw.com/cases/281	Stephen Schwebel	1
818	respondent_appointee	http://www.italaw.com/cases/281	Jaroslav Hándl	1
819	chair_president	http://www.italaw.com/cases/281	Wolfgang Kühn	1
820	respondent_appointee	http://www.italaw.com/cases/281	Jaroslav Hándl	2
821	respondents_expert	http://www.italaw.com/cases/281	Christoph Schreuer	3
822	respondents_expert	http://www.italaw.com/cases/281	August Reinisch	3
823	respondents_expert	http://www.italaw.com/cases/281	Christoph Schreuer	4
824	respondents_expert	http://www.italaw.com/cases/281	August Reinisch	4
825	claimant_appointee	http://www.italaw.com/cases/281	Stephen Schwebel	5
826	respondent_appointee	http://www.italaw.com/cases/281	Ian Brownlie	5
827	chair_president	http://www.italaw.com/cases/281	Wolfgang Kühn	5
828	respondent_appointee	http://www.italaw.com/cases/281	Ian Brownlie	6
829	respondents_expert	http://www.italaw.com/cases/281	Giorgio Sacerdoti	7
830	country_in_which_this_occurs	http://www.italaw.com/cases/281	Sweden	8
831	other_expert	http://www.italaw.com/cases/281	Giorgio Sacerdoti	9
832	claimant	http://www.italaw.com/cases/288	CMS Gas Transmission Company	\N
833	respondent_state	http://www.italaw.com/cases/288	Argentina	\N
834	investment_treaty	http://www.italaw.com/cases/288	Argentina-United States BIT	\N
835	other_expert	http://www.italaw.com/cases/288	José Alvarez	0
836	other_expert	http://www.italaw.com/cases/288	Anne-Marie Slaughter	1
837	claimant_appointee	http://www.italaw.com/cases/288	Marc Lalonde	2
838	respondent_appointee	http://www.italaw.com/cases/288	Francisco Rezek	2
839	chair_president	http://www.italaw.com/cases/288	Francisco Orrego Vicuña	2
840	claimant_appointee	http://www.italaw.com/cases/288	Marc Lalonde	3
841	respondent_appointee	http://www.italaw.com/cases/288	Francisco Rezek	3
842	chair_president	http://www.italaw.com/cases/288	Francisco Orrego Vicuña	3
843	annulment_committee_president	http://www.italaw.com/cases/288	Gilbert Guillaume	5
844	annulment_committee_members	http://www.italaw.com/cases/288	James Crawford	5
845	annulment_committee_members	http://www.italaw.com/cases/288	Nabil Elaraby	5
846	annulment_committee_president	http://www.italaw.com/cases/288	Gilbert Guillaume	6
847	annulment_committee_members	http://www.italaw.com/cases/288	James Crawford	6
848	annulment_committee_members	http://www.italaw.com/cases/288	Nabil Elaraby	6
849	country_in_which_this_occurs	http://www.italaw.com/cases/288	United States of America	7
850	country_in_which_this_occurs	http://www.italaw.com/cases/288	United States of America	9
851	country_in_which_this_occurs	http://www.italaw.com/cases/288	United States of America	10
852	claimant	http://www.italaw.com/cases/296	Commerce Group Corp.	\N
853	claimant	http://www.italaw.com/cases/296	San Sebastian Gold Mines Inc.	\N
854	respondent_state	http://www.italaw.com/cases/296	El Salvador	\N
855	investment_treaty	http://www.italaw.com/cases/296	CAFTA	\N
856	claimant_appointee	http://www.italaw.com/cases/296	Horacio Grigera Naón	2
857	respondent_appointee	http://www.italaw.com/cases/296	J. Christopher Thomas	2
858	chair_president	http://www.italaw.com/cases/296	Albert Jan van den Berg	2
859	claimant_appointee	http://www.italaw.com/cases/296	Horacio Grigera Naón	11
860	respondent_appointee	http://www.italaw.com/cases/296	J. Christopher Thomas	11
861	chair_president	http://www.italaw.com/cases/296	Albert Jan van den Berg	11
862	annulment_committee_president	http://www.italaw.com/cases/296	Emmanuel Gaillard	14
863	annulment_committee_members	http://www.italaw.com/cases/296	Michael Pryles	14
864	annulment_committee_members	http://www.italaw.com/cases/296	Christoph Schreuer	14
865	annulment_committee_president	http://www.italaw.com/cases/296	Emmanuel Gaillard	17
866	annulment_committee_members	http://www.italaw.com/cases/296	Michael Pryles	17
867	annulment_committee_members	http://www.italaw.com/cases/296	Christoph Schreuer	17
868	claimant	http://www.italaw.com/cases/309	Compañiá de Aguas del Aconquija S.A.	\N
869	claimant	http://www.italaw.com/cases/309	Vivendi Universal S.A.	\N
870	respondent_state	http://www.italaw.com/cases/309	Argentina	\N
871	investment_treaty	http://www.italaw.com/cases/309	Argentina-France BIT	\N
872	other_expert	http://www.italaw.com/cases/309	Arthur von Mehren	0
873	other_expert	http://www.italaw.com/cases/309	Christoph Schreuer	1
874	claimant_appointee	http://www.italaw.com/cases/309	Peter Trooboff	2
875	arbitrator	http://www.italaw.com/cases/309	Thomas Buergenthal	2
876	chair_president	http://www.italaw.com/cases/309	Francisco Rezek	2
877	annulment_committee_members	http://www.italaw.com/cases/309	James Crawford	3
878	annulment_committee_members	http://www.italaw.com/cases/309	José Carlos Fernández Rozas	3
879	annulment_committee_president	http://www.italaw.com/cases/309	L. Yves Fortier	4
880	annulment_committee_members	http://www.italaw.com/cases/309	James Crawford	4
881	annulment_committee_members	http://www.italaw.com/cases/309	José Carlos Fernández Rozas	4
882	annulment_committee_president	http://www.italaw.com/cases/309	L. Yves Fortier	5
883	annulment_committee_members	http://www.italaw.com/cases/309	James Crawford	5
884	annulment_committee_members	http://www.italaw.com/cases/309	José Carlos Fernández Rozas	5
885	arbitrator	http://www.italaw.com/cases/309	Gabrielle Kaufmann-Kohler	6
886	arbitrator	http://www.italaw.com/cases/309	Carlos Bernal Verea	6
887	chair_president	http://www.italaw.com/cases/309	J. William Rowley	6
888	arbitrator	http://www.italaw.com/cases/309	Gabrielle Kaufmann-Kohler	7
889	arbitrator	http://www.italaw.com/cases/309	Carlos Bernal Verea	7
890	chair_president	http://www.italaw.com/cases/309	J. William Rowley	7
891	annulment_committee_president	http://www.italaw.com/cases/309	Ahmed El-Kosheri	8
892	annulment_committee_members	http://www.italaw.com/cases/309	Jan Hendrik Dalhuisen	8
893	annulment_committee_members	http://www.italaw.com/cases/309	Andreas Jacovides	8
894	annulment_committee_president	http://www.italaw.com/cases/309	Ahmed El-Kosheri	12
895	annulment_committee_members	http://www.italaw.com/cases/309	Jan Hendrik Dalhuisen	12
896	annulment_committee_members	http://www.italaw.com/cases/309	Andreas Jacovides	12
897	claimant	http://www.italaw.com/cases/321	ConocoPhillips Company	\N
898	respondent_state	http://www.italaw.com/cases/321	Venezuela	\N
899	investment_treaty	http://www.italaw.com/cases/321	Netherlands-Venezuela BIT	\N
900	arbitrator	http://www.italaw.com/cases/321	Kenneth Keith	0
901	arbitrator	http://www.italaw.com/cases/321	Georges Abi-Saab	0
902	arbitrator	http://www.italaw.com/cases/321	Georges Abi-Saab	1
903	arbitrator	http://www.italaw.com/cases/321	L. Yves Fortier	1
904	chair_president	http://www.italaw.com/cases/321	Kenneth Keith	1
905	claimant_appointee	http://www.italaw.com/cases/321	L. Yves Fortier	4
906	chair_president	http://www.italaw.com/cases/321	Kenneth Keith	4
907	respondent_appointee	http://www.italaw.com/cases/321	Georges Abi-Saab	5
908	respondent_appointee	http://www.italaw.com/cases/321	Georges Abi-Saab	7
909	claimant	http://www.italaw.com/cases/323	Consortium Groupement L.E.S.I.- DIPENTA	\N
910	respondent_state	http://www.italaw.com/cases/323	Algeria	\N
911	investment_treaty	http://www.italaw.com/cases/323	Algeria-Italy BIT	\N
912	claimant_appointee	http://www.italaw.com/cases/323	André Faurès	0
913	respondent_appointee	http://www.italaw.com/cases/323	Emmanuel Gaillard	0
914	chair_president	http://www.italaw.com/cases/323	Pierre Tercier	0
915	claimant	http://www.italaw.com/cases/325	Consortium RFCC	\N
916	respondent_state	http://www.italaw.com/cases/325	Morocco	\N
917	investment_treaty	http://www.italaw.com/cases/325	Italy-Morocco BIT	\N
918	claimant_appointee	http://www.italaw.com/cases/325	Bernardo Cremades	0
919	respondent_appointee	http://www.italaw.com/cases/325	Ibrahim Fadlallah	0
920	chair_president	http://www.italaw.com/cases/325	Robert Briner	0
921	claimant_appointee	http://www.italaw.com/cases/325	Bernardo Cremades	1
922	respondent_appointee	http://www.italaw.com/cases/325	Ibrahim Fadlallah	1
923	chair_president	http://www.italaw.com/cases/325	Robert Briner	1
924	claimant	http://www.italaw.com/cases/329	Continental Casualty Company	\N
925	respondent_state	http://www.italaw.com/cases/329	Argentina	\N
926	investment_treaty	http://www.italaw.com/cases/329	Argentina-United States BIT	\N
927	other_expert	http://www.italaw.com/cases/329	Kenneth Vandevelde	0
928	other_expert	http://www.italaw.com/cases/329	Anne-Marie Slaughter	1
929	other_expert	http://www.italaw.com/cases/329	William Burke-White	1
930	claimant_appointee	http://www.italaw.com/cases/329	V.V. Veeder	2
931	respondent_appointee	http://www.italaw.com/cases/329	Michell Nader	2
932	chair_president	http://www.italaw.com/cases/329	Giorgio Sacerdoti	2
933	claimant_appointee	http://www.italaw.com/cases/329	V.V. Veeder	3
934	respondent_appointee	http://www.italaw.com/cases/329	Michell Nader	3
935	chair_president	http://www.italaw.com/cases/329	Giorgio Sacerdoti	3
936	annulment_committee_president	http://www.italaw.com/cases/329	Gavan Griffith	5
937	annulment_committee_members	http://www.italaw.com/cases/329	Bola Ajibola	5
938	annulment_committee_members	http://www.italaw.com/cases/329	Christer Söderlund	5
939	annulment_committee_president	http://www.italaw.com/cases/329	Gavan Griffith	6
940	annulment_committee_members	http://www.italaw.com/cases/329	Bola Ajibola	6
941	annulment_committee_members	http://www.italaw.com/cases/329	Christer Söderlund	6
942	annulment_committee_president	http://www.italaw.com/cases/329	Gavan Griffith	7
943	annulment_committee_members	http://www.italaw.com/cases/329	Bola Ajibola	7
944	annulment_committee_members	http://www.italaw.com/cases/329	Christer Söderlund	7
945	country_in_which_this_occurs	http://www.italaw.com/cases/329	United States of America	8
946	claimant	http://www.italaw.com/cases/345	Corn Products International	\N
947	claimant	http://www.italaw.com/cases/345	Inc.	\N
948	respondent_state	http://www.italaw.com/cases/345	Mexico	\N
949	investment_treaty	http://www.italaw.com/cases/345	NAFTA	\N
950	other_expert	http://www.italaw.com/cases/345	Rudolf Dolzer	0
951	arbitrator	http://www.italaw.com/cases/345	Arthur Rovine	1
952	arbitrator	http://www.italaw.com/cases/345	Eduardo Siqueiros	1
953	chair_president	http://www.italaw.com/cases/345	Bernardo Cremades	1
954	claimant_appointee	http://www.italaw.com/cases/345	Andreas Lowenfeld	2
955	respondent_appointee	http://www.italaw.com/cases/345	Jesus Alfonso Serrano de la Vega	2
956	chair_president	http://www.italaw.com/cases/345	Christopher Greenwood	2
957	claimant_appointee	http://www.italaw.com/cases/345	Andreas Lowenfeld	3
958	claimant	http://www.italaw.com/cases/351	Crespo	\N
959	respondent_state	http://www.italaw.com/cases/351	Poland	\N
960	investment_treaty	http://www.italaw.com/cases/351	Poland-Spain BIT	\N
961	claimant	http://www.italaw.com/cases/353	Desert Line Projects LLC	\N
962	respondent_state	http://www.italaw.com/cases/353	Yemen	\N
963	investment_treaty	http://www.italaw.com/cases/353	Oman-Yemen BIT	\N
964	claimant_appointee	http://www.italaw.com/cases/353	Jan Paulsson	0
965	respondent_appointee	http://www.italaw.com/cases/353	Ahmed El-Kosheri	0
966	chair_president	http://www.italaw.com/cases/353	Pierre Tercier	0
967	claimant	http://www.italaw.com/cases/354	Detroit International Bridge Company	\N
968	respondent_state	http://www.italaw.com/cases/354	Canada	\N
969	investment_treaty	http://www.italaw.com/cases/354	NAFTA	\N
970	arbitrator	http://www.italaw.com/cases/354	Vaughan Lowe	2
971	arbitrator	http://www.italaw.com/cases/354	Michael Chertoff	2
972	chair_president	http://www.italaw.com/cases/354	Yves Derains	2
973	arbitrator	http://www.italaw.com/cases/354	Vaughan Lowe	6
974	arbitrator	http://www.italaw.com/cases/354	Michael Chertoff	6
975	chair_president	http://www.italaw.com/cases/354	Yves Derains	6
976	arbitrator	http://www.italaw.com/cases/354	Vaughan Lowe	10
977	arbitrator	http://www.italaw.com/cases/354	Michael Chertoff	10
978	chair_president	http://www.italaw.com/cases/354	Yves Derains	10
979	arbitrator	http://www.italaw.com/cases/354	Vaughan Lowe	11
980	arbitrator	http://www.italaw.com/cases/354	Michael Chertoff	11
981	chair_president	http://www.italaw.com/cases/354	Yves Derains	11
982	arbitrator	http://www.italaw.com/cases/354	Vaughan Lowe	12
983	arbitrator	http://www.italaw.com/cases/354	Michael Chertoff	12
984	chair_president	http://www.italaw.com/cases/354	Yves Derains	12
985	arbitrator	http://www.italaw.com/cases/354	Vaughan Lowe	15
986	arbitrator	http://www.italaw.com/cases/354	Michael Chertoff	15
987	chair_president	http://www.italaw.com/cases/354	Yves Derains	15
988	arbitrator	http://www.italaw.com/cases/354	Vaughan Lowe	22
989	arbitrator	http://www.italaw.com/cases/354	Michael Chertoff	22
990	chair_president	http://www.italaw.com/cases/354	Yves Derains	22
991	arbitrator	http://www.italaw.com/cases/354	Vaughan Lowe	23
992	arbitrator	http://www.italaw.com/cases/354	Michael Chertoff	23
993	chair_president	http://www.italaw.com/cases/354	Yves Derains	23
994	arbitrator	http://www.italaw.com/cases/354	Vaughan Lowe	26
995	arbitrator	http://www.italaw.com/cases/354	Michael Chertoff	26
996	chair_president	http://www.italaw.com/cases/354	Yves Derains	26
997	arbitrator	http://www.italaw.com/cases/354	Vaughan Lowe	27
998	arbitrator	http://www.italaw.com/cases/354	Michael Chertoff	27
999	chair_president	http://www.italaw.com/cases/354	Yves Derains	27
1000	claimant	http://www.italaw.com/cases/356	Duke Energy Electroquil Partners	\N
1001	claimant	http://www.italaw.com/cases/356	Electroquil S.A.	\N
1002	respondent_state	http://www.italaw.com/cases/356	Ecuador	\N
1003	investment_treaty	http://www.italaw.com/cases/356	Ecuador-United States BIT	\N
1004	other_expert	http://www.italaw.com/cases/356	Rudolf Dolzer	0
1005	other_expert	http://www.italaw.com/cases/356	Rudolf Dolzer	1
1006	other_expert	http://www.italaw.com/cases/356	Nico Schrijver	2
1007	claimant_appointee	http://www.italaw.com/cases/356	Enrique Gómez-Pinzón	3
1008	respondent_appointee	http://www.italaw.com/cases/356	Albert Jan van den Berg	3
1009	chair_president	http://www.italaw.com/cases/356	Gabrielle Kaufmann-Kohler	3
1010	claimant_appointee	http://www.italaw.com/cases/356	Enrique Gómez-Pinzón	4
1011	respondent_appointee	http://www.italaw.com/cases/356	Albert Jan van den Berg	4
1012	chair_president	http://www.italaw.com/cases/356	Gabrielle Kaufmann-Kohler	4
1013	claimant_appointee	http://www.italaw.com/cases/356	Enrique Gómez-Pinzón	5
1014	respondent_appointee	http://www.italaw.com/cases/356	Albert Jan van den Berg	5
1015	chair_president	http://www.italaw.com/cases/356	Gabrielle Kaufmann-Kohler	5
1016	claimant_appointee	http://www.italaw.com/cases/356	Enrique Gómez-Pinzón	6
1017	respondent_appointee	http://www.italaw.com/cases/356	Albert Jan van den Berg	6
1018	chair_president	http://www.italaw.com/cases/356	Gabrielle Kaufmann-Kohler	6
1019	claimant	http://www.italaw.com/cases/361	Dunkeld International Investment Ltd.	\N
1020	respondent_state	http://www.italaw.com/cases/361	Belize	\N
1021	investment_treaty	http://www.italaw.com/cases/361	Belize-United Kingdom BIT	\N
1022	arbitrator	http://www.italaw.com/cases/361	John Beechey	2
1023	arbitrator	http://www.italaw.com/cases/361	Rodrigo Oreamuno Blanco	2
1024	chair_president	http://www.italaw.com/cases/361	Albert Jan van den Berg	2
1025	claimant	http://www.italaw.com/cases/362	Dunkeld International Investment Ltd.	\N
1026	respondent_state	http://www.italaw.com/cases/362	Belize	\N
1027	investment_treaty	http://www.italaw.com/cases/362	Belize-United Kingdom BIT	\N
1028	arbitrator	http://www.italaw.com/cases/362	John Beechey	1
1029	arbitrator	http://www.italaw.com/cases/362	Rodrigo Oreamuno Blanco	1
1030	chair_president	http://www.italaw.com/cases/362	Albert Jan van den Berg	1
1031	arbitrator	http://www.italaw.com/cases/362	John Beechey	2
1032	arbitrator	http://www.italaw.com/cases/362	Rodrigo Oreamuno Blanco	2
1033	chair_president	http://www.italaw.com/cases/362	Albert Jan van den Berg	2
1034	arbitrator	http://www.italaw.com/cases/362	John Beechey	3
1035	arbitrator	http://www.italaw.com/cases/362	Rodrigo Oreamuno Blanco	3
1036	chair_president	http://www.italaw.com/cases/362	Albert Jan van den Berg	3
1037	arbitrator	http://www.italaw.com/cases/362	John Beechey	4
1038	arbitrator	http://www.italaw.com/cases/362	Rodrigo Oreamuno Blanco	4
1039	chair_president	http://www.italaw.com/cases/362	Albert Jan van den Berg	4
1040	arbitrator	http://www.italaw.com/cases/362	John Beechey	5
1041	arbitrator	http://www.italaw.com/cases/362	Rodrigo Oreamuno Blanco	5
1042	chair_president	http://www.italaw.com/cases/362	Albert Jan van den Berg	5
1043	arbitrator	http://www.italaw.com/cases/362	John Beechey	6
1044	arbitrator	http://www.italaw.com/cases/362	Rodrigo Oreamuno Blanco	6
1045	chair_president	http://www.italaw.com/cases/362	Albert Jan van den Berg	6
1046	arbitrator	http://www.italaw.com/cases/362	John Beechey	7
1047	arbitrator	http://www.italaw.com/cases/362	Rodrigo Oreamuno Blanco	7
1048	chair_president	http://www.italaw.com/cases/362	Albert Jan van den Berg	7
1049	country_in_which_this_occurs	http://www.italaw.com/cases/362	Belize	8
1050	arbitrator	http://www.italaw.com/cases/362	John Beechey	9
1051	arbitrator	http://www.italaw.com/cases/362	Rodrigo Oreamuno Blanco	9
1052	chair_president	http://www.italaw.com/cases/362	Albert Jan van den Berg	9
1053	claimant	http://www.italaw.com/cases/366	East Cement for Investment Company	\N
1054	respondent_state	http://www.italaw.com/cases/366	Poland	\N
1055	investment_treaty	http://www.italaw.com/cases/366	Jordan-Poland BIT	\N
1056	arbitrator	http://www.italaw.com/cases/366	Piero Bernardini	0
1057	arbitrator	http://www.italaw.com/cases/366	Brigitte Stern	0
1058	chair_president	http://www.italaw.com/cases/366	Ulf Franke	0
1059	claimant	http://www.italaw.com/cases/368	Eastern Sugar B.V. (Netherlands)	\N
1060	respondent_state	http://www.italaw.com/cases/368	Czech Republic	\N
1061	investment_treaty	http://www.italaw.com/cases/368	Czech Republic-Netherlands BIT	\N
1062	claimant_appointee	http://www.italaw.com/cases/368	Robert Volterra	0
1063	respondent_appointee	http://www.italaw.com/cases/368	Emmanuel Gaillard	0
1064	chair_president	http://www.italaw.com/cases/368	Pierre Karrer	0
1065	claimant_appointee	http://www.italaw.com/cases/368	Robert Volterra	1
1066	claimant_appointee	http://www.italaw.com/cases/368	Robert Volterra	2
1067	respondent_appointee	http://www.italaw.com/cases/368	Emmanuel Gaillard	2
1068	chair_president	http://www.italaw.com/cases/368	Pierre Karrer	2
1069	claimant	http://www.italaw.com/cases/372	EDF International S.A.	\N
1070	claimant	http://www.italaw.com/cases/372	SAUR International S.A.	\N
1071	claimant	http://www.italaw.com/cases/372	León Participaciones Argentinas S.A.	\N
1072	respondent_state	http://www.italaw.com/cases/372	Argentina	\N
1073	investment_treaty	http://www.italaw.com/cases/372	Argentina-France BIT	\N
1074	investment_treaty	http://www.italaw.com/cases/372	Argentina-Belgium-Luxembourg BIT	\N
1075	other_expert	http://www.italaw.com/cases/372	Charles Wolfram	0
1076	respondent_appointee	http://www.italaw.com/cases/372	Jesús Remón	1
1077	chair_president	http://www.italaw.com/cases/372	William Park	1
1078	claimant_appointee	http://www.italaw.com/cases/372	Gabrielle Kaufmann-Kohler	3
1079	respondent_appointee	http://www.italaw.com/cases/372	Jesús Remón	3
1080	chair_president	http://www.italaw.com/cases/372	William Park	3
1081	claimants_expert	http://www.italaw.com/cases/372	Rudolf Dolzer	3
1082	annulment_committee_president	http://www.italaw.com/cases/372	Christopher Greenwood	4
1083	annulment_committee_members	http://www.italaw.com/cases/372	Teresa Cheng	4
1084	annulment_committee_members	http://www.italaw.com/cases/372	Yasuhei Taniguchi	4
1085	annulment_committee_president	http://www.italaw.com/cases/372	Christopher Greenwood	5
1086	annulment_committee_members	http://www.italaw.com/cases/372	Teresa Cheng	5
1087	annulment_committee_members	http://www.italaw.com/cases/372	Yasuhei Taniguchi	5
1088	claimant	http://www.italaw.com/cases/375	EDF (Services) Limited	\N
1089	respondent_state	http://www.italaw.com/cases/375	Romania	\N
1090	investment_treaty	http://www.italaw.com/cases/375	Romania-United Kingdom BIT	\N
1091	respondents_expert	http://www.italaw.com/cases/375	Christopher Greenwood	0
1092	claimants_expert	http://www.italaw.com/cases/375	Valeriu Stoica	1
1093	other_expert	http://www.italaw.com/cases/375	Lucian Mihai	2
1094	other_expert	http://www.italaw.com/cases/375	Christoph Schreuer	3
1095	other_expert	http://www.italaw.com/cases/375	Lucian Mihai	4
1096	other_expert	http://www.italaw.com/cases/375	Christopher Greenwood	5
1097	claimant_appointee	http://www.italaw.com/cases/375	Arthur Rovine	6
1098	respondent_appointee	http://www.italaw.com/cases/375	Yves Derains	6
1099	chair_president	http://www.italaw.com/cases/375	Piero Bernardini	6
1100	claimant_appointee	http://www.italaw.com/cases/375	Arthur Rovine	7
1101	respondent_appointee	http://www.italaw.com/cases/375	Yves Derains	7
1102	chair_president	http://www.italaw.com/cases/375	Piero Bernardini	7
1103	claimant_appointee	http://www.italaw.com/cases/375	Arthur Rovine	8
1104	claimant_appointee	http://www.italaw.com/cases/375	Arthur Rovine	9
1105	respondent_appointee	http://www.italaw.com/cases/375	Yves Derains	9
1106	chair_president	http://www.italaw.com/cases/375	Piero Bernardini	9
1107	claimant	http://www.italaw.com/cases/380	Electrabel S.A.	\N
1108	respondent_state	http://www.italaw.com/cases/380	Hungary	\N
1109	investment_treaty	http://www.italaw.com/cases/380	Energy Charter Treaty (ECT)	\N
1110	claimant_appointee	http://www.italaw.com/cases/380	Gabrielle Kaufmann-Kohler	1
1111	respondent_appointee	http://www.italaw.com/cases/380	Brigitte Stern	1
1112	chair_president	http://www.italaw.com/cases/380	V.V. Veeder	1
1113	claimant	http://www.italaw.com/cases/382	El Paso Energy International Company	\N
1114	respondent_state	http://www.italaw.com/cases/382	Argentina	\N
1115	investment_treaty	http://www.italaw.com/cases/382	Argentina-United States BIT	\N
1116	claimant_appointee	http://www.italaw.com/cases/382	Piero Bernardini	0
1117	respondent_appointee	http://www.italaw.com/cases/382	Brigitte Stern	0
1118	chair_president	http://www.italaw.com/cases/382	Lucius Caflisch	0
1119	other_expert	http://www.italaw.com/cases/382	Anne-Marie Slaughter	1
1120	other_expert	http://www.italaw.com/cases/382	William Burke-White	1
1121	other_expert	http://www.italaw.com/cases/382	Anne-Marie Slaughter	2
1122	other_expert	http://www.italaw.com/cases/382	William Burke-White	2
1123	other_expert	http://www.italaw.com/cases/382	M. Sornarajah	3
1124	claimant_appointee	http://www.italaw.com/cases/382	Piero Bernardini	4
1125	respondent_appointee	http://www.italaw.com/cases/382	Brigitte Stern	4
1126	chair_president	http://www.italaw.com/cases/382	Lucius Caflisch	4
1127	chair_president	http://www.italaw.com/cases/382	Rodrigo Oreamuno Blanco	5
1128	claimant	http://www.italaw.com/cases/384	Emmis International Holding B.V.	\N
1129	claimant	http://www.italaw.com/cases/384	MEM Magyar Electronic Media Kereskedelmi és Szolgáltató Kft.	\N
1130	claimant	http://www.italaw.com/cases/384	Emmis Radio Operating	\N
1131	claimant	http://www.italaw.com/cases/384	B.V.	\N
1132	respondent_state	http://www.italaw.com/cases/384	Hungary	\N
1133	investment_treaty	http://www.italaw.com/cases/384	Hungary-Netherlands BIT	\N
1134	investment_treaty	http://www.italaw.com/cases/384	Hungary-Switzerland BIT	\N
1135	claimant_appointee	http://www.italaw.com/cases/384	Marc Lalonde	1
1136	respondent_appointee	http://www.italaw.com/cases/384	J. Christopher Thomas	1
1137	chair_president	http://www.italaw.com/cases/384	Campbell McLachlan	1
1138	claimant_appointee	http://www.italaw.com/cases/384	Marc Lalonde	2
1139	respondent_appointee	http://www.italaw.com/cases/384	J. Christopher Thomas	2
1140	chair_president	http://www.italaw.com/cases/384	Campbell McLachlan	2
1141	claimant_appointee	http://www.italaw.com/cases/384	Marc Lalonde	3
1142	respondent_appointee	http://www.italaw.com/cases/384	J. Christopher Thomas	3
1143	chair_president	http://www.italaw.com/cases/384	Campbell McLachlan	3
1144	claimant	http://www.italaw.com/cases/387	Empresa Eléctrica del Ecuador	\N
1145	claimant	http://www.italaw.com/cases/387	Inc.	\N
1146	respondent_state	http://www.italaw.com/cases/387	Ecuador	\N
1147	investment_treaty	http://www.italaw.com/cases/387	Ecuador-United States BIT	\N
1148	claimant_appointee	http://www.italaw.com/cases/387	John Rooney	0
1149	respondent_appointee	http://www.italaw.com/cases/387	Michael Reisman	0
1150	chair_president	http://www.italaw.com/cases/387	Bernardo Sepúlveda Amor	0
1151	claimant	http://www.italaw.com/cases/389	Empresas Lucchetti	\N
1152	claimant	http://www.italaw.com/cases/389	S.A.	\N
1153	claimant	http://www.italaw.com/cases/389	Lucchetti Peru	\N
1154	respondent_state	http://www.italaw.com/cases/389	Peru	\N
1155	investment_treaty	http://www.italaw.com/cases/389	Chile-Peru BIT	\N
1156	claimant_appointee	http://www.italaw.com/cases/389	Jan Paulsson	0
1157	respondent_appointee	http://www.italaw.com/cases/389	Bernardo Cremades	0
1158	chair_president	http://www.italaw.com/cases/389	Thomas Buergenthal	0
1159	annulment_committee_president	http://www.italaw.com/cases/389	Hans Danelius	1
1160	annulment_committee_members	http://www.italaw.com/cases/389	Franklin Berman	1
1161	annulment_committee_members	http://www.italaw.com/cases/389	Andrea Giardina	1
1162	annulment_committee_president	http://www.italaw.com/cases/389	Hans Danelius	2
1163	annulment_committee_members	http://www.italaw.com/cases/389	Franklin Berman	2
1164	annulment_committee_members	http://www.italaw.com/cases/389	Andrea Giardina	2
1165	claimant	http://www.italaw.com/cases/393	EnCana Corporation	\N
1166	respondent_state	http://www.italaw.com/cases/393	Ecuador	\N
1167	investment_treaty	http://www.italaw.com/cases/393	Canada-Ecuador BIT	\N
1168	claimant_appointee	http://www.italaw.com/cases/393	Horacio Grigera Naón	0
1169	respondent_appointee	http://www.italaw.com/cases/393	Patrick Barrera Sweeney	0
1170	chair_president	http://www.italaw.com/cases/393	James Crawford	0
1171	claimant_appointee	http://www.italaw.com/cases/393	Horacio Grigera Naón	1
1172	respondent_appointee	http://www.italaw.com/cases/393	Patrick Barrera Sweeney	1
1173	chair_president	http://www.italaw.com/cases/393	James Crawford	1
1174	claimant_appointee	http://www.italaw.com/cases/393	Horacio Grigera Naón	2
1175	claimant_appointee	http://www.italaw.com/cases/393	Horacio Grigera Naón	3
1176	respondent_appointee	http://www.italaw.com/cases/393	J. Christopher Thomas	3
1177	chair_president	http://www.italaw.com/cases/393	James Crawford	3
1178	claimant	http://www.italaw.com/cases/401	Enron Corporation	\N
1179	claimant	http://www.italaw.com/cases/401	Ponderosa Assets	\N
1180	claimant	http://www.italaw.com/cases/401	L.P.	\N
1181	respondent_state	http://www.italaw.com/cases/401	Argentina	\N
1182	investment_treaty	http://www.italaw.com/cases/401	Argentina-United States BIT	\N
1183	claimant_appointee	http://www.italaw.com/cases/401	Pierre-Yves Tschanz	0
1184	respondent_appointee	http://www.italaw.com/cases/401	Héctor Gros Espiell	0
1185	chair_president	http://www.italaw.com/cases/401	Francisco Orrego Vicuña	0
1186	claimant_appointee	http://www.italaw.com/cases/401	Francisco Orrego Vicuña	1
1187	respondent_appointee	http://www.italaw.com/cases/401	Héctor Gros Espiell	1
1188	chair_president	http://www.italaw.com/cases/401	Francisco Orrego Vicuña	1
1189	claimant_appointee	http://www.italaw.com/cases/401	Albert Jan van den Berg	2
1190	respondent_appointee	http://www.italaw.com/cases/401	Pierre-Yves Tschanz	2
1191	chair_president	http://www.italaw.com/cases/401	Francisco Orrego Vicuña	2
1192	claimant_appointee	http://www.italaw.com/cases/401	Albert Jan van den Berg	3
1193	respondent_appointee	http://www.italaw.com/cases/401	Pierre-Yves Tschanz	3
1194	chair_president	http://www.italaw.com/cases/401	Francisco Orrego Vicuña	3
1195	claimant_appointee	http://www.italaw.com/cases/401	Albert Jan van den Berg	4
1196	respondent_appointee	http://www.italaw.com/cases/401	Pierre-Yves Tschanz	4
1197	chair_president	http://www.italaw.com/cases/401	Francisco Orrego Vicuña	4
1198	annulment_committee_president	http://www.italaw.com/cases/401	Gavan Griffith	5
1199	annulment_committee_members	http://www.italaw.com/cases/401	Patrick Robinson	5
1200	annulment_committee_members	http://www.italaw.com/cases/401	Per Tresselt	5
1201	annulment_committee_president	http://www.italaw.com/cases/401	Gavan Griffith	6
1202	annulment_committee_members	http://www.italaw.com/cases/401	Patrick Robinson	6
1203	annulment_committee_members	http://www.italaw.com/cases/401	Per Tresselt	6
1204	annulment_committee_president	http://www.italaw.com/cases/401	Gavan Griffith	7
1205	annulment_committee_members	http://www.italaw.com/cases/401	Patrick Robinson	7
1206	annulment_committee_members	http://www.italaw.com/cases/401	Per Tresselt	7
1207	claimant	http://www.italaw.com/cases/409	Ethyl Corporation	\N
1208	respondent_state	http://www.italaw.com/cases/409	Canada	\N
1209	investment_treaty	http://www.italaw.com/cases/409	NAFTA	\N
1210	claimant_appointee	http://www.italaw.com/cases/409	Charles Brower	0
1211	respondent_appointee	http://www.italaw.com/cases/409	Marc Lalonde	0
1212	chair_president	http://www.italaw.com/cases/409	Karl-Heinz Böckstiegel	0
1213	claimant	http://www.italaw.com/cases/412	Eureko B.V.	\N
1214	respondent_state	http://www.italaw.com/cases/412	Poland	\N
1215	investment_treaty	http://www.italaw.com/cases/412	Netherlands-Poland BIT	\N
1216	claimant_appointee	http://www.italaw.com/cases/412	Stephen Schwebel	0
1217	respondent_appointee	http://www.italaw.com/cases/412	Jerzy Rajski	0
1218	chair_president	http://www.italaw.com/cases/412	L. Yves Fortier	0
1219	respondent_appointee	http://www.italaw.com/cases/412	Jerzy Rajski	1
1220	country_in_which_this_occurs	http://www.italaw.com/cases/412	Belgium	2
1221	country_in_which_this_occurs	http://www.italaw.com/cases/412	Belgium	3
1222	claimant	http://www.italaw.com/cases/417	Achmea B.V.	\N
1223	respondent_state	http://www.italaw.com/cases/417	Slovak Republic	\N
1224	investment_treaty	http://www.italaw.com/cases/417	Netherlands-Slovak Repubic BIT	\N
1225	claimant_appointee	http://www.italaw.com/cases/417	Albert Jan van den Berg	0
1226	respondent_appointee	http://www.italaw.com/cases/417	V.V. Veeder	0
1227	chair_president	http://www.italaw.com/cases/417	Vaughan Lowe	0
1228	country_in_which_this_occurs	http://www.italaw.com/cases/417	Germany	1
1229	claimant_appointee	http://www.italaw.com/cases/417	Albert Jan van den Berg	2
1230	respondent_appointee	http://www.italaw.com/cases/417	V.V. Veeder	2
1231	chair_president	http://www.italaw.com/cases/417	Vaughan Lowe	2
1232	country_in_which_this_occurs	http://www.italaw.com/cases/417	Germany	3
1233	claimant	http://www.italaw.com/cases/419	EuroGas GmbH	\N
1234	respondent_state	http://www.italaw.com/cases/419	Slovak Republic	\N
1235	investment_treaty	http://www.italaw.com/cases/419	Austria-Slovak Republic BIT	\N
1236	claimant	http://www.italaw.com/cases/421	Europe Cement Investment & Trade S.A.	\N
1237	respondent_state	http://www.italaw.com/cases/421	Turkey	\N
1238	investment_treaty	http://www.italaw.com/cases/421	Energy Charter Treaty (ECT)	\N
1239	other_expert	http://www.italaw.com/cases/421	Mehmet Bahtiyar	0
1240	claimant_appointee	http://www.italaw.com/cases/421	Julian Lew	1
1241	respondent_appointee	http://www.italaw.com/cases/421	Laurent Lévy	1
1242	chair_president	http://www.italaw.com/cases/421	Donald McRae	1
1243	claimant	http://www.italaw.com/cases/423	European Media Ventures SA	\N
1244	respondent_state	http://www.italaw.com/cases/423	Czech Republic	\N
1245	investment_treaty	http://www.italaw.com/cases/423	Belgium-Luxembourg-Czech Republic BIT	\N
1246	claimant_appointee	http://www.italaw.com/cases/423	Julian Lew	0
1247	respondent_appointee	http://www.italaw.com/cases/423	Christopher Greenwood	0
1248	chair_president	http://www.italaw.com/cases/423	Lord Mustill	0
1249	claimants_counsel	http://www.italaw.com/cases/423	Salans	0
1250	claimants_counsel	http://www.italaw.com/cases/423	Jeffrey Hertzfeld	0
1251	claimants_counsel	http://www.italaw.com/cases/423	Brenda Horrigan	0
1252	claimants_counsel	http://www.italaw.com/cases/423	Ladislav Storek	0
1253	respondents_counsel	http://www.italaw.com/cases/423	Linklaters	0
1254	respondents_counsel	http://www.italaw.com/cases/423	Matrix Chambers	0
1255	respondents_counsel	http://www.italaw.com/cases/423	Ludek Vrana	0
1256	respondents_counsel	http://www.italaw.com/cases/423	Stuart Dutson	0
1257	respondents_counsel	http://www.italaw.com/cases/423	Zachary Douglas	0
1258	country_in_which_this_occurs	http://www.italaw.com/cases/423	United Kingdom	1
1259	claimant_appointee	http://www.italaw.com/cases/423	Julian Lew	2
1260	respondent_appointee	http://www.italaw.com/cases/423	Christopher Greenwood	2
1261	chair_president	http://www.italaw.com/cases/423	Lord Mustill	2
1262	claimants_counsel	http://www.italaw.com/cases/423	Salans	2
1263	claimants_counsel	http://www.italaw.com/cases/423	Brenda Horrigan	2
1264	claimants_counsel	http://www.italaw.com/cases/423	Ladislav Storek	2
1265	claimants_counsel	http://www.italaw.com/cases/423	Jeffrey Hertzfeld	2
1266	respondents_counsel	http://www.italaw.com/cases/423	Linklaters	2
1267	respondents_counsel	http://www.italaw.com/cases/423	Zachary Douglas	2
1268	respondents_counsel	http://www.italaw.com/cases/423	Ludek Vrana	2
1269	respondents_counsel	http://www.italaw.com/cases/423	Greg Reid	2
1270	claimant_appointee	http://www.italaw.com/cases/423	Julian Lew	3
1271	respondent_appointee	http://www.italaw.com/cases/423	Christopher Greenwood	3
1272	chair_president	http://www.italaw.com/cases/423	Lord Mustill	3
1273	claimant	http://www.italaw.com/cases/427	EVN AG	\N
1274	respondent_state	http://www.italaw.com/cases/427	Macedonia (former Yugoslav Republic of Macedonia)	\N
1275	investment_treaty	http://www.italaw.com/cases/427	Austria-Macedonia (former Yugoslav Republic of Macedonia) BIT	\N
1276	investment_treaty	http://www.italaw.com/cases/427	Energy Charter Treaty (ECT)	\N
1277	claimant_appointee	http://www.italaw.com/cases/427	Francisco Orrego Vicuña	0
1278	respondent_appointee	http://www.italaw.com/cases/427	Vaughan Lowe	0
1279	chair_president	http://www.italaw.com/cases/427	Piero Bernardini	0
1280	claimant	http://www.italaw.com/cases/429	Fakes	\N
1281	respondent_state	http://www.italaw.com/cases/429	Turkey	\N
1282	investment_treaty	http://www.italaw.com/cases/429	Netherlands-Turkey BIT	\N
1283	claimant_appointee	http://www.italaw.com/cases/429	Hans van Houtte	1
1284	respondent_appointee	http://www.italaw.com/cases/429	Laurent Lévy	1
1285	chair_president	http://www.italaw.com/cases/429	Emmanuel Gaillard	1
1286	claimant	http://www.italaw.com/cases/432	Fedax N.V.	\N
1287	respondent_state	http://www.italaw.com/cases/432	Venezuela	\N
1288	investment_treaty	http://www.italaw.com/cases/432	Netherlands-Venezuela BIT	\N
1289	claimant_appointee	http://www.italaw.com/cases/432	Meir Hath	0
1290	respondent_appointee	http://www.italaw.com/cases/432	Roberts Owen	0
1291	chair_president	http://www.italaw.com/cases/432	Francisco Orrego Vicuña	0
1292	claimant_appointee	http://www.italaw.com/cases/432	Meir Hath	1
1293	respondent_appointee	http://www.italaw.com/cases/432	Roberts Owen	1
1294	chair_president	http://www.italaw.com/cases/432	Francisco Orrego Vicuña	1
1295	claimant	http://www.italaw.com/cases/435	Feldman	\N
1296	respondent_state	http://www.italaw.com/cases/435	Mexico	\N
1297	investment_treaty	http://www.italaw.com/cases/435	NAFTA	\N
1298	claimant_appointee	http://www.italaw.com/cases/435	David Gantz	0
1299	respondent_appointee	http://www.italaw.com/cases/435	Jorge Covarrubias Bravo	0
1300	chair_president	http://www.italaw.com/cases/435	Konstantinos Kerameus	0
1301	claimant_appointee	http://www.italaw.com/cases/435	David Gantz	1
1302	respondent_appointee	http://www.italaw.com/cases/435	Jorge Covarrubias Bravo	1
1303	chair_president	http://www.italaw.com/cases/435	Konstantinos Kerameus	1
1304	claimant_appointee	http://www.italaw.com/cases/435	David Gantz	2
1305	respondent_appointee	http://www.italaw.com/cases/435	Jorge Covarrubias Bravo	2
1306	chair_president	http://www.italaw.com/cases/435	Konstantinos Kerameus	2
1307	claimant_appointee	http://www.italaw.com/cases/435	David Gantz	4
1308	respondent_appointee	http://www.italaw.com/cases/435	Jorge Covarrubias Bravo	4
1309	chair_president	http://www.italaw.com/cases/435	Konstantinos Kerameus	4
1310	country_in_which_this_occurs	http://www.italaw.com/cases/435	Canada	5
1311	country_in_which_this_occurs	http://www.italaw.com/cases/435	Canada	6
1312	claimant	http://www.italaw.com/cases/443	Fireman's Fund Insurance Company	\N
1313	respondent_state	http://www.italaw.com/cases/443	Mexico	\N
1314	investment_treaty	http://www.italaw.com/cases/443	NAFTA	\N
1315	claimant_appointee	http://www.italaw.com/cases/443	Andreas Lowenfeld	0
1316	respondent_appointee	http://www.italaw.com/cases/443	Francisco Carrillo Gamboa	0
1317	chair_president	http://www.italaw.com/cases/443	Albert Jan van den Berg	0
1318	claimant_appointee	http://www.italaw.com/cases/443	Andreas Lowenfeld	1
1319	respondent_appointee	http://www.italaw.com/cases/443	Alberto Guillermo Saavedra Olavarrieta	1
1320	chair_president	http://www.italaw.com/cases/443	Albert Jan van den Berg	1
1321	claimant	http://www.italaw.com/cases/446	Foresti	\N
1322	claimant	http://www.italaw.com/cases/446	Carli	\N
1323	respondent_state	http://www.italaw.com/cases/446	South Africa	\N
1324	investment_treaty	http://www.italaw.com/cases/446	Italy-South Africa BIT	\N
1325	investment_treaty	http://www.italaw.com/cases/446	Belgium-Luxembourg-South Africa BIT	\N
1326	respondent_appointee	http://www.italaw.com/cases/446	Joseph Matthews	3
1327	claimant_appointee	http://www.italaw.com/cases/446	Charles Brower	4
1328	respondent_appointee	http://www.italaw.com/cases/446	Joseph Matthews	4
1329	chair_president	http://www.italaw.com/cases/446	Vaughan Lowe	4
1330	claimant	http://www.italaw.com/cases/452	France Telecom	\N
1331	respondent_state	http://www.italaw.com/cases/452	Lebanon	\N
1332	investment_treaty	http://www.italaw.com/cases/452	France-Lebanon BIT	\N
1333	country_in_which_this_occurs	http://www.italaw.com/cases/452	Switzerland	1
1334	country_in_which_this_occurs	http://www.italaw.com/cases/452	Switzerland	2
1335	claimant	http://www.italaw.com/cases/456	Fraport AG Frankfurt Airport Services Worldwide	\N
1336	respondent_state	http://www.italaw.com/cases/456	Philippines	\N
1337	investment_treaty	http://www.italaw.com/cases/456	Germany-Philippines BIT	\N
1338	claimant_appointee	http://www.italaw.com/cases/456	Bernardo Cremades	0
1339	respondent_appointee	http://www.italaw.com/cases/456	Michael Reisman	0
1340	chair_president	http://www.italaw.com/cases/456	L. Yves Fortier	0
1341	annulment_committee_president	http://www.italaw.com/cases/456	Peter Tomka	1
1342	annulment_committee_members	http://www.italaw.com/cases/456	Dominique Hascher	1
1343	annulment_committee_members	http://www.italaw.com/cases/456	Campbell McLachlan	1
1344	annulment_committee_president	http://www.italaw.com/cases/456	Peter Tomka	2
1345	annulment_committee_members	http://www.italaw.com/cases/456	Dominique Hascher	2
1346	annulment_committee_members	http://www.italaw.com/cases/456	Campbell McLachlan	2
1347	claimant	http://www.italaw.com/cases/459	Frontier Petroleum Services Ltd.	\N
1348	respondent_state	http://www.italaw.com/cases/459	Czech Republic	\N
1349	investment_treaty	http://www.italaw.com/cases/459	Canada-Czech Republic BIT	\N
1350	claimant_appointee	http://www.italaw.com/cases/459	Henri Alvarez	0
1351	respondent_appointee	http://www.italaw.com/cases/459	Christoph Schreuer	0
1352	chair_president	http://www.italaw.com/cases/459	David Williams	0
1353	claimant	http://www.italaw.com/cases/460	Philip Morris Brands Sàrl	\N
1354	claimant	http://www.italaw.com/cases/460	Abal Hermanos S.A.	\N
1355	respondent_state	http://www.italaw.com/cases/460	Uruguay	\N
1356	investment_treaty	http://www.italaw.com/cases/460	Switzerland-Uruguay BIT	\N
1357	other_expert	http://www.italaw.com/cases/460	Todd Weiler	1
1358	claimant_appointee	http://www.italaw.com/cases/460	Gary Born	5
1359	respondent_appointee	http://www.italaw.com/cases/460	James Crawford	5
1360	chair_president	http://www.italaw.com/cases/460	Piero Bernardini	5
1361	arbitrator	http://www.italaw.com/cases/460	Gary Born	6
1362	arbitrator	http://www.italaw.com/cases/460	James Crawford	6
1363	chair_president	http://www.italaw.com/cases/460	Piero Bernardini	6
1364	arbitrator	http://www.italaw.com/cases/460	Gary Born	7
1365	arbitrator	http://www.italaw.com/cases/460	James Crawford	7
1366	chair_president	http://www.italaw.com/cases/460	Piero Bernardini	7
1367	claimants_counsel	http://www.italaw.com/cases/460	Stanimir Alexandrov	7
1368	claimants_counsel	http://www.italaw.com/cases/460	Marinn Carlson	7
1369	claimants_counsel	http://www.italaw.com/cases/460	Jennifer Haworth McCandless	7
1370	claimants_counsel	http://www.italaw.com/cases/460	James Mendenhall	7
1371	claimants_counsel	http://www.italaw.com/cases/460	SIDLEY AUSTIN LLP	7
1372	claimants_counsel	http://www.italaw.com/cases/460	Veijo Heiskanen	7
1373	claimants_counsel	http://www.italaw.com/cases/460	Noradèle Radjai	7
1374	claimants_counsel	http://www.italaw.com/cases/460	Samuel Moss	7
1375	claimants_counsel	http://www.italaw.com/cases/460	LALIVE	7
1376	respondents_counsel	http://www.italaw.com/cases/460	Rodolfo Nin Novoa	7
1377	respondents_counsel	http://www.italaw.com/cases/460	Diego Cánepa Baccino	7
1378	respondents_counsel	http://www.italaw.com/cases/460	María Susana Muñiz Jiménez	7
1379	respondents_counsel	http://www.italaw.com/cases/460	Paul Reichler	7
1380	respondents_counsel	http://www.italaw.com/cases/460	Ronald Goodman	7
1381	respondents_counsel	http://www.italaw.com/cases/460	Lawrence Martin	7
1382	respondents_counsel	http://www.italaw.com/cases/460	Clara Brillembourg	7
1383	respondents_counsel	http://www.italaw.com/cases/460	Foley Hoag LLP	7
1384	claimant	http://www.italaw.com/cases/464	Fuchs	\N
1385	respondent_state	http://www.italaw.com/cases/464	Georgia	\N
1386	investment_treaty	http://www.italaw.com/cases/464	Georgia-Israel BIT	\N
1387	claimant_appointee	http://www.italaw.com/cases/464	Francisco Orrego Vicuña	0
1388	respondent_appointee	http://www.italaw.com/cases/464	Arthur Watts	0
1389	chair_president	http://www.italaw.com/cases/464	L. Yves Fortier	0
1390	claimant_appointee	http://www.italaw.com/cases/464	Francisco Orrego Vicuña	1
1391	respondent_appointee	http://www.italaw.com/cases/464	Arthur Watts	1
1392	chair_president	http://www.italaw.com/cases/464	L. Yves Fortier	1
1393	annulment_committee_president	http://www.italaw.com/cases/464	Dominique Hascher	2
1394	annulment_committee_members	http://www.italaw.com/cases/464	Cecil Abraham	2
1395	annulment_committee_members	http://www.italaw.com/cases/464	Karl-Heinz Böckstiegel	2
1396	annulment_committee_president	http://www.italaw.com/cases/464	Dominique Hascher	3
1397	annulment_committee_members	http://www.italaw.com/cases/464	Cecil Abraham	3
1398	annulment_committee_members	http://www.italaw.com/cases/464	Karl-Heinz Böckstiegel	3
1399	annulment_committee_president	http://www.italaw.com/cases/464	Dominique Hascher	4
1400	annulment_committee_members	http://www.italaw.com/cases/464	Cecil Abraham	4
1401	annulment_committee_members	http://www.italaw.com/cases/464	Karl-Heinz Böckstiegel	4
1402	claimant	http://www.italaw.com/cases/467	Funnekotter	\N
1403	respondent_state	http://www.italaw.com/cases/467	Zimbabwe	\N
1404	investment_treaty	http://www.italaw.com/cases/467	Netherlands-Zimbabwe BIT	\N
1405	claimant_appointee	http://www.italaw.com/cases/467	Ronald Cass	0
1406	respondent_appointee	http://www.italaw.com/cases/467	Mohammad Wasi Zafar	0
1407	chair_president	http://www.italaw.com/cases/467	Gilbert Guillaume	0
1408	claimant	http://www.italaw.com/cases/469	F-W Oil Interests	\N
1409	claimant	http://www.italaw.com/cases/469	Inc.	\N
1410	respondent_state	http://www.italaw.com/cases/469	Trinidad and Tobago	\N
1411	investment_treaty	http://www.italaw.com/cases/469	Trinidad and Tobago-United States BIT	\N
1412	claimant_appointee	http://www.italaw.com/cases/469	Franklin Berman	0
1413	respondent_appointee	http://www.italaw.com/cases/469	Lord Mustill	0
1414	chair_president	http://www.italaw.com/cases/469	Fali Nariman	0
1415	claimant	http://www.italaw.com/cases/471	Gallo	\N
1416	respondent_state	http://www.italaw.com/cases/471	Canada	\N
1417	investment_treaty	http://www.italaw.com/cases/471	NAFTA	\N
1418	claimant_appointee	http://www.italaw.com/cases/471	Jean-Gabriel Castel	0
1419	chair_president	http://www.italaw.com/cases/471	Juan Fernández-Armesto	0
1420	claimant_appointee	http://www.italaw.com/cases/471	Jean-Gabriel Castel	3
1421	respondent_appointee	http://www.italaw.com/cases/471	J. Christopher Thomas	3
1422	chair_president	http://www.italaw.com/cases/471	Juan Fernández-Armesto	3
1423	claimant	http://www.italaw.com/cases/474	Gami Investments	\N
1424	claimant	http://www.italaw.com/cases/474	Inc.	\N
1425	respondent_state	http://www.italaw.com/cases/474	Mexico	\N
1426	investment_treaty	http://www.italaw.com/cases/474	NAFTA	\N
1427	claimant_appointee	http://www.italaw.com/cases/474	Michael Reisman	0
1428	respondent_appointee	http://www.italaw.com/cases/474	Julio Lacarte Múro	0
1429	chair_president	http://www.italaw.com/cases/474	Jan Paulsson	0
1430	claimant	http://www.italaw.com/cases/476	Gas Natural SDG	\N
1431	claimant	http://www.italaw.com/cases/476	S.A.	\N
1432	respondent_state	http://www.italaw.com/cases/476	Argentina	\N
1433	investment_treaty	http://www.italaw.com/cases/476	Argentina-Spain BIT	\N
1434	claimant_appointee	http://www.italaw.com/cases/476	Henri Alvarez	0
1435	respondent_appointee	http://www.italaw.com/cases/476	Pedro Nikken	0
1436	chair_president	http://www.italaw.com/cases/476	Andreas Lowenfeld	0
1437	claimant	http://www.italaw.com/cases/478	GEA Group Aktiengesellschaft	\N
1438	respondent_state	http://www.italaw.com/cases/478	Ukraine	\N
1439	investment_treaty	http://www.italaw.com/cases/478	Germany-Ukraine BIT	\N
1440	claimant_appointee	http://www.italaw.com/cases/478	Toby Landau	0
1441	respondent_appointee	http://www.italaw.com/cases/478	Brigitte Stern	0
1442	chair_president	http://www.italaw.com/cases/478	Albert Jan van den Berg	0
1443	claimant	http://www.italaw.com/cases/480	Gemplus S.A.	\N
1444	claimant	http://www.italaw.com/cases/480	SLP S.A.	\N
1445	respondent_state	http://www.italaw.com/cases/480	Mexico	\N
1446	investment_treaty	http://www.italaw.com/cases/480	Argentina-Mexico BIT	\N
1447	investment_treaty	http://www.italaw.com/cases/480	France-Mexico BIT	\N
1448	claimant_appointee	http://www.italaw.com/cases/480	L. Yves Fortier	0
1449	respondent_appointee	http://www.italaw.com/cases/480	Eduardo Magallón Gómez	0
1450	chair_president	http://www.italaw.com/cases/480	V.V. Veeder	0
1451	claimant	http://www.italaw.com/cases/482	Generation Ukraine	\N
1452	claimant	http://www.italaw.com/cases/482	Inc.	\N
1453	respondent_state	http://www.italaw.com/cases/482	Ukraine	\N
1454	investment_treaty	http://www.italaw.com/cases/482	Ukraine-United States BIT	\N
1455	claimant_appointee	http://www.italaw.com/cases/482	Eugen Salpius	0
1456	respondent_appointee	http://www.italaw.com/cases/482	Jürgen Voss	0
1457	chair_president	http://www.italaw.com/cases/482	Jan Paulsson	0
1458	claimant	http://www.italaw.com/cases/484	Genin	\N
1459	claimant	http://www.italaw.com/cases/484	Eastern Credit Limited	\N
1460	claimant	http://www.italaw.com/cases/484	Inc.	\N
1461	claimant	http://www.italaw.com/cases/484	A.S. Baltoil	\N
1462	respondent_state	http://www.italaw.com/cases/484	Estonia	\N
1463	investment_treaty	http://www.italaw.com/cases/484	Estonia-United States BIT	\N
1464	claimant_appointee	http://www.italaw.com/cases/484	Meir Heth	0
1465	respondent_appointee	http://www.italaw.com/cases/484	Albert Jan van den Berg	0
1466	chair_president	http://www.italaw.com/cases/484	L. Yves Fortier	0
1467	claimant_appointee	http://www.italaw.com/cases/484	Meir Heth	1
1468	respondent_appointee	http://www.italaw.com/cases/484	Albert Jan van den Berg	1
1469	chair_president	http://www.italaw.com/cases/484	L. Yves Fortier	1
1470	other_expert	http://www.italaw.com/cases/484	Andreas Lowenfeld	2
1471	claimant	http://www.italaw.com/cases/487	Glamis Gold	\N
1472	claimant	http://www.italaw.com/cases/487	Ltd.	\N
1473	respondent_state	http://www.italaw.com/cases/487	United States of America	\N
1474	investment_treaty	http://www.italaw.com/cases/487	NAFTA	\N
1475	claimant_appointee	http://www.italaw.com/cases/487	Donald Morgan	0
1476	respondent_appointee	http://www.italaw.com/cases/487	David Caron	0
1477	chair_president	http://www.italaw.com/cases/487	Michael Young	0
1478	claimant_appointee	http://www.italaw.com/cases/487	Donald Morgan	1
1479	respondent_appointee	http://www.italaw.com/cases/487	David Caron	1
1480	chair_president	http://www.italaw.com/cases/487	Michael Young	1
1481	claimant_appointee	http://www.italaw.com/cases/487	Donald Morgan	2
1482	respondent_appointee	http://www.italaw.com/cases/487	David Caron	2
1483	chair_president	http://www.italaw.com/cases/487	Michael Young	2
1484	claimant_appointee	http://www.italaw.com/cases/487	Donald Morgan	3
1485	respondent_appointee	http://www.italaw.com/cases/487	David Caron	3
1486	chair_president	http://www.italaw.com/cases/487	Michael Young	3
1487	claimant_appointee	http://www.italaw.com/cases/487	Donald Morgan	4
1488	respondent_appointee	http://www.italaw.com/cases/487	David Caron	4
1489	chair_president	http://www.italaw.com/cases/487	Michael Young	4
1490	claimant_appointee	http://www.italaw.com/cases/487	Donald Morgan	5
1491	respondent_appointee	http://www.italaw.com/cases/487	David Caron	5
1492	chair_president	http://www.italaw.com/cases/487	Michael Young	5
1493	claimant_appointee	http://www.italaw.com/cases/487	Donald Morgan	6
1494	respondent_appointee	http://www.italaw.com/cases/487	David Caron	6
1495	chair_president	http://www.italaw.com/cases/487	Michael Young	6
1496	claimant_appointee	http://www.italaw.com/cases/487	Donald Morgan	7
1497	respondent_appointee	http://www.italaw.com/cases/487	David Caron	7
1498	chair_president	http://www.italaw.com/cases/487	Michael Young	7
1499	claimant_appointee	http://www.italaw.com/cases/487	Donald Morgan	8
1500	respondent_appointee	http://www.italaw.com/cases/487	David Caron	8
1501	chair_president	http://www.italaw.com/cases/487	Michael Young	8
1502	claimant_appointee	http://www.italaw.com/cases/487	Donald Morgan	9
1503	respondent_appointee	http://www.italaw.com/cases/487	David Caron	9
1504	chair_president	http://www.italaw.com/cases/487	Michael Young	9
1505	claimant_appointee	http://www.italaw.com/cases/487	Kenneth Hubbard	10
1506	respondent_appointee	http://www.italaw.com/cases/487	David Caron	10
1507	chair_president	http://www.italaw.com/cases/487	Michael Young	10
1508	claimant_appointee	http://www.italaw.com/cases/487	Kenneth Hubbard	11
1509	respondent_appointee	http://www.italaw.com/cases/487	David Caron	11
1510	chair_president	http://www.italaw.com/cases/487	Michael Young	11
1511	claimant_appointee	http://www.italaw.com/cases/487	Kenneth Hubbard	12
1512	respondent_appointee	http://www.italaw.com/cases/487	David Caron	12
1513	chair_president	http://www.italaw.com/cases/487	Michael Young	12
1514	claimant_appointee	http://www.italaw.com/cases/487	Kenneth Hubbard	13
1515	respondent_appointee	http://www.italaw.com/cases/487	David Caron	13
1516	chair_president	http://www.italaw.com/cases/487	Michael Young	13
1517	claimant_appointee	http://www.italaw.com/cases/487	Kenneth Hubbard	14
1518	respondent_appointee	http://www.italaw.com/cases/487	David Caron	14
1519	chair_president	http://www.italaw.com/cases/487	Michael Young	14
1520	claimant_appointee	http://www.italaw.com/cases/487	Kenneth Hubbard	15
1521	respondent_appointee	http://www.italaw.com/cases/487	David Caron	15
1522	chair_president	http://www.italaw.com/cases/487	Michael Young	15
1523	claimant_appointee	http://www.italaw.com/cases/487	Kenneth Hubbard	16
1524	respondent_appointee	http://www.italaw.com/cases/487	David Caron	16
1525	chair_president	http://www.italaw.com/cases/487	Michael Young	16
1526	claimant_appointee	http://www.italaw.com/cases/487	Kenneth Hubbard	17
1527	respondent_appointee	http://www.italaw.com/cases/487	David Caron	17
1528	chair_president	http://www.italaw.com/cases/487	Michael Young	17
1529	claimant	http://www.italaw.com/cases/506	Global Trading Resource Corp.	\N
1530	respondent_state	http://www.italaw.com/cases/506	Ukraine	\N
1531	investment_treaty	http://www.italaw.com/cases/506	Ukraine-United States BIT	\N
1532	claimant_appointee	http://www.italaw.com/cases/506	Emmanuel Gaillard	0
1533	respondent_appointee	http://www.italaw.com/cases/506	J. Christopher Thomas	0
1534	chair_president	http://www.italaw.com/cases/506	Franklin Berman	0
1535	claimant	http://www.italaw.com/cases/508	Goetz	\N
1536	respondent_state	http://www.italaw.com/cases/508	Burundi	\N
1537	investment_treaty	http://www.italaw.com/cases/508	Belgium-Luxembourg-Burundi BIT	\N
1538	claimant_appointee	http://www.italaw.com/cases/508	Jean-Denis Bredin	0
1539	respondent_appointee	http://www.italaw.com/cases/508	Mohammed Bedjaoui	0
1540	chair_president	http://www.italaw.com/cases/508	Prosper Weil	0
1541	claimant	http://www.italaw.com/cases/510	Grand River Enterprises Six Nations	\N
1542	claimant	http://www.italaw.com/cases/510	Ltd.	\N
1543	respondent_state	http://www.italaw.com/cases/510	United States of America	\N
1544	investment_treaty	http://www.italaw.com/cases/510	NAFTA	\N
1545	claimant_appointee	http://www.italaw.com/cases/510	James Anaya	0
1546	respondent_appointee	http://www.italaw.com/cases/510	John Crook	0
1547	chair_president	http://www.italaw.com/cases/510	Fali Nariman	0
1548	respondent_appointee	http://www.italaw.com/cases/510	John Crook	1
1549	chair_president	http://www.italaw.com/cases/510	Fali Nariman	1
1550	claimant_appointee	http://www.italaw.com/cases/510	James Anaya	3
1551	respondent_appointee	http://www.italaw.com/cases/510	John Crook	3
1552	chair_president	http://www.italaw.com/cases/510	Fali Nariman	3
1553	claimant	http://www.italaw.com/cases/515	Gruslin	\N
1554	respondent_state	http://www.italaw.com/cases/515	Malaysia	\N
1555	investment_treaty	http://www.italaw.com/cases/515	Belgium-Luxembourg-Malaysia BIT	\N
1556	arbitrator	http://www.italaw.com/cases/515	Gavan Griffith	0
1557	claimant	http://www.italaw.com/cases/518	Guaracachi America	\N
1558	claimant	http://www.italaw.com/cases/518	Inc.	\N
1559	claimant	http://www.italaw.com/cases/518	Rurelec PLC	\N
1560	respondent_state	http://www.italaw.com/cases/518	Bolivia	\N
1561	investment_treaty	http://www.italaw.com/cases/518	Bolivia-United Kingdom BIT	\N
1562	investment_treaty	http://www.italaw.com/cases/518	Bolivia-United States BIT	\N
1563	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	6
1564	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	6
1565	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	6
1566	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	8
1567	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	8
1568	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	8
1569	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	9
1570	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	9
1571	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	9
1572	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	10
1573	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	10
1574	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	10
1575	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	11
1576	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	11
1577	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	11
1578	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	12
1579	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	12
1580	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	12
1581	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	13
1582	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	13
1583	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	13
1584	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	15
1585	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	15
1586	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	15
1587	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	18
1588	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	18
1589	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	18
1590	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	20
1591	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	20
1592	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	20
1593	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	24
1594	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	24
1595	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	24
1596	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	26
1597	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	26
1598	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	26
1599	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	28
1600	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	28
1601	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	28
1602	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	29
1603	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	29
1604	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	29
1605	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	30
1606	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	30
1607	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	30
1608	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	31
1609	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	31
1610	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	31
1689	other_expert	http://www.italaw.com/cases/544	Michael Reisman	7
1611	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	32
1612	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	32
1613	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	32
1614	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	33
1615	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	33
1616	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	33
1617	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	46
1618	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	46
1619	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	46
1620	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	49
1621	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	49
1622	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	50
1623	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	51
1624	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	51
1625	claimant_appointee	http://www.italaw.com/cases/518	Manuel Conthe	52
1626	respondent_appointee	http://www.italaw.com/cases/518	Raúl Vinuesa	52
1627	chair_president	http://www.italaw.com/cases/518	José Miguel Júdice	52
1628	claimant	http://www.italaw.com/cases/527	Gustav F W Hamester GmbH & Co KG	\N
1629	respondent_state	http://www.italaw.com/cases/527	Ghana	\N
1630	investment_treaty	http://www.italaw.com/cases/527	Germany-Ghana BIT	\N
1631	claimant_appointee	http://www.italaw.com/cases/527	Bernardo Cremades	0
1632	respondent_appointee	http://www.italaw.com/cases/527	Toby Landau	0
1633	chair_president	http://www.italaw.com/cases/527	Brigitte Stern	0
1634	claimant	http://www.italaw.com/cases/529	Helnan International Hotels A/S	\N
1635	respondent_state	http://www.italaw.com/cases/529	Egypt	\N
1636	investment_treaty	http://www.italaw.com/cases/529	Denmark-Egypt BIT	\N
1637	claimant_appointee	http://www.italaw.com/cases/529	Michael Lee	0
1638	respondent_appointee	http://www.italaw.com/cases/529	Rudolf Dolzer	0
1639	chair_president	http://www.italaw.com/cases/529	Yves Derains	0
1640	claimant_appointee	http://www.italaw.com/cases/529	Michael Lee	1
1641	respondent_appointee	http://www.italaw.com/cases/529	Rudolf Dolzer	1
1642	chair_president	http://www.italaw.com/cases/529	Yves Derains	1
1643	claimant_appointee	http://www.italaw.com/cases/529	Michael Lee	2
1644	respondent_appointee	http://www.italaw.com/cases/529	Rudolf Dolzer	2
1645	chair_president	http://www.italaw.com/cases/529	Yves Derains	2
1646	annulment_committee_president	http://www.italaw.com/cases/529	Stephen Schwebel	3
1647	annulment_committee_members	http://www.italaw.com/cases/529	Bola Ajibola	3
1648	annulment_committee_members	http://www.italaw.com/cases/529	Campbell McLachlan	3
1649	claimant	http://www.italaw.com/cases/534	HICEE B.V.	\N
1650	respondent_state	http://www.italaw.com/cases/534	Slovak Republic	\N
1651	investment_treaty	http://www.italaw.com/cases/534	Netherlands-Slovak Repubic BIT	\N
1652	claimant_appointee	http://www.italaw.com/cases/534	Charles Brower	0
1653	claimant_appointee	http://www.italaw.com/cases/534	Charles Brower	1
1654	respondent_appointee	http://www.italaw.com/cases/534	Peter Tomka	1
1655	chair_president	http://www.italaw.com/cases/534	Franklin Berman	1
1656	claimant_appointee	http://www.italaw.com/cases/534	Charles Brower	2
1657	respondent_appointee	http://www.italaw.com/cases/534	Peter Tomka	2
1658	chair_president	http://www.italaw.com/cases/534	Franklin Berman	2
1659	claimant	http://www.italaw.com/cases/538	Hochtief AG	\N
1660	respondent_state	http://www.italaw.com/cases/538	Argentina	\N
1661	investment_treaty	http://www.italaw.com/cases/538	Argentina-Germany BIT	\N
1662	respondent_appointee	http://www.italaw.com/cases/538	J. Christopher Thomas	0
1663	claimant_appointee	http://www.italaw.com/cases/538	Charles Brower	1
1664	respondent_appointee	http://www.italaw.com/cases/538	J. Christopher Thomas	1
1665	chair_president	http://www.italaw.com/cases/538	Vaughan Lowe	1
1666	arbitrator	http://www.italaw.com/cases/538	Charles Brower	2
1667	arbitrator	http://www.italaw.com/cases/538	J. Christopher Thomas	2
1668	chair_president	http://www.italaw.com/cases/538	Vaughan Lowe	2
1669	claimant	http://www.italaw.com/cases/541	Howard	\N
1670	claimant	http://www.italaw.com/cases/541	Centurion Health Corp.	\N
1671	respondent_state	http://www.italaw.com/cases/541	Canada	\N
1672	investment_treaty	http://www.italaw.com/cases/541	NAFTA	\N
1673	claimant_appointee	http://www.italaw.com/cases/541	Marjorie Florestal	0
1674	respondent_appointee	http://www.italaw.com/cases/541	Henri Alvarez	0
1675	chair_president	http://www.italaw.com/cases/541	Peter Tomka	0
1676	claimant_appointee	http://www.italaw.com/cases/541	Marjorie Florestal	1
1677	respondent_appointee	http://www.italaw.com/cases/541	Henri Alvarez	1
1678	chair_president	http://www.italaw.com/cases/541	Peter Tomka	1
1679	claimant	http://www.italaw.com/cases/544	Hulley Enterprises Limited (Cyprus)	\N
1680	respondent_state	http://www.italaw.com/cases/544	Russian Federation	\N
1681	investment_treaty	http://www.italaw.com/cases/544	Energy Charter Treaty (ECT)	\N
1682	other_expert	http://www.italaw.com/cases/544	Igor Lukashuk	0
1683	other_expert	http://www.italaw.com/cases/544	Suren Avakiyan	1
1684	other_expert	http://www.italaw.com/cases/544	Alexey Kostin	2
1685	other_expert	http://www.italaw.com/cases/544	Andrey Lisitsyn-Svetlanov	3
1686	other_expert	http://www.italaw.com/cases/544	Yevgeny Sukhanov	4
1687	other_expert	http://www.italaw.com/cases/544	Marat Baglay	5
1688	other_expert	http://www.italaw.com/cases/544	James Crawford	6
1690	other_expert	http://www.italaw.com/cases/544	Vladimir Gladyshev	8
1691	other_expert	http://www.italaw.com/cases/544	Martti Koskenniemi	9
1692	other_expert	http://www.italaw.com/cases/544	Georg Nolte	10
1693	other_expert	http://www.italaw.com/cases/544	S.V. Vasilyvev	11
1694	other_expert	http://www.italaw.com/cases/544	Alain Pellet	12
1695	other_expert	http://www.italaw.com/cases/544	Anatoly Martynov	13
1696	other_expert	http://www.italaw.com/cases/544	Gerhard Hafner	14
1697	other_expert	http://www.italaw.com/cases/544	Angelika Nussberger	15
1698	other_expert	http://www.italaw.com/cases/544	Myron Nordquist	16
1699	other_expert	http://www.italaw.com/cases/544	Suren Avakiyan	17
1700	other_expert	http://www.italaw.com/cases/544	Sydney Fremantle	18
1701	other_expert	http://www.italaw.com/cases/544	Stephen Knipler	19
1702	other_expert	http://www.italaw.com/cases/544	Daniel Berman	20
1703	other_expert	http://www.italaw.com/cases/544	Stef van Weeghel	21
1704	other_expert	http://www.italaw.com/cases/544	Vladimir Gladyshev	22
1705	other_expert	http://www.italaw.com/cases/544	James Crawford	23
1706	claimant_appointee	http://www.italaw.com/cases/544	Charles Poncet	24
1707	respondent_appointee	http://www.italaw.com/cases/544	Stephen Schwebel	24
1708	chair_president	http://www.italaw.com/cases/544	L. Yves Fortier	24
1709	respondents_expert	http://www.italaw.com/cases/544	H. David Rosenbloom	25
1710	claimants_expert	http://www.italaw.com/cases/544	Philip Baker	26
1711	respondents_expert	http://www.italaw.com/cases/544	H. David Rosenbloom	27
1712	claimant_appointee	http://www.italaw.com/cases/544	Charles Poncet	28
1713	respondent_appointee	http://www.italaw.com/cases/544	Stephen Schwebel	28
1714	chair_president	http://www.italaw.com/cases/544	L. Yves Fortier	28
1715	respondents_expert	http://www.italaw.com/cases/544	Anton V. Asoskov	29
1716	respondents_expert	http://www.italaw.com/cases/544	James Dow	30
1717	country_in_which_this_occurs	http://www.italaw.com/cases/544	Netherlands	31
1718	claimant	http://www.italaw.com/cases/546	IBM World Trade Corporation	\N
1719	respondent_state	http://www.italaw.com/cases/546	Ecuador	\N
1720	investment_treaty	http://www.italaw.com/cases/546	Ecuador-United States BIT	\N
1721	arbitrator	http://www.italaw.com/cases/546	Alejandro Ponce Martínez	0
1722	arbitrator	http://www.italaw.com/cases/546	León Roldós Aguilera	0
1723	chair_president	http://www.italaw.com/cases/546	Rodrigo Jijón Letort	0
1724	arbitrator	http://www.italaw.com/cases/546	León Roldós Aguilera	1
1725	claimant	http://www.italaw.com/cases/551	ICS Inspection and Control Services Limited (United Kingdom)	\N
1726	respondent_state	http://www.italaw.com/cases/551	Argentina	\N
1727	investment_treaty	http://www.italaw.com/cases/551	Argentina-United Kingdom BIT	\N
1728	claimant_appointee	http://www.italaw.com/cases/551	Marc Lalonde	1
1729	respondent_appointee	http://www.italaw.com/cases/551	Santiago Torres Bernárdez	1
1730	chair_president	http://www.italaw.com/cases/551	Pierre-Marie Dupuy	1
1731	claimant	http://www.italaw.com/cases/554	Impregilo S.p.A.	\N
1732	respondent_state	http://www.italaw.com/cases/554	Argentina	\N
1733	investment_treaty	http://www.italaw.com/cases/554	Argentina-Italy BIT	\N
1734	claimant_appointee	http://www.italaw.com/cases/554	Charles Brower	0
1735	respondent_appointee	http://www.italaw.com/cases/554	Brigitte Stern	0
1736	chair_president	http://www.italaw.com/cases/554	Hans Danelius	0
1737	respondent_appointee	http://www.italaw.com/cases/554	Brigitte Stern	1
1738	claimant_appointee	http://www.italaw.com/cases/554	Charles Brower	2
1739	annulment_committee_president	http://www.italaw.com/cases/554	Rodrigo Oreamuno	3
1740	annulment_committee_members	http://www.italaw.com/cases/554	Eduardo Zuleta	3
1741	annulment_committee_members	http://www.italaw.com/cases/554	Teresa Cheng	3
1742	claimant	http://www.italaw.com/cases/556	Impregilo S.p.A.	\N
1743	respondent_state	http://www.italaw.com/cases/556	Pakistan	\N
1744	investment_treaty	http://www.italaw.com/cases/556	Italy-Pakistan BIT	\N
1745	claimant_appointee	http://www.italaw.com/cases/556	Bernardo Cremades	0
1746	respondent_appointee	http://www.italaw.com/cases/556	Toby Landau	0
1747	chair_president	http://www.italaw.com/cases/556	Gilbert Guillaume	0
1748	claimant_appointee	http://www.italaw.com/cases/556	Bernardo Cremades	1
1749	respondent_appointee	http://www.italaw.com/cases/556	Toby Landau	1
1750	chair_president	http://www.italaw.com/cases/556	Gilbert Guillaume	1
1751	claimant_appointee	http://www.italaw.com/cases/556	Bernardo Cremades	2
1752	respondent_appointee	http://www.italaw.com/cases/556	Toby Landau	2
1753	chair_president	http://www.italaw.com/cases/556	Gilbert Guillaume	2
1754	claimant	http://www.italaw.com/cases/562	Inceysa Vallisoletana S.L.	\N
1755	respondent_state	http://www.italaw.com/cases/562	El Salvador	\N
1756	investment_treaty	http://www.italaw.com/cases/562	El Salvador-Spain BIT	\N
1757	claimant_appointee	http://www.italaw.com/cases/562	Burton Landy	0
1758	respondent_appointee	http://www.italaw.com/cases/562	Claus von Wobeser	0
1759	chair_president	http://www.italaw.com/cases/562	Rodrigo Oreamuno Blanco	0
1760	claimant	http://www.italaw.com/cases/565	Inmaris Perestroika Sailing Maritime Services GmbH	\N
1761	respondent_state	http://www.italaw.com/cases/565	Ukraine	\N
1762	investment_treaty	http://www.italaw.com/cases/565	Germany-Ukraine BIT	\N
1763	claimant_appointee	http://www.italaw.com/cases/565	Noah Rubins	0
1764	respondent_appointee	http://www.italaw.com/cases/565	Bernardo Cremades	0
1765	chair_president	http://www.italaw.com/cases/565	Stanimir Alexandrov	0
1766	claimant_appointee	http://www.italaw.com/cases/565	Noah Rubins	1
1767	respondent_appointee	http://www.italaw.com/cases/565	Bernardo Cremades	1
1768	chair_president	http://www.italaw.com/cases/565	Stanimir Alexandrov	1
1769	claimant	http://www.italaw.com/cases/567	International Quantum Resources Limited	\N
1770	claimant	http://www.italaw.com/cases/567	Frontier SPRL	\N
1771	claimant	http://www.italaw.com/cases/567	Compagnie Minière de Sakania SPRL	\N
1772	respondent_state	http://www.italaw.com/cases/567	Congo Democratic Republic of (formerly Zaire)	\N
1773	arbitrator	http://www.italaw.com/cases/567	Brigitte Stern	0
1774	arbitrator	http://www.italaw.com/cases/567	Horacio Grigera Naón	0
1775	chair_president	http://www.italaw.com/cases/567	Pierre Tercier	0
1776	arbitrator	http://www.italaw.com/cases/567	Brigitte Stern	1
1777	arbitrator	http://www.italaw.com/cases/567	Horacio Grigera Naón	1
1778	chair_president	http://www.italaw.com/cases/567	Pierre Tercier	1
1779	arbitrator	http://www.italaw.com/cases/567	Horacio Grigera Naón	2
1780	arbitrator	http://www.italaw.com/cases/567	Brigitte Stern	2
1781	chair_president	http://www.italaw.com/cases/567	Pierre Tercier	2
1782	claimant	http://www.italaw.com/cases/571	International Thunderbird Gaming Corporation	\N
1783	respondent_state	http://www.italaw.com/cases/571	Mexico	\N
1784	investment_treaty	http://www.italaw.com/cases/571	NAFTA	\N
1785	claimant_appointee	http://www.italaw.com/cases/571	Thomas Wälde	0
1786	claimant_appointee	http://www.italaw.com/cases/571	Thomas Wälde	1
1787	respondent_appointee	http://www.italaw.com/cases/571	Agustín Portal Ariosa	1
1788	chair_president	http://www.italaw.com/cases/571	Albert Jan van den Berg	1
1789	country_in_which_this_occurs	http://www.italaw.com/cases/571	United States of America	2
1790	claimant	http://www.italaw.com/cases/577	Invesmart	\N
1791	respondent_state	http://www.italaw.com/cases/577	Czech Republic	\N
1792	investment_treaty	http://www.italaw.com/cases/577	Czech Republic-Netherlands BIT	\N
1793	claimant_appointee	http://www.italaw.com/cases/577	Piero Bernardini	0
1794	respondent_appointee	http://www.italaw.com/cases/577	J. Christopher Thomas	0
1795	chair_president	http://www.italaw.com/cases/577	Michael Pryles	0
1796	claimant_appointee	http://www.italaw.com/cases/577	Piero Bernardini	1
1797	respondent_appointee	http://www.italaw.com/cases/577	J. Christopher Thomas	1
1798	chair_president	http://www.italaw.com/cases/577	Michael Pryles	1
1799	claimant	http://www.italaw.com/cases/580	Italian Republic	\N
1800	respondent_state	http://www.italaw.com/cases/580	Cuba	\N
1801	investment_treaty	http://www.italaw.com/cases/580	Cuba-Italy BIT	\N
1802	arbitrator	http://www.italaw.com/cases/580	Attila Tanzi	0
1803	arbitrator	http://www.italaw.com/cases/580	Nacirso Cobo-Roura	0
1804	chair_president	http://www.italaw.com/cases/580	Yves Derains	0
1805	arbitrator	http://www.italaw.com/cases/580	Attila Tanzi	1
1806	arbitrator	http://www.italaw.com/cases/580	Nacirso Cobo-Roura	1
1807	chair_president	http://www.italaw.com/cases/580	Yves Derains	1
1808	arbitrator	http://www.italaw.com/cases/580	Attila Tanzi	2
1809	claimant	http://www.italaw.com/cases/584	Itera International Energy LLC	\N
1810	respondent_state	http://www.italaw.com/cases/584	Georgia	\N
1811	investment_treaty	http://www.italaw.com/cases/584	Georgia-Netherlands BIT	\N
1812	investment_treaty	http://www.italaw.com/cases/584	Georgia-United States BIT	\N
1813	arbitrator	http://www.italaw.com/cases/584	Francisco Orrego Vicuña	0
1814	arbitrator	http://www.italaw.com/cases/584	Francisco Orrego Vicuña	1
1815	arbitrator	http://www.italaw.com/cases/584	Brigitte Stern	1
1816	chair_president	http://www.italaw.com/cases/584	Hans Danelius	1
1817	claimant	http://www.italaw.com/cases/587	Jan de Nul N.V.	\N
1818	claimant	http://www.italaw.com/cases/587	Dredging International N.V.	\N
1819	respondent_state	http://www.italaw.com/cases/587	Egypt	\N
1820	investment_treaty	http://www.italaw.com/cases/587	Belgium-Luxembourg-Egypt BIT	\N
1821	other_expert	http://www.italaw.com/cases/587	James Crawford	0
1822	other_expert	http://www.italaw.com/cases/587	James Crawford	1
1823	other_expert	http://www.italaw.com/cases/587	Giorgio Sacerdoti	2
1824	other_expert	http://www.italaw.com/cases/587	Christoph Schreuer	3
1825	claimant_appointee	http://www.italaw.com/cases/587	Pierre Mayer	4
1826	respondent_appointee	http://www.italaw.com/cases/587	Brigitte Stern	4
1827	chair_president	http://www.italaw.com/cases/587	Gabrielle Kaufmann-Kohler	4
1828	claimant_appointee	http://www.italaw.com/cases/587	Pierre Mayer	5
1829	respondent_appointee	http://www.italaw.com/cases/587	Brigitte Stern	5
1830	chair_president	http://www.italaw.com/cases/587	Gabrielle Kaufmann-Kohler	5
1831	claimant	http://www.italaw.com/cases/590	Joy Mining Machinery Limited	\N
1832	respondent_state	http://www.italaw.com/cases/590	Egypt	\N
1833	investment_treaty	http://www.italaw.com/cases/590	Egypt-United Kingdom BIT	\N
1834	claimant_appointee	http://www.italaw.com/cases/590	William Laurence Craig	0
1835	respondent_appointee	http://www.italaw.com/cases/590	Christopher Weeramantry	0
1836	chair_president	http://www.italaw.com/cases/590	Francisco Orrego Vicuña	0
1837	annulment_committee_president	http://www.italaw.com/cases/590	Antonias Dimolitsa	1
1838	annulment_committee_members	http://www.italaw.com/cases/590	Jose Luis Shaw	1
1839	annulment_committee_members	http://www.italaw.com/cases/590	Michael Hwang	1
1840	claimant	http://www.italaw.com/cases/593	Kaliningrad Region	\N
1841	respondent_state	http://www.italaw.com/cases/593	Lithuania	\N
1842	investment_treaty	http://www.italaw.com/cases/593	Lithuania-Russian Federation BIT	\N
1843	country_in_which_this_occurs	http://www.italaw.com/cases/593	France	1
1844	claimant	http://www.italaw.com/cases/597	Talsud S.A.	\N
1845	respondent_state	http://www.italaw.com/cases/597	Mexico	\N
1846	investment_treaty	http://www.italaw.com/cases/597	Argentina-Mexico BIT	\N
1847	investment_treaty	http://www.italaw.com/cases/597	France-Mexico BIT	\N
1848	claimant_appointee	http://www.italaw.com/cases/597	L. Yves Fortier	0
1849	respondent_appointee	http://www.italaw.com/cases/597	Eduardo Magallón Gómez	0
1850	chair_president	http://www.italaw.com/cases/597	V.V. Veeder	0
1851	claimant	http://www.italaw.com/cases/599	Kardassopoulos	\N
1852	respondent_state	http://www.italaw.com/cases/599	Georgia	\N
1853	investment_treaty	http://www.italaw.com/cases/599	Georgia-Greece BIT	\N
1854	investment_treaty	http://www.italaw.com/cases/599	Energy Charter Treaty (ECT)	\N
1855	claimant_appointee	http://www.italaw.com/cases/599	Francisco Orrego Vicuña	0
1856	respondent_appointee	http://www.italaw.com/cases/599	Arthur Watts	0
1857	chair_president	http://www.italaw.com/cases/599	L. Yves Fortier	0
1858	claimant_appointee	http://www.italaw.com/cases/599	Francisco Orrego Vicuña	1
1859	respondent_appointee	http://www.italaw.com/cases/599	Vaughan Lowe	1
1860	chair_president	http://www.italaw.com/cases/599	L. Yves Fortier	1
1861	annulment_committee_president	http://www.italaw.com/cases/599	Dominique Hascher	2
1862	annulment_committee_members	http://www.italaw.com/cases/599	Cecil Abraham	2
1863	annulment_committee_members	http://www.italaw.com/cases/599	Karl-Heinz Böckstiegel	2
1864	annulment_committee_president	http://www.italaw.com/cases/599	Dominique Hascher	3
1865	annulment_committee_members	http://www.italaw.com/cases/599	Cecil Abraham	3
1866	annulment_committee_members	http://www.italaw.com/cases/599	Karl-Heinz Böckstiegel	3
1867	annulment_committee_president	http://www.italaw.com/cases/599	Dominique Hascher	4
1868	annulment_committee_members	http://www.italaw.com/cases/599	Cecil Abraham	4
1869	annulment_committee_members	http://www.italaw.com/cases/599	Karl-Heinz Böckstiegel	4
1870	claimant	http://www.italaw.com/cases/604	Khan Resources Inc.	\N
1871	claimant	http://www.italaw.com/cases/604	Cauc Holding Company Ltd.	\N
1872	respondent_state	http://www.italaw.com/cases/604	Mongolia	\N
1873	investment_treaty	http://www.italaw.com/cases/604	Energy Charter Treaty (ECT)	\N
1874	claimant_appointee	http://www.italaw.com/cases/604	L. Yves Fortier	3
1875	respondent_appointee	http://www.italaw.com/cases/604	Bernard Hanotiau	3
1876	chair_president	http://www.italaw.com/cases/604	David Williams	3
1877	claimant_appointee	http://www.italaw.com/cases/604	Yves Fortier	4
1878	respondent_appointee	http://www.italaw.com/cases/604	Bernard Hanotiau	4
1879	chair_president	http://www.italaw.com/cases/604	David Williams	4
1880	claimant	http://www.italaw.com/cases/608	Lanco International Inc.	\N
1881	respondent_state	http://www.italaw.com/cases/608	Argentina	\N
1882	investment_treaty	http://www.italaw.com/cases/608	Argentina-United States BIT	\N
1883	claimant_appointee	http://www.italaw.com/cases/608	Guillermo Aguilar Alvarez	0
1884	respondent_appointee	http://www.italaw.com/cases/608	Luiz Olavo Baptista	0
1885	chair_president	http://www.italaw.com/cases/608	Bernardo Cremades	0
1886	claimant	http://www.italaw.com/cases/610	Lauder	\N
1887	respondent_state	http://www.italaw.com/cases/610	Czech Republic	\N
1888	investment_treaty	http://www.italaw.com/cases/610	Czech Republic-United States BIT	\N
1889	claimant_appointee	http://www.italaw.com/cases/610	Lloyd Cutler	0
1890	respondent_appointee	http://www.italaw.com/cases/610	Bohuslav Klein	0
1891	chair_president	http://www.italaw.com/cases/610	Robert Briner	0
1892	claimant	http://www.italaw.com/cases/612	Lemire	\N
1893	respondent_state	http://www.italaw.com/cases/612	Ukraine	\N
1894	investment_treaty	http://www.italaw.com/cases/612	Ukraine-United States BIT	\N
1895	claimant_appointee	http://www.italaw.com/cases/612	Jan Paulsson	0
1896	respondent_appointee	http://www.italaw.com/cases/612	Jürgen Voss	0
1897	chair_president	http://www.italaw.com/cases/612	Elihu Lauterpacht	0
1898	claimant	http://www.italaw.com/cases/614	Lemire	\N
1899	respondent_state	http://www.italaw.com/cases/614	Ukraine	\N
1900	investment_treaty	http://www.italaw.com/cases/614	Ukraine-United States BIT	\N
1901	claimant_appointee	http://www.italaw.com/cases/614	Jan Paulsson	0
1902	respondent_appointee	http://www.italaw.com/cases/614	Jürgen Voss	0
1903	chair_president	http://www.italaw.com/cases/614	Juan Fernández-Armesto	0
1904	respondent_appointee	http://www.italaw.com/cases/614	Jürgen Voss	1
1905	claimant_appointee	http://www.italaw.com/cases/614	Jan Paulsson	2
1906	respondent_appointee	http://www.italaw.com/cases/614	Jürgen Voss	2
1907	chair_president	http://www.italaw.com/cases/614	Juan Fernández-Armesto	2
1908	annulment_committee_president	http://www.italaw.com/cases/614	Claus von Wobeser	3
1909	annulment_committee_members	http://www.italaw.com/cases/614	Azzedine Kettani	3
1910	annulment_committee_members	http://www.italaw.com/cases/614	Eduardo Zuleta	3
1911	claimant	http://www.italaw.com/cases/618	L.E.S.I. S.p.A.	\N
1912	claimant	http://www.italaw.com/cases/618	ASTALDI S.p.A.	\N
1913	respondent_state	http://www.italaw.com/cases/618	Algeria	\N
1914	investment_treaty	http://www.italaw.com/cases/618	Algeria-Italy BIT	\N
1915	claimant_appointee	http://www.italaw.com/cases/618	André Faurès	0
1916	respondent_appointee	http://www.italaw.com/cases/618	Emmanuel Gaillard	0
1917	chair_president	http://www.italaw.com/cases/618	Pierre Tercier	0
1918	claimant_appointee	http://www.italaw.com/cases/618	Emmanuel Gaillard	1
1919	respondent_appointee	http://www.italaw.com/cases/618	Bernard Hanotiau	1
1920	chair_president	http://www.italaw.com/cases/618	Pierre Tercier	1
1921	claimant	http://www.italaw.com/cases/621	LG&E Energy Corp.	\N
1922	respondent_state	http://www.italaw.com/cases/621	Argentina	\N
1923	investment_treaty	http://www.italaw.com/cases/621	Argentina-United States BIT	\N
1924	claimant_appointee	http://www.italaw.com/cases/621	Albert Jan van den Berg	0
1925	respondent_appointee	http://www.italaw.com/cases/621	Francisco Rezek	0
1926	chair_president	http://www.italaw.com/cases/621	Tatiana de Maekelt	0
1927	claimant_appointee	http://www.italaw.com/cases/621	Albert Jan van den Berg	1
1928	respondent_appointee	http://www.italaw.com/cases/621	Francisco Rezek	1
1929	chair_president	http://www.italaw.com/cases/621	Tatiana de Maekelt	1
1930	claimant_appointee	http://www.italaw.com/cases/621	Albert Jan van den Berg	2
1931	respondent_appointee	http://www.italaw.com/cases/621	Francisco Rezek	2
1932	chair_president	http://www.italaw.com/cases/621	Tatiana de Maekelt	2
1933	claimant_appointee	http://www.italaw.com/cases/621	Albert Jan van den Berg	3
1934	respondent_appointee	http://www.italaw.com/cases/621	Francisco Rezek	3
1935	chair_president	http://www.italaw.com/cases/621	Tatiana de Maekelt	3
1936	claimant	http://www.italaw.com/cases/626	Libananco Holdings Co. Limited	\N
1937	respondent_state	http://www.italaw.com/cases/626	Turkey	\N
1938	investment_treaty	http://www.italaw.com/cases/626	Energy Charter Treaty (ECT)	\N
1939	claimant_appointee	http://www.italaw.com/cases/626	Henri Alvarez	0
1940	respondent_appointee	http://www.italaw.com/cases/626	Franklin Berman	0
1941	chair_president	http://www.italaw.com/cases/626	Michael Hwang	0
1942	claimant_appointee	http://www.italaw.com/cases/626	Henri Alvarez	1
1943	respondent_appointee	http://www.italaw.com/cases/626	Franklin Berman	1
1944	chair_president	http://www.italaw.com/cases/626	Michael Hwang	1
1945	annulment_committee_president	http://www.italaw.com/cases/626	Andrés Rigo Sureda	2
1946	annulment_committee_members	http://www.italaw.com/cases/626	Hans Danelius	2
1947	annulment_committee_members	http://www.italaw.com/cases/626	Eduardo Silva Romero	2
1948	annulment_committee_president	http://www.italaw.com/cases/626	Andrés Rigo Sureda	3
1949	annulment_committee_members	http://www.italaw.com/cases/626	Hans Danelius	3
1950	annulment_committee_members	http://www.italaw.com/cases/626	Eduardo Silva Romero	3
1951	claimant	http://www.italaw.com/cases/628	Link-Trading Joint Stock Company	\N
1952	respondent_state	http://www.italaw.com/cases/628	Moldova	\N
1953	investment_treaty	http://www.italaw.com/cases/628	Moldova-United States BIT	\N
1954	other_expert	http://www.italaw.com/cases/628	Todd Weiler	0
1955	other_expert	http://www.italaw.com/cases/628	Hans-Joachim Schramm	1
1956	claimant_appointee	http://www.italaw.com/cases/628	Ion Buruiana	2
1957	respondent_appointee	http://www.italaw.com/cases/628	Ivan Zykin	2
1958	chair_president	http://www.italaw.com/cases/628	Jeffrey Hertzfeld	2
1959	claimant_appointee	http://www.italaw.com/cases/628	Ion Buruiana	3
1960	respondent_appointee	http://www.italaw.com/cases/628	Ivan Zykin	3
1961	chair_president	http://www.italaw.com/cases/628	Jeffrey Hertzfeld	3
1962	claimant	http://www.italaw.com/cases/632	Loewen Group	\N
1963	claimant	http://www.italaw.com/cases/632	Inc.	\N
1964	respondent_state	http://www.italaw.com/cases/632	United States of America	\N
1965	investment_treaty	http://www.italaw.com/cases/632	NAFTA	\N
1966	other_expert	http://www.italaw.com/cases/632	Robert Jennings	0
1967	claimant_appointee	http://www.italaw.com/cases/632	L. Yves Fortier	3
1968	respondent_appointee	http://www.italaw.com/cases/632	Abner Mikva	3
1969	chair_president	http://www.italaw.com/cases/632	Anthony Mason	3
1970	other_expert	http://www.italaw.com/cases/632	Stephan Landsman	4
1971	respondents_expert	http://www.italaw.com/cases/632	Richard Bilder	5
1972	other_expert	http://www.italaw.com/cases/632	Christopher Greenwood	6
1973	other_expert	http://www.italaw.com/cases/632	Ian Sinclair	7
1974	other_expert	http://www.italaw.com/cases/632	Armis Hawkins	8
1975	respondents_expert	http://www.italaw.com/cases/632	W. Joel Blass	9
1976	other_expert	http://www.italaw.com/cases/632	Christopher Greenwood	10
1977	respondents_expert	http://www.italaw.com/cases/632	Jack Dunbar	11
1978	claimant_appointee	http://www.italaw.com/cases/632	Lord Mustill	12
1979	respondent_appointee	http://www.italaw.com/cases/632	Abner Mikva	12
1980	chair_president	http://www.italaw.com/cases/632	Anthony Mason	12
1981	country_in_which_this_occurs	http://www.italaw.com/cases/632	United States of America	13
1982	claimant_appointee	http://www.italaw.com/cases/632	Lord Mustill	14
1983	respondent_appointee	http://www.italaw.com/cases/632	Abner Mikva	14
1984	chair_president	http://www.italaw.com/cases/632	Anthony Mason	14
1985	country_in_which_this_occurs	http://www.italaw.com/cases/632	United States of America	15
1986	country_in_which_this_occurs	http://www.italaw.com/cases/632	United States of America	16
1987	country_in_which_this_occurs	http://www.italaw.com/cases/632	United States of America	17
1988	country_in_which_this_occurs	http://www.italaw.com/cases/632	United States of America	18
1989	claimant	http://www.italaw.com/cases/641	Maffezini	\N
1990	respondent_state	http://www.italaw.com/cases/641	Spain	\N
1991	investment_treaty	http://www.italaw.com/cases/641	Argentina-Spain BIT	\N
1992	claimant_appointee	http://www.italaw.com/cases/641	Thomas Buergenthal	0
1993	respondent_appointee	http://www.italaw.com/cases/641	Maurice Wolf	0
1994	chair_president	http://www.italaw.com/cases/641	Francisco Orrego Vicuña	0
1995	claimant_appointee	http://www.italaw.com/cases/641	Thomas Buergenthal	1
1996	respondent_appointee	http://www.italaw.com/cases/641	Maurice Wolf	1
1997	chair_president	http://www.italaw.com/cases/641	Francisco Orrego Vicuña	1
1998	claimant_appointee	http://www.italaw.com/cases/641	Thomas Buergenthal	2
1999	respondent_appointee	http://www.italaw.com/cases/641	Maurice Wolf	2
2000	chair_president	http://www.italaw.com/cases/641	Francisco Orrego Vicuña	2
2001	claimant_appointee	http://www.italaw.com/cases/641	Thomas Buergenthal	3
2002	respondent_appointee	http://www.italaw.com/cases/641	Maurice Wolf	3
2003	chair_president	http://www.italaw.com/cases/641	Francisco Orrego Vicuña	3
2004	claimant	http://www.italaw.com/cases/646	Malaysian Historical Salvors	\N
2005	claimant	http://www.italaw.com/cases/646	SDN	\N
2006	claimant	http://www.italaw.com/cases/646	BHD	\N
2007	respondent_state	http://www.italaw.com/cases/646	Malaysia	\N
2008	investment_treaty	http://www.italaw.com/cases/646	Malaysia-United Kingdom BIT	\N
2009	arbitrator	http://www.italaw.com/cases/646	Michael Hwang	10
2010	annulment_committee_members	http://www.italaw.com/cases/646	Mohamed Shahabuddeen	11
2011	annulment_committee_president	http://www.italaw.com/cases/646	Stephen Schwebel	12
2012	annulment_committee_members	http://www.italaw.com/cases/646	Mohamed Shahabuddeen	12
2013	annulment_committee_members	http://www.italaw.com/cases/646	Peter Tomka	12
2014	claimant	http://www.italaw.com/cases/660	Malicorp Limited	\N
2015	respondent_state	http://www.italaw.com/cases/660	Egypt	\N
2016	investment_treaty	http://www.italaw.com/cases/660	Egypt-United Kingdom BIT	\N
2017	claimant_appointee	http://www.italaw.com/cases/660	Luiz Olavo Baptista	0
2018	respondent_appointee	http://www.italaw.com/cases/660	Pierre-Yves Tschanz	0
2019	chair_president	http://www.italaw.com/cases/660	Pierre Tercier	0
2020	annulment_committee_president	http://www.italaw.com/cases/660	Andrés Rigo Sureda	1
2021	annulment_committee_members	http://www.italaw.com/cases/660	Stanimir Alexandrov	1
2022	annulment_committee_members	http://www.italaw.com/cases/660	Eduardo Silva Romero	1
2023	claimant	http://www.italaw.com/cases/662	M.C.I. Power Group L.C.	\N
2024	claimant	http://www.italaw.com/cases/662	New Turbine	\N
2025	claimant	http://www.italaw.com/cases/662	Inc.	\N
2026	respondent_state	http://www.italaw.com/cases/662	Ecuador	\N
2027	investment_treaty	http://www.italaw.com/cases/662	Ecuador-United States BIT	\N
2028	claimant_appointee	http://www.italaw.com/cases/662	Benjamin Greenberg	0
2029	respondent_appointee	http://www.italaw.com/cases/662	Jaime Irarrázabal	0
2030	chair_president	http://www.italaw.com/cases/662	Raúl Vinuesa	0
2031	annulment_committee_president	http://www.italaw.com/cases/662	Dominique Hascher	1
2032	annulment_committee_members	http://www.italaw.com/cases/662	Hans Danelius	1
2033	annulment_committee_members	http://www.italaw.com/cases/662	Peter Tomka	1
2034	claimant	http://www.italaw.com/cases/665	Mercuria Energy Group Limited	\N
2035	respondent_state	http://www.italaw.com/cases/665	Poland	\N
2036	investment_treaty	http://www.italaw.com/cases/665	Energy Charter Treaty (ECT)	\N
2037	claimant	http://www.italaw.com/cases/669	Merrill & Ring Forestry L.P.	\N
2038	respondent_state	http://www.italaw.com/cases/669	Canada	\N
2039	investment_treaty	http://www.italaw.com/cases/669	NAFTA	\N
2040	other_expert	http://www.italaw.com/cases/669	Michael Reisman	0
2041	other_expert	http://www.italaw.com/cases/669	Michael Reisman	1
2042	other_expert	http://www.italaw.com/cases/669	Robert Howse	2
2043	other_expert	http://www.italaw.com/cases/669	Michael Reisman	3
2044	claimant_appointee	http://www.italaw.com/cases/669	Kenneth Dam	4
2045	respondent_appointee	http://www.italaw.com/cases/669	J. William Rowley	4
2046	chair_president	http://www.italaw.com/cases/669	Francisco Orrego Vicuña	4
2047	claimant	http://www.italaw.com/cases/671	Metalclad Corporation	\N
2048	respondent_state	http://www.italaw.com/cases/671	Mexico	\N
2049	investment_treaty	http://www.italaw.com/cases/671	NAFTA	\N
2050	arbitrator	http://www.italaw.com/cases/671	Benjamin Civiletti	5
2051	arbitrator	http://www.italaw.com/cases/671	José Luis Siqueiros	5
2052	chair_president	http://www.italaw.com/cases/671	Elihu Lauterpacht	5
2053	country_in_which_this_occurs	http://www.italaw.com/cases/671	Canada	6
2054	country_in_which_this_occurs	http://www.italaw.com/cases/671	Canada	7
2055	claimant	http://www.italaw.com/cases/680	Metalpar S.A.	\N
2056	claimant	http://www.italaw.com/cases/680	Buen Aire S.A.	\N
2057	respondent_state	http://www.italaw.com/cases/680	Argentina	\N
2058	investment_treaty	http://www.italaw.com/cases/680	Argentina-Chile BIT	\N
2059	claimant_appointee	http://www.italaw.com/cases/680	Duncan Cameron	0
2060	respondent_appointee	http://www.italaw.com/cases/680	Jean Paul Chabaneix	0
2061	chair_president	http://www.italaw.com/cases/680	Rodrigo Oreamuno Blanco	0
2062	other_expert	http://www.italaw.com/cases/680	Benedict Kingsbury	1
2063	claimant_appointee	http://www.italaw.com/cases/680	Duncan Cameron	2
2064	respondent_appointee	http://www.italaw.com/cases/680	Jean Paul Chabaneix	2
2065	chair_president	http://www.italaw.com/cases/680	Rodrigo Oreamuno Blanco	2
2066	claimant	http://www.italaw.com/cases/683	Methanex Corporation	\N
2067	respondent_state	http://www.italaw.com/cases/683	United States of America	\N
2068	investment_treaty	http://www.italaw.com/cases/683	NAFTA	\N
2069	claimant_appointee	http://www.italaw.com/cases/683	J. William Rowley	0
2070	respondent_appointee	http://www.italaw.com/cases/683	Warren Christopher	0
2071	chair_president	http://www.italaw.com/cases/683	V.V. Veeder	0
2072	other_expert	http://www.italaw.com/cases/683	Robert Jennings	1
2073	claimant_appointee	http://www.italaw.com/cases/683	J. William Rowley	2
2074	respondent_appointee	http://www.italaw.com/cases/683	Warren Christopher	2
2075	chair_president	http://www.italaw.com/cases/683	V.V. Veeder	2
2076	other_expert	http://www.italaw.com/cases/683	Claus-Dieter Ehlermann	3
2077	claimant_appointee	http://www.italaw.com/cases/683	J. William Rowley	4
2078	respondent_appointee	http://www.italaw.com/cases/683	Warren Christopher	4
2079	chair_president	http://www.italaw.com/cases/683	V.V. Veeder	4
2080	claimant_appointee	http://www.italaw.com/cases/683	J. William Rowley	5
2081	respondent_appointee	http://www.italaw.com/cases/683	Warren Christopher	5
2082	chair_president	http://www.italaw.com/cases/683	V.V. Veeder	5
2083	claimant_appointee	http://www.italaw.com/cases/683	J. William Rowley	6
2084	respondent_appointee	http://www.italaw.com/cases/683	Warren Christopher	6
2085	chair_president	http://www.italaw.com/cases/683	V.V. Veeder	6
2086	claimant_appointee	http://www.italaw.com/cases/683	J. William Rowley	7
2087	respondent_appointee	http://www.italaw.com/cases/683	Warren Christopher	7
2088	chair_president	http://www.italaw.com/cases/683	V.V. Veeder	7
2089	claimant_appointee	http://www.italaw.com/cases/683	J. William Rowley	8
2090	respondent_appointee	http://www.italaw.com/cases/683	Warren Christopher	8
2091	chair_president	http://www.italaw.com/cases/683	V.V. Veeder	8
2092	claimant_appointee	http://www.italaw.com/cases/683	J. William Rowley	9
2093	respondent_appointee	http://www.italaw.com/cases/683	Warren Christopher	9
2094	chair_president	http://www.italaw.com/cases/683	V.V. Veeder	9
2095	claimant_appointee	http://www.italaw.com/cases/683	J. William Rowley	10
2096	respondent_appointee	http://www.italaw.com/cases/683	Warren Christopher	10
2097	chair_president	http://www.italaw.com/cases/683	V.V. Veeder	10
2098	claimant_appointee	http://www.italaw.com/cases/683	J. William Rowley	11
2099	respondent_appointee	http://www.italaw.com/cases/683	Warren Christopher	11
2100	chair_president	http://www.italaw.com/cases/683	V.V. Veeder	11
2101	claimant_appointee	http://www.italaw.com/cases/683	J. William Rowley	12
2102	respondent_appointee	http://www.italaw.com/cases/683	Warren Christopher	12
2103	chair_president	http://www.italaw.com/cases/683	V.V. Veeder	12
2104	claimant_appointee	http://www.italaw.com/cases/683	J. William Rowley	13
2105	respondent_appointee	http://www.italaw.com/cases/683	Warren Christopher	13
2106	chair_president	http://www.italaw.com/cases/683	V.V. Veeder	13
2107	claimant_appointee	http://www.italaw.com/cases/683	J. William Rowley	14
2108	respondent_appointee	http://www.italaw.com/cases/683	Warren Christopher	14
2109	chair_president	http://www.italaw.com/cases/683	V.V. Veeder	14
2110	claimant	http://www.italaw.com/cases/697	Micula	\N
2111	claimant	http://www.italaw.com/cases/697	S.C. European Food S.A	\N
2112	respondent_state	http://www.italaw.com/cases/697	Romania	\N
2113	investment_treaty	http://www.italaw.com/cases/697	Romania-Sweden BIT	\N
2114	other_expert	http://www.italaw.com/cases/697	John Dugard	0
2115	claimant_appointee	http://www.italaw.com/cases/697	Stanimir Alexandrov	1
2116	respondent_appointee	http://www.italaw.com/cases/697	Claus-Dieter Ehlermann	1
2117	chair_president	http://www.italaw.com/cases/697	Laurent Lévy	1
2118	respondent_appointee	http://www.italaw.com/cases/697	Georges Abi-Saab	2
2119	claimant_appointee	http://www.italaw.com/cases/697	Stanimir Alexandrov	3
2120	respondent_appointee	http://www.italaw.com/cases/697	Georges Abi-Saab	3
2121	chair_president	http://www.italaw.com/cases/697	Laurent Lévy	3
2122	country_in_which_this_occurs	http://www.italaw.com/cases/697	European Union	5
2123	claimant	http://www.italaw.com/cases/699	Middle East Cement Shipping and Handling Co. S.A.	\N
2124	respondent_state	http://www.italaw.com/cases/699	Egypt	\N
2125	investment_treaty	http://www.italaw.com/cases/699	Egypt-Greece BIT	\N
2126	claimant_appointee	http://www.italaw.com/cases/699	Piero Bernardini	1
2127	respondent_appointee	http://www.italaw.com/cases/699	Don Wallace	1
2128	chair_president	http://www.italaw.com/cases/699	Karl-Heinz Böckstiegel	1
2129	claimant	http://www.italaw.com/cases/702	Mihaly International Corporation	\N
2130	respondent_state	http://www.italaw.com/cases/702	Sri Lanka	\N
2131	investment_treaty	http://www.italaw.com/cases/702	Sri Lanka-United States BIT	\N
2132	claimant_appointee	http://www.italaw.com/cases/702	David Suratgar	0
2133	claimant_appointee	http://www.italaw.com/cases/702	David Suratgar	1
2134	respondent_appointee	http://www.italaw.com/cases/702	Andrew Rogers	1
2135	chair_president	http://www.italaw.com/cases/702	Sompong Sucharitkul	1
2136	claimant	http://www.italaw.com/cases/705	Millicom International Operations B.V.	\N
2137	claimant	http://www.italaw.com/cases/705	Sentel GSM SA	\N
2138	respondent_state	http://www.italaw.com/cases/705	Senegal	\N
2139	investment_treaty	http://www.italaw.com/cases/705	Netherlands-Senegal BIT	\N
2140	claimant_appointee	http://www.italaw.com/cases/705	Kaj Hobér	0
2141	respondent_appointee	http://www.italaw.com/cases/705	Ronny Abraham	0
2142	chair_president	http://www.italaw.com/cases/705	Pierre Tercier	0
2143	claimant_appointee	http://www.italaw.com/cases/705	Kaj Hobér	1
2144	respondent_appointee	http://www.italaw.com/cases/705	Ronny Abraham	1
2145	chair_president	http://www.italaw.com/cases/705	Pierre Tercier	1
2146	claimant	http://www.italaw.com/cases/707	Minnotte	\N
2147	claimant	http://www.italaw.com/cases/707	Lewis	\N
2148	respondent_state	http://www.italaw.com/cases/707	Poland	\N
2149	investment_treaty	http://www.italaw.com/cases/707	Poland-United States Business and Economic Relations Treaty	\N
2150	claimant_appointee	http://www.italaw.com/cases/707	Maurice Mendelson	1
2151	respondent_appointee	http://www.italaw.com/cases/707	Eduardo Silva-Romero	1
2152	chair_president	http://www.italaw.com/cases/707	Vaughan Lowe	1
2153	claimant	http://www.italaw.com/cases/709	Mitchell	\N
2154	respondent_state	http://www.italaw.com/cases/709	Congo Democratic Republic of (formerly Zaire)	\N
2155	investment_treaty	http://www.italaw.com/cases/709	Dominican Republic of Congo-United States BIT	\N
2156	arbitrator	http://www.italaw.com/cases/709	Yawovi Agboyibo	0
2157	arbitrator	http://www.italaw.com/cases/709	Yawovi Agboyibo	1
2158	arbitrator	http://www.italaw.com/cases/709	Marc Lalonde	1
2159	chair_president	http://www.italaw.com/cases/709	Andreas Bucher	1
2160	annulment_committee_president	http://www.italaw.com/cases/709	Antonias Dimolitsa	2
2161	annulment_committee_members	http://www.italaw.com/cases/709	Robert Dossou	2
2162	annulment_committee_members	http://www.italaw.com/cases/709	Andrea Giardina	2
2163	annulment_committee_president	http://www.italaw.com/cases/709	Antonias Dimolitsa	3
2164	annulment_committee_members	http://www.italaw.com/cases/709	Robert Dossou	3
2165	annulment_committee_members	http://www.italaw.com/cases/709	Andrea Giardina	3
2166	claimant	http://www.italaw.com/cases/713	Mobil Corporation	\N
2167	claimant	http://www.italaw.com/cases/713	Venezuela Holdings	\N
2168	claimant	http://www.italaw.com/cases/713	B.V.	\N
2169	respondent_state	http://www.italaw.com/cases/713	Venezuela	\N
2170	investment_treaty	http://www.italaw.com/cases/713	Netherlands-Venezuela BIT	\N
2171	claimant_appointee	http://www.italaw.com/cases/713	Gabrielle Kaufmann-Kohler	0
2172	respondent_appointee	http://www.italaw.com/cases/713	Ahmed El-Kosheri	0
2173	chair_president	http://www.italaw.com/cases/713	Gilbert Guillaume	0
2174	claimant_appointee	http://www.italaw.com/cases/713	Gabrielle Kaufmann-Kohler	1
2175	respondent_appointee	http://www.italaw.com/cases/713	Ahmed El-Kosheri	1
2176	chair_president	http://www.italaw.com/cases/713	Gilbert Guillaume	1
2177	country_in_which_this_occurs	http://www.italaw.com/cases/713	United States of America	2
2178	claimant	http://www.italaw.com/cases/715	Mondev International Ltd.	\N
2179	respondent_state	http://www.italaw.com/cases/715	United States of America	\N
2180	investment_treaty	http://www.italaw.com/cases/715	NAFTA	\N
2181	other_expert	http://www.italaw.com/cases/715	Coquillette	0
2182	other_expert	http://www.italaw.com/cases/715	Kass	1
2183	other_expert	http://www.italaw.com/cases/715	Kenneth Starr	2
2184	claimant_appointee	http://www.italaw.com/cases/715	James Crawford	3
2185	respondent_appointee	http://www.italaw.com/cases/715	Stephen Schwebel	3
2186	chair_president	http://www.italaw.com/cases/715	Ninian Stephen	3
2187	claimant	http://www.italaw.com/cases/717	MTD Equity Sdn. Bhd.	\N
2188	respondent_state	http://www.italaw.com/cases/717	Chile	\N
2189	investment_treaty	http://www.italaw.com/cases/717	Chile-Malaysia BIT	\N
2190	chair_president	http://www.italaw.com/cases/717	Andrés Rigo Sureda	0
2191	chair_president	http://www.italaw.com/cases/717	Andrés Rigo Sureda	1
2192	claimant_appointee	http://www.italaw.com/cases/717	Marc Lalonde	2
2193	respondent_appointee	http://www.italaw.com/cases/717	Rodrigo Oreamuno Blanco	2
2194	chair_president	http://www.italaw.com/cases/717	Andrés Rigo Sureda	2
2195	annulment_committee_president	http://www.italaw.com/cases/717	Gilbert Guillaume	3
2196	annulment_committee_members	http://www.italaw.com/cases/717	James Crawford	3
2197	annulment_committee_members	http://www.italaw.com/cases/717	Sara Ordoñez Noriega	3
2198	annulment_committee_president	http://www.italaw.com/cases/717	Gilbert Guillaume	4
2199	annulment_committee_members	http://www.italaw.com/cases/717	James Crawford	4
2200	annulment_committee_members	http://www.italaw.com/cases/717	Sara Ordoñez Noriega	4
2201	claimant	http://www.italaw.com/cases/723	Murphy Exploration	\N
2202	respondent_state	http://www.italaw.com/cases/723	Ecuador	\N
2203	investment_treaty	http://www.italaw.com/cases/723	Ecuador-United States BIT	\N
2204	claimant_appointee	http://www.italaw.com/cases/723	Horacio Grigera Naón	1
2205	respondent_appointee	http://www.italaw.com/cases/723	Raúl Vinuesa	1
2206	chair_president	http://www.italaw.com/cases/723	Rodrigo Oreamuno Blanco	1
2207	claimant	http://www.italaw.com/cases/725	Mytilineos Holdings SA	\N
2208	respondent_state	http://www.italaw.com/cases/725	Serbia	\N
2209	investment_treaty	http://www.italaw.com/cases/725	Greece-Yugoslavia BIT	\N
2210	respondent_appointee	http://www.italaw.com/cases/725	Dobrosav Mitrović	0
2211	claimant_appointee	http://www.italaw.com/cases/725	Stelios Koussoulis	1
2212	respondent_appointee	http://www.italaw.com/cases/725	Dobrosav Mitrović	1
2213	chair_president	http://www.italaw.com/cases/725	August Reinisch	1
2214	claimant	http://www.italaw.com/cases/728	Nagel	\N
2215	respondent_state	http://www.italaw.com/cases/728	Czech Republic	\N
2216	investment_treaty	http://www.italaw.com/cases/728	Czech Republic-United Kingdom BIT	\N
2217	arbitrator	http://www.italaw.com/cases/728	Hans Danelius	0
2218	arbitrator	http://www.italaw.com/cases/728	J. Martin Hunter	0
2219	arbitrator	http://www.italaw.com/cases/728	Herbert Kronke	0
2220	country_in_which_this_occurs	http://www.italaw.com/cases/728	Sweden	2
2221	claimant	http://www.italaw.com/cases/732	National Grid plc	\N
2222	respondent_state	http://www.italaw.com/cases/732	Argentina	\N
2223	investment_treaty	http://www.italaw.com/cases/732	Argentina-United Kingdom BIT	\N
2224	claimant_appointee	http://www.italaw.com/cases/732	Whitney Debevoise	0
2225	respondent_appointee	http://www.italaw.com/cases/732	Alejandro Garro	0
2226	chair_president	http://www.italaw.com/cases/732	Andrés Rigo Sureda	0
2227	arbitrator	http://www.italaw.com/cases/732	Paul Hannon	1
2228	arbitrator	http://www.italaw.com/cases/732	Hassan Ali Radhi	1
2229	chair_president	http://www.italaw.com/cases/732	Klaus Sachs	1
2230	claimant_appointee	http://www.italaw.com/cases/732	Judd Kessler	2
2231	respondent_appointee	http://www.italaw.com/cases/732	Alejandro Garro	2
2232	chair_president	http://www.italaw.com/cases/732	Andrés Rigo Sureda	2
2233	country_in_which_this_occurs	http://www.italaw.com/cases/732	United States of America	3
2234	country_in_which_this_occurs	http://www.italaw.com/cases/732	United States of America	4
2235	country_in_which_this_occurs	http://www.italaw.com/cases/732	United States of America	5
2236	country_in_which_this_occurs	http://www.italaw.com/cases/732	United States of America	6
2237	claimant	http://www.italaw.com/cases/739	Nations Energy Corporation	\N
2238	claimant	http://www.italaw.com/cases/739	Electric Machinery Enterprises Inc.	\N
2239	claimant	http://www.italaw.com/cases/739	Jamie Jurado	\N
2240	respondent_state	http://www.italaw.com/cases/739	Panama	\N
2241	investment_treaty	http://www.italaw.com/cases/739	Panama-United States of America BIT	\N
2242	claimant_appointee	http://www.italaw.com/cases/739	José María Chillón Medina	0
2243	respondent_appointee	http://www.italaw.com/cases/739	Claus von Wobeser	0
2244	chair_president	http://www.italaw.com/cases/739	Alexis Mourre	0
2245	annulment_committee_president	http://www.italaw.com/cases/739	Stanimir Alexandrov	2
2246	annulment_committee_members	http://www.italaw.com/cases/739	Jaime Irarrázabal	2
2247	annulment_committee_members	http://www.italaw.com/cases/739	Enrique Gómez-Pinzón	2
2248	claimant	http://www.italaw.com/cases/743	Nepolsky	\N
2249	respondent_state	http://www.italaw.com/cases/743	Czech Republic	\N
2250	investment_treaty	http://www.italaw.com/cases/743	Czech Republic-Germany BIT	\N
2251	claimant	http://www.italaw.com/cases/745	Noble Energy	\N
2252	claimant	http://www.italaw.com/cases/745	Inc.	\N
2253	claimant	http://www.italaw.com/cases/745	Machalapower Cia. Ltda.	\N
2254	respondent_state	http://www.italaw.com/cases/745	Ecuador	\N
2255	investment_treaty	http://www.italaw.com/cases/745	Ecuador-United States BIT	\N
2256	claimant_appointee	http://www.italaw.com/cases/745	Henri Alvarez	0
2257	respondent_appointee	http://www.italaw.com/cases/745	Bernardo Cremades	0
2258	chair_president	http://www.italaw.com/cases/745	Gabrielle Kaufmann-Kohler	0
2259	claimant	http://www.italaw.com/cases/747	Noble Ventures	\N
2260	claimant	http://www.italaw.com/cases/747	Inc.	\N
2261	respondent_state	http://www.italaw.com/cases/747	Romania	\N
2262	investment_treaty	http://www.italaw.com/cases/747	Romania-United States BIT	\N
2263	other_expert	http://www.italaw.com/cases/747	Oancea	0
2264	claimant_appointee	http://www.italaw.com/cases/747	Jeremy Lever	1
2265	respondent_appointee	http://www.italaw.com/cases/747	Vincenzo Porcasi	1
2266	chair_president	http://www.italaw.com/cases/747	Karl-Heinz Böckstiegel	1
2267	claimant_appointee	http://www.italaw.com/cases/747	Jeremy Lever	2
2268	respondent_appointee	http://www.italaw.com/cases/747	Pierre-Marie Dupuy	2
2269	chair_president	http://www.italaw.com/cases/747	Karl-Heinz Böckstiegel	2
2270	claimant	http://www.italaw.com/cases/750	Nordzucker	\N
2271	respondent_state	http://www.italaw.com/cases/750	Poland	\N
2272	investment_treaty	http://www.italaw.com/cases/750	Germany-Poland BIT	\N
2273	claimant_appointee	http://www.italaw.com/cases/750	Andreas Bucher	0
2274	respondent_appointee	http://www.italaw.com/cases/750	Maciej Tomaszewski	0
2275	chair_president	http://www.italaw.com/cases/750	Vera van Houtte	0
2276	claimant_appointee	http://www.italaw.com/cases/750	Andreas Bucher	1
2277	respondent_appointee	http://www.italaw.com/cases/750	Maciej Tomaszewski	1
2278	chair_president	http://www.italaw.com/cases/750	Jeremy Lever	1
2279	claimant_appointee	http://www.italaw.com/cases/750	Andreas Bucher	2
2280	respondent_appointee	http://www.italaw.com/cases/750	Maciej Tomaszewski	2
2281	chair_president	http://www.italaw.com/cases/750	Vera van Houtte	2
2282	claimant	http://www.italaw.com/cases/753	Nova Scotia Power Incorporated (Canada)	\N
2283	respondent_state	http://www.italaw.com/cases/753	Venezuela	\N
2284	investment_treaty	http://www.italaw.com/cases/753	Canada-Venezuela BIT	\N
2285	claimant_appointee	http://www.italaw.com/cases/753	John Beechey	0
2286	respondent_appointee	http://www.italaw.com/cases/753	Philippe Sands	0
2287	chair_president	http://www.italaw.com/cases/753	Juan Fernández-Armesto	0
2288	claimant_appointee	http://www.italaw.com/cases/753	John Beechey	1
2289	respondent_appointee	http://www.italaw.com/cases/753	Philippe Sands	1
2290	chair_president	http://www.italaw.com/cases/753	Juan Fernández-Armesto	1
2291	claimant	http://www.italaw.com/cases/756	Nreka	\N
2292	respondent_state	http://www.italaw.com/cases/756	Czech Republic	\N
2293	investment_treaty	http://www.italaw.com/cases/756	Croatia-Czech Republic BIT	\N
2294	country_in_which_this_occurs	http://www.italaw.com/cases/756	France	1
2295	claimant	http://www.italaw.com/cases/759	Nykomb Synergetics Technology Holding AB	\N
2296	respondent_state	http://www.italaw.com/cases/759	Latvia	\N
2297	investment_treaty	http://www.italaw.com/cases/759	Energy Charter Treaty (ECT)	\N
2298	respondents_expert	http://www.italaw.com/cases/759	Adnan Amkhan	0
2299	claimants_expert	http://www.italaw.com/cases/759	Thomas Wälde	1
2300	respondents_expert	http://www.italaw.com/cases/759	Ove Bring	2
2301	respondents_expert	http://www.italaw.com/cases/759	Richard Happ	2
2302	respondents_expert	http://www.italaw.com/cases/759	Adnan Amkhan	3
2303	arbitrator	http://www.italaw.com/cases/759	Rolf Schütze	4
2304	arbitrator	http://www.italaw.com/cases/759	Johan Gernandt	4
2305	chair_president	http://www.italaw.com/cases/759	Bjørn Haug	4
2306	claimant	http://www.italaw.com/cases/761	Occidental Exploration and Production Company	\N
2307	respondent_state	http://www.italaw.com/cases/761	Ecuador	\N
2308	investment_treaty	http://www.italaw.com/cases/761	Ecuador-United States BIT	\N
2309	other_expert	http://www.italaw.com/cases/761	David Gantz	0
2310	other_expert	http://www.italaw.com/cases/761	Mario Alberto Prado Mora	1
2311	other_expert	http://www.italaw.com/cases/761	Ian Sinclair	2
2312	other_expert	http://www.italaw.com/cases/761	Andreas Lowenfeld	3
2313	claimant_appointee	http://www.italaw.com/cases/761	Charles Brower	4
2314	respondent_appointee	http://www.italaw.com/cases/761	Patrick Barrera Sweeney	4
2315	chair_president	http://www.italaw.com/cases/761	Francisco Orrego Vicuña	4
2316	country_in_which_this_occurs	http://www.italaw.com/cases/761	United Kingdom	5
2317	country_in_which_this_occurs	http://www.italaw.com/cases/761	United Kingdom	6
2318	country_in_which_this_occurs	http://www.italaw.com/cases/761	United Kingdom	7
2319	country_in_which_this_occurs	http://www.italaw.com/cases/761	United Kingdom	8
2320	claimant	http://www.italaw.com/cases/767	Occidental Petroleum Corporation	\N
2321	respondent_state	http://www.italaw.com/cases/767	Ecuador	\N
2322	investment_treaty	http://www.italaw.com/cases/767	Ecuador-United States BIT	\N
2323	arbitrator	http://www.italaw.com/cases/767	Brigitte Stern	0
2324	arbitrator	http://www.italaw.com/cases/767	David Williams	0
2325	chair_president	http://www.italaw.com/cases/767	L. Yves Fortier	0
2326	arbitrator	http://www.italaw.com/cases/767	Brigitte Stern	1
2327	arbitrator	http://www.italaw.com/cases/767	David Williams	1
2328	chair_president	http://www.italaw.com/cases/767	L. Yves Fortier	1
2329	claimant_appointee	http://www.italaw.com/cases/767	David Williams	2
2330	respondent_appointee	http://www.italaw.com/cases/767	Brigitte Stern	2
2331	chair_president	http://www.italaw.com/cases/767	L. Yves Fortier	2
2332	claimant_appointee	http://www.italaw.com/cases/767	David Williams	3
2333	respondent_appointee	http://www.italaw.com/cases/767	Brigitte Stern	3
2334	chair_president	http://www.italaw.com/cases/767	L. Yves Fortier	3
2335	annulment_committee_president	http://www.italaw.com/cases/767	Juan Fernández-Armesto	4
2336	annulment_committee_members	http://www.italaw.com/cases/767	Florentino Feliciano	4
2337	annulment_committee_members	http://www.italaw.com/cases/767	Rodrigo Oreamuno Blanco	4
2338	annulment_committee_president	http://www.italaw.com/cases/767	Juan Fernández-Armesto	5
2339	annulment_committee_members	http://www.italaw.com/cases/767	Florentino Feliciano	5
2340	annulment_committee_members	http://www.italaw.com/cases/767	Rodrigo Oreamuno Blanco	5
2341	chair_president	http://www.italaw.com/cases/767	Juan Fernández-Armesto	6
2342	claimant	http://www.italaw.com/cases/770	Oko Pankki Oyj	\N
2343	claimant	http://www.italaw.com/cases/770	VTB Bank (Deutschland) AG	\N
2344	claimant	http://www.italaw.com/cases/770	Sampo Bank Plc	\N
2345	respondent_state	http://www.italaw.com/cases/770	Estonia	\N
2346	investment_treaty	http://www.italaw.com/cases/770	Estonia-Finland BIT	\N
2347	investment_treaty	http://www.italaw.com/cases/770	Estonia-Germany BIT	\N
2348	claimant_appointee	http://www.italaw.com/cases/770	V.V. Veeder	0
2349	respondent_appointee	http://www.italaw.com/cases/770	L. Yves Fortier	0
2350	chair_president	http://www.italaw.com/cases/770	O.L.O. de Witt Wijnen	0
2351	claimant_appointee	http://www.italaw.com/cases/770	V.V. Veeder	1
2352	respondent_appointee	http://www.italaw.com/cases/770	L. Yves Fortier	1
2353	chair_president	http://www.italaw.com/cases/770	O.L.O. de Witt Wijnen	1
2354	claimant_appointee	http://www.italaw.com/cases/770	V.V. Veeder	2
2355	respondent_appointee	http://www.italaw.com/cases/770	L. Yves Fortier	2
2356	chair_president	http://www.italaw.com/cases/770	O.L.O. de Witt Wijnen	2
2357	claimant_appointee	http://www.italaw.com/cases/770	V.V. Veeder	3
2358	respondent_appointee	http://www.italaw.com/cases/770	L. Yves Fortier	3
2359	chair_president	http://www.italaw.com/cases/770	O.L.O. de Witt Wijnen	3
2360	claimant_appointee	http://www.italaw.com/cases/770	V.V. Veeder	4
2361	respondent_appointee	http://www.italaw.com/cases/770	L. Yves Fortier	4
2362	chair_president	http://www.italaw.com/cases/770	O.L.O. de Witt Wijnen	4
2363	claimant	http://www.italaw.com/cases/776	Olguín	\N
2364	respondent_state	http://www.italaw.com/cases/776	Paraguay	\N
2365	investment_treaty	http://www.italaw.com/cases/776	Paraguay-Peru BIT	\N
2366	claimant_appointee	http://www.italaw.com/cases/776	Eduardo Mayora Alvarado	0
2367	respondent_appointee	http://www.italaw.com/cases/776	Francisco Rezek	0
2368	chair_president	http://www.italaw.com/cases/776	Rodrigo Oreamuno Blanco	0
2369	claimant_appointee	http://www.italaw.com/cases/776	Eduardo Mayora Alvarado	1
2370	respondent_appointee	http://www.italaw.com/cases/776	Francisco Rezek	1
2371	chair_president	http://www.italaw.com/cases/776	Rodrigo Oreamuno Blanco	1
2372	claimant	http://www.italaw.com/cases/779	OPIC Karimum Corporation	\N
2373	respondent_state	http://www.italaw.com/cases/779	Venezuela	\N
2374	claimant_appointee	http://www.italaw.com/cases/779	Guido Santiago Tawil	0
2375	chair_president	http://www.italaw.com/cases/779	Doug Jones	0
2376	claimant_appointee	http://www.italaw.com/cases/779	Guido Santiago Tawil	1
2377	respondent_appointee	http://www.italaw.com/cases/779	Philippe Sands	1
2378	chair_president	http://www.italaw.com/cases/779	Doug Jones	1
2379	claimant_appointee	http://www.italaw.com/cases/779	Guido Santiago Tawil	2
2380	respondent_appointee	http://www.italaw.com/cases/779	Philippe Sands	2
2381	chair_president	http://www.italaw.com/cases/779	Doug Jones	2
2382	claimant	http://www.italaw.com/cases/781	Oxus Gold plc	\N
2383	respondent_state	http://www.italaw.com/cases/781	Uzbekistan	\N
2384	investment_treaty	http://www.italaw.com/cases/781	United Kingdom-Uzbekistan BIT	\N
2385	claimant_appointee	http://www.italaw.com/cases/781	Marc Lalonde	1
2386	respondent_appointee	http://www.italaw.com/cases/781	Brigitte Stern	1
2387	chair_president	http://www.italaw.com/cases/781	Pierre Tercier	1
2388	claimant	http://www.italaw.com/cases/783	Pac Rim Cayman LLC	\N
2389	respondent_state	http://www.italaw.com/cases/783	El Salvador	\N
2390	investment_treaty	http://www.italaw.com/cases/783	CAFTA	\N
2391	respondents_expert	http://www.italaw.com/cases/783	Michael Reisman	4
2392	claimants_expert	http://www.italaw.com/cases/783	Don Wallace Jr.	7
2393	claimant_appointee	http://www.italaw.com/cases/783	Guido Santiago Tawil	8
2394	respondent_appointee	http://www.italaw.com/cases/783	Brigitte Stern	8
2395	chair_president	http://www.italaw.com/cases/783	V.V. Veeder	8
2396	claimant_appointee	http://www.italaw.com/cases/783	Guido Santiago Tawil	23
2397	respondent_appointee	http://www.italaw.com/cases/783	Brigitte Stern	23
2398	chair_president	http://www.italaw.com/cases/783	V.V. Veeder	23
2399	claimant_appointee	http://www.italaw.com/cases/783	Guido Santiago Tawil	35
2400	respondent_appointee	http://www.italaw.com/cases/783	Brigitte Stern	35
2401	chair_president	http://www.italaw.com/cases/783	V.V. Veeder	35
2402	claimant	http://www.italaw.com/cases/808	Pan American Energy LLC	\N
2403	claimant	http://www.italaw.com/cases/808	BP Argentina Exploration Company	\N
2404	respondent_state	http://www.italaw.com/cases/808	Argentina	\N
2405	investment_treaty	http://www.italaw.com/cases/808	Argentina-United States BIT	\N
2406	claimant_appointee	http://www.italaw.com/cases/808	Albert Jan van den Berg	0
2407	respondent_appointee	http://www.italaw.com/cases/808	Brigitte Stern	0
2408	chair_president	http://www.italaw.com/cases/808	Lucius Caflisch	0
2409	claimant	http://www.italaw.com/cases/810	Pantechniki S.A. Contractors & Engineers (Greece)	\N
2410	respondent_state	http://www.italaw.com/cases/810	Albania	\N
2411	investment_treaty	http://www.italaw.com/cases/810	Albania-Greece BIT	\N
2412	arbitrator	http://www.italaw.com/cases/810	Jan Paulsson	0
2413	claimant	http://www.italaw.com/cases/812	Parkerings-Compagniet AS	\N
2414	respondent_state	http://www.italaw.com/cases/812	Lithuania	\N
2415	investment_treaty	http://www.italaw.com/cases/812	Lithuania-Norwary BIT	\N
2416	claimant_appointee	http://www.italaw.com/cases/812	Julian Lew	0
2417	respondent_appointee	http://www.italaw.com/cases/812	Marc Lalonde	0
2418	chair_president	http://www.italaw.com/cases/812	Laurent Lévy	0
2419	claimant	http://www.italaw.com/cases/814	Participaciones Inversiones Portuarias SARL	\N
2420	respondent_state	http://www.italaw.com/cases/814	Gabonese Republic	\N
2421	investment_treaty	http://www.italaw.com/cases/814	Gabon-BLEU (Belgium Luxembourg Economic Union) BIT	\N
2422	claimant	http://www.italaw.com/cases/816	Paushok	\N
2423	claimant	http://www.italaw.com/cases/816	CJSC Golden East Company	\N
2424	respondent_state	http://www.italaw.com/cases/816	Mongolia	\N
2425	investment_treaty	http://www.italaw.com/cases/816	Mongolia-Russian Federation BIT	\N
2426	claimant_appointee	http://www.italaw.com/cases/816	Horacio Grigera Naón	0
2427	respondent_appointee	http://www.italaw.com/cases/816	Brigitte Stern	0
2428	chair_president	http://www.italaw.com/cases/816	Marc Lalonde	0
2429	claimant_appointee	http://www.italaw.com/cases/816	Horacio Grigera Naón	1
2430	respondent_appointee	http://www.italaw.com/cases/816	Brigitte Stern	1
2431	chair_president	http://www.italaw.com/cases/816	Marc Lalonde	1
2432	claimant	http://www.italaw.com/cases/819	Perenco Ecuador Ltd.	\N
2433	respondent_state	http://www.italaw.com/cases/819	Ecuador	\N
2434	investment_treaty	http://www.italaw.com/cases/819	Ecuador-France BIT	\N
2435	claimant_appointee	http://www.italaw.com/cases/819	Charles Brower	0
2436	respondent_appointee	http://www.italaw.com/cases/819	J. Christopher Thomas	0
2437	chair_president	http://www.italaw.com/cases/819	Lord Bingham of Cornhill	0
2438	claimant_appointee	http://www.italaw.com/cases/819	Charles Brower	1
2439	respondent_appointee	http://www.italaw.com/cases/819	J. Christopher Thomas	1
2440	chair_president	http://www.italaw.com/cases/819	Lord Bingham of Cornhill	1
2441	claimant_appointee	http://www.italaw.com/cases/819	Neil Kaplan	2
2442	respondent_appointee	http://www.italaw.com/cases/819	J. Christopher Thomas	2
2443	chair_president	http://www.italaw.com/cases/819	Peter Tomka	2
2444	claimant_appointee	http://www.italaw.com/cases/819	Neil Kaplan	3
2445	respondent_appointee	http://www.italaw.com/cases/819	J. Christopher Thomas	3
2446	chair_president	http://www.italaw.com/cases/819	Peter Tomka	3
2447	claimant	http://www.italaw.com/cases/823	Petrobart Limited	\N
2448	respondent_state	http://www.italaw.com/cases/823	Kyrgyz Republic	\N
2449	country_in_which_this_occurs	http://www.italaw.com/cases/823	Sweden	1
2450	claimant	http://www.italaw.com/cases/825	Petrobart Limited	\N
2451	respondent_state	http://www.italaw.com/cases/825	Kyrgyz Republic	\N
2452	investment_treaty	http://www.italaw.com/cases/825	Energy Charter Treaty (ECT)	\N
2453	other_expert	http://www.italaw.com/cases/825	Sir Arthur Watts	0
2454	other_expert	http://www.italaw.com/cases/825	Anthony Shea	1
2455	claimants_expert	http://www.italaw.com/cases/825	Adnan Amkhan	2
2456	claimants_expert	http://www.italaw.com/cases/825	Adnan Amkhan	3
2457	claimant_appointee	http://www.italaw.com/cases/825	Ove Bring	4
2458	respondent_appointee	http://www.italaw.com/cases/825	Jeroen Smets	4
2459	chair_president	http://www.italaw.com/cases/825	Hans Danelius	4
2460	country_in_which_this_occurs	http://www.italaw.com/cases/825	Sweden	5
2461	claimant	http://www.italaw.com/cases/829	Pey Casado	\N
2462	respondent_state	http://www.italaw.com/cases/829	Chile	\N
2463	investment_treaty	http://www.italaw.com/cases/829	Chile-Spain BIT	\N
2464	claimant_appointee	http://www.italaw.com/cases/829	Mohammed Bedjaoui	3
2465	respondent_appointee	http://www.italaw.com/cases/829	Francisco Rezek	3
2466	chair_president	http://www.italaw.com/cases/829	Pierre Lalive	3
2467	claimant_appointee	http://www.italaw.com/cases/829	Mohammed Bedjaoui	4
2468	respondent_appointee	http://www.italaw.com/cases/829	Galo Leoro Franco	4
2469	chair_president	http://www.italaw.com/cases/829	Pierre Lalive	4
2470	other_expert	http://www.italaw.com/cases/829	Guillermo Bruna	5
2471	claimants_expert	http://www.italaw.com/cases/829	Alejandro Arraez	6
2472	claimants_expert	http://www.italaw.com/cases/829	Fernando Mariño	7
2473	claimant_appointee	http://www.italaw.com/cases/829	Mohammed Chemloul	8
2474	arbitrator	http://www.italaw.com/cases/829	Emmanuel Gaillard	8
2475	chair_president	http://www.italaw.com/cases/829	Pierre Lalive	8
2476	claimant_appointee	http://www.italaw.com/cases/829	Mohammed Chemloul	9
2477	arbitrator	http://www.italaw.com/cases/829	Emmanuel Gaillard	9
2478	chair_president	http://www.italaw.com/cases/829	Pierre Lalive	9
2479	claimant_appointee	http://www.italaw.com/cases/829	Mohammed Chemloul	13
2480	arbitrator	http://www.italaw.com/cases/829	Emmanuel Gaillard	13
2481	chair_president	http://www.italaw.com/cases/829	Pierre Lalive	13
2482	claimant_appointee	http://www.italaw.com/cases/829	Mohammed Chemloul	22
2483	arbitrator	http://www.italaw.com/cases/829	Emmanuel Gaillard	22
2484	chair_president	http://www.italaw.com/cases/829	Pierre Lalive	22
2485	annulment_committee_president	http://www.italaw.com/cases/829	L. Yves Fortier	23
2486	annulment_committee_members	http://www.italaw.com/cases/829	Piero Bernardini	23
2487	annulment_committee_members	http://www.italaw.com/cases/829	Ahmed El-Kosheri	23
2488	annulment_committee_president	http://www.italaw.com/cases/829	L. Yves Fortier	24
2489	annulment_committee_members	http://www.italaw.com/cases/829	Piero Bernardini	24
2490	annulment_committee_members	http://www.italaw.com/cases/829	Ahmed El-Kosheri	24
2491	annulment_committee_president	http://www.italaw.com/cases/829	L. Yves Fortier	25
2492	annulment_committee_members	http://www.italaw.com/cases/829	Piero Bernardini	25
2493	annulment_committee_members	http://www.italaw.com/cases/829	Ahmed El-Kosheri	25
2494	annulment_committee_president	http://www.italaw.com/cases/829	L. Yves Fortier	28
2495	annulment_committee_members	http://www.italaw.com/cases/829	Piero Bernardini	28
2496	annulment_committee_members	http://www.italaw.com/cases/829	Ahmed El-Kosheri	28
2497	annulment_committee_president	http://www.italaw.com/cases/829	L. Yves Fortier	29
2498	annulment_committee_members	http://www.italaw.com/cases/829	Piero Bernardini	29
2499	annulment_committee_members	http://www.italaw.com/cases/829	Ahmed El-Kosheri	29
2500	annulment_committee_president	http://www.italaw.com/cases/829	L. Yves Fortier	30
2501	annulment_committee_members	http://www.italaw.com/cases/829	Piero Bernardini	30
2502	annulment_committee_members	http://www.italaw.com/cases/829	Ahmed El-Kosheri	30
2503	country_in_which_this_occurs	http://www.italaw.com/cases/829	Spain	31
2504	country_in_which_this_occurs	http://www.italaw.com/cases/829	Spain	32
2505	arbitrator	http://www.italaw.com/cases/829	Piero Bernardini	33
2506	arbitrator	http://www.italaw.com/cases/829	Ahmed El-Kosheri	33
2507	chair_president	http://www.italaw.com/cases/829	L. Yves Fortier	33
2508	arbitrator	http://www.italaw.com/cases/829	Piero Bernardini	34
2509	arbitrator	http://www.italaw.com/cases/829	Ahmed El-Kosheri	34
2510	chair_president	http://www.italaw.com/cases/829	L. Yves Fortier	34
2511	annulment_committee_president	http://www.italaw.com/cases/829	L. Yves Fortier	37
2512	annulment_committee_members	http://www.italaw.com/cases/829	Piero Bernardini	37
2513	annulment_committee_members	http://www.italaw.com/cases/829	Ahmed El-Kosheri	37
2514	country_in_which_this_occurs	http://www.italaw.com/cases/829	Spain	39
2515	annulment_committee_president	http://www.italaw.com/cases/829	L. Yves Fortier	44
2516	annulment_committee_members	http://www.italaw.com/cases/829	Piero Bernardini	44
2517	annulment_committee_members	http://www.italaw.com/cases/829	Ahmed El-Kosheri	44
2518	claimant	http://www.italaw.com/cases/850	Phoenix Action	\N
2519	claimant	http://www.italaw.com/cases/850	Ltd.	\N
2520	respondent_state	http://www.italaw.com/cases/850	Czech Republic	\N
2521	investment_treaty	http://www.italaw.com/cases/850	Czech Republic-Israel BIT	\N
2522	respondent_appointee	http://www.italaw.com/cases/850	Juan Fernández-Armesto	0
2523	arbitrator	http://www.italaw.com/cases/850	Andreas Bucher	0
2524	chair_president	http://www.italaw.com/cases/850	Brigitte Stern	0
2525	respondent_appointee	http://www.italaw.com/cases/850	Juan Fernández-Armesto	1
2526	arbitrator	http://www.italaw.com/cases/850	Andreas Bucher	1
2527	chair_president	http://www.italaw.com/cases/850	Brigitte Stern	1
2528	claimant	http://www.italaw.com/cases/851	Philip Morris Asia Limited	\N
2529	respondent_state	http://www.italaw.com/cases/851	Australia	\N
2530	investment_treaty	http://www.italaw.com/cases/851	Australia-Hong Kong BIT	\N
2531	claimant_appointee	http://www.italaw.com/cases/851	Gabrielle Kaufmann-Kohler	3
2532	respondent_appointee	http://www.italaw.com/cases/851	Donald McRae	3
2533	chair_president	http://www.italaw.com/cases/851	Karl-Heinz Böckstiegel	3
2534	claimant_appointee	http://www.italaw.com/cases/851	Gabrielle Kaufmann-Kohler	4
2535	respondent_appointee	http://www.italaw.com/cases/851	Donald McRae	4
2536	chair_president	http://www.italaw.com/cases/851	Karl-Heinz Böckstiegel	4
2537	country_in_which_this_occurs	http://www.italaw.com/cases/851	Australia	5
2538	claimant_appointee	http://www.italaw.com/cases/851	Gabrielle Kaufmann-Kohler	6
2539	respondent_appointee	http://www.italaw.com/cases/851	Donald McRae	6
2540	chair_president	http://www.italaw.com/cases/851	Karl-Heinz Böckstiegel	6
2541	claimant_appointee	http://www.italaw.com/cases/851	Gabrielle Kaufmann-Kohler	7
2542	respondent_appointee	http://www.italaw.com/cases/851	Donald McRae	7
2543	chair_president	http://www.italaw.com/cases/851	Karl-Heinz Böckstiegel	7
2544	claimant_appointee	http://www.italaw.com/cases/851	Gabrielle Kaufmann-Kohler	8
2545	respondent_appointee	http://www.italaw.com/cases/851	Donald McRae	8
2546	chair_president	http://www.italaw.com/cases/851	Karl-Heinz Böckstiegel	8
2547	claimant_appointee	http://www.italaw.com/cases/851	Gabrielle Kaufmann-Kohler	9
2548	respondent_appointee	http://www.italaw.com/cases/851	Donald McRae	9
2549	chair_president	http://www.italaw.com/cases/851	Karl-Heinz Böckstiegel	9
2550	claimant_appointee	http://www.italaw.com/cases/851	Gabrielle Kaufmann-Kohler	10
2551	respondent_appointee	http://www.italaw.com/cases/851	Donald McRae	10
2552	chair_president	http://www.italaw.com/cases/851	Karl-Heinz Böckstiegel	10
2553	claimant_appointee	http://www.italaw.com/cases/851	Gabrielle Kaufmann-Kohler	11
2554	respondent_appointee	http://www.italaw.com/cases/851	Donald McRae	11
2555	chair_president	http://www.italaw.com/cases/851	Karl-Heinz Böckstiegel	11
2556	claimant_appointee	http://www.italaw.com/cases/851	Gabrielle Kaufmann-Kohler	12
2557	respondent_appointee	http://www.italaw.com/cases/851	Donald McRae	12
2558	chair_president	http://www.italaw.com/cases/851	Karl-Heinz Böckstiegel	12
2559	claimant_appointee	http://www.italaw.com/cases/851	Gabrielle Kaufmann-Kohler	13
2560	respondent_appointee	http://www.italaw.com/cases/851	Donald McRae	13
2561	chair_president	http://www.italaw.com/cases/851	Karl-Heinz Böckstiegel	13
2562	claimant_appointee	http://www.italaw.com/cases/851	Gabrielle Kaufmann-Kohler	14
2563	respondent_appointee	http://www.italaw.com/cases/851	Donald McRae	14
2564	chair_president	http://www.italaw.com/cases/851	Karl-Heinz Böckstiegel	14
2565	claimant_appointee	http://www.italaw.com/cases/851	Gabrielle Kaufmann-Kohler	15
2566	respondent_appointee	http://www.italaw.com/cases/851	Donald McRae	15
2567	chair_president	http://www.italaw.com/cases/851	Karl-Heinz Böckstiegel	15
2568	claimant	http://www.italaw.com/cases/857	Plama Consortium Limited	\N
2569	respondent_state	http://www.italaw.com/cases/857	Bulgaria	\N
2570	investment_treaty	http://www.italaw.com/cases/857	Energy Charter Treaty (ECT)	\N
2571	other_expert	http://www.italaw.com/cases/857	Thomas Wälde	0
2572	claimant_appointee	http://www.italaw.com/cases/857	Albert Jan van den Berg	1
2573	respondent_appointee	http://www.italaw.com/cases/857	V.V. Veeder	1
2574	chair_president	http://www.italaw.com/cases/857	Carl Salans	1
2575	claimant_appointee	http://www.italaw.com/cases/857	Albert Jan van den Berg	2
2576	respondent_appointee	http://www.italaw.com/cases/857	V.V. Veeder	2
2577	chair_president	http://www.italaw.com/cases/857	Carl Salans	2
2578	claimant_appointee	http://www.italaw.com/cases/857	Albert Jan van den Berg	3
2579	respondent_appointee	http://www.italaw.com/cases/857	V.V. Veeder	3
2580	chair_president	http://www.italaw.com/cases/857	Carl Salans	3
2581	claimant	http://www.italaw.com/cases/860	Polska Energetyka Holding S.A.	\N
2582	respondent_state	http://www.italaw.com/cases/860	Turkey	\N
2583	investment_treaty	http://www.italaw.com/cases/860	Poland-Turkey BIT	\N
2584	claimant	http://www.italaw.com/cases/863	Pope & Talbot Inc.	\N
2585	respondent_state	http://www.italaw.com/cases/863	Canada	\N
2586	investment_treaty	http://www.italaw.com/cases/863	NAFTA	\N
2587	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	0
2588	arbitrator	http://www.italaw.com/cases/863	Murray Belman	0
2589	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	0
2590	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	1
2591	arbitrator	http://www.italaw.com/cases/863	Murray Belman	1
2592	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	1
2593	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	2
2594	arbitrator	http://www.italaw.com/cases/863	Murray Belman	2
2595	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	2
2596	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	3
2597	arbitrator	http://www.italaw.com/cases/863	Murray Belman	3
2598	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	3
2599	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	4
2600	arbitrator	http://www.italaw.com/cases/863	Murray Belman	4
2601	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	4
2602	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	5
2603	arbitrator	http://www.italaw.com/cases/863	Murray Belman	5
2604	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	5
2605	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	6
2606	arbitrator	http://www.italaw.com/cases/863	Murray Belman	6
2607	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	6
2608	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	8
2609	arbitrator	http://www.italaw.com/cases/863	Murray Belman	8
2610	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	8
2611	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	9
2612	arbitrator	http://www.italaw.com/cases/863	Murray Belman	9
2613	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	9
2614	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	10
2615	arbitrator	http://www.italaw.com/cases/863	Murray Belman	10
2616	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	10
2617	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	11
2618	arbitrator	http://www.italaw.com/cases/863	Murray Belman	11
2619	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	11
2620	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	12
2621	arbitrator	http://www.italaw.com/cases/863	Murray Belman	12
2622	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	12
2623	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	13
2624	arbitrator	http://www.italaw.com/cases/863	Murray Belman	13
2625	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	13
2626	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	14
2627	arbitrator	http://www.italaw.com/cases/863	Murray Belman	14
2628	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	14
2629	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	15
2630	arbitrator	http://www.italaw.com/cases/863	Murray Belman	15
2631	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	15
2632	arbitrator	http://www.italaw.com/cases/863	Benjamin Greenberg	16
2633	arbitrator	http://www.italaw.com/cases/863	Murray Belman	16
2634	chair_president	http://www.italaw.com/cases/863	Lord Dervaird	16
2635	claimant	http://www.italaw.com/cases/880	PSEG Global	\N
2636	claimant	http://www.italaw.com/cases/880	Inc.	\N
2637	claimant	http://www.italaw.com/cases/880	North American Coal Corporation	\N
2638	claimant	http://www.italaw.com/cases/880	Konya Ingin Electrik Üretim ve Ticaret Limited Sirketi	\N
2639	respondent_state	http://www.italaw.com/cases/880	Turkey	\N
2640	investment_treaty	http://www.italaw.com/cases/880	Turkey-United States BIT	\N
2641	other_expert	http://www.italaw.com/cases/880	Rudolf Dolzer	0
2642	other_expert	http://www.italaw.com/cases/880	David Rivkin	1
2643	claimant_appointee	http://www.italaw.com/cases/880	L. Yves Fortier	2
2644	respondent_appointee	http://www.italaw.com/cases/880	Gabrielle Kaufmann-Kohler	2
2645	chair_president	http://www.italaw.com/cases/880	Francisco Orrego Vicuña	2
2646	claimant_appointee	http://www.italaw.com/cases/880	L. Yves Fortier	3
2647	respondent_appointee	http://www.italaw.com/cases/880	Gabrielle Kaufmann-Kohler	3
2648	chair_president	http://www.italaw.com/cases/880	Francisco Orrego Vicuña	3
2649	claimant	http://www.italaw.com/cases/883	Quadrant Pacific Growth Fund L.P.	\N
2650	claimant	http://www.italaw.com/cases/883	Canasco Holdings Inc.	\N
2651	respondent_state	http://www.italaw.com/cases/883	Costa Rica	\N
2652	investment_treaty	http://www.italaw.com/cases/883	Canada-Costa Rica BIT	\N
2653	claimant_appointee	http://www.italaw.com/cases/883	Andreas Lowenfeld	0
2654	respondent_appointee	http://www.italaw.com/cases/883	Bernardo Cremades	0
2655	chair_president	http://www.italaw.com/cases/883	Alejandro Garro	0
2656	claimant	http://www.italaw.com/cases/885	Quiborax S.A.	\N
2657	claimant	http://www.italaw.com/cases/885	Non Metallic Minerals S.A.	\N
2658	claimant	http://www.italaw.com/cases/885	Fosk Kaplún	\N
2659	respondent_state	http://www.italaw.com/cases/885	Bolivia	\N
2660	investment_treaty	http://www.italaw.com/cases/885	Bolivia-Chile BIT	\N
2661	arbitrator	http://www.italaw.com/cases/885	Marc Lalonde	0
2662	arbitrator	http://www.italaw.com/cases/885	Brigitte Stern	0
2663	chair_president	http://www.italaw.com/cases/885	Gabrielle Kaufmann-Kohler	0
2664	claimant_appointee	http://www.italaw.com/cases/885	Marc Lalonde	1
2665	respondent_appointee	http://www.italaw.com/cases/885	Brigitte Stern	1
2666	chair_president	http://www.italaw.com/cases/885	Gabrielle Kaufmann-Kohler	1
2667	claimant	http://www.italaw.com/cases/887	Railroad Development Corporation	\N
2668	respondent_state	http://www.italaw.com/cases/887	Guatemala	\N
2669	investment_treaty	http://www.italaw.com/cases/887	CAFTA	\N
2670	claimant_appointee	http://www.italaw.com/cases/887	Stuart Eizenstat	7
2671	respondent_appointee	http://www.italaw.com/cases/887	James Crawford	7
2672	chair_president	http://www.italaw.com/cases/887	Andrés Rigo Sureda	7
2673	claimant_appointee	http://www.italaw.com/cases/887	Stuart Eizenstat	8
2674	respondent_appointee	http://www.italaw.com/cases/887	James Crawford	8
2675	chair_president	http://www.italaw.com/cases/887	Andrés Rigo Sureda	8
2676	arbitrator	http://www.italaw.com/cases/887	Stuart Eizenstat	9
2677	arbitrator	http://www.italaw.com/cases/887	James Crawford	9
2678	chair_president	http://www.italaw.com/cases/887	Andrés Rigo Sureda	9
2679	arbitrator	http://www.italaw.com/cases/887	Stuart Eizenstat	10
2680	arbitrator	http://www.italaw.com/cases/887	James Crawford	10
2681	chair_president	http://www.italaw.com/cases/887	Andrés Rigo Sureda	10
2682	claimant_appointee	http://www.italaw.com/cases/887	Stuart Eizenstat	11
2683	respondent_appointee	http://www.italaw.com/cases/887	James Crawford	11
2684	chair_president	http://www.italaw.com/cases/887	Andrés Rigo Sureda	11
2685	claimants_expert	http://www.italaw.com/cases/887	Michael Reisman	12
2686	claimants_expert	http://www.italaw.com/cases/887	Michael Reisman	13
2687	claimants_expert	http://www.italaw.com/cases/887	Eduardo Mayora	14
2688	arbitrator	http://www.italaw.com/cases/887	Stuart Eizenstat	15
2689	arbitrator	http://www.italaw.com/cases/887	James Crawford	15
2690	chair_president	http://www.italaw.com/cases/887	Andrés Rigo Sureda	15
2691	respondents_expert	http://www.italaw.com/cases/887	Marithza Ruiz de Vielman	16
2692	claimants_expert	http://www.italaw.com/cases/887	Eduardo Mayora	17
2693	arbitrator	http://www.italaw.com/cases/887	Stuart Eizenstat	18
2694	arbitrator	http://www.italaw.com/cases/887	James Crawford	18
2695	chair_president	http://www.italaw.com/cases/887	Andrés Rigo Sureda	18
2696	arbitrator	http://www.italaw.com/cases/887	Stuart Eizenstat	19
2697	arbitrator	http://www.italaw.com/cases/887	James Crawford	19
2698	chair_president	http://www.italaw.com/cases/887	Andrés Rigo Sureda	19
2699	arbitrator	http://www.italaw.com/cases/887	Stuart Eizenstat	20
2700	arbitrator	http://www.italaw.com/cases/887	James Crawford	20
2701	chair_president	http://www.italaw.com/cases/887	Andrés Rigo Sureda	20
2702	claimant_appointee	http://www.italaw.com/cases/887	Stuart Eizenstat	21
2703	respondent_appointee	http://www.italaw.com/cases/887	James Crawford	21
2704	chair_president	http://www.italaw.com/cases/887	Andrés Rigo Sureda	21
2705	respondents_expert	http://www.italaw.com/cases/887	Juan Luis Aguilar Salguero	22
2706	claimants_expert	http://www.italaw.com/cases/887	Michael Reisman	24
2707	claimants_expert	http://www.italaw.com/cases/887	Michael Reisman	25
2708	claimants_expert	http://www.italaw.com/cases/887	Eduardo Mayora	26
2709	respondents_expert	http://www.italaw.com/cases/887	Juan Luis Aguilar Salguero	28
2710	claimant_appointee	http://www.italaw.com/cases/887	Stuart Eizenstat	33
2711	respondent_appointee	http://www.italaw.com/cases/887	James Crawford	33
2712	chair_president	http://www.italaw.com/cases/887	Andrés Rigo Sureda	33
2713	claimant_appointee	http://www.italaw.com/cases/887	Stuart Eizenstat	36
2714	respondent_appointee	http://www.italaw.com/cases/887	James Crawford	36
2715	chair_president	http://www.italaw.com/cases/887	Andrés Rigo Sureda	36
2716	country_in_which_this_occurs	http://www.italaw.com/cases/887	United States of America	37
2717	claimant	http://www.italaw.com/cases/901	Rail World Estonia LLC	\N
2718	claimant	http://www.italaw.com/cases/901	EEIF Rail BV	\N
2719	respondent_state	http://www.italaw.com/cases/901	Estonia	\N
2720	investment_treaty	http://www.italaw.com/cases/901	Estonia-Netherlands BIT	\N
2721	investment_treaty	http://www.italaw.com/cases/901	Estonia-United States BIT	\N
2722	claimant_appointee	http://www.italaw.com/cases/901	Karl-Heinz Böckstiegel	0
2723	respondent_appointee	http://www.italaw.com/cases/901	Mark Raeside	0
2724	chair_president	http://www.italaw.com/cases/901	Gabrielle Kaufmann-Kohler	0
2725	claimant	http://www.italaw.com/cases/903	Remington Worldwide Limited	\N
2726	respondent_state	http://www.italaw.com/cases/903	Ukraine	\N
2727	investment_treaty	http://www.italaw.com/cases/903	Energy Charter Treaty (ECT)	\N
2728	claimant	http://www.italaw.com/cases/906	Renco Group	\N
2729	claimant	http://www.italaw.com/cases/906	Inc.	\N
2730	respondent_state	http://www.italaw.com/cases/906	Peru	\N
2731	investment_treaty	http://www.italaw.com/cases/906	Peru-United States Trade Promotion Agreement	\N
2732	claimant_appointee	http://www.italaw.com/cases/906	L. Yves Fortier	6
2733	respondent_appointee	http://www.italaw.com/cases/906	Toby Landau	6
2734	chair_president	http://www.italaw.com/cases/906	Michael Moser	6
2735	respondents_expert	http://www.italaw.com/cases/906	Michael Reisman	10
2736	claimant_appointee	http://www.italaw.com/cases/906	L. Yves Fortier	13
2737	respondent_appointee	http://www.italaw.com/cases/906	Toby Landau	13
2738	chair_president	http://www.italaw.com/cases/906	Michael Moser	13
2739	claimant_appointee	http://www.italaw.com/cases/906	L. Yves Fortier	17
2740	respondent_appointee	http://www.italaw.com/cases/906	Toby Landau	17
2741	chair_president	http://www.italaw.com/cases/906	Michael Moser	17
2742	claimant	http://www.italaw.com/cases/915	Renta 4 S.V.S.A	\N
2743	claimant	http://www.italaw.com/cases/915	Ahorro Corporacionemergentes F.I.	\N
2744	claimant	http://www.italaw.com/cases/915	Quasar de Valors SICAV S.A.	\N
2745	claimant	http://www.italaw.com/cases/915	Orgor de Valores SICAV S.A.	\N
2746	claimant	http://www.italaw.com/cases/915	GBI 9000 SICAV S.A.	\N
2747	claimant	http://www.italaw.com/cases/915	ALOS 34 S.L.	\N
2748	respondent_state	http://www.italaw.com/cases/915	Russian Federation	\N
2749	investment_treaty	http://www.italaw.com/cases/915	Russian Federation-Spain BIT	\N
2750	arbitrator	http://www.italaw.com/cases/915	Toby Landau	0
2751	arbitrator	http://www.italaw.com/cases/915	Charles Brower	0
2752	chair_president	http://www.italaw.com/cases/915	Jan Paulsson	0
2753	arbitrator	http://www.italaw.com/cases/915	Charles Brower	1
2754	arbitrator	http://www.italaw.com/cases/915	Toby Landau	2
2755	arbitrator	http://www.italaw.com/cases/915	Charles Brower	2
2756	chair_president	http://www.italaw.com/cases/915	Jan Paulsson	2
2757	claimant	http://www.italaw.com/cases/918	Romak S.A. (Switzerland)	\N
2758	respondent_state	http://www.italaw.com/cases/918	Uzbekistan	\N
2759	investment_treaty	http://www.italaw.com/cases/918	Switzerland-Uzbekistan BIT	\N
2760	claimant_appointee	http://www.italaw.com/cases/918	Noah Rubins	0
2761	respondent_appointee	http://www.italaw.com/cases/918	Nicolas Molfessis	0
2762	chair_president	http://www.italaw.com/cases/918	Fernando Mantilla-Serrano	0
2763	claimant	http://www.italaw.com/cases/920	Rompetrol Group N.V.	\N
2764	respondent_state	http://www.italaw.com/cases/920	Romania	\N
2765	investment_treaty	http://www.italaw.com/cases/920	Netherlands-Romania BIT	\N
2766	claimant_appointee	http://www.italaw.com/cases/920	Donald Francis Donovan	0
2767	respondent_appointee	http://www.italaw.com/cases/920	Marc Lalonde	0
2768	chair_president	http://www.italaw.com/cases/920	Franklin Berman	0
2769	claimant_appointee	http://www.italaw.com/cases/920	Donald Francis Donovan	1
2770	respondent_appointee	http://www.italaw.com/cases/920	Marc Lalonde	1
2771	chair_president	http://www.italaw.com/cases/920	Franklin Berman	1
2772	claimant_appointee	http://www.italaw.com/cases/920	Donald Francis Donovan	2
2773	respondent_appointee	http://www.italaw.com/cases/920	Marc Lalonde	2
2774	chair_president	http://www.italaw.com/cases/920	Franklin Berman	2
2775	claimant	http://www.italaw.com/cases/923	RosInvestCo UK Ltd.	\N
2776	respondent_state	http://www.italaw.com/cases/923	Russian Federation	\N
2777	investment_treaty	http://www.italaw.com/cases/923	Russian Federation-United Kingdom BIT	\N
2778	claimant_appointee	http://www.italaw.com/cases/923	Lord Steyn	0
2779	respondent_appointee	http://www.italaw.com/cases/923	Franklin Berman	0
2780	chair_president	http://www.italaw.com/cases/923	Karl-Heinz Böckstiegel	0
2781	claimant_appointee	http://www.italaw.com/cases/923	Lord Steyn	1
2782	respondent_appointee	http://www.italaw.com/cases/923	Franklin Berman	1
2783	chair_president	http://www.italaw.com/cases/923	Karl-Heinz Böckstiegel	1
2784	country_in_which_this_occurs	http://www.italaw.com/cases/923	Sweden	2
2785	country_in_which_this_occurs	http://www.italaw.com/cases/923	Sweden	4
2786	claimant	http://www.italaw.com/cases/927	Roussalis	\N
2787	respondent_state	http://www.italaw.com/cases/927	Romania	\N
2788	investment_treaty	http://www.italaw.com/cases/927	Greece-Romania BIT	\N
2789	respondent_appointee	http://www.italaw.com/cases/927	Michael Reisman	7
2790	claimant_appointee	http://www.italaw.com/cases/927	Andrea Giardina	8
2791	respondent_appointee	http://www.italaw.com/cases/927	Michael Reisman	8
2792	chair_president	http://www.italaw.com/cases/927	Bernard Hanotiau	8
2793	claimant	http://www.italaw.com/cases/937	Grynberg	\N
2794	claimant	http://www.italaw.com/cases/937	RSM Production Company	\N
2795	respondent_state	http://www.italaw.com/cases/937	Grenada	\N
2796	investment_treaty	http://www.italaw.com/cases/937	Grenada-United States BIT	\N
2797	arbitrator	http://www.italaw.com/cases/937	Edward Nottingham	0
2798	arbitrator	http://www.italaw.com/cases/937	Pierre Tercier	0
2799	chair_president	http://www.italaw.com/cases/937	J. William Rowley	0
2800	arbitrator	http://www.italaw.com/cases/937	Edward Nottingham	1
2801	arbitrator	http://www.italaw.com/cases/937	Pierre Tercier	1
2802	chair_president	http://www.italaw.com/cases/937	J. William Rowley	1
2803	claimant	http://www.italaw.com/cases/940	RSM Production Corporation	\N
2804	respondent_state	http://www.italaw.com/cases/940	Grenada	\N
2805	annulment_committee_president	http://www.italaw.com/cases/940	Gavan Griffith	0
2806	annulment_committee_members	http://www.italaw.com/cases/940	Cecil Abraham	0
2807	annulment_committee_members	http://www.italaw.com/cases/940	Campbell McLachlan	0
2808	claimant	http://www.italaw.com/cases/942	Rumeli Telekom A.S.	\N
2809	claimant	http://www.italaw.com/cases/942	Telsim Mobil Telekomunikasyon Hizmetleri A.S.	\N
2810	respondent_state	http://www.italaw.com/cases/942	Kazakhstan	\N
2811	investment_treaty	http://www.italaw.com/cases/942	Kazakhstan-Turkey BIT	\N
2812	claimant_appointee	http://www.italaw.com/cases/942	Marc Lalonde	0
2813	respondent_appointee	http://www.italaw.com/cases/942	Stewart Boyd	0
2814	chair_president	http://www.italaw.com/cases/942	Bernard Hanotiau	0
2815	annulment_committee_president	http://www.italaw.com/cases/942	Stephen Schwebel	2
2816	annulment_committee_members	http://www.italaw.com/cases/942	Campbell McLachlan	2
2817	annulment_committee_members	http://www.italaw.com/cases/942	Eduardo Silva Romero	2
2818	claimant	http://www.italaw.com/cases/946	Saar Papier Vertriebs GmbH	\N
2819	respondent_state	http://www.italaw.com/cases/946	Poland	\N
2820	investment_treaty	http://www.italaw.com/cases/946	Germany-Poland BIT	\N
2821	claimant_appointee	http://www.italaw.com/cases/946	Georg Ahrens	0
2822	chair_president	http://www.italaw.com/cases/946	Pierre Karrer	0
2823	respondent_appointee	http://www.italaw.com/cases/946	Tadeusz Szurski	1
2824	claimant_appointee	http://www.italaw.com/cases/946	Georg Ahrens	2
2825	chair_president	http://www.italaw.com/cases/946	Pierre Karrer	2
2826	respondent_appointee	http://www.italaw.com/cases/946	Tadeusz Szurski	3
2827	country_in_which_this_occurs	http://www.italaw.com/cases/946	Switzerland	4
2828	country_in_which_this_occurs	http://www.italaw.com/cases/946	Switzerland	5
2829	claimant	http://www.italaw.com/cases/951	Saipem S.p.A.	\N
2830	respondent_state	http://www.italaw.com/cases/951	Bangladesh	\N
2831	investment_treaty	http://www.italaw.com/cases/951	Bangladesh-Italy BIT	\N
2832	other_expert	http://www.italaw.com/cases/951	Abdur Razzaq	0
2833	claimant_appointee	http://www.italaw.com/cases/951	Christoph Schreuer	1
2834	respondent_appointee	http://www.italaw.com/cases/951	Philip Otton	1
2835	chair_president	http://www.italaw.com/cases/951	Gabrielle Kaufmann-Kohler	1
2836	claimant_appointee	http://www.italaw.com/cases/951	Christoph Schreuer	2
2837	respondent_appointee	http://www.italaw.com/cases/951	Philip Otton	2
2838	chair_president	http://www.italaw.com/cases/951	Gabrielle Kaufmann-Kohler	2
2839	claimant	http://www.italaw.com/cases/954	Salini Costruttori S.p.A.	\N
2840	claimant	http://www.italaw.com/cases/954	Italstrade S.p.A.	\N
2841	respondent_state	http://www.italaw.com/cases/954	Jordan	\N
2842	investment_treaty	http://www.italaw.com/cases/954	Italy-Jordan BIT	\N
2843	claimant_appointee	http://www.italaw.com/cases/954	Bernardo Cremades	0
2844	respondent_appointee	http://www.italaw.com/cases/954	Eric Schwartz	0
2845	chair_president	http://www.italaw.com/cases/954	Gilbert Guillaume	0
2846	claimant_appointee	http://www.italaw.com/cases/954	Bernardo Cremades	1
2847	respondent_appointee	http://www.italaw.com/cases/954	Eric Schwartz	1
2848	chair_president	http://www.italaw.com/cases/954	Gilbert Guillaume	1
2849	claimant_appointee	http://www.italaw.com/cases/954	Bernardo Cremades	2
2850	respondent_appointee	http://www.italaw.com/cases/954	Ian Sinclair	2
2851	chair_president	http://www.italaw.com/cases/954	Gilbert Guillaume	2
2852	claimant	http://www.italaw.com/cases/958	Salini Costruttori S.p.A.	\N
2853	claimant	http://www.italaw.com/cases/958	Italstrade S.p.A.	\N
2854	respondent_state	http://www.italaw.com/cases/958	Morocco	\N
2855	investment_treaty	http://www.italaw.com/cases/958	Italy-Morocco BIT	\N
2856	other_expert	http://www.italaw.com/cases/958	Christoph Schreuer	0
2857	claimant_appointee	http://www.italaw.com/cases/958	Bernardo Cremades	1
2858	respondent_appointee	http://www.italaw.com/cases/958	Ibrahim Fadlallah	1
2859	chair_president	http://www.italaw.com/cases/958	Robert Briner	1
2860	claimant	http://www.italaw.com/cases/961	Saluka Investments B.V.	\N
2861	respondent_state	http://www.italaw.com/cases/961	Czech Republic	\N
2862	investment_treaty	http://www.italaw.com/cases/961	Czech Republic-Netherlands BIT	\N
2863	claimant_appointee	http://www.italaw.com/cases/961	L. Yves Fortier	0
2864	respondent_appointee	http://www.italaw.com/cases/961	Peter Behrens	0
2865	chair_president	http://www.italaw.com/cases/961	Arthur Watts	0
2866	claimant_appointee	http://www.italaw.com/cases/961	L. Yves Fortier	1
2867	respondent_appointee	http://www.italaw.com/cases/961	Peter Behrens	1
2868	chair_president	http://www.italaw.com/cases/961	Arthur Watts	1
2869	country_in_which_this_occurs	http://www.italaw.com/cases/961	Switzerland	2
2870	claimant	http://www.italaw.com/cases/965	Sancheti	\N
2871	respondent_state	http://www.italaw.com/cases/965	United Kingdom	\N
2872	investment_treaty	http://www.italaw.com/cases/965	India-United Kingdom BIT	\N
2873	country_in_which_this_occurs	http://www.italaw.com/cases/965	United Kingdom	0
2874	claimant	http://www.italaw.com/cases/967	S & T Oil Equipment and Machinery Ltd.	\N
2875	respondent_state	http://www.italaw.com/cases/967	Romania	\N
2876	investment_treaty	http://www.italaw.com/cases/967	Romania-United States BIT	\N
2877	claimant_appointee	http://www.italaw.com/cases/967	Horacio Grigera Naón	0
2878	respondent_appointee	http://www.italaw.com/cases/967	Brigitte Stern	0
2879	chair_president	http://www.italaw.com/cases/967	Hans van Houtte	0
2880	claimant	http://www.italaw.com/cases/969	S.D. Myers	\N
2881	claimant	http://www.italaw.com/cases/969	Inc.	\N
2882	respondent_state	http://www.italaw.com/cases/969	Canada	\N
2883	investment_treaty	http://www.italaw.com/cases/969	NAFTA	\N
2884	chair_president	http://www.italaw.com/cases/969	J. Martin Hunter	0
2885	chair_president	http://www.italaw.com/cases/969	J. Martin Hunter	1
2886	claimant_appointee	http://www.italaw.com/cases/969	Bryan Schwartz	2
2887	claimant_appointee	http://www.italaw.com/cases/969	Bryan Schwartz	3
2888	respondent_appointee	http://www.italaw.com/cases/969	Edward Chiasson	3
2889	chair_president	http://www.italaw.com/cases/969	J. Martin Hunter	3
2890	claimant_appointee	http://www.italaw.com/cases/969	Bryan Schwartz	4
2891	respondent_appointee	http://www.italaw.com/cases/969	Edward Chiasson	4
2892	chair_president	http://www.italaw.com/cases/969	J. Martin Hunter	4
2893	claimant_appointee	http://www.italaw.com/cases/969	Bryan Schwartz	5
2894	respondent_appointee	http://www.italaw.com/cases/969	Edward Chiasson	5
2895	chair_president	http://www.italaw.com/cases/969	J. Martin Hunter	5
2896	claimant_appointee	http://www.italaw.com/cases/969	Bryan Schwartz	6
2897	respondent_appointee	http://www.italaw.com/cases/969	Edward Chiasson	6
2898	chair_president	http://www.italaw.com/cases/969	J. Martin Hunter	6
2899	claimant_appointee	http://www.italaw.com/cases/969	Bryan Schwartz	7
2900	respondent_appointee	http://www.italaw.com/cases/969	Edward Chiasson	7
2901	chair_president	http://www.italaw.com/cases/969	J. Martin Hunter	7
2902	claimant_appointee	http://www.italaw.com/cases/969	Bryan Schwartz	8
2903	respondent_appointee	http://www.italaw.com/cases/969	Edward Chiasson	8
2904	chair_president	http://www.italaw.com/cases/969	J. Martin Hunter	8
2905	claimant_appointee	http://www.italaw.com/cases/969	Bryan Schwartz	9
2906	respondent_appointee	http://www.italaw.com/cases/969	Edward Chiasson	9
2907	chair_president	http://www.italaw.com/cases/969	J. Martin Hunter	9
2908	claimant_appointee	http://www.italaw.com/cases/969	Bryan Schwartz	10
2909	country_in_which_this_occurs	http://www.italaw.com/cases/969	Canada	11
2910	claimant	http://www.italaw.com/cases/982	Sedelmayer	\N
2911	respondent_state	http://www.italaw.com/cases/982	Russian Federation	\N
2912	investment_treaty	http://www.italaw.com/cases/982	Germany-Russian Federation BIT	\N
2913	claimant_appointee	http://www.italaw.com/cases/982	Jan Peter Wachler	0
2914	respondent_appointee	http://www.italaw.com/cases/982	Ivan Zykin	0
2915	chair_president	http://www.italaw.com/cases/982	Staffan Magnusson	0
2916	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	1
2917	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	2
2918	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	3
2919	country_in_which_this_occurs	http://www.italaw.com/cases/982	Sweden	4
2920	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	5
2921	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	6
2922	country_in_which_this_occurs	http://www.italaw.com/cases/982	Sweden	7
2923	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	8
2924	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	9
2925	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	10
2926	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	11
2927	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	12
2928	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	13
2929	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	14
2930	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	15
2931	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	17
2932	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	18
2933	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	19
2934	country_in_which_this_occurs	http://www.italaw.com/cases/982	Sweden	20
2935	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	21
2936	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	22
2937	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	24
2938	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	25
2939	country_in_which_this_occurs	http://www.italaw.com/cases/982	Germany	26
2940	claimant	http://www.italaw.com/cases/1002	Sempra Energy International	\N
2941	respondent_state	http://www.italaw.com/cases/1002	Argentina	\N
2942	investment_treaty	http://www.italaw.com/cases/1002	Argentina-United States BIT	\N
2943	claimants_expert	http://www.italaw.com/cases/1002	Michael Reisman	0
2944	claimant_appointee	http://www.italaw.com/cases/1002	Marc Lalonde	1
2945	respondent_appointee	http://www.italaw.com/cases/1002	Sandra Morelli Rico	1
2946	chair_president	http://www.italaw.com/cases/1002	Francisco Orrego Vicuña	1
2947	other_expert	http://www.italaw.com/cases/1002	Anne-Marie Slaughter	2
2948	other_expert	http://www.italaw.com/cases/1002	William Burke-White	2
2949	claimants_expert	http://www.italaw.com/cases/1002	José Alvarez	3
2950	other_expert	http://www.italaw.com/cases/1002	Anne-Marie Slaughter	4
2951	other_expert	http://www.italaw.com/cases/1002	William Burke-White	4
2952	claimant_appointee	http://www.italaw.com/cases/1002	Marc Lalonde	5
2953	claimant_appointee	http://www.italaw.com/cases/1002	Marc Lalonde	6
2954	respondent_appointee	http://www.italaw.com/cases/1002	Sandra Morelli Rico	6
2955	chair_president	http://www.italaw.com/cases/1002	Francisco Orrego Vicuña	6
2956	annulment_committee_president	http://www.italaw.com/cases/1002	Christer Söderlund	7
2957	annulment_committee_members	http://www.italaw.com/cases/1002	David Edward	7
2958	annulment_committee_members	http://www.italaw.com/cases/1002	Andreas Jacovides	7
2959	annulment_committee_president	http://www.italaw.com/cases/1002	Christer Söderlund	8
2960	annulment_committee_members	http://www.italaw.com/cases/1002	David Edward	8
2961	annulment_committee_members	http://www.italaw.com/cases/1002	Andreas Jacovides	8
2962	annulment_committee_president	http://www.italaw.com/cases/1002	Christer Söderlund	9
2963	annulment_committee_members	http://www.italaw.com/cases/1002	David Edward	9
2964	annulment_committee_members	http://www.italaw.com/cases/1002	Andreas Jacovides	9
2965	arbitrator	http://www.italaw.com/cases/1002	Kamal Hossain	10
2966	arbitrator	http://www.italaw.com/cases/1002	David Williams	10
2967	chair_president	http://www.italaw.com/cases/1002	Vaughan Lowe	10
2968	claimant	http://www.italaw.com/cases/1009	SGS Société Générale de Surveillance S.A.	\N
2969	respondent_state	http://www.italaw.com/cases/1009	Pakistan	\N
2970	investment_treaty	http://www.italaw.com/cases/1009	Pakistan-Switzerland BIT	\N
2971	country_in_which_this_occurs	http://www.italaw.com/cases/1009	Pakistan	0
2972	country_in_which_this_occurs	http://www.italaw.com/cases/1009	Pakistan	1
2973	arbitrator	http://www.italaw.com/cases/1009	J. Christopher Thomas	2
2974	arbitrator	http://www.italaw.com/cases/1009	André Faurès	2
2975	chair_president	http://www.italaw.com/cases/1009	Florentino Feliciano	2
2976	arbitrator	http://www.italaw.com/cases/1009	J. Christopher Thomas	4
2977	arbitrator	http://www.italaw.com/cases/1009	André Faurès	4
2978	chair_president	http://www.italaw.com/cases/1009	Florentino Feliciano	4
2979	claimant	http://www.italaw.com/cases/1016	SGS Société Générale de Surveillance S.A.	\N
2980	respondent_state	http://www.italaw.com/cases/1016	Paraguay	\N
2981	investment_treaty	http://www.italaw.com/cases/1016	Paraguay-Switzerland BIT	\N
2982	claimant_appointee	http://www.italaw.com/cases/1016	Donald Francis Donovan	0
2983	respondent_appointee	http://www.italaw.com/cases/1016	Pablo García Mexía	0
2984	chair_president	http://www.italaw.com/cases/1016	Stanimir Alexandrov	0
2985	claimant_appointee	http://www.italaw.com/cases/1016	Donald Francis Donovan	1
2986	respondent_appointee	http://www.italaw.com/cases/1016	Pablo García Mexía	1
2987	chair_president	http://www.italaw.com/cases/1016	Stanimir Alexandrov	1
2988	annulment_committee_president	http://www.italaw.com/cases/1016	Rodrigo Oreamuno	2
2989	annulment_committee_members	http://www.italaw.com/cases/1016	Eduardo Zuleta	2
2990	annulment_committee_members	http://www.italaw.com/cases/1016	Abdulqawi Ahmed Yusuf	2
2991	country_in_which_this_occurs	http://www.italaw.com/cases/1016	United States of America	3
2992	annulment_committee_president	http://www.italaw.com/cases/1016	Rodrigo Oreamuno Blanco	4
2993	annulment_committee_members	http://www.italaw.com/cases/1016	Eduardo Zuleta	4
2994	annulment_committee_members	http://www.italaw.com/cases/1016	Abdulqawi Ahmed Yusuf	4
2995	claimant	http://www.italaw.com/cases/1018	SGS Société Générale de Surveillance S.A.	\N
2996	respondent_state	http://www.italaw.com/cases/1018	Philippines	\N
2997	investment_treaty	http://www.italaw.com/cases/1018	Philippines-Switzerland BIT	\N
2998	claimant_appointee	http://www.italaw.com/cases/1018	Antonio Crivellaro	0
2999	respondent_appointee	http://www.italaw.com/cases/1018	James Crawford	0
3000	chair_president	http://www.italaw.com/cases/1018	Ahmed El-Kosheri	0
3001	claimant_appointee	http://www.italaw.com/cases/1018	Antonio Crivellaro	1
3002	claimant_appointee	http://www.italaw.com/cases/1018	Antonio Crivellaro	2
3003	respondent_appointee	http://www.italaw.com/cases/1018	James Crawford	2
3004	chair_president	http://www.italaw.com/cases/1018	Ahmed El-Kosheri	2
3005	claimant	http://www.italaw.com/cases/1022	Siag	\N
3006	claimant	http://www.italaw.com/cases/1022	Vecchi	\N
3007	respondent_state	http://www.italaw.com/cases/1022	Egypt	\N
3008	investment_treaty	http://www.italaw.com/cases/1022	Egypt-Italy BIT	\N
3009	other_expert	http://www.italaw.com/cases/1022	Mohamed El-Said El-Dakkak	0
3010	other_expert	http://www.italaw.com/cases/1022	Okasha Mohamed Abdel Aal	0
3011	other_expert	http://www.italaw.com/cases/1022	Hafiza El Haddad	1
3012	other_expert	http://www.italaw.com/cases/1022	Fouad Riad	2
3013	other_expert	http://www.italaw.com/cases/1022	Michael Reisman	3
3014	other_expert	http://www.italaw.com/cases/1022	Hafiza El Haddad	4
3015	other_expert	http://www.italaw.com/cases/1022	Michael Reisman	5
3016	other_expert	http://www.italaw.com/cases/1022	Fouad Riad	6
3017	claimant_appointee	http://www.italaw.com/cases/1022	Michael Pryles	7
3018	respondent_appointee	http://www.italaw.com/cases/1022	Francisco Orrego Vicuña	7
3019	chair_president	http://www.italaw.com/cases/1022	David Williams	7
3020	other_expert	http://www.italaw.com/cases/1022	Ivan Shearer	8
3021	other_expert	http://www.italaw.com/cases/1022	Hans Smit	9
3022	other_expert	http://www.italaw.com/cases/1022	Michael Reisman	10
3023	other_expert	http://www.italaw.com/cases/1022	Hans Smit	11
3024	other_expert	http://www.italaw.com/cases/1022	Abou Zeid Fahmy	12
3025	other_expert	http://www.italaw.com/cases/1022	Michael Reisman	13
3026	other_expert	http://www.italaw.com/cases/1022	Hans Smit	14
3027	respondent_appointee	http://www.italaw.com/cases/1022	Francisco Orrego Vicuña	15
3028	claimant_appointee	http://www.italaw.com/cases/1022	Michael Pryles	16
3029	respondent_appointee	http://www.italaw.com/cases/1022	Francisco Orrego Vicuña	16
3030	chair_president	http://www.italaw.com/cases/1022	David Williams	16
3031	country_in_which_this_occurs	http://www.italaw.com/cases/1022	United States of America	17
3032	claimant	http://www.italaw.com/cases/1026	Siemens A.G.	\N
3033	respondent_state	http://www.italaw.com/cases/1026	Argentina	\N
3034	investment_treaty	http://www.italaw.com/cases/1026	Argentina-Germany BIT	\N
3035	other_expert	http://www.italaw.com/cases/1026	Christoph Schreuer	0
3036	claimant_appointee	http://www.italaw.com/cases/1026	Charles Brower	1
3037	respondent_appointee	http://www.italaw.com/cases/1026	Domingo Bello Janeiro	1
3038	chair_president	http://www.italaw.com/cases/1026	Andrés Rigo Sureda	1
3039	claimant_appointee	http://www.italaw.com/cases/1026	Charles Brower	2
3040	respondent_appointee	http://www.italaw.com/cases/1026	Domingo Bello Janeiro	2
3041	chair_president	http://www.italaw.com/cases/1026	Andrés Rigo Sureda	2
3042	respondent_appointee	http://www.italaw.com/cases/1026	Domingo Bello Janeiro	3
3043	claimant	http://www.italaw.com/cases/1033	Sky Petroleum	\N
3044	claimant	http://www.italaw.com/cases/1033	Inc.	\N
3045	respondent_state	http://www.italaw.com/cases/1033	Albania	\N
3046	investment_treaty	http://www.italaw.com/cases/1033	Albania-United States BIT	\N
3047	country_in_which_this_occurs	http://www.italaw.com/cases/1033	United States of America	1
3048	claimant	http://www.italaw.com/cases/1035	Sociedad Anónima Eduardo Vieira	\N
3049	respondent_state	http://www.italaw.com/cases/1035	Chile	\N
3050	investment_treaty	http://www.italaw.com/cases/1035	Chile-Spain BIT	\N
3051	claimant_appointee	http://www.italaw.com/cases/1035	Susana Czar de Zalduendo	0
3052	claimant_appointee	http://www.italaw.com/cases/1035	Susana Czar de Zalduendo	1
3053	respondent_appointee	http://www.italaw.com/cases/1035	Michael Reisman	1
3054	chair_president	http://www.italaw.com/cases/1035	Claus von Wobeser	1
3055	annulment_committee_president	http://www.italaw.com/cases/1035	Christer Söderlund	2
3056	annulment_committee_members	http://www.italaw.com/cases/1035	Piero Bernardini	2
3057	annulment_committee_members	http://www.italaw.com/cases/1035	Eduardo Silva Romero	2
3058	claimant	http://www.italaw.com/cases/1039	Société Générale	\N
3059	respondent_state	http://www.italaw.com/cases/1039	Dominican Republic	\N
3060	investment_treaty	http://www.italaw.com/cases/1039	Dominican Republic-France BIT	\N
3061	arbitrator	http://www.italaw.com/cases/1039	R. Doak Bishop	0
3062	arbitrator	http://www.italaw.com/cases/1039	Bernardo Cremades	0
3063	chair_president	http://www.italaw.com/cases/1039	Francisco Orrego Vicuña	0
3064	claimant	http://www.italaw.com/cases/1041	Soufraki	\N
3065	respondent_state	http://www.italaw.com/cases/1041	United Arab Emirates	\N
3066	investment_treaty	http://www.italaw.com/cases/1041	Italy-United Arab Emirates BIT	\N
3067	claimant_appointee	http://www.italaw.com/cases/1041	Stephen Schwebel	0
3068	respondent_appointee	http://www.italaw.com/cases/1041	Aktham El Kholy	0
3069	chair_president	http://www.italaw.com/cases/1041	L. Yves Fortier	0
3070	annulment_committee_members	http://www.italaw.com/cases/1041	Omar Nabulsi	1
3071	annulment_committee_president	http://www.italaw.com/cases/1041	Florentino Feliciano	2
3072	annulment_committee_members	http://www.italaw.com/cases/1041	Omar Nabulsi	2
3073	annulment_committee_members	http://www.italaw.com/cases/1041	Brigitte Stern	2
3074	annulment_committee_president	http://www.italaw.com/cases/1041	Florentino Feliciano	3
3075	annulment_committee_members	http://www.italaw.com/cases/1041	Omar Nabulsi	3
3697	claimant	http://www.italaw.com/cases/1222	Laurentius	\N
3076	annulment_committee_members	http://www.italaw.com/cases/1041	Brigitte Stern	3
3077	claimant	http://www.italaw.com/cases/1046	Standard Chartered Bank	\N
3078	respondent_state	http://www.italaw.com/cases/1046	Tanzania	\N
3079	investment_treaty	http://www.italaw.com/cases/1046	Tanzania-United Kingdom BIT	\N
3080	claimant_appointee	http://www.italaw.com/cases/1046	Michael Pryles	0
3081	respondent_appointee	http://www.italaw.com/cases/1046	Barton Legum	0
3082	chair_president	http://www.italaw.com/cases/1046	William Park	0
3083	claimant_appointee	http://www.italaw.com/cases/1046	Michael Pryles	1
3084	respondent_appointee	http://www.italaw.com/cases/1046	Barton Legum	1
3085	chair_president	http://www.italaw.com/cases/1046	William Park	1
3086	claimant_appointee	http://www.italaw.com/cases/1046	Michael Pryles	2
3087	respondent_appointee	http://www.italaw.com/cases/1046	Barton Legum	2
3088	chair_president	http://www.italaw.com/cases/1046	William Park	2
3089	claimant_appointee	http://www.italaw.com/cases/1046	Michael Pryles	3
3090	respondent_appointee	http://www.italaw.com/cases/1046	Barton Legum	3
3091	chair_president	http://www.italaw.com/cases/1046	William Park	3
3092	claimant_appointee	http://www.italaw.com/cases/1046	Michael Pryles	4
3093	respondent_appointee	http://www.italaw.com/cases/1046	Barton Legum	4
3094	chair_president	http://www.italaw.com/cases/1046	William Park	4
3095	claimant_appointee	http://www.italaw.com/cases/1046	Michael Pryles	5
3096	respondent_appointee	http://www.italaw.com/cases/1046	Barton Legum	5
3097	chair_president	http://www.italaw.com/cases/1046	William Park	5
3098	claimant_appointee	http://www.italaw.com/cases/1046	Michael Pryles	6
3099	respondent_appointee	http://www.italaw.com/cases/1046	Barton Legum	6
3100	chair_president	http://www.italaw.com/cases/1046	William Park	6
3101	claimant_appointee	http://www.italaw.com/cases/1046	Michael Pryles	7
3102	respondent_appointee	http://www.italaw.com/cases/1046	Barton Legum	7
3103	chair_president	http://www.italaw.com/cases/1046	William Park	7
3104	claimant_appointee	http://www.italaw.com/cases/1046	Michael Pryles	8
3105	respondent_appointee	http://www.italaw.com/cases/1046	Barton Legum	8
3106	chair_president	http://www.italaw.com/cases/1046	William Park	8
3107	claimant_appointee	http://www.italaw.com/cases/1046	Michael Pryles	9
3108	respondent_appointee	http://www.italaw.com/cases/1046	Barton Legum	9
3109	chair_president	http://www.italaw.com/cases/1046	William Park	9
3110	claimant_appointee	http://www.italaw.com/cases/1046	Michael Pryles	10
3111	respondent_appointee	http://www.italaw.com/cases/1046	Barton Legum	10
3112	chair_president	http://www.italaw.com/cases/1046	William Park	10
3113	claimant_appointee	http://www.italaw.com/cases/1046	Michael Pryles	11
3114	respondent_appointee	http://www.italaw.com/cases/1046	Barton Legum	11
3115	chair_president	http://www.italaw.com/cases/1046	William Park	11
3116	claimant_appointee	http://www.italaw.com/cases/1046	Michael Pryles	12
3117	respondent_appointee	http://www.italaw.com/cases/1046	Barton Legum	12
3118	chair_president	http://www.italaw.com/cases/1046	William Park	12
3119	claimant_appointee	http://www.italaw.com/cases/1046	Michael Pryles	13
3120	respondent_appointee	http://www.italaw.com/cases/1046	Barton Legum	13
3121	arbitrator	http://www.italaw.com/cases/1046	William Park	13
3122	claimant	http://www.italaw.com/cases/1048	Suez	\N
3123	claimant	http://www.italaw.com/cases/1048	InterAguas Servicios Integrales del Agua S.A.	\N
3124	claimant	http://www.italaw.com/cases/1048	Sociedad General de Aguas de Barcelona S.A.	\N
3125	respondent_state	http://www.italaw.com/cases/1048	Argentina	\N
3126	investment_treaty	http://www.italaw.com/cases/1048	Argentina-France BIT	\N
3127	investment_treaty	http://www.italaw.com/cases/1048	Argentina-Spain BIT	\N
3128	claimant_appointee	http://www.italaw.com/cases/1048	Gabrielle Kaufmann-Kohler	0
3129	respondent_appointee	http://www.italaw.com/cases/1048	Pedro Nikken	0
3130	chair_president	http://www.italaw.com/cases/1048	Jeswald Salacuse	0
3131	claimant_appointee	http://www.italaw.com/cases/1048	Gabrielle Kaufmann-Kohler	1
3132	respondent_appointee	http://www.italaw.com/cases/1048	Pedro Nikken	1
3133	chair_president	http://www.italaw.com/cases/1048	Jeswald Salacuse	1
3134	claimant_appointee	http://www.italaw.com/cases/1048	Gabrielle Kaufmann-Kohler	2
3135	respondent_appointee	http://www.italaw.com/cases/1048	Pedro Nikken	2
3136	chair_president	http://www.italaw.com/cases/1048	Jeswald Salacuse	2
3137	claimant_appointee	http://www.italaw.com/cases/1048	Gabrielle Kaufmann-Kohler	3
3138	respondent_appointee	http://www.italaw.com/cases/1048	Pedro Nikken	3
3139	chair_president	http://www.italaw.com/cases/1048	Jeswald Salacuse	3
3140	respondent_appointee	http://www.italaw.com/cases/1048	Pedro Nikken	4
3141	chair_president	http://www.italaw.com/cases/1048	Jeswald Salacuse	4
3142	respondent_appointee	http://www.italaw.com/cases/1048	Pedro Nikken	5
3143	chair_president	http://www.italaw.com/cases/1048	Jeswald Salacuse	5
3144	claimant_appointee	http://www.italaw.com/cases/1048	Gabrielle Kaufmann-Kohler	6
3145	respondent_appointee	http://www.italaw.com/cases/1048	Pedro Nikken	6
3146	chair_president	http://www.italaw.com/cases/1048	Jeswald Salacuse	6
3147	respondent_appointee	http://www.italaw.com/cases/1048	Pedro Nikken	7
3148	claimant	http://www.italaw.com/cases/1057	Suez	\N
3149	claimant	http://www.italaw.com/cases/1057	Vivendi Universal	\N
3150	claimant	http://www.italaw.com/cases/1057	S.A.	\N
3151	respondent_state	http://www.italaw.com/cases/1057	Argentina	\N
3152	investment_treaty	http://www.italaw.com/cases/1057	Argentina-France BIT	\N
3153	investment_treaty	http://www.italaw.com/cases/1057	Argentina-Spain BIT	\N
3154	claimant_appointee	http://www.italaw.com/cases/1057	Gabrielle Kaufmann-Kohler	0
3155	respondent_appointee	http://www.italaw.com/cases/1057	Pedro Nikken	0
3156	chair_president	http://www.italaw.com/cases/1057	Jeswald Salacuse	0
3157	claimant_appointee	http://www.italaw.com/cases/1057	Gabrielle Kaufmann-Kohler	1
3158	respondent_appointee	http://www.italaw.com/cases/1057	Pedro Nikken	1
3159	chair_president	http://www.italaw.com/cases/1057	Jeswald Salacuse	1
3160	claimant_appointee	http://www.italaw.com/cases/1057	Gabrielle Kaufmann-Kohler	2
3161	respondent_appointee	http://www.italaw.com/cases/1057	Pedro Nikken	2
3162	chair_president	http://www.italaw.com/cases/1057	Jeswald Salacuse	2
3163	claimant_appointee	http://www.italaw.com/cases/1057	Gabrielle Kaufmann-Kohler	3
3164	respondent_appointee	http://www.italaw.com/cases/1057	Pedro Nikken	3
3165	chair_president	http://www.italaw.com/cases/1057	Jeswald Salacuse	3
3166	claimant_appointee	http://www.italaw.com/cases/1057	Gabrielle Kaufmann-Kohler	4
3167	respondent_appointee	http://www.italaw.com/cases/1057	Pedro Nikken	4
3168	chair_president	http://www.italaw.com/cases/1057	Jeswald Salacuse	4
3169	respondent_appointee	http://www.italaw.com/cases/1057	Pedro Nikken	5
3170	chair_president	http://www.italaw.com/cases/1057	Jeswald Salacuse	5
3171	claimant_appointee	http://www.italaw.com/cases/1057	Gabrielle Kaufmann-Kohler	6
3172	respondent_appointee	http://www.italaw.com/cases/1057	Pedro Nikken	6
3173	chair_president	http://www.italaw.com/cases/1057	Jeswald Salacuse	6
3174	respondent_appointee	http://www.italaw.com/cases/1057	Pedro Nikken	7
3175	claimant	http://www.italaw.com/cases/1066	Swembalt AB	\N
3176	claimant	http://www.italaw.com/cases/1066	Sweden	\N
3177	respondent_state	http://www.italaw.com/cases/1066	Latvia	\N
3178	investment_treaty	http://www.italaw.com/cases/1066	Latvia-Sweden BIT	\N
3179	claimant_appointee	http://www.italaw.com/cases/1066	Kaj Hobér	0
3180	arbitrator	http://www.italaw.com/cases/1066	Gustaf Moller	0
3181	chair_president	http://www.italaw.com/cases/1066	Allan Philip	0
3182	country_in_which_this_occurs	http://www.italaw.com/cases/1066	Sweden	1
3183	country_in_which_this_occurs	http://www.italaw.com/cases/1066	Denmark	2
3184	claimant	http://www.italaw.com/cases/1070	Tamimi	\N
3185	respondent_state	http://www.italaw.com/cases/1070	Oman	\N
3186	investment_treaty	http://www.italaw.com/cases/1070	Oman-United States FTA	\N
3187	claimant_appointee	http://www.italaw.com/cases/1070	Charles Brower	1
3188	respondent_appointee	http://www.italaw.com/cases/1070	J. Christopher Thomas	1
3189	chair_president	http://www.italaw.com/cases/1070	David Williams	1
3190	claimant_appointee	http://www.italaw.com/cases/1070	Charles Brower	2
3191	respondent_appointee	http://www.italaw.com/cases/1070	J. Christopher Thomas	2
3192	chair_president	http://www.italaw.com/cases/1070	David Williams	2
3193	claimant_appointee	http://www.italaw.com/cases/1070	Charles Brower	4
3194	respondent_appointee	http://www.italaw.com/cases/1070	J. Christopher Thomas	4
3195	chair_president	http://www.italaw.com/cases/1070	David Williams	4
3196	claimant_appointee	http://www.italaw.com/cases/1070	Charles Brower	5
3197	respondent_appointee	http://www.italaw.com/cases/1070	J. Christopher Thomas	5
3198	chair_president	http://www.italaw.com/cases/1070	David Williams	5
3199	claimant_appointee	http://www.italaw.com/cases/1070	Charles Brower	6
3200	respondent_appointee	http://www.italaw.com/cases/1070	J. Christopher Thomas	6
3201	chair_president	http://www.italaw.com/cases/1070	David Williams	6
3202	claimant_appointee	http://www.italaw.com/cases/1070	Charles Brower	7
3203	respondent_appointee	http://www.italaw.com/cases/1070	J. Christopher Thomas	7
3204	chair_president	http://www.italaw.com/cases/1070	David Williams	7
3205	claimant_appointee	http://www.italaw.com/cases/1070	Charles Brower	8
3206	respondent_appointee	http://www.italaw.com/cases/1070	J. Christopher Thomas	8
3207	chair_president	http://www.italaw.com/cases/1070	David Williams	8
3208	claimant_appointee	http://www.italaw.com/cases/1070	Charles Brower	9
3209	respondent_appointee	http://www.italaw.com/cases/1070	J. Christopher Thomas	9
3210	chair_president	http://www.italaw.com/cases/1070	David Williams	9
3211	claimant_appointee	http://www.italaw.com/cases/1070	Charles Brower	10
3212	respondent_appointee	http://www.italaw.com/cases/1070	J. Christopher Thomas	10
3213	chair_president	http://www.italaw.com/cases/1070	David Williams	10
3214	claimant_appointee	http://www.italaw.com/cases/1070	Charles Brower	11
3215	respondent_appointee	http://www.italaw.com/cases/1070	J. Christopher Thomas	11
3216	chair_president	http://www.italaw.com/cases/1070	David Williams	11
3217	claimant_appointee	http://www.italaw.com/cases/1070	Charles Brower	12
3218	respondent_appointee	http://www.italaw.com/cases/1070	J. Christopher Thomas	12
3219	chair_president	http://www.italaw.com/cases/1070	David Williams	12
3220	claimant	http://www.italaw.com/cases/1072	Tanmiah	\N
3221	respondent_state	http://www.italaw.com/cases/1072	Tunisia	\N
3222	investment_treaty	http://www.italaw.com/cases/1072	Arab Investment Agreement	\N
3223	claimant	http://www.italaw.com/cases/1074	TCW Group	\N
3224	claimant	http://www.italaw.com/cases/1074	Inc	\N
3225	claimant	http://www.italaw.com/cases/1074	Dominican Energy Holdings	\N
3226	claimant	http://www.italaw.com/cases/1074	L.P.	\N
3227	respondent_state	http://www.italaw.com/cases/1074	Dominican Republic	\N
3228	investment_treaty	http://www.italaw.com/cases/1074	CAFTA	\N
3229	claimant_appointee	http://www.italaw.com/cases/1074	Thomas Wälde	4
3230	respondent_appointee	http://www.italaw.com/cases/1074	Juan Fernández-Armesto	4
3231	chair_president	http://www.italaw.com/cases/1074	Karl-Heinz Böckstiegel	4
3232	claimant_appointee	http://www.italaw.com/cases/1074	Thomas Wälde	6
3233	respondent_appointee	http://www.italaw.com/cases/1074	Juan Fernández-Armesto	6
3234	chair_president	http://www.italaw.com/cases/1074	Karl-Heinz Böckstiegel	6
3235	claimant_appointee	http://www.italaw.com/cases/1074	Mark Kantor	8
3236	respondent_appointee	http://www.italaw.com/cases/1074	Juan Fernández-Armesto	8
3237	chair_president	http://www.italaw.com/cases/1074	Karl-Heinz Böckstiegel	8
3238	claimant_appointee	http://www.italaw.com/cases/1074	Mark Kantor	10
3239	respondent_appointee	http://www.italaw.com/cases/1074	Juan Fernández-Armesto	10
3240	chair_president	http://www.italaw.com/cases/1074	Karl-Heinz Böckstiegel	10
3241	claimant_appointee	http://www.italaw.com/cases/1074	Mark Kantor	11
3242	respondent_appointee	http://www.italaw.com/cases/1074	Juan Fernández-Armesto	11
3243	chair_president	http://www.italaw.com/cases/1074	Karl-Heinz Böckstiegel	11
3244	claimant	http://www.italaw.com/cases/1087	Técnicas Medioambientales Tecmed	\N
3245	claimant	http://www.italaw.com/cases/1087	S.A.	\N
3246	respondent_state	http://www.italaw.com/cases/1087	Mexico	\N
3247	investment_treaty	http://www.italaw.com/cases/1087	Mexico-Spain BIT	\N
3248	claimant_appointee	http://www.italaw.com/cases/1087	José Carlos Fernández Rosas	0
3249	respondent_appointee	http://www.italaw.com/cases/1087	Carlos Bernal Verea	0
3250	chair_president	http://www.italaw.com/cases/1087	Horacio Grigera Naón	0
3251	claimant	http://www.italaw.com/cases/1089	Telefónica S.A.	\N
3252	respondent_state	http://www.italaw.com/cases/1089	Argentina	\N
3253	investment_treaty	http://www.italaw.com/cases/1089	Argentina-Spain BIT	\N
3254	claimant_appointee	http://www.italaw.com/cases/1089	Charles Brower	0
3255	respondent_appointee	http://www.italaw.com/cases/1089	Eduardo Siqueiros	0
3256	chair_president	http://www.italaw.com/cases/1089	Giorgio Sacerdoti	0
3257	claimant	http://www.italaw.com/cases/1091	Telekom Malaysia Berhad	\N
3258	respondent_state	http://www.italaw.com/cases/1091	Ghana	\N
3259	investment_treaty	http://www.italaw.com/cases/1091	Ghana-Malaysia BIT	\N
3260	claimant	http://www.italaw.com/cases/1093	Telenor Mobile Communications A.S.	\N
3261	respondent_state	http://www.italaw.com/cases/1093	Hungary	\N
3262	investment_treaty	http://www.italaw.com/cases/1093	Hungary-Norway BIT	\N
3263	claimant_appointee	http://www.italaw.com/cases/1093	Nicholas Allard	0
3264	respondent_appointee	http://www.italaw.com/cases/1093	Arthur Marriott	0
3265	chair_president	http://www.italaw.com/cases/1093	Roy Good	0
3266	claimant	http://www.italaw.com/cases/1096	Tidewater Inc.	\N
3267	claimant	http://www.italaw.com/cases/1096	Point Marine	\N
3268	claimant	http://www.italaw.com/cases/1096	L.L.C.	\N
3269	claimant	http://www.italaw.com/cases/1096	Jackson Marine	\N
3270	claimant	http://www.italaw.com/cases/1096	Zapata Gulf Marine Operators	\N
3271	respondent_state	http://www.italaw.com/cases/1096	Venezuela	\N
3272	investment_treaty	http://www.italaw.com/cases/1096	Barbados-Venezuela BIT	\N
3273	claimant_appointee	http://www.italaw.com/cases/1096	Andrés Rigo Sureda	0
3274	chair_president	http://www.italaw.com/cases/1096	Campbell McLachlan	0
3275	claimant_appointee	http://www.italaw.com/cases/1096	Andrés Rigo Sureda	1
3276	respondent_appointee	http://www.italaw.com/cases/1096	Brigitte Stern	1
3277	chair_president	http://www.italaw.com/cases/1096	Campbell McLachlan	1
3278	claimant_appointee	http://www.italaw.com/cases/1096	Andrés Rigo Sureda	2
3279	respondent_appointee	http://www.italaw.com/cases/1096	Brigitte Stern	2
3280	chair_president	http://www.italaw.com/cases/1096	Campbell McLachlan	2
3281	arbitrator	http://www.italaw.com/cases/1096	Andrés Rigo Sureda	3
3282	arbitrator	http://www.italaw.com/cases/1096	Brigitte Stern	3
3283	chair_president	http://www.italaw.com/cases/1096	Campbell McLachlan	3
3284	claimant	http://www.italaw.com/cases/1099	Tokios Tokelés	\N
3285	respondent_state	http://www.italaw.com/cases/1099	Ukraine	\N
3286	investment_treaty	http://www.italaw.com/cases/1099	Lithuania-Ukraine BIT	\N
3287	claimant_appointee	http://www.italaw.com/cases/1099	Daniel Price	0
3288	respondent_appointee	http://www.italaw.com/cases/1099	Piero Bernardini	0
3289	chair_president	http://www.italaw.com/cases/1099	Prosper Weil	0
3290	claimant_appointee	http://www.italaw.com/cases/1099	Daniel Price	1
3291	respondent_appointee	http://www.italaw.com/cases/1099	Piero Bernardini	1
3292	chair_president	http://www.italaw.com/cases/1099	Prosper Weil	2
3293	claimant_appointee	http://www.italaw.com/cases/1099	Daniel Price	3
3294	respondent_appointee	http://www.italaw.com/cases/1099	Piero Bernardini	3
3295	chair_president	http://www.italaw.com/cases/1099	Lord Mustill	3
3296	claimant_appointee	http://www.italaw.com/cases/1099	Daniel Price	4
3297	respondent_appointee	http://www.italaw.com/cases/1099	Piero Bernardini	4
3298	chair_president	http://www.italaw.com/cases/1099	Lord Mustill	4
3299	claimant	http://www.italaw.com/cases/1105	Total S.A.	\N
3300	respondent_state	http://www.italaw.com/cases/1105	Argentina	\N
3301	investment_treaty	http://www.italaw.com/cases/1105	Argentina-France BIT	\N
3302	claimant_appointee	http://www.italaw.com/cases/1105	Henri Alvarez	0
3303	respondent_appointee	http://www.italaw.com/cases/1105	Luis Herrera Marcano	0
3304	chair_president	http://www.italaw.com/cases/1105	Giorgio Sacerdoti	0
3305	claimant_appointee	http://www.italaw.com/cases/1105	Henri Alvarez	1
3306	respondent_appointee	http://www.italaw.com/cases/1105	Luis Herrera Marcano	1
3307	chair_president	http://www.italaw.com/cases/1105	Giorgio Sacerdoti	1
3308	claimant_appointee	http://www.italaw.com/cases/1105	Henri Alvarez	2
3309	respondent_appointee	http://www.italaw.com/cases/1105	Luis Herrera Marcano	3
3310	arbitrator	http://www.italaw.com/cases/1105	Henri Alvarez	4
3311	arbitrator	http://www.italaw.com/cases/1105	Luis Herrera Marcano	4
3312	chair_president	http://www.italaw.com/cases/1105	Giorgio Sacerdoti	4
3313	claimant	http://www.italaw.com/cases/1108	Toto Costruzioni Generali S.p.A.	\N
3314	respondent_state	http://www.italaw.com/cases/1108	Lebanon	\N
3315	investment_treaty	http://www.italaw.com/cases/1108	Italy-Lebanon BIT	\N
3316	claimant_appointee	http://www.italaw.com/cases/1108	Alberto Feliciani	0
3317	respondent_appointee	http://www.italaw.com/cases/1108	Fadi Moghaizel	0
3318	chair_president	http://www.italaw.com/cases/1108	Hans van Houtte	0
3319	arbitrator	http://www.italaw.com/cases/1108	Stephen Schwebel	1
3320	respondent_appointee	http://www.italaw.com/cases/1108	Fadi Moghaizel	2
3321	arbitrator	http://www.italaw.com/cases/1108	Stephen Schwebel	2
3322	chair_president	http://www.italaw.com/cases/1108	Hans van Houtte	2
3323	claimant	http://www.italaw.com/cases/1110	Tradex Hellas S.A.	\N
3324	respondent_state	http://www.italaw.com/cases/1110	Albania	\N
3325	claimant_appointee	http://www.italaw.com/cases/1110	Fred Fielding	0
3326	arbitrator	http://www.italaw.com/cases/1110	Andrea Giardina	0
3327	chair_president	http://www.italaw.com/cases/1110	Karl-Heinz Böckstiegel	0
3328	claimant_appointee	http://www.italaw.com/cases/1110	Fred Fielding	1
3329	arbitrator	http://www.italaw.com/cases/1110	Andrea Giardina	1
3330	chair_president	http://www.italaw.com/cases/1110	Karl-Heinz Böckstiegel	1
3331	claimant	http://www.italaw.com/cases/1113	Trans-Global Petroleum	\N
3332	claimant	http://www.italaw.com/cases/1113	Inc.	\N
3333	respondent_state	http://www.italaw.com/cases/1113	Jordan	\N
3334	investment_treaty	http://www.italaw.com/cases/1113	Jordan-United States BIT	\N
3335	claimant_appointee	http://www.italaw.com/cases/1113	Donald McRae	0
3336	respondent_appointee	http://www.italaw.com/cases/1113	James Crawford	0
3337	chair_president	http://www.italaw.com/cases/1113	V.V. Veeder	0
3338	claimant_appointee	http://www.italaw.com/cases/1113	Donald McRae	1
3339	respondent_appointee	http://www.italaw.com/cases/1113	James Crawford	1
3340	chair_president	http://www.italaw.com/cases/1113	V.V. Veeder	1
3341	claimant	http://www.italaw.com/cases/1118	TSA Spectrum de Argentina S.A.	\N
3342	respondent_state	http://www.italaw.com/cases/1118	Argentina	\N
3343	investment_treaty	http://www.italaw.com/cases/1118	Argentina-Netherlands BIT	\N
3344	claimant_appointee	http://www.italaw.com/cases/1118	Grant Aldonas	0
3345	respondent_appointee	http://www.italaw.com/cases/1118	Georges Abi-Saab	0
3346	chair_president	http://www.italaw.com/cases/1118	Hans Danelius	0
3347	respondent_appointee	http://www.italaw.com/cases/1118	Georges Abi-Saab	1
3348	claimant_appointee	http://www.italaw.com/cases/1118	Grant Aldonas	2
3349	claimant	http://www.italaw.com/cases/1122	TS Investment Corp.	\N
3350	respondent_state	http://www.italaw.com/cases/1122	Armenia	\N
3351	investment_treaty	http://www.italaw.com/cases/1122	Armenia-United States BIT	\N
3352	claimant	http://www.italaw.com/cases/1124	Tulip Real Estate and Development Netherlands B.V.	\N
3353	respondent_state	http://www.italaw.com/cases/1124	Turkey	\N
3354	investment_treaty	http://www.italaw.com/cases/1124	Netherlands-Turkey BIT	\N
3355	claimant_appointee	http://www.italaw.com/cases/1124	Michael Evan Jaffe	1
3356	respondent_appointee	http://www.italaw.com/cases/1124	Rolf Knieper	1
3357	chair_president	http://www.italaw.com/cases/1124	Gavan Griffith	1
3358	claimant_appointee	http://www.italaw.com/cases/1124	Michael Evan Jaffe	2
3359	respondent_appointee	http://www.italaw.com/cases/1124	Rolf Knieper	2
3360	chair_president	http://www.italaw.com/cases/1124	Gavan Griffith	2
3361	claimant_appointee	http://www.italaw.com/cases/1124	Michael Evan Jaffe	3
3362	respondent_appointee	http://www.italaw.com/cases/1124	Rolf Knieper	4
3363	chair_president	http://www.italaw.com/cases/1124	Gavan Griffith	4
3364	claimant	http://www.italaw.com/cases/1126	Tza Yap Shum	\N
3365	respondent_state	http://www.italaw.com/cases/1126	Peru	\N
3366	investment_treaty	http://www.italaw.com/cases/1126	China-Peru BIT	\N
3367	other_expert	http://www.italaw.com/cases/1126	An Chen	1
3368	claimant_appointee	http://www.italaw.com/cases/1126	Hernando Otero	2
3369	respondent_appointee	http://www.italaw.com/cases/1126	Juan Fernández-Armesto	2
3370	chair_president	http://www.italaw.com/cases/1126	Judd Kessler	2
3371	claimant_appointee	http://www.italaw.com/cases/1126	Hernando Otero	3
3372	respondent_appointee	http://www.italaw.com/cases/1126	Juan Fernández-Armesto	3
3373	chair_president	http://www.italaw.com/cases/1126	Judd Kessler	3
3374	arbitrator	http://www.italaw.com/cases/1126	Donald McRae	4
3375	arbitrator	http://www.italaw.com/cases/1126	Kaj Hobér	4
3376	chair_president	http://www.italaw.com/cases/1126	Juez Dominique Hascher	4
3377	claimant	http://www.italaw.com/cases/1130	Ulemek	\N
3378	respondent_state	http://www.italaw.com/cases/1130	Croatia	\N
3379	investment_treaty	http://www.italaw.com/cases/1130	Canada-Croatia BIT	\N
3380	claimant	http://www.italaw.com/cases/1132	Ulysseas	\N
3381	claimant	http://www.italaw.com/cases/1132	Inc.	\N
3382	respondent_state	http://www.italaw.com/cases/1132	Ecuador	\N
3383	investment_treaty	http://www.italaw.com/cases/1132	Ecuador-United States BIT	\N
3384	claimant_appointee	http://www.italaw.com/cases/1132	Michael Pryles	0
3385	respondent_appointee	http://www.italaw.com/cases/1132	Brigitte Stern	0
3386	chair_president	http://www.italaw.com/cases/1132	Piero Bernardini	0
3387	claimant_appointee	http://www.italaw.com/cases/1132	Michael Pryles	1
3388	respondent_appointee	http://www.italaw.com/cases/1132	Brigitte Stern	1
3389	chair_president	http://www.italaw.com/cases/1132	Piero Bernardini	1
3390	claimant	http://www.italaw.com/cases/1134	Unglaube	\N
3391	respondent_state	http://www.italaw.com/cases/1134	Costa Rica	\N
3392	investment_treaty	http://www.italaw.com/cases/1134	Costa Rica-Germany BIT	\N
3393	claimant_appointee	http://www.italaw.com/cases/1134	Franklin Berman	0
3394	respondent_appointee	http://www.italaw.com/cases/1134	Bernardo Cremades	0
3395	chair_president	http://www.italaw.com/cases/1134	Judd Kessler	0
3396	claimant	http://www.italaw.com/cases/1136	Unglaube	\N
3397	respondent_state	http://www.italaw.com/cases/1136	Costa Rica	\N
3398	investment_treaty	http://www.italaw.com/cases/1136	Costa Rica-Germany BIT	\N
3399	claimant_appointee	http://www.italaw.com/cases/1136	Franklin Berman	0
3400	respondent_appointee	http://www.italaw.com/cases/1136	Bernardo Cremades	0
3401	chair_president	http://www.italaw.com/cases/1136	Judd Kessler	0
3402	claimant	http://www.italaw.com/cases/1138	United Parcel Service of America Inc.	\N
3403	respondent_state	http://www.italaw.com/cases/1138	Canada	\N
3404	investment_treaty	http://www.italaw.com/cases/1138	NAFTA	\N
3405	arbitrator	http://www.italaw.com/cases/1138	L. Yves Fortier	0
3406	arbitrator	http://www.italaw.com/cases/1138	Ronald Cass	0
3407	chair_president	http://www.italaw.com/cases/1138	Kenneth Keith	0
3408	arbitrator	http://www.italaw.com/cases/1138	L. Yves Fortier	1
3409	arbitrator	http://www.italaw.com/cases/1138	Ronald Cass	1
3410	chair_president	http://www.italaw.com/cases/1138	Kenneth Keith	1
3411	arbitrator	http://www.italaw.com/cases/1138	L. Yves Fortier	2
3412	arbitrator	http://www.italaw.com/cases/1138	Ronald Cass	2
3413	chair_president	http://www.italaw.com/cases/1138	Kenneth Keith	2
3414	claimant	http://www.italaw.com/cases/1141	Universal Compression International Holdings	\N
3415	claimant	http://www.italaw.com/cases/1141	S.L.U.	\N
3416	respondent_state	http://www.italaw.com/cases/1141	Venezuela	\N
3417	investment_treaty	http://www.italaw.com/cases/1141	Spain-Venezuela BIT	\N
3418	claimant_appointee	http://www.italaw.com/cases/1141	Guido Santiago Tawil	1
3419	respondent_appointee	http://www.italaw.com/cases/1141	Brigitte Stern	1
3420	chair_president	http://www.italaw.com/cases/1141	J. William Rowley	1
3421	claimant	http://www.italaw.com/cases/1144	Urbaser S.A.	\N
3422	claimant	http://www.italaw.com/cases/1144	Consorcio de Aguas Bilbao Bizkaia	\N
3423	claimant	http://www.italaw.com/cases/1144	Bilbao Biskaia Ur Partzuergoa	\N
3424	respondent_state	http://www.italaw.com/cases/1144	Argentina	\N
3425	investment_treaty	http://www.italaw.com/cases/1144	Argentina-Spain BIT	\N
3426	claimant_appointee	http://www.italaw.com/cases/1144	Pedro Martinez-Fraga	0
3427	chair_president	http://www.italaw.com/cases/1144	Andreas Bucher	0
3428	claimant_appointee	http://www.italaw.com/cases/1144	Pedro Martinez-Fraga	1
3429	respondent_appointee	http://www.italaw.com/cases/1144	Campbell McLachlan	1
3430	chair_president	http://www.italaw.com/cases/1144	Andreas Bucher	1
3431	claimant	http://www.italaw.com/cases/1146	Vanessa Ventures Ltd.	\N
3432	respondent_state	http://www.italaw.com/cases/1146	Venezuela	\N
3433	investment_treaty	http://www.italaw.com/cases/1146	Canada-Venezuela BIT	\N
3434	claimant_appointee	http://www.italaw.com/cases/1146	Charles Brower	0
3435	respondent_appointee	http://www.italaw.com/cases/1146	Brigitte Stern	0
3436	chair_president	http://www.italaw.com/cases/1146	Robert Briner	0
3437	claimant_appointee	http://www.italaw.com/cases/1146	Charles Brower	1
3438	respondent_appointee	http://www.italaw.com/cases/1146	Brigitte Stern	1
3439	chair_president	http://www.italaw.com/cases/1146	Vaughan Lowe	1
3440	claimant	http://www.italaw.com/cases/1148	Vattenfall AB	\N
3441	respondent_state	http://www.italaw.com/cases/1148	Germany	\N
3442	investment_treaty	http://www.italaw.com/cases/1148	Energy Charter Treaty (ECT)	\N
3443	claimant_appointee	http://www.italaw.com/cases/1148	Gabrielle Kaufmann-Kohler	1
3444	respondent_appointee	http://www.italaw.com/cases/1148	Franklin Berman	1
3445	chair_president	http://www.italaw.com/cases/1148	Marc Lalonde	1
3446	claimant	http://www.italaw.com/cases/1151	Veteran Petroleum Limited (Cyprus)	\N
3447	respondent_state	http://www.italaw.com/cases/1151	Russian Federation	\N
3448	investment_treaty	http://www.italaw.com/cases/1151	Energy Charter Treaty (ECT)	\N
3449	other_expert	http://www.italaw.com/cases/1151	Igor Lukashuk	0
3450	other_expert	http://www.italaw.com/cases/1151	Suren Avakiyan	1
3451	other_expert	http://www.italaw.com/cases/1151	Alexey Kostin	2
3452	other_expert	http://www.italaw.com/cases/1151	Andrey Lisitsyn-Svetlanov	3
3453	other_expert	http://www.italaw.com/cases/1151	Yevgeny Sukhanov	4
3454	other_expert	http://www.italaw.com/cases/1151	Marat Baglay	5
3455	other_expert	http://www.italaw.com/cases/1151	James Crawford	6
3456	other_expert	http://www.italaw.com/cases/1151	Michael Reisman	7
3457	other_expert	http://www.italaw.com/cases/1151	Vladimir Gladyshev	8
3458	other_expert	http://www.italaw.com/cases/1151	Martti Koskenniemi	9
3459	other_expert	http://www.italaw.com/cases/1151	Georg Nolte	10
3460	other_expert	http://www.italaw.com/cases/1151	S.V. Vasilyvev	11
3461	other_expert	http://www.italaw.com/cases/1151	Alain Pellet	12
3462	other_expert	http://www.italaw.com/cases/1151	Anatoly Martynov	13
3463	other_expert	http://www.italaw.com/cases/1151	Gerhard Hafner	14
3464	other_expert	http://www.italaw.com/cases/1151	Angelika Nussberger	15
3465	other_expert	http://www.italaw.com/cases/1151	Myron Nordquist	16
3466	other_expert	http://www.italaw.com/cases/1151	Suren Avakiyan	17
3467	other_expert	http://www.italaw.com/cases/1151	Sydney Fremantle	18
3468	other_expert	http://www.italaw.com/cases/1151	Stephen Knipler	19
3469	other_expert	http://www.italaw.com/cases/1151	Daniel Berman	20
3470	other_expert	http://www.italaw.com/cases/1151	Stef van Weeghel	21
3471	other_expert	http://www.italaw.com/cases/1151	Vladimir Gladyshev	22
3472	other_expert	http://www.italaw.com/cases/1151	James Crawford	23
3473	claimant_appointee	http://www.italaw.com/cases/1151	Charles Poncet	24
3474	respondent_appointee	http://www.italaw.com/cases/1151	Stephen Schwebel	24
3475	chair_president	http://www.italaw.com/cases/1151	L. Yves Fortier	24
3476	respondents_expert	http://www.italaw.com/cases/1151	H. David Rosenbloom	25
3477	claimants_expert	http://www.italaw.com/cases/1151	Philip Baker	26
3478	respondents_expert	http://www.italaw.com/cases/1151	H. David Rosenbloom	27
3479	claimant_appointee	http://www.italaw.com/cases/1151	Charles Poncet	28
3480	respondent_appointee	http://www.italaw.com/cases/1151	Stephen Schwebel	28
3481	chair_president	http://www.italaw.com/cases/1151	L. Yves Fortier	28
3482	respondents_expert	http://www.italaw.com/cases/1151	Anton V. Asoskov	29
3483	respondents_expert	http://www.italaw.com/cases/1151	James Dow	30
3484	country_in_which_this_occurs	http://www.italaw.com/cases/1151	Netherlands	31
3485	claimant	http://www.italaw.com/cases/1153	Vivendi	\N
3486	respondent_state	http://www.italaw.com/cases/1153	Poland	\N
3487	investment_treaty	http://www.italaw.com/cases/1153	France-Poland BIT	\N
3488	claimant	http://www.italaw.com/cases/1155	Waste Management	\N
3489	claimant	http://www.italaw.com/cases/1155	Inc.	\N
3490	respondent_state	http://www.italaw.com/cases/1155	Mexico	\N
3491	investment_treaty	http://www.italaw.com/cases/1155	NAFTA	\N
3492	claimant_appointee	http://www.italaw.com/cases/1155	Keith Highet	0
3493	claimant_appointee	http://www.italaw.com/cases/1155	Keith Highet	1
3494	respondent_appointee	http://www.italaw.com/cases/1155	Eduardo Siqueiros	1
3495	chair_president	http://www.italaw.com/cases/1155	Bernardo Cremades	1
3496	claimant	http://www.italaw.com/cases/1158	Waste Management	\N
3497	claimant	http://www.italaw.com/cases/1158	Inc.	\N
3498	respondent_state	http://www.italaw.com/cases/1158	Mexico	\N
3499	investment_treaty	http://www.italaw.com/cases/1158	NAFTA	\N
3500	claimant_appointee	http://www.italaw.com/cases/1158	Benjamin Civiletti	0
3501	respondent_appointee	http://www.italaw.com/cases/1158	Guillermo Aguilar Alvarez	0
3502	chair_president	http://www.italaw.com/cases/1158	James Crawford	0
3503	claimant_appointee	http://www.italaw.com/cases/1158	Benjamin Civiletti	1
3504	respondent_appointee	http://www.italaw.com/cases/1158	Guillermo Aguilar Alvarez	1
3505	chair_president	http://www.italaw.com/cases/1158	James Crawford	1
3506	claimant_appointee	http://www.italaw.com/cases/1158	Benjamin Civiletti	2
3507	respondent_appointee	http://www.italaw.com/cases/1158	Eduardo Magallón Gómez	2
3508	chair_president	http://www.italaw.com/cases/1158	James Crawford	2
3509	claimant	http://www.italaw.com/cases/1162	Wena Hotels Ltd.	\N
3510	respondent_state	http://www.italaw.com/cases/1162	Egypt	\N
3511	investment_treaty	http://www.italaw.com/cases/1162	Egypt-United Kingdom BIT	\N
3512	claimant_appointee	http://www.italaw.com/cases/1162	Ibrahim Fadlallah	0
3513	respondent_appointee	http://www.italaw.com/cases/1162	Hamzeh Ahmad Haddad	0
3514	chair_president	http://www.italaw.com/cases/1162	Monroe Leigh	0
3515	claimant_appointee	http://www.italaw.com/cases/1162	Ibrahim Fadlallah	1
3516	respondent_appointee	http://www.italaw.com/cases/1162	Hamzeh Ahmad Haddad	1
3517	chair_president	http://www.italaw.com/cases/1162	Monroe Leigh	1
3518	annulment_committee_president	http://www.italaw.com/cases/1162	Konstantinos Kerameus	2
3519	annulment_committee_members	http://www.italaw.com/cases/1162	Andreas Bücher	2
3520	annulment_committee_members	http://www.italaw.com/cases/1162	Francisco Orrego Vicuña	2
3521	claimant_appointee	http://www.italaw.com/cases/1162	Ibrahim Fadlallah	3
3522	respondent_appointee	http://www.italaw.com/cases/1162	Carl Salans	3
3523	chair_president	http://www.italaw.com/cases/1162	Klaus Sachs	3
3524	claimant	http://www.italaw.com/cases/1167	Western NIS Enterprise Fund	\N
3525	respondent_state	http://www.italaw.com/cases/1167	Ukraine	\N
3526	investment_treaty	http://www.italaw.com/cases/1167	Ukraine-United States BIT	\N
3527	arbitrator	http://www.italaw.com/cases/1167	Jan Paulsson	0
3528	arbitrator	http://www.italaw.com/cases/1167	Michael Pryles	0
3529	chair_president	http://www.italaw.com/cases/1167	Rodrigo Oreamuno Blanco	0
3530	claimant	http://www.italaw.com/cases/1169	White Industries Australia Limited	\N
3531	respondent_state	http://www.italaw.com/cases/1169	India	\N
3532	investment_treaty	http://www.italaw.com/cases/1169	Australia-India BIT	\N
3533	claimant_appointee	http://www.italaw.com/cases/1169	Charles Brower	0
3534	respondent_appointee	http://www.italaw.com/cases/1169	Christopher Lau	0
3535	chair_president	http://www.italaw.com/cases/1169	J. William Rowley	0
3536	claimant	http://www.italaw.com/cases/1171	Wintershall Aktiengesellschaft	\N
3537	respondent_state	http://www.italaw.com/cases/1171	Argentina	\N
3538	investment_treaty	http://www.italaw.com/cases/1171	Argentina-Germany BIT	\N
3539	other_expert	http://www.italaw.com/cases/1171	Juan Carlos Cassagne	0
3540	other_expert	http://www.italaw.com/cases/1171	Hector Mairal	1
3541	other_expert	http://www.italaw.com/cases/1171	Christoph Schreuer	2
3542	other_expert	http://www.italaw.com/cases/1171	Christoph Schreuer	3
3543	other_expert	http://www.italaw.com/cases/1171	Christoph Schreuer	4
3544	claimant_appointee	http://www.italaw.com/cases/1171	Piero Bernardini	5
3545	respondent_appointee	http://www.italaw.com/cases/1171	Santiago Torres Bernárdez	5
3546	chair_president	http://www.italaw.com/cases/1171	Fali Nariman	5
3547	claimant	http://www.italaw.com/cases/1173	Yaung Chi Oo Trading Pte. Ltd.	\N
3548	respondent_state	http://www.italaw.com/cases/1173	Myanmar	\N
3549	investment_treaty	http://www.italaw.com/cases/1173	ASEAN Agreement for the Promotion and Protection of Investments	\N
3550	arbitrator	http://www.italaw.com/cases/1173	James Crawford	0
3551	arbitrator	http://www.italaw.com/cases/1173	Francis Delon	0
3552	chair_president	http://www.italaw.com/cases/1173	Sompong Sucharitkul	0
3553	claimant	http://www.italaw.com/cases/1175	Yukos Universal Limited (Isle of Man)	\N
3554	respondent_state	http://www.italaw.com/cases/1175	Russian Federation	\N
3555	investment_treaty	http://www.italaw.com/cases/1175	Energy Charter Treaty (ECT)	\N
3556	other_expert	http://www.italaw.com/cases/1175	Igor Lukashuk	0
3557	other_expert	http://www.italaw.com/cases/1175	Suren Avakiyan	1
3558	other_expert	http://www.italaw.com/cases/1175	Alexey Kostin	2
3559	other_expert	http://www.italaw.com/cases/1175	Andrey Lisitsyn-Svetlanov	3
3560	other_expert	http://www.italaw.com/cases/1175	Yevgeny Sukhanov	4
3561	other_expert	http://www.italaw.com/cases/1175	Marat Baglay	5
3562	other_expert	http://www.italaw.com/cases/1175	James Crawford	6
3563	other_expert	http://www.italaw.com/cases/1175	Michael Reisman	7
3564	other_expert	http://www.italaw.com/cases/1175	Vladimir Gladyshev	8
3565	other_expert	http://www.italaw.com/cases/1175	Martti Koskenniemi	9
3566	other_expert	http://www.italaw.com/cases/1175	Georg Nolte	10
3567	other_expert	http://www.italaw.com/cases/1175	S.V. Vasilyvev	11
3568	other_expert	http://www.italaw.com/cases/1175	Alain Pellet	12
3569	other_expert	http://www.italaw.com/cases/1175	Anatoly Martynov	13
3570	other_expert	http://www.italaw.com/cases/1175	Gerhard Hafner	14
3571	other_expert	http://www.italaw.com/cases/1175	Angelika Nussberger	15
3572	other_expert	http://www.italaw.com/cases/1175	Myron Nordquist	16
3573	other_expert	http://www.italaw.com/cases/1175	Suren Avakiyan	17
3574	other_expert	http://www.italaw.com/cases/1175	Sydney Fremantle	18
3575	other_expert	http://www.italaw.com/cases/1175	Stephen Knipler	19
3576	other_expert	http://www.italaw.com/cases/1175	Daniel Berman	20
3577	other_expert	http://www.italaw.com/cases/1175	Stef van Weeghel	21
3578	other_expert	http://www.italaw.com/cases/1175	Vladimir Gladyshev	22
3579	other_expert	http://www.italaw.com/cases/1175	James Crawford	23
3580	claimant_appointee	http://www.italaw.com/cases/1175	Charles Poncet	24
3581	respondent_appointee	http://www.italaw.com/cases/1175	Stephen Schwebel	24
3582	chair_president	http://www.italaw.com/cases/1175	L. Yves Fortier	24
3583	respondents_expert	http://www.italaw.com/cases/1175	H. David Rosenbloom	25
3584	claimants_expert	http://www.italaw.com/cases/1175	Philip Baker	26
3585	respondents_expert	http://www.italaw.com/cases/1175	H. David Rosenbloom	27
3586	claimant_appointee	http://www.italaw.com/cases/1175	Charles Poncet	28
3587	respondent_appointee	http://www.italaw.com/cases/1175	Stephen Schwebel	28
3588	chair_president	http://www.italaw.com/cases/1175	L. Yves Fortier	28
3589	respondents_expert	http://www.italaw.com/cases/1175	Anton V. Asoskov	30
3590	respondents_expert	http://www.italaw.com/cases/1175	James Dow	31
3591	country_in_which_this_occurs	http://www.italaw.com/cases/1175	Netherlands	32
3592	claimant	http://www.italaw.com/cases/1177	Compagnie International de Maintenance (CIM)	\N
3593	respondent_state	http://www.italaw.com/cases/1177	Ethiopia	\N
3594	investment_treaty	http://www.italaw.com/cases/1177	Ethiopia-France BIT	\N
3595	claimant	http://www.italaw.com/cases/1179	Servier	\N
3596	claimant	http://www.italaw.com/cases/1179	Biofarma	\N
3597	claimant	http://www.italaw.com/cases/1179	Les Laboratoires Servier	\N
3598	claimant	http://www.italaw.com/cases/1179	Arts et Techniques du Progres S.A.S.	\N
3599	respondent_state	http://www.italaw.com/cases/1179	Poland	\N
3600	investment_treaty	http://www.italaw.com/cases/1179	France-Poland BIT	\N
3601	arbitrator	http://www.italaw.com/cases/1179	Bernard Hanotiau	0
3602	arbitrator	http://www.italaw.com/cases/1179	Marc Lalonde	0
3603	chair_president	http://www.italaw.com/cases/1179	William Park	0
3604	arbitrator	http://www.italaw.com/cases/1179	Bernard Hanotiau	1
3605	arbitrator	http://www.italaw.com/cases/1179	Marc Lalonde	1
3606	chair_president	http://www.italaw.com/cases/1179	William Park	1
3607	country_in_which_this_occurs	http://www.italaw.com/cases/1179	Poland	2
3608	country_in_which_this_occurs	http://www.italaw.com/cases/1179	Poland	4
3609	country_in_which_this_occurs	http://www.italaw.com/cases/1179	Poland	5
3610	claimant	http://www.italaw.com/cases/1185	Konsortium Oeconomismus	\N
3611	respondent_state	http://www.italaw.com/cases/1185	Czech Republic	\N
3612	investment_treaty	http://www.italaw.com/cases/1185	Czech Republic-Switzerland BIT	\N
3613	claimant_appointee	http://www.italaw.com/cases/1185	Andreas Ueltzhöffer	0
3614	respondent_appointee	http://www.italaw.com/cases/1185	Sabine Konrad	0
3615	chair_president	http://www.italaw.com/cases/1185	Eduardo Silva Romero	0
3616	claimant_appointee	http://www.italaw.com/cases/1185	Andreas Ueltzhöffer	1
3617	respondent_appointee	http://www.italaw.com/cases/1185	Sabine Konrad	1
3618	chair_president	http://www.italaw.com/cases/1185	Eduardo Silva Romero	1
3619	claimant_appointee	http://www.italaw.com/cases/1185	Andreas Ueltzhöffer	2
3620	respondent_appointee	http://www.italaw.com/cases/1185	Sabine Konrad	2
3621	claimant	http://www.italaw.com/cases/1188	Rizvi	\N
3622	respondent_state	http://www.italaw.com/cases/1188	Indonesia	\N
3623	investment_treaty	http://www.italaw.com/cases/1188	Indonesia-United Kingdom BIT	\N
3624	claimant_appointee	http://www.italaw.com/cases/1188	Joan Donoghue	2
3625	chair_president	http://www.italaw.com/cases/1188	Gavan Griffith	2
3626	claimant_appointee	http://www.italaw.com/cases/1188	Joan Donoghue	3
3627	respondent_appointee	http://www.italaw.com/cases/1188	Muthucumaraswamy Sornarajah	3
3628	chair_president	http://www.italaw.com/cases/1188	Gavan Griffith	3
3629	respondent_appointee	http://www.italaw.com/cases/1188	Muthucumaraswamy Sornarajah	4
3630	claimant_appointee	http://www.italaw.com/cases/1188	Joan Donoghue	5
3631	respondent_appointee	http://www.italaw.com/cases/1188	Muthucumaraswamy Sornarajah	5
3632	chair_president	http://www.italaw.com/cases/1188	Gavan Griffith	5
3633	claimant	http://www.italaw.com/cases/1191	Merck	\N
3634	respondent_state	http://www.italaw.com/cases/1191	Ecuador	\N
3635	investment_treaty	http://www.italaw.com/cases/1191	Ecuador-United States BIT	\N
3636	claimant	http://www.italaw.com/cases/1196	Saint Marys VCNA	\N
3637	claimant	http://www.italaw.com/cases/1196	LLC	\N
3638	respondent_state	http://www.italaw.com/cases/1196	Canada	\N
3639	investment_treaty	http://www.italaw.com/cases/1196	NAFTA	\N
3640	arbitrator	http://www.italaw.com/cases/1196	Brigitte Stern	4
3641	arbitrator	http://www.italaw.com/cases/1196	Richard Stewart	4
3642	chair_president	http://www.italaw.com/cases/1196	Michael Pryles	4
3643	arbitrator	http://www.italaw.com/cases/1196	Brigitte Stern	5
3644	arbitrator	http://www.italaw.com/cases/1196	Richard Stewart	5
3645	chair_president	http://www.italaw.com/cases/1196	Michael Pryles	5
3646	arbitrator	http://www.italaw.com/cases/1196	Brigitte Stern	7
3647	arbitrator	http://www.italaw.com/cases/1196	Richard Stewart	7
3648	chair_president	http://www.italaw.com/cases/1196	Michael Pryles	7
3649	claimant	http://www.italaw.com/cases/1198	Murphy Exploration	\N
3650	respondent_state	http://www.italaw.com/cases/1198	Ecuador	\N
3651	investment_treaty	http://www.italaw.com/cases/1198	Ecuador-United States BIT	\N
3652	claimants_expert	http://www.italaw.com/cases/1198	Steven Ratner	11
3653	respondent_appointee	http://www.italaw.com/cases/1198	Georges Abi-Saab	12
3654	claimant_appointee	http://www.italaw.com/cases/1198	Kaj Hobér	13
3655	chair_president	http://www.italaw.com/cases/1198	Bernard Hanotiau	13
3656	claimant	http://www.italaw.com/cases/1200	Telekom Malaysia Berhad	\N
3657	respondent_state	http://www.italaw.com/cases/1200	Ghana	\N
3658	investment_treaty	http://www.italaw.com/cases/1200	Ghana-Malaysia BIT	\N
3659	claimant	http://www.italaw.com/cases/1217	Mercer International Inc.	\N
3660	respondent_state	http://www.italaw.com/cases/1217	Canada	\N
3661	investment_treaty	http://www.italaw.com/cases/1217	NAFTA	\N
3662	arbitrator	http://www.italaw.com/cases/1217	Zachary Douglas	2
3663	arbitrator	http://www.italaw.com/cases/1217	Francisco Orrego Vicuña	2
3664	chair_president	http://www.italaw.com/cases/1217	V.V. Veeder	2
3665	arbitrator	http://www.italaw.com/cases/1217	Zachary Douglas	3
3666	arbitrator	http://www.italaw.com/cases/1217	Francisco Orrego Vicuña	3
3667	chair_president	http://www.italaw.com/cases/1217	V.V. Veeder	3
3668	arbitrator	http://www.italaw.com/cases/1217	Zachary Douglas	4
3669	arbitrator	http://www.italaw.com/cases/1217	Francisco Orrego Vicuña	4
3670	chair_president	http://www.italaw.com/cases/1217	V.V. Veeder	4
3671	arbitrator	http://www.italaw.com/cases/1217	Zachary Douglas	5
3672	arbitrator	http://www.italaw.com/cases/1217	Francisco Orrego Vicuña	5
3673	chair_president	http://www.italaw.com/cases/1217	V.V. Veeder	5
3674	claimant_appointee	http://www.italaw.com/cases/1217	Francisco Orrego Vicuña	6
3675	respondent_appointee	http://www.italaw.com/cases/1217	Zachary Douglas	6
3676	chair_president	http://www.italaw.com/cases/1217	V.V. Veeder	6
3677	claimant_appointee	http://www.italaw.com/cases/1217	Francisco Orrego Vicuña	7
3678	respondent_appointee	http://www.italaw.com/cases/1217	Zachary Douglas	7
3679	chair_president	http://www.italaw.com/cases/1217	V.V. Veeder	7
3680	arbitrator	http://www.italaw.com/cases/1217	Francisco Orrego Vicuña	27
3681	arbitrator	http://www.italaw.com/cases/1217	Zachary Douglas	27
3682	chair_president	http://www.italaw.com/cases/1217	V.V. Veeder	27
3683	judges	http://www.italaw.com/cases/1217	Treaty Interpretation by Domestic Courts	31
3684	claimant	http://www.italaw.com/cases/1220	Kılıç İnşaat İthalat İhracat Sanayi ve Ticaret Anonim Şirketi	\N
3685	respondent_state	http://www.italaw.com/cases/1220	Turkmenistan	\N
3686	investment_treaty	http://www.italaw.com/cases/1220	Turkey-Turkmenistan BIT	\N
3687	claimant_appointee	http://www.italaw.com/cases/1220	William Park	0
3688	respondent_appointee	http://www.italaw.com/cases/1220	Philippe Sands	0
3689	chair_president	http://www.italaw.com/cases/1220	J. William Rowley	0
3690	claimant_appointee	http://www.italaw.com/cases/1220	William Park	1
3691	respondent_appointee	http://www.italaw.com/cases/1220	Philippe Sands	1
3692	chair_president	http://www.italaw.com/cases/1220	J. William Rowley	1
3693	claimant_appointee	http://www.italaw.com/cases/1220	William Park	2
3694	respondent_appointee	http://www.italaw.com/cases/1220	Philippe Sands	2
3695	chair_president	http://www.italaw.com/cases/1220	J. William Rowley	2
3696	claimant	http://www.italaw.com/cases/1222	Oostergetel	\N
3698	respondent_state	http://www.italaw.com/cases/1222	Slovak Republic	\N
3699	investment_treaty	http://www.italaw.com/cases/1222	Netherlands-Slovak Repubic BIT	\N
3700	claimant_appointee	http://www.italaw.com/cases/1222	Mikhail Wladimiroff	0
3701	respondent_appointee	http://www.italaw.com/cases/1222	Vojtěch Trapl	0
3702	chair_president	http://www.italaw.com/cases/1222	Gabrielle Kaufmann-Kohler	0
3703	claimant_appointee	http://www.italaw.com/cases/1222	Mikhail Wladimiroff	1
3704	respondent_appointee	http://www.italaw.com/cases/1222	Vojtěch Trapl	1
3705	chair_president	http://www.italaw.com/cases/1222	Gabrielle Kaufmann-Kohler	1
3706	claimant	http://www.italaw.com/cases/1225	Mobil Investments Canada Inc.	\N
3707	respondent_state	http://www.italaw.com/cases/1225	Canada	\N
3708	investment_treaty	http://www.italaw.com/cases/1225	NAFTA	\N
3709	claimant_appointee	http://www.italaw.com/cases/1225	Merit Janow	2
3710	respondent_appointee	http://www.italaw.com/cases/1225	Philippe Sands	2
3711	chair_president	http://www.italaw.com/cases/1225	Hans van Houtte	2
3712	claimant_appointee	http://www.italaw.com/cases/1225	Merit Janow	3
3713	respondent_appointee	http://www.italaw.com/cases/1225	Philippe Sands	3
3714	chair_president	http://www.italaw.com/cases/1225	Hans van Houtte	3
3715	claimant_appointee	http://www.italaw.com/cases/1225	Merit Janow	5
3716	respondent_appointee	http://www.italaw.com/cases/1225	Philippe Sands	5
3717	chair_president	http://www.italaw.com/cases/1225	Hans van Houtte	5
3718	claimant_appointee	http://www.italaw.com/cases/1225	Merit Janow	6
3719	respondent_appointee	http://www.italaw.com/cases/1225	Philippe Sands	6
3720	chair_president	http://www.italaw.com/cases/1225	Hans van Houtte	6
3721	claimant_appointee	http://www.italaw.com/cases/1225	Merit Janow	16
3722	respondent_appointee	http://www.italaw.com/cases/1225	Philippe Sands	16
3723	chair_president	http://www.italaw.com/cases/1225	Hans van Houtte	16
3724	claimant_appointee	http://www.italaw.com/cases/1225	Merit Janow	17
3725	respondent_appointee	http://www.italaw.com/cases/1225	Philippe Sands	17
3726	chair_president	http://www.italaw.com/cases/1225	Hans van Houtte	17
3727	claimant_appointee	http://www.italaw.com/cases/1225	Merit Janow	18
3728	respondent_appointee	http://www.italaw.com/cases/1225	Philippe Sands	18
3729	chair_president	http://www.italaw.com/cases/1225	Hans van Houtte	18
3730	claimant_appointee	http://www.italaw.com/cases/1225	Merit Janow	19
3731	respondent_appointee	http://www.italaw.com/cases/1225	Philippe Sands	19
3732	chair_president	http://www.italaw.com/cases/1225	Hans van Houtte	19
3733	claimant_appointee	http://www.italaw.com/cases/1225	Merit Janow	27
3734	respondent_appointee	http://www.italaw.com/cases/1225	Philippe Sands	27
3735	chair_president	http://www.italaw.com/cases/1225	Hans van Houtte	27
3736	claimant_appointee	http://www.italaw.com/cases/1225	Merit Janow	28
3737	respondent_appointee	http://www.italaw.com/cases/1225	Philippe Sands	28
3738	chair_president	http://www.italaw.com/cases/1225	Hans van Houtte	28
3739	claimant_appointee	http://www.italaw.com/cases/1225	Merit Janow	29
3740	respondent_appointee	http://www.italaw.com/cases/1225	Philippe Sands	29
3741	chair_president	http://www.italaw.com/cases/1225	Hans van Houtte	29
3742	claimant	http://www.italaw.com/cases/1282	Plain Packaging of Tobacco Products Dispute	\N
3743	investment_treaty	http://www.italaw.com/cases/1282	NAFTA	\N
3744	other_expert	http://www.italaw.com/cases/1282	Carla Hill	0
3745	other_expert	http://www.italaw.com/cases/1282	Michael Robinson	1
3746	other_expert	http://www.italaw.com/cases/1282	Jean-Gabriel Castel	2
3747	claimant	http://www.italaw.com/cases/1290	United States	\N
3748	respondents_expert	http://www.italaw.com/cases/1290	Michael Reisman	2
3749	claimant	http://www.italaw.com/cases/1445	Vocklinghaus	\N
3750	respondent_state	http://www.italaw.com/cases/1445	Czech Republic	\N
3751	investment_treaty	http://www.italaw.com/cases/1445	Czech Republic-Germany BIT	\N
3752	claimant_appointee	http://www.italaw.com/cases/1445	Bohuslav Klein	1
3753	respondent_appointee	http://www.italaw.com/cases/1445	Laurent Lévy	1
3754	chair_president	http://www.italaw.com/cases/1445	John Beechey	1
3755	claimant	http://www.italaw.com/cases/1454	Dogan	\N
3756	respondent_state	http://www.italaw.com/cases/1454	Turkmenistan	\N
3757	investment_treaty	http://www.italaw.com/cases/1454	Germany-Turkmenistan BIT	\N
3758	claimant_appointee	http://www.italaw.com/cases/1454	Markus Wirth	0
3759	respondent_appointee	http://www.italaw.com/cases/1454	Philippe Sands	0
3760	chair_president	http://www.italaw.com/cases/1454	Jan Paulsson	0
3761	claimant	http://www.italaw.com/cases/1456	SAUR International SA	\N
3762	respondent_state	http://www.italaw.com/cases/1456	Argentina	\N
3763	investment_treaty	http://www.italaw.com/cases/1456	Argentina-France BIT	\N
3764	claimant_appointee	http://www.italaw.com/cases/1456	Bernard Hanotiau	0
3765	respondent_appointee	http://www.italaw.com/cases/1456	Christian Tomuschat	0
3766	chair_president	http://www.italaw.com/cases/1456	Juan Fernández-Armesto	0
3767	claimant_appointee	http://www.italaw.com/cases/1456	Bernard Hanotiau	1
3768	respondent_appointee	http://www.italaw.com/cases/1456	Christian Tomuschat	1
3769	chair_president	http://www.italaw.com/cases/1456	Juan Fernández-Armesto	1
3770	claimant_appointee	http://www.italaw.com/cases/1456	Bernard Hanotiau	2
3771	respondent_appointee	http://www.italaw.com/cases/1456	Christian Tomuschat	2
3772	chair_president	http://www.italaw.com/cases/1456	Juan Fernández-Armesto	2
3773	claimant	http://www.italaw.com/cases/1458	Intertrade Holding GmbH	\N
3774	respondent_state	http://www.italaw.com/cases/1458	Czech Republic	\N
3775	investment_treaty	http://www.italaw.com/cases/1458	Czech Republic-Germany BIT	\N
3776	claimant_appointee	http://www.italaw.com/cases/1458	Henri Alvarez	0
3777	respondent_appointee	http://www.italaw.com/cases/1458	Brigitte Stern	0
3778	chair_president	http://www.italaw.com/cases/1458	L. Yves Fortier	0
3779	claimant	http://www.italaw.com/cases/1460	H&H Enterprises Investments	\N
3780	claimant	http://www.italaw.com/cases/1460	Inc.	\N
3781	respondent_state	http://www.italaw.com/cases/1460	Egypt	\N
3782	investment_treaty	http://www.italaw.com/cases/1460	Egypt-United States BIT	\N
3783	arbitrator	http://www.italaw.com/cases/1460	Veijo Heiskanen	0
3784	arbitrator	http://www.italaw.com/cases/1460	Hamid Gharavi	0
3785	chair_president	http://www.italaw.com/cases/1460	Bernardo Cremades	0
3786	claimant_appointee	http://www.italaw.com/cases/1460	Veijo Heiskanen	1
3787	respondent_appointee	http://www.italaw.com/cases/1460	Hamid Gharavi	1
3788	chair_president	http://www.italaw.com/cases/1460	Bernardo Cremades	1
3789	claimant	http://www.italaw.com/cases/1470	Border Timbers Limited	\N
3790	claimant	http://www.italaw.com/cases/1470	Hangani Development Co. (Private) Limited	\N
3791	respondent_state	http://www.italaw.com/cases/1470	Zimbabwe	\N
3792	investment_treaty	http://www.italaw.com/cases/1470	Switzerland-Zimbabwe BIT	\N
3793	arbitrator	http://www.italaw.com/cases/1470	David Williams	0
3794	arbitrator	http://www.italaw.com/cases/1470	An Chen	0
3795	chair_president	http://www.italaw.com/cases/1470	L. Yves Fortier	0
3796	claimant_appointee	http://www.italaw.com/cases/1470	David Williams	1
3797	arbitrator	http://www.italaw.com/cases/1470	An Chen	1
3798	chair_president	http://www.italaw.com/cases/1470	L. Yves Fortier	1
3799	claimant_appointee	http://www.italaw.com/cases/1470	David Williams	2
3800	arbitrator	http://www.italaw.com/cases/1470	An Chen	2
3801	chair_president	http://www.italaw.com/cases/1470	L. Yves Fortier	2
3802	claimant_appointee	http://www.italaw.com/cases/1470	David Williams	3
3803	arbitrator	http://www.italaw.com/cases/1470	An Chen	3
3804	chair_president	http://www.italaw.com/cases/1470	L. Yves Fortier	3
3805	claimant	http://www.italaw.com/cases/1472	von Pezold	\N
3806	respondent_state	http://www.italaw.com/cases/1472	Zimbabwe	\N
3807	investment_treaty	http://www.italaw.com/cases/1472	Germany-Zimbabwe BIT	\N
3808	investment_treaty	http://www.italaw.com/cases/1472	Switzerland-Zimbabwe BIT	\N
3809	arbitrator	http://www.italaw.com/cases/1472	David Williams	0
3810	arbitrator	http://www.italaw.com/cases/1472	An Chen	0
3811	chair_president	http://www.italaw.com/cases/1472	L. Yves Fortier	0
3812	claimant_appointee	http://www.italaw.com/cases/1472	David Williams	1
3813	arbitrator	http://www.italaw.com/cases/1472	An Chen	1
3814	chair_president	http://www.italaw.com/cases/1472	L. Yves Fortier	1
3815	claimant_appointee	http://www.italaw.com/cases/1472	David Williams	2
3816	arbitrator	http://www.italaw.com/cases/1472	An Chen	2
3817	chair_president	http://www.italaw.com/cases/1472	L. Yves Fortier	2
3818	claimant_appointee	http://www.italaw.com/cases/1472	David Williams	3
3819	arbitrator	http://www.italaw.com/cases/1472	An Chen	3
3820	chair_president	http://www.italaw.com/cases/1472	L. Yves Fortier	3
3821	claimant	http://www.italaw.com/cases/1477	Telefónica S.A.	\N
3822	respondent_state	http://www.italaw.com/cases/1477	Mexico	\N
3823	investment_treaty	http://www.italaw.com/cases/1477	Mexico-Spain BIT	\N
3824	arbitrator	http://www.italaw.com/cases/1477	Horacio Grigera Naón	1
3825	arbitrator	http://www.italaw.com/cases/1477	Ricardo Ramírez	1
3826	chair_president	http://www.italaw.com/cases/1477	Eduardo Zuleta	1
3827	arbitrator	http://www.italaw.com/cases/1477	Ricardo Ramírez	2
3828	claimant	http://www.italaw.com/cases/1479	Churchill Mining PLC	\N
3829	claimant	http://www.italaw.com/cases/1479	Planet Mining Pty Ltd	\N
3830	respondent_state	http://www.italaw.com/cases/1479	Indonesia	\N
3831	investment_treaty	http://www.italaw.com/cases/1479	Indonesia-United Kingdom BIT	\N
3832	investment_treaty	http://www.italaw.com/cases/1479	Australia-Indonesia BIT	\N
3833	country_in_which_this_occurs	http://www.italaw.com/cases/1479	Indonesia	2
3834	country_in_which_this_occurs	http://www.italaw.com/cases/1479	Indonesia	3
3835	arbitrator	http://www.italaw.com/cases/1479	Michael Hwang	4
3836	arbitrator	http://www.italaw.com/cases/1479	Albert Jan van den Berg	4
3837	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	4
3838	arbitrator	http://www.italaw.com/cases/1479	Michael Hwang	5
3839	arbitrator	http://www.italaw.com/cases/1479	Albert Jan van den Berg	5
3840	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	5
3841	arbitrator	http://www.italaw.com/cases/1479	Michael Hwang	6
3842	arbitrator	http://www.italaw.com/cases/1479	Albert Jan van den Berg	6
3843	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	6
3844	arbitrator	http://www.italaw.com/cases/1479	Michael Hwang	7
3845	arbitrator	http://www.italaw.com/cases/1479	Albert Jan van den Berg	7
3846	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	7
3847	arbitrator	http://www.italaw.com/cases/1479	Michael Hwang	8
3848	arbitrator	http://www.italaw.com/cases/1479	Albert Jan van den Berg	8
3849	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	8
3850	arbitrator	http://www.italaw.com/cases/1479	Albert Jan van den Berg	9
3851	arbitrator	http://www.italaw.com/cases/1479	Michael Hwang	9
3852	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	9
3853	claimant_appointee	http://www.italaw.com/cases/1479	Albert Jan van den Berg	10
3854	respondent_appointee	http://www.italaw.com/cases/1479	Michael Hwang	10
3855	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	10
3856	claimant_appointee	http://www.italaw.com/cases/1479	Albert Jan van den Berg	11
3857	respondent_appointee	http://www.italaw.com/cases/1479	Michael Hwang	11
3858	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	11
3859	claimant_appointee	http://www.italaw.com/cases/1479	Albert Jan van den Berg	12
3860	respondent_appointee	http://www.italaw.com/cases/1479	Michael Hwang	12
3861	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	12
3862	claimant_appointee	http://www.italaw.com/cases/1479	Albert Jan van den Berg	13
3863	respondent_appointee	http://www.italaw.com/cases/1479	Michael Hwang	13
3864	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	13
3865	claimant_appointee	http://www.italaw.com/cases/1479	Albert Jan van den Berg	14
3866	respondent_appointee	http://www.italaw.com/cases/1479	Michael Hwang	14
3867	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	14
3868	claimant_appointee	http://www.italaw.com/cases/1479	Albert Jan van den Berg	15
3869	respondent_appointee	http://www.italaw.com/cases/1479	Michael Hwang	15
3870	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	15
3871	arbitrator	http://www.italaw.com/cases/1479	Albert Jan van den Berg	19
3872	arbitrator	http://www.italaw.com/cases/1479	Michael Hwang	19
3873	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	19
3874	arbitrator	http://www.italaw.com/cases/1479	Michael Hwang	20
3875	arbitrator	http://www.italaw.com/cases/1479	Albert Jan van den Berg	20
3876	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	20
3877	arbitrator	http://www.italaw.com/cases/1479	Michael Hwang	21
3878	arbitrator	http://www.italaw.com/cases/1479	Albert Jan van den Berg	21
3879	chair_president	http://www.italaw.com/cases/1479	Gabrielle Kaufmann-Kohler	21
3880	claimant	http://www.italaw.com/cases/1487	Goetz	\N
3881	claimant	http://www.italaw.com/cases/1487	S.A. Affinage des Metaux	\N
3882	respondent_state	http://www.italaw.com/cases/1487	Burundi	\N
3883	investment_treaty	http://www.italaw.com/cases/1487	Belgium-Luxembourg-Burundi BIT	\N
3884	claimant_appointee	http://www.italaw.com/cases/1487	Jean-Denis Bredin	0
3885	arbitrator	http://www.italaw.com/cases/1487	Ahmed El-Kosheri	0
3886	chair_president	http://www.italaw.com/cases/1487	Gilbert Guillaume	0
3887	claimant	http://www.italaw.com/cases/1490	Getma International	\N
3888	respondent_state	http://www.italaw.com/cases/1490	Guinea	\N
3889	claimant_appointee	http://www.italaw.com/cases/1490	Bernardo Cremades	0
3890	respondent_appointee	http://www.italaw.com/cases/1490	Pierre Tercier	0
3891	chair_president	http://www.italaw.com/cases/1490	Vera van Houtte	0
3892	claimant_appointee	http://www.italaw.com/cases/1490	Bernardo Cremades	1
3893	respondent_appointee	http://www.italaw.com/cases/1490	Pierre Tercier	1
3894	chair_president	http://www.italaw.com/cases/1490	Vera van Houtte	1
3895	claimant	http://www.italaw.com/cases/1492	Intersema Bau AG	\N
3896	respondent_state	http://www.italaw.com/cases/1492	Libya	\N
3897	investment_treaty	http://www.italaw.com/cases/1492	Libya-Switzerland BIT	\N
3898	claimant_appointee	http://www.italaw.com/cases/1492	Veijo Heiskanen	0
3899	respondent_appointee	http://www.italaw.com/cases/1492	Isabelle Poncet	0
3900	chair_president	http://www.italaw.com/cases/1492	Piero Bernardini	0
3901	claimant	http://www.italaw.com/cases/1494	Ecuador	\N
3902	respondent_state	http://www.italaw.com/cases/1494	United States of America	\N
3903	investment_treaty	http://www.italaw.com/cases/1494	Ecuador-United States BIT	\N
3904	respondents_expert	http://www.italaw.com/cases/1494	Michael Reisman	2
3905	respondents_expert	http://www.italaw.com/cases/1494	Christian Tomuschat	3
3906	claimants_expert	http://www.italaw.com/cases/1494	Alain Pellet	6
3907	claimants_expert	http://www.italaw.com/cases/1494	Stephen McCaffey	7
3908	claimants_expert	http://www.italaw.com/cases/1494	C.F. Amerasinghe	8
3909	claimant_appointee	http://www.italaw.com/cases/1494	Raúl Vinuesa	10
3910	arbitrator	http://www.italaw.com/cases/1494	Donald McRae	10
3911	arbitrator	http://www.italaw.com/cases/1494	Luiz Olavo Baptista	10
3912	claimant	http://www.italaw.com/cases/1506	Sistem Mühendislik Inşaat Sanayi ve Ticaret A.Ş.	\N
3913	respondent_state	http://www.italaw.com/cases/1506	Kyrgyz Republic	\N
3914	investment_treaty	http://www.italaw.com/cases/1506	Kyrgyz Republic- Turkey BIT	\N
3915	arbitrator	http://www.italaw.com/cases/1506	Nabil Elaraby	0
3916	arbitrator	http://www.italaw.com/cases/1506	Paolo Michele Patocchi	0
3917	chair_president	http://www.italaw.com/cases/1506	Vaughan Lowe	0
3918	claimant_appointee	http://www.italaw.com/cases/1506	Paolo Michele Patocchi	1
3919	arbitrator	http://www.italaw.com/cases/1506	Nabil Elaraby	1
3920	chair_president	http://www.italaw.com/cases/1506	Vaughan Lowe	1
3921	country_in_which_this_occurs	http://www.italaw.com/cases/1506	Canada	2
3922	claimant	http://www.italaw.com/cases/1511	Ivanishvili	\N
3923	respondent_state	http://www.italaw.com/cases/1511	Georgia	\N
3924	investment_treaty	http://www.italaw.com/cases/1511	France-Georgia BIT	\N
3925	claimant	http://www.italaw.com/cases/1513	Blue Bank International & Trust (Barbados) Ltd.	\N
3926	respondent_state	http://www.italaw.com/cases/1513	Venezuela	\N
3927	investment_treaty	http://www.italaw.com/cases/1513	Barbados-Venezuela BIT	\N
3928	claimant	http://www.italaw.com/cases/1516	Swisslion DOO Skopje	\N
3929	respondent_state	http://www.italaw.com/cases/1516	Macedonia (former Yugoslav Republic of Macedonia)	\N
3930	investment_treaty	http://www.italaw.com/cases/1516	Macedonia (former Yugoslav Republic of Macedonia)-Swiss BIT	\N
3931	claimant_appointee	http://www.italaw.com/cases/1516	Daniel Price	0
3932	respondent_appointee	http://www.italaw.com/cases/1516	J. Christopher Thomas	0
3933	chair_president	http://www.italaw.com/cases/1516	Gilbert Guillaume	0
3934	claimant	http://www.italaw.com/cases/1518	Iberdrola Energía S.A.	\N
3935	respondent_state	http://www.italaw.com/cases/1518	Guatemala	\N
3936	investment_treaty	http://www.italaw.com/cases/1518	Guatemala-Spain BIT	\N
3937	claimant_appointee	http://www.italaw.com/cases/1518	Yves Derains	0
3938	respondent_appointee	http://www.italaw.com/cases/1518	Rodrigo Oreamuno Blanco	0
3939	chair_president	http://www.italaw.com/cases/1518	Eduardo Zuleta	0
3940	claimant_appointee	http://www.italaw.com/cases/1518	Yves Derains	1
3941	respondent_appointee	http://www.italaw.com/cases/1518	Rodrigo Oreamuno Blanco	1
3942	chair_president	http://www.italaw.com/cases/1518	Eduardo Zuleta	1
3943	annulment_committee_president	http://www.italaw.com/cases/1518	Enrique Barros Bourie	2
3944	annulment_committee_members	http://www.italaw.com/cases/1518	Piero Bernardini	2
3945	annulment_committee_members	http://www.italaw.com/cases/1518	Jose Luis Shaw	2
3946	arbitrator	http://www.italaw.com/cases/1518	Piero Bernardini	3
3947	arbitrator	http://www.italaw.com/cases/1518	José Luis Shaw	3
3948	chair_president	http://www.italaw.com/cases/1518	Enrique Barros Bourie	3
3949	arbitrator	http://www.italaw.com/cases/1518	José Luis Shaw	4
3950	claimant	http://www.italaw.com/cases/1520	Daimler Financial Services AG	\N
3951	respondent_state	http://www.italaw.com/cases/1520	Argentina	\N
3952	investment_treaty	http://www.italaw.com/cases/1520	Argentina-Germany BIT	\N
3953	claimant_appointee	http://www.italaw.com/cases/1520	Charles Brower	0
3954	respondent_appointee	http://www.italaw.com/cases/1520	Domingo Bello Janeiro	0
3955	chair_president	http://www.italaw.com/cases/1520	Pierre-Marie Dupuy	0
3956	claimant_appointee	http://www.italaw.com/cases/1520	Charles Brower	1
3957	respondent_appointee	http://www.italaw.com/cases/1520	Domingo Bello Janeiro	1
3958	chair_president	http://www.italaw.com/cases/1520	Pierre-Marie Dupuy	1
3959	claimant_appointee	http://www.italaw.com/cases/1520	Charles Brower	2
3960	respondent_appointee	http://www.italaw.com/cases/1520	Domingo Bello Janeiro	2
3961	chair_president	http://www.italaw.com/cases/1520	Pierre-Marie Dupuy	2
3962	arbitrator	http://www.italaw.com/cases/1520	Florentino Feliciano	3
3963	arbitrator	http://www.italaw.com/cases/1520	Makhdoom Ali Khan	3
3964	chair_president	http://www.italaw.com/cases/1520	Eduardo Zuleta	3
3965	claimant	http://www.italaw.com/cases/1524	Flughafen Zürich A.G.	\N
3966	claimant	http://www.italaw.com/cases/1524	Gestión e Ingenería IDC S.A.	\N
3967	respondent_state	http://www.italaw.com/cases/1524	Venezuela	\N
3968	investment_treaty	http://www.italaw.com/cases/1524	Switzerland-Venezuela BIT	\N
3969	arbitrator	http://www.italaw.com/cases/1524	Juan Fernández-Armesto	0
3970	arbitrator	http://www.italaw.com/cases/1524	Raúl Vinuesa	0
3971	chair_president	http://www.italaw.com/cases/1524	Henri Alvarez	0
3972	arbitrator	http://www.italaw.com/cases/1524	Raúl Vinuesa	1
3973	arbitrator	http://www.italaw.com/cases/1524	Raúl Vinuesa	2
3974	arbitrator	http://www.italaw.com/cases/1524	Henri Alvarez	2
3975	chair_president	http://www.italaw.com/cases/1524	Juan Fernández-Armesto	2
3976	claimant	http://www.italaw.com/cases/1527	Al Warraq	\N
3977	respondent_state	http://www.italaw.com/cases/1527	Indonesia	\N
3978	investment_treaty	http://www.italaw.com/cases/1527	Organisation of Islamic Cooperation Investment Agreement	\N
3979	claimant_appointee	http://www.italaw.com/cases/1527	Bernardo Cremades	0
3980	respondent_appointee	http://www.italaw.com/cases/1527	Fali Nariman	0
3981	chair_president	http://www.italaw.com/cases/1527	Michael Hwang	0
3982	claimant_appointee	http://www.italaw.com/cases/1527	Michael Hwang	1
3983	respondent_appointee	http://www.italaw.com/cases/1527	Fali Nariman	1
3984	chair_president	http://www.italaw.com/cases/1527	Bernardo Cremades	1
3985	claimant	http://www.italaw.com/cases/1530	Crystallex International Corporation	\N
3986	respondent_state	http://www.italaw.com/cases/1530	Venezuela	\N
3987	investment_treaty	http://www.italaw.com/cases/1530	Canada-Venezuela BIT	\N
3988	claimant	http://www.italaw.com/cases/1543	Roz Agricol	\N
3989	claimant	http://www.italaw.com/cases/1543	Omar	\N
3990	respondent_state	http://www.italaw.com/cases/1543	Kazakhstan	\N
3991	claimant_appointee	http://www.italaw.com/cases/1543	Joseph Neuhaus	0
3992	respondent_appointee	http://www.italaw.com/cases/1543	Bruno Boesch	0
3993	chair_president	http://www.italaw.com/cases/1543	Alan Redfern	0
3994	arbitrator	http://www.italaw.com/cases/1543	Joseph Neuhaus	1
3995	arbitrator	http://www.italaw.com/cases/1543	Bruno Boesch	1
3996	chair_president	http://www.italaw.com/cases/1543	Alan Redfern	1
3997	claimant	http://www.italaw.com/cases/1545	World Wide Minerals	\N
3998	respondent_state	http://www.italaw.com/cases/1545	Kazakhstan	\N
3999	chair_president	http://www.italaw.com/cases/1545	Stanimir Alexandrov	0
4000	claimant	http://www.italaw.com/cases/1547	Laskaridis Shipping Co. LTD	\N
4001	claimant	http://www.italaw.com/cases/1547	Lavinia Corporation	\N
4002	claimant	http://www.italaw.com/cases/1547	Laskaridis	\N
4003	respondent_state	http://www.italaw.com/cases/1547	Ukraine	\N
4004	investment_treaty	http://www.italaw.com/cases/1547	Greece-Ukraine BIT	\N
4005	claimant_appointee	http://www.italaw.com/cases/1547	David Williams	0
4006	arbitrator	http://www.italaw.com/cases/1547	Robert Dossu	0
4007	chair_president	http://www.italaw.com/cases/1547	L. Yves Fortier	0
4008	claimant	http://www.italaw.com/cases/1563	Bosh International	\N
4009	claimant	http://www.italaw.com/cases/1563	Inc	\N
4010	claimant	http://www.italaw.com/cases/1563	B&P Ltd Foreign Investments Enterprise	\N
4011	respondent_state	http://www.italaw.com/cases/1563	Ukraine	\N
4012	investment_treaty	http://www.italaw.com/cases/1563	Ukraine-United States BIT	\N
4013	claimant_appointee	http://www.italaw.com/cases/1563	Philippe Sands	0
4014	respondent_appointee	http://www.italaw.com/cases/1563	Donald McRae	0
4015	chair_president	http://www.italaw.com/cases/1563	Gavan Griffith	0
4016	claimant	http://www.italaw.com/cases/1579	Karmer Marble Tourism Construction Industry and Commerce Limited Liability Company	\N
4017	respondent_state	http://www.italaw.com/cases/1579	Georgia	\N
4018	investment_treaty	http://www.italaw.com/cases/1579	Georgia-Turkey BIT	\N
4019	arbitrator	http://www.italaw.com/cases/1579	Francisco Orrego Vicuña	0
4020	arbitrator	http://www.italaw.com/cases/1579	Eric Schwartz	0
4021	chair_president	http://www.italaw.com/cases/1579	Marc Lalonde	0
4022	claimant	http://www.italaw.com/cases/1581	iZee Enterprises LLC	\N
4023	claimant	http://www.italaw.com/cases/1581	Lazer-2 Tbilisi Ltd.	\N
4024	claimant	http://www.italaw.com/cases/1581	Cafe Rustaveli Ltd.	\N
4025	respondent_state	http://www.italaw.com/cases/1581	Georgia	\N
4026	investment_treaty	http://www.italaw.com/cases/1581	Georgia-United States BIT	\N
4027	claimant	http://www.italaw.com/cases/1585	Windstream Energy LLC	\N
4028	respondent_state	http://www.italaw.com/cases/1585	Canada	\N
4029	investment_treaty	http://www.italaw.com/cases/1585	NAFTA	\N
4030	arbitrator	http://www.italaw.com/cases/1585	R. Doak Bishop	1
4031	arbitrator	http://www.italaw.com/cases/1585	Bernardo Cremades	1
4032	chair_president	http://www.italaw.com/cases/1585	Veijo Heiskanen	1
4033	arbitrator	http://www.italaw.com/cases/1585	R. Doak Bishop	2
4034	arbitrator	http://www.italaw.com/cases/1585	Bernardo Cremades	2
4035	chair_president	http://www.italaw.com/cases/1585	Veijo Heiskanen	2
4036	arbitrator	http://www.italaw.com/cases/1585	R. Doak Bishop	5
4037	arbitrator	http://www.italaw.com/cases/1585	Bernardo Cremades	5
4038	chair_president	http://www.italaw.com/cases/1585	Veijo Heiskanen	5
4039	claimant	http://www.italaw.com/cases/1588	Clayton	\N
4040	claimant	http://www.italaw.com/cases/1588	Bilcon of Delaware Inc.	\N
4041	respondent_state	http://www.italaw.com/cases/1588	Canada	\N
4042	investment_treaty	http://www.italaw.com/cases/1588	NAFTA	\N
4043	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	3
4044	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	3
4045	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	3
4046	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	5
4047	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	5
4048	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	5
4049	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	6
4050	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	6
4051	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	6
4052	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	7
4053	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	7
4054	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	7
4055	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	8
4056	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	8
4057	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	8
4058	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	9
4059	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	9
4060	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	9
4061	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	10
4062	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	10
4063	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	10
4064	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	11
4065	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	11
4066	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	11
4067	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	14
4068	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	14
4069	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	14
4070	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	15
4071	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	15
4072	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	15
4073	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	17
4074	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	17
4075	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	17
4076	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	20
4077	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	20
4078	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	20
4079	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	21
4080	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	21
4081	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	21
4082	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	22
4083	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	22
4084	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	22
4085	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	23
4086	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	23
4087	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	23
4088	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	24
4089	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	24
4090	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	24
4091	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	25
4092	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	25
4093	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	25
4094	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	27
4095	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	27
4096	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	27
4097	arbitrator	http://www.italaw.com/cases/1588	Donald McRae	29
4098	arbitrator	http://www.italaw.com/cases/1588	Bryan Schwartz	29
4099	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	29
4100	claimant_appointee	http://www.italaw.com/cases/1588	Bryan Schwartz	30
4101	respondent_appointee	http://www.italaw.com/cases/1588	Donald McRae	30
4102	arbitrator	http://www.italaw.com/cases/1588	Bruno Simma	30
4103	claimant_appointee	http://www.italaw.com/cases/1588	Bryan Schwartz	31
4104	respondent_appointee	http://www.italaw.com/cases/1588	Donald McRae	31
4105	chair_president	http://www.italaw.com/cases/1588	Bruno Simma	31
4106	claimants_counsel	http://www.italaw.com/cases/1588	Barry Appleton	31
4107	claimants_counsel	http://www.italaw.com/cases/1588	Appleton & Associates	31
4108	respondents_counsel	http://www.italaw.com/cases/1588	Sylvie Tabet	31
4109	respondents_counsel	http://www.italaw.com/cases/1588	Scott Little	31
4110	respondents_counsel	http://www.italaw.com/cases/1588	Shane Spelliscy	31
4111	respondents_counsel	http://www.italaw.com/cases/1588	Reuben East	31
4112	respondents_counsel	http://www.italaw.com/cases/1588	Jean-François Hébert	31
4113	respondents_counsel	http://www.italaw.com/cases/1588	Trade Law Bureau (Canada)	31
4114	claimant	http://www.italaw.com/cases/1603	Merck Sharpe & Dohme (I.A.) Corporation	\N
4115	respondent_state	http://www.italaw.com/cases/1603	Ecuador	\N
4116	investment_treaty	http://www.italaw.com/cases/1603	Ecuador-United States BIT	\N
4117	arbitrator	http://www.italaw.com/cases/1603	Stephen Schwebel	0
4118	arbitrator	http://www.italaw.com/cases/1603	Bruno Simma	0
4119	chair_president	http://www.italaw.com/cases/1603	Franklin Berman	0
4120	claimant	http://www.italaw.com/cases/1606	Lone Pine Resources Inc.	\N
4121	respondent_state	http://www.italaw.com/cases/1606	Canada	\N
4122	investment_treaty	http://www.italaw.com/cases/1606	NAFTA	\N
4123	respondents_counsel	http://www.italaw.com/cases/1606	Sylvie Tabet	2
4124	respondents_counsel	http://www.italaw.com/cases/1606	Jean-François Hébert	2
4125	respondents_counsel	http://www.italaw.com/cases/1606	Reuben East	2
4126	respondents_counsel	http://www.italaw.com/cases/1606	Jasmine Wahhab	2
4127	respondents_counsel	http://www.italaw.com/cases/1606	Maxime Dea	2
4128	respondents_counsel	http://www.italaw.com/cases/1606	Louis Philippe Coulombe	2
4129	respondents_counsel	http://www.italaw.com/cases/1606	Julien Sylvestre-Fleury	2
4130	claimant	http://www.italaw.com/cases/1619	Mesa Power Group	\N
4131	claimant	http://www.italaw.com/cases/1619	LLC	\N
4132	respondent_state	http://www.italaw.com/cases/1619	Canada	\N
4133	investment_treaty	http://www.italaw.com/cases/1619	NAFTA	\N
4134	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	0
4135	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	0
4136	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	0
4137	country_in_which_this_occurs	http://www.italaw.com/cases/1619	United States of America	2
4138	country_in_which_this_occurs	http://www.italaw.com/cases/1619	United States of America	5
4139	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	6
4140	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	6
4141	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	6
4142	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	7
4143	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	7
4144	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	7
4145	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	12
4146	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	12
4147	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	12
4148	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	14
4149	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	14
4150	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	14
4151	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	15
4152	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	15
4153	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	15
4154	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	16
4155	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	16
4156	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	16
4157	claimants_expert	http://www.italaw.com/cases/1619	Richard Taylor	17
4158	claimants_expert	http://www.italaw.com/cases/1619	Robert Low	17
4159	respondents_expert	http://www.italaw.com/cases/1619	Christopher Goncalves	21
4160	respondents_expert	http://www.italaw.com/cases/1619	Steve Dorey	22
4161	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	23
4162	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	23
4163	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	23
4164	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	24
4165	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	24
4166	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	24
4167	claimants_expert	http://www.italaw.com/cases/1619	Seabron Adamson	25
4168	claimants_expert	http://www.italaw.com/cases/1619	Cole Robertson	26
4169	claimants_expert	http://www.italaw.com/cases/1619	Richard Taylor	27
4170	claimants_expert	http://www.italaw.com/cases/1619	Robert Low	27
4171	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	29
4172	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	29
4173	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	29
4174	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	30
4175	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	30
4176	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	30
4177	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	31
4178	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	31
4179	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	31
4180	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	32
4181	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	32
4182	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	32
4183	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	33
4184	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	33
4185	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	33
4186	claimant_appointee	http://www.italaw.com/cases/1619	Charles Brower	36
4187	respondent_appointee	http://www.italaw.com/cases/1619	Toby Landau	36
4188	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	36
4189	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	39
4190	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	39
4191	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	39
4192	arbitrator	http://www.italaw.com/cases/1619	Charles Brower	40
4193	arbitrator	http://www.italaw.com/cases/1619	Toby Landau	40
4194	chair_president	http://www.italaw.com/cases/1619	Gabrielle Kaufmann-Kohler	40
4195	claimant	http://www.italaw.com/cases/1625	Eli Lilly and Company	\N
4196	respondent_state	http://www.italaw.com/cases/1625	Canada	\N
4197	investment_treaty	http://www.italaw.com/cases/1625	NAFTA	\N
4198	claimant_appointee	http://www.italaw.com/cases/1625	Gary Born	7
4199	respondent_appointee	http://www.italaw.com/cases/1625	Daniel Bethlehem	7
4200	chair_president	http://www.italaw.com/cases/1625	Albert Jan van den Berg	7
4201	claimant_appointee	http://www.italaw.com/cases/1625	Gary Born	8
4202	respondent_appointee	http://www.italaw.com/cases/1625	Daniel Bethlehem	8
4203	chair_president	http://www.italaw.com/cases/1625	Albert Jan van den Berg	8
4204	claimants_expert	http://www.italaw.com/cases/1625	Murray Wilson	13
4205	claimants_expert	http://www.italaw.com/cases/1625	Gilda Gonzalez Carmona	14
4206	claimants_expert	http://www.italaw.com/cases/1625	Stephen G. Kunin	15
4207	claimants_expert	http://www.italaw.com/cases/1625	Fabian Ramon Salazar	16
4208	claimants_expert	http://www.italaw.com/cases/1625	Jay Erstling	17
4209	claimants_expert	http://www.italaw.com/cases/1625	Robert P. Merges	19
4210	claimants_expert	http://www.italaw.com/cases/1625	Norman V. Siebrasse	20
4211	respondents_expert	http://www.italaw.com/cases/1625	Daniel J. Gervais	22
4212	respondents_expert	http://www.italaw.com/cases/1625	Ronald E. Dimock	25
4213	respondents_expert	http://www.italaw.com/cases/1625	Timothy R. Holbrook	26
4214	respondents_expert	http://www.italaw.com/cases/1625	Hedwig Lindner	27
4215	respondents_expert	http://www.italaw.com/cases/1625	T. David Reed	28
4216	claimant	http://www.italaw.com/cases/1629	TECO Guatemala Holdings	\N
4217	claimant	http://www.italaw.com/cases/1629	LLC	\N
4218	respondent_state	http://www.italaw.com/cases/1629	Guatemala	\N
4219	investment_treaty	http://www.italaw.com/cases/1629	CAFTA	\N
4220	arbitrator	http://www.italaw.com/cases/1629	William Park	3
4221	arbitrator	http://www.italaw.com/cases/1629	Claus von Wobeser	3
4222	chair_president	http://www.italaw.com/cases/1629	Alexis Mourre	3
4223	claimant_appointee	http://www.italaw.com/cases/1629	William Park	13
4224	respondent_appointee	http://www.italaw.com/cases/1629	Claus von Wobeser	13
4225	chair_president	http://www.italaw.com/cases/1629	Alexis Mourre	13
4226	claimant	http://www.italaw.com/cases/1631	Tethyan Copper Company Pty Limited	\N
4227	respondent_state	http://www.italaw.com/cases/1631	Pakistan	\N
4228	investment_treaty	http://www.italaw.com/cases/1631	Australia-Pakistan BIT	\N
4229	claimant_appointee	http://www.italaw.com/cases/1631	Stanimir Alexandrov	0
4230	respondent_appointee	http://www.italaw.com/cases/1631	Lord Hoffman	0
4231	chair_president	http://www.italaw.com/cases/1631	Klaus Sachs	0
4232	claimant	http://www.italaw.com/cases/1648	Teinver S.A.	\N
4233	claimant	http://www.italaw.com/cases/1648	Transportes de Cercanías S.A.	\N
4234	claimant	http://www.italaw.com/cases/1648	Autobuses Urbanos del Sur S.A.	\N
4235	respondent_state	http://www.italaw.com/cases/1648	Argentina	\N
4236	investment_treaty	http://www.italaw.com/cases/1648	Argentina-Spain BIT	\N
4237	claimant_appointee	http://www.italaw.com/cases/1648	Henri Alvarez	0
4238	respondent_appointee	http://www.italaw.com/cases/1648	Kamal Hossain	0
4239	chair_president	http://www.italaw.com/cases/1648	Thomas Buergenthal	0
4240	claimant_appointee	http://www.italaw.com/cases/1648	Henri Alvarez	1
4241	respondent_appointee	http://www.italaw.com/cases/1648	Kamal Hossain	1
4242	chair_president	http://www.italaw.com/cases/1648	Thomas Buergenthal	1
4243	claimant	http://www.italaw.com/cases/1651	M. Meerapfel Söhne AG	\N
4244	respondent_state	http://www.italaw.com/cases/1651	Central African Republic	\N
4245	investment_treaty	http://www.italaw.com/cases/1651	Central African Republic-Switzerland BIT	\N
4246	claimant_appointee	http://www.italaw.com/cases/1651	François T’Kint	0
4247	respondent_appointee	http://www.italaw.com/cases/1651	Marie-Madeleine Mborantsuo	0
4248	chair_president	http://www.italaw.com/cases/1651	Azzedine Kettani	0
4249	claimant	http://www.italaw.com/cases/1654	Vattenfall AB	\N
4250	respondent_state	http://www.italaw.com/cases/1654	Germany	\N
4251	investment_treaty	http://www.italaw.com/cases/1654	Energy Charter Treaty (ECT)	\N
4252	claimant_appointee	http://www.italaw.com/cases/1654	Daniel Price	0
4253	respondent_appointee	http://www.italaw.com/cases/1654	Vaughan Lowe	0
4254	chair_president	http://www.italaw.com/cases/1654	Albert Jan van den Berg	0
4255	claimant_appointee	http://www.italaw.com/cases/1654	Daniel Price	1
4256	respondent_appointee	http://www.italaw.com/cases/1654	Vaughan Lowe	1
4257	chair_president	http://www.italaw.com/cases/1654	Albert Jan van den Berg	1
4258	claimant	http://www.italaw.com/cases/1656	Novera AD	\N
4259	respondent_state	http://www.italaw.com/cases/1656	Bulgaria	\N
4260	investment_treaty	http://www.italaw.com/cases/1656	Bulgaria-Netherlands BIT	\N
4261	claimant_appointee	http://www.italaw.com/cases/1656	Stephen Schwebel	0
4262	respondent_appointee	http://www.italaw.com/cases/1656	David Caron	0
4263	chair_president	http://www.italaw.com/cases/1656	John Townsend	0
4264	claimant	http://www.italaw.com/cases/1687	Apotex Holdings Inc.	\N
4265	respondent_state	http://www.italaw.com/cases/1687	United States of America	\N
4266	investment_treaty	http://www.italaw.com/cases/1687	NAFTA	\N
4267	arbitrator	http://www.italaw.com/cases/1687	John Crook	3
4268	arbitrator	http://www.italaw.com/cases/1687	J. William Rowley	3
4269	chair_president	http://www.italaw.com/cases/1687	V.V. Veeder	3
4270	arbitrator	http://www.italaw.com/cases/1687	John Crook	8
4271	arbitrator	http://www.italaw.com/cases/1687	J. William Rowley	8
4272	chair_president	http://www.italaw.com/cases/1687	V.V. Veeder	8
4273	claimant_appointee	http://www.italaw.com/cases/1687	J. William Rowley	11
4274	respondent_appointee	http://www.italaw.com/cases/1687	John Crook	11
4275	chair_president	http://www.italaw.com/cases/1687	V.V. Veeder	11
4276	claimant_appointee	http://www.italaw.com/cases/1687	J. William Rowley	12
4277	respondent_appointee	http://www.italaw.com/cases/1687	John Crook	12
4278	chair_president	http://www.italaw.com/cases/1687	V.V. Veeder	12
4279	claimant_appointee	http://www.italaw.com/cases/1687	J. William Rowley	13
4280	respondent_appointee	http://www.italaw.com/cases/1687	John Crook	13
4281	chair_president	http://www.italaw.com/cases/1687	V.V. Veeder	13
4282	claimant_appointee	http://www.italaw.com/cases/1687	J. William Rowley	14
4283	respondent_appointee	http://www.italaw.com/cases/1687	John Crook	14
4284	chair_president	http://www.italaw.com/cases/1687	V.V. Veeder	14
4285	claimant_appointee	http://www.italaw.com/cases/1687	J. William Rowley	16
4286	respondent_appointee	http://www.italaw.com/cases/1687	John Crook	16
4287	chair_president	http://www.italaw.com/cases/1687	V.V. Veeder	16
4288	claimant_appointee	http://www.italaw.com/cases/1687	J. William Rowley	20
4289	respondent_appointee	http://www.italaw.com/cases/1687	John Crook	20
4290	chair_president	http://www.italaw.com/cases/1687	V.V. Veeder	20
4291	claimant_appointee	http://www.italaw.com/cases/1687	J. William Rowley	21
4292	respondent_appointee	http://www.italaw.com/cases/1687	John Crook	21
4293	chair_president	http://www.italaw.com/cases/1687	V.V. Veeder	21
4294	claimant	http://www.italaw.com/cases/1706	European American Investment Bank AG (EURAM)	\N
4295	respondent_state	http://www.italaw.com/cases/1706	Slovak Republic	\N
4296	investment_treaty	http://www.italaw.com/cases/1706	Austria-Slovak Republic BIT	\N
4297	claimant_appointee	http://www.italaw.com/cases/1706	Alexander Petsche	0
4298	respondent_appointee	http://www.italaw.com/cases/1706	Brigitte Stern	0
4299	chair_president	http://www.italaw.com/cases/1706	Christopher Greenwood	0
4300	claimant	http://www.italaw.com/cases/1708	Alapli Elektrik B.V.	\N
4301	respondent_state	http://www.italaw.com/cases/1708	Turkey	\N
4302	investment_treaty	http://www.italaw.com/cases/1708	Energy Charter Treaty (ECT)	\N
4303	arbitrator	http://www.italaw.com/cases/1708	Brigitte Stern	0
4304	chair_president	http://www.italaw.com/cases/1708	William Park	0
4305	arbitrator	http://www.italaw.com/cases/1708	Marc Lalonde	1
4306	annulment_committee_president	http://www.italaw.com/cases/1708	Bernard Hanotiau	2
4307	annulment_committee_members	http://www.italaw.com/cases/1708	Karl-Heinz Böckstiegel	2
4308	annulment_committee_members	http://www.italaw.com/cases/1708	Makhdoom Ali Khan	2
4309	respondents_expert	http://www.italaw.com/cases/1708	Bruno Simma	3
4310	respondents_expert	http://www.italaw.com/cases/1708	Bruno Simma	4
4311	annulment_committee_president	http://www.italaw.com/cases/1708	Bernard Hanotiau	5
4312	annulment_committee_members	http://www.italaw.com/cases/1708	Karl-Heinz Böckstiegel	5
4313	annulment_committee_members	http://www.italaw.com/cases/1708	Makhdoom Ali Khan	5
4314	claimant	http://www.italaw.com/cases/1712	Retire in Chiriqui S.A.	\N
4315	claimant	http://www.italaw.com/cases/1712	Falgout	\N
4316	claimant	http://www.italaw.com/cases/1712	Johnson	\N
4317	respondent_state	http://www.italaw.com/cases/1712	Panama	\N
4318	investment_treaty	http://www.italaw.com/cases/1712	Panama-United States of America BIT	\N
4319	investment_treaty	http://www.italaw.com/cases/1712	United States-Panama Trade Promotion Agreement	\N
4320	claimant	http://www.italaw.com/cases/1731	Astaldi S.p.A.	\N
4321	respondent_state	http://www.italaw.com/cases/1731	Honduras	\N
4322	chair_president	http://www.italaw.com/cases/1731	Eduardo Sancho González	0
4323	annulment_committee_president	http://www.italaw.com/cases/1731	Juan Fernández-Armesto	1
4324	annulment_committee_members	http://www.italaw.com/cases/1731	Jaime Irarrázabal	1
4325	annulment_committee_members	http://www.italaw.com/cases/1731	Eduardo Silva Romero	1
4326	claimant	http://www.italaw.com/cases/1734	Ryan	\N
4327	claimant	http://www.italaw.com/cases/1734	Schooner Capital LLC	\N
4328	claimant	http://www.italaw.com/cases/1734	Atlantic Investment Partners LLC	\N
4329	respondent_state	http://www.italaw.com/cases/1734	Poland	\N
4330	investment_treaty	http://www.italaw.com/cases/1734	Poland-United States BIT	\N
4331	claimant_appointee	http://www.italaw.com/cases/1734	Francisco Orrego Vicuña	9
4332	respondent_appointee	http://www.italaw.com/cases/1734	Claus von Wobeser	9
4333	chair_president	http://www.italaw.com/cases/1734	Makhdoom Ali Khan	9
4334	claimant_appointee	http://www.italaw.com/cases/1734	Francisco Orrego Vicuña	10
4335	respondent_appointee	http://www.italaw.com/cases/1734	Claus von Wobeser	10
4336	chair_president	http://www.italaw.com/cases/1734	Makhdoom Ali Khan	10
4337	claimant	http://www.italaw.com/cases/1745	Deutsche Bank AG	\N
4338	respondent_state	http://www.italaw.com/cases/1745	Sri Lanka	\N
4339	investment_treaty	http://www.italaw.com/cases/1745	Germany-Sri Lanka BIT	\N
4340	respondent_appointee	http://www.italaw.com/cases/1745	Makhdoom Ali Khan	0
4341	claimant_appointee	http://www.italaw.com/cases/1745	David Williams	1
4342	chair_president	http://www.italaw.com/cases/1745	Bernard Hanotiau	1
4343	claimant	http://www.italaw.com/cases/1750	Ambiente Ufficio S.p.A.	\N
4344	respondent_state	http://www.italaw.com/cases/1750	Argentina	\N
4345	investment_treaty	http://www.italaw.com/cases/1750	Argentina-Italy BIT	\N
4346	claimant_appointee	http://www.italaw.com/cases/1750	Karl-Heinz Böckstiegel	0
4347	respondent_appointee	http://www.italaw.com/cases/1750	Santiago Torres Bernárdez	0
4348	chair_president	http://www.italaw.com/cases/1750	Bruno Simma	0
4349	claimant_appointee	http://www.italaw.com/cases/1750	Karl-Heinz Böckstiegel	1
4350	respondent_appointee	http://www.italaw.com/cases/1750	Santiago Torres Bernárdez	1
4351	chair_president	http://www.italaw.com/cases/1750	Bruno Simma	1
4352	claimant	http://www.italaw.com/cases/1763	Elsamex	\N
4353	claimant	http://www.italaw.com/cases/1763	S.A.	\N
4354	respondent_state	http://www.italaw.com/cases/1763	Honduras	\N
4355	chair_president	http://www.italaw.com/cases/1763	Enrique Gómez-Pinzón	0
4356	annulment_committee_president	http://www.italaw.com/cases/1763	Andrés Jana	1
4357	annulment_committee_members	http://www.italaw.com/cases/1763	Jan Paulsson	1
4358	annulment_committee_members	http://www.italaw.com/cases/1763	Álvaro Castellanos	1
4359	annulment_committee_president	http://www.italaw.com/cases/1763	Andrés Jana	2
4360	annulment_committee_members	http://www.italaw.com/cases/1763	Jan Paulsson	2
4361	annulment_committee_members	http://www.italaw.com/cases/1763	Álvaro Castellanos	2
4362	annulment_committee_president	http://www.italaw.com/cases/1763	Andrés Jana	3
4363	annulment_committee_members	http://www.italaw.com/cases/1763	Jan Paulsson	3
4364	annulment_committee_members	http://www.italaw.com/cases/1763	Dr. Álvaro Castellanos	3
4365	claimant	http://www.italaw.com/cases/1765	Accession Mezzanine Capital L.P.	\N
4366	claimant	http://www.italaw.com/cases/1765	Danubius Kereskedöház Vagyonkezelö Zrt.	\N
4367	respondent_state	http://www.italaw.com/cases/1765	Hungary	\N
4368	investment_treaty	http://www.italaw.com/cases/1765	Hungary-United Kingdom BIT	\N
4369	claimant_appointee	http://www.italaw.com/cases/1765	Marc Lalonde	1
4370	respondent_appointee	http://www.italaw.com/cases/1765	Donald McRae	1
4371	chair_president	http://www.italaw.com/cases/1765	Arthur Rovine	1
4372	claimant_appointee	http://www.italaw.com/cases/1765	Marc Lalonde	2
4373	respondent_appointee	http://www.italaw.com/cases/1765	Donald McRae	2
4374	chair_president	http://www.italaw.com/cases/1765	Arthur Rovine	2
4375	claimant	http://www.italaw.com/cases/1784	Saint-Gobain Performance Plastics Europe	\N
4376	respondent_state	http://www.italaw.com/cases/1784	Venezuela	\N
4377	investment_treaty	http://www.italaw.com/cases/1784	Bolivia-France BIT	\N
4378	claimant_appointee	http://www.italaw.com/cases/1784	Charles Brower	0
4379	chair_president	http://www.italaw.com/cases/1784	Klaus Michael Sachs	0
4380	claimant	http://www.italaw.com/cases/1786	Agility for Public Warehousing Company K.S.C.	\N
4381	respondent_state	http://www.italaw.com/cases/1786	Pakistan	\N
4382	investment_treaty	http://www.italaw.com/cases/1786	Kuwait-Pakistan BIT	\N
4383	claimant_appointee	http://www.italaw.com/cases/1786	Charles Brower	0
4384	arbitrator	http://www.italaw.com/cases/1786	Salim Moollan	0
4385	chair_president	http://www.italaw.com/cases/1786	L. Yves Fortier	0
4386	claimant	http://www.italaw.com/cases/1797	Victims of the Stanford Ponzi Scheme	\N
4387	respondent_state	http://www.italaw.com/cases/1797	United States of America	\N
4388	investment_treaty	http://www.italaw.com/cases/1797	CAFTA	\N
4389	claimant	http://www.italaw.com/cases/1812	Albertis	\N
4390	respondent_state	http://www.italaw.com/cases/1812	Bolivia	\N
4391	investment_treaty	http://www.italaw.com/cases/1812	Bolivia-Spain BIT	\N
4392	claimant	http://www.italaw.com/cases/1824	Attila Dogan Construction and Installation Co.	\N
4393	respondent_state	http://www.italaw.com/cases/1824	Oman	\N
4394	investment_treaty	http://www.italaw.com/cases/1824	Oman-Turkey BIT	\N
4395	claimant	http://www.italaw.com/cases/1833	Slovak Gas Holding BV	\N
4396	claimant	http://www.italaw.com/cases/1833	GDF International SAS	\N
4397	claimant	http://www.italaw.com/cases/1833	E.ON Ruhrgas International GmbH	\N
4398	respondent_state	http://www.italaw.com/cases/1833	Slovak Republic	\N
4399	investment_treaty	http://www.italaw.com/cases/1833	Energy Charter Treaty (ECT)	\N
4400	claimant_appointee	http://www.italaw.com/cases/1833	Zachary Douglas	1
4401	respondent_appointee	http://www.italaw.com/cases/1833	J. Christopher Thomas	1
4402	chair_president	http://www.italaw.com/cases/1833	Toby Landau	1
4403	claimant	http://www.italaw.com/cases/1846	Arif	\N
4404	respondent_state	http://www.italaw.com/cases/1846	Moldova	\N
4405	investment_treaty	http://www.italaw.com/cases/1846	France-Moldova BIT	\N
4406	claimant_appointee	http://www.italaw.com/cases/1846	Bernard Hanotiau	0
4407	respondent_appointee	http://www.italaw.com/cases/1846	Rolf Knieper	0
4408	chair_president	http://www.italaw.com/cases/1846	Bernardo Cremades	0
4409	claimant	http://www.italaw.com/cases/1871	Abengoa	\N
4410	claimant	http://www.italaw.com/cases/1871	S.A. y COFIDES	\N
4411	claimant	http://www.italaw.com/cases/1871	S.A	\N
4412	respondent_state	http://www.italaw.com/cases/1871	Mexico	\N
4413	investment_treaty	http://www.italaw.com/cases/1871	Mexico-Spain BIT	\N
4414	claimant_appointee	http://www.italaw.com/cases/1871	Juan Fernández-Armesto	0
4415	respondent_appointee	http://www.italaw.com/cases/1871	Eduardo Siqueiros	0
4416	chair_president	http://www.italaw.com/cases/1871	Alexis Mourre	0
4417	claimant	http://www.italaw.com/cases/1881	Pan American Energy LLC	\N
4418	respondent_state	http://www.italaw.com/cases/1881	Bolivia	\N
4419	investment_treaty	http://www.italaw.com/cases/1881	Bolivia-United States BIT	\N
4420	claimant_appointee	http://www.italaw.com/cases/1881	Francisco Orrego Vicuña	0
4421	arbitrator	http://www.italaw.com/cases/1881	Rodrigo Oreamuno Blanco	0
4422	chair_president	http://www.italaw.com/cases/1881	Bernardo Cremades	0
4423	claimant	http://www.italaw.com/cases/1898	InterTrade Holding GmbH	\N
4424	respondent_state	http://www.italaw.com/cases/1898	Czech Republic	\N
4425	investment_treaty	http://www.italaw.com/cases/1898	Czech Republic-Germany BIT	\N
4426	arbitrator	http://www.italaw.com/cases/1898	Brigitte Stern	0
4427	arbitrator	http://www.italaw.com/cases/1898	Henri Alvarez	0
4428	chair_president	http://www.italaw.com/cases/1898	L. Yves Fortier	0
4429	claimant	http://www.italaw.com/cases/1903	U.S. Steel Global Holdings I B.V.	\N
4430	respondent_state	http://www.italaw.com/cases/1903	Slovak Republic	\N
4431	investment_treaty	http://www.italaw.com/cases/1903	Netherlands-Slovak Repubic BIT	\N
4432	arbitrator	http://www.italaw.com/cases/1903	James Crawford	0
4433	arbitrator	http://www.italaw.com/cases/1903	Robert Volterra	0
4434	chair_president	http://www.italaw.com/cases/1903	Michael Reisman	0
4435	arbitrator	http://www.italaw.com/cases/1903	James Crawford	1
4436	arbitrator	http://www.italaw.com/cases/1903	Robert Volterra	1
4437	chair_president	http://www.italaw.com/cases/1903	Michael Reisman	1
4438	arbitrator	http://www.italaw.com/cases/1903	James Crawford	2
4439	arbitrator	http://www.italaw.com/cases/1903	Robert Volterra	2
4440	chair_president	http://www.italaw.com/cases/1903	Michael Reisman	2
4441	claimant	http://www.italaw.com/cases/1904	Levitis	\N
4442	respondent_state	http://www.italaw.com/cases/1904	Kyrgyz Republic	\N
4443	investment_treaty	http://www.italaw.com/cases/1904	Kyrgyz Republic-United States BIT	\N
4444	arbitrator	http://www.italaw.com/cases/1904	Richard Dewitt	0
4445	arbitrator	http://www.italaw.com/cases/1904	Samuel Wordsworth	0
4446	chair_president	http://www.italaw.com/cases/1904	Andrew Newcombe	0
4447	arbitrator	http://www.italaw.com/cases/1904	Richard Dewitt	1
4448	arbitrator	http://www.italaw.com/cases/1904	Samuel Wordsworth	1
4449	chair_president	http://www.italaw.com/cases/1904	Andrew Newcombe	1
4450	arbitrator	http://www.italaw.com/cases/1904	Richard Dewitt	2
4451	arbitrator	http://www.italaw.com/cases/1904	Samuel Wordsworth	2
4452	chair_president	http://www.italaw.com/cases/1904	Andrew Newcombe	2
4453	claimant	http://www.italaw.com/cases/1911	Repsol YPF Ecuador	\N
4454	claimant	http://www.italaw.com/cases/1911	S.A.	\N
4455	respondent_state	http://www.italaw.com/cases/1911	Ecuador	\N
4456	investment_treaty	http://www.italaw.com/cases/1911	Ecuador-Spain BIT	\N
4457	claimant	http://www.italaw.com/cases/1912	Repsol YPF Ecuador	\N
4458	claimant	http://www.italaw.com/cases/1912	S.A.	\N
4459	respondent_state	http://www.italaw.com/cases/1912	Ecuador	\N
4460	investment_treaty	http://www.italaw.com/cases/1912	Ecuador-Spain BIT	\N
4461	claimant	http://www.italaw.com/cases/1913	Repsol YPF Ecuador	\N
4462	claimant	http://www.italaw.com/cases/1913	S.A.	\N
4463	respondent_state	http://www.italaw.com/cases/1913	Ecuador	\N
4464	investment_treaty	http://www.italaw.com/cases/1913	Ecuador-Spain BIT	\N
4465	claimant_appointee	http://www.italaw.com/cases/1913	Horacio Grigera Naón	0
4466	respondent_appointee	http://www.italaw.com/cases/1913	Raúl Vinuesa	0
4467	chair_president	http://www.italaw.com/cases/1913	Rodrigo Oreamuno Blanco	0
4468	claimant_appointee	http://www.italaw.com/cases/1913	Horacio Grigera Naón	1
4469	respondent_appointee	http://www.italaw.com/cases/1913	Raúl Vinuesa	1
4470	chair_president	http://www.italaw.com/cases/1913	Rodrigo Oreamuno Blanco	1
4471	claimant	http://www.italaw.com/cases/1918	Consolidated Exploration Holdings Ltd.	\N
4472	respondent_state	http://www.italaw.com/cases/1918	Kyrgyz Republic	\N
4473	investment_treaty	http://www.italaw.com/cases/1918	Kazakhstan-Kyrgyz Republic BIT	\N
4474	claimant_appointee	http://www.italaw.com/cases/1918	Bernard Hanotiau	0
4475	respondent_appointee	http://www.italaw.com/cases/1918	Philippe Sands	0
4476	chair_president	http://www.italaw.com/cases/1918	John Crook	0
4477	claimant	http://www.italaw.com/cases/1920	Nadel	\N
4478	respondent_state	http://www.italaw.com/cases/1920	Kyrgyz Republic	\N
4479	claimant_appointee	http://www.italaw.com/cases/1920	Arthur Rovine	0
4480	respondent_appointee	http://www.italaw.com/cases/1920	Brigitte Stern	0
4481	chair_president	http://www.italaw.com/cases/1920	V.V. Veeder	0
4482	claimant	http://www.italaw.com/cases/1921	Nadel	\N
4483	claimant	http://www.italaw.com/cases/1921	Ithaca Holdings Inc.	\N
4484	respondent_state	http://www.italaw.com/cases/1921	Kyrgyz Republic	\N
4485	investment_treaty	http://www.italaw.com/cases/1921	Kyrgyz Republic-United States BIT	\N
4486	respondent_appointee	http://www.italaw.com/cases/1921	Brigitte Stern	0
4487	chair_president	http://www.italaw.com/cases/1921	Klaus Reichart	0
4488	claimant	http://www.italaw.com/cases/1924	OAO Gazprom	\N
4489	respondent_state	http://www.italaw.com/cases/1924	Lithuania	\N
4490	investment_treaty	http://www.italaw.com/cases/1924	Lithuania-Russian Federation BIT	\N
4491	arbitrator	http://www.italaw.com/cases/1924	Karl-Heinz Böckstiegel	0
4492	arbitrator	http://www.italaw.com/cases/1924	Vaughan Lowe	0
4493	chair_president	http://www.italaw.com/cases/1924	Bruno Simma	0
4494	claimant_appointee	http://www.italaw.com/cases/1924	Bruno Simma	1
4495	arbitrator	http://www.italaw.com/cases/1924	Karl-Heinz Böckstiegel	1
4496	arbitrator	http://www.italaw.com/cases/1924	Vaughan Lowe	1
4497	claimant	http://www.italaw.com/cases/1926	Ampal-American Israel Corporation	\N
4498	respondent_state	http://www.italaw.com/cases/1926	Egypt	\N
4499	investment_treaty	http://www.italaw.com/cases/1926	Egypt-United States BIT	\N
4500	claimant_appointee	http://www.italaw.com/cases/1926	Francisco Orrego Vicuña	0
4501	respondent_appointee	http://www.italaw.com/cases/1926	Campbell McLachlan	0
4502	chair_president	http://www.italaw.com/cases/1926	L. Yves Fortier	0
4503	claimant	http://www.italaw.com/cases/1933	Bycell	\N
4504	respondent_state	http://www.italaw.com/cases/1933	India	\N
4505	investment_treaty	http://www.italaw.com/cases/1933	Cyprus-India BIT	\N
4506	investment_treaty	http://www.italaw.com/cases/1933	India-Russia BIT	\N
4507	claimant_appointee	http://www.italaw.com/cases/1933	Charles Brower	0
4508	respondent_appointee	http://www.italaw.com/cases/1933	Brigitte Stern	0
4509	chair_president	http://www.italaw.com/cases/1933	Bernardo Sepúlveda Amor	0
4510	claimant	http://www.italaw.com/cases/1935	Capital Global	\N
4511	claimant	http://www.italaw.com/cases/1935	Kaif Investment	\N
4512	respondent_state	http://www.italaw.com/cases/1935	India	\N
4513	investment_treaty	http://www.italaw.com/cases/1935	Mauritius-India BIT	\N
4514	claimant	http://www.italaw.com/cases/1937	Dan Cake S.A.	\N
4515	respondent_state	http://www.italaw.com/cases/1937	Hungary	\N
4516	investment_treaty	http://www.italaw.com/cases/1937	Hungary-Portugal BIT	\N
4517	claimant_appointee	http://www.italaw.com/cases/1937	Jan Paulsson	0
4518	respondent_appointee	http://www.italaw.com/cases/1937	Toby Landau	0
4519	chair_president	http://www.italaw.com/cases/1937	Pierre Mayer	0
4520	claimant	http://www.italaw.com/cases/1939	Elecnor S.A.	\N
4521	claimant	http://www.italaw.com/cases/1939	Isolux Corsán Concesiones S.A.	\N
4522	respondent_state	http://www.italaw.com/cases/1939	Peru	\N
4523	investment_treaty	http://www.italaw.com/cases/1939	Spain-Peru BIT	\N
4524	claimant_appointee	http://www.italaw.com/cases/1939	Alexis Mourre	0
4525	respondent_appointee	http://www.italaw.com/cases/1939	Horacio Grigera Naón	0
4526	chair_president	http://www.italaw.com/cases/1939	Hugo Perezcano	0
4527	claimant_appointee	http://www.italaw.com/cases/1939	Alexis Mourre	1
4528	respondent_appointee	http://www.italaw.com/cases/1939	Horacio Grigera Naón	1
4529	chair_president	http://www.italaw.com/cases/1939	Hugo Perezcano	1
4530	claimant_appointee	http://www.italaw.com/cases/1939	Alexis Mourre	2
4531	respondent_appointee	http://www.italaw.com/cases/1939	Horacio Grigera Naón	2
4532	chair_president	http://www.italaw.com/cases/1939	Hugo Perezcano	2
4533	claimant	http://www.italaw.com/cases/1941	Fábrica de Vidrios Los Andes	\N
4534	claimant	http://www.italaw.com/cases/1941	C.A.	\N
4535	claimant	http://www.italaw.com/cases/1941	Owens-Illinois de Venezuela	\N
4536	respondent_state	http://www.italaw.com/cases/1941	Venezuela	\N
4537	investment_treaty	http://www.italaw.com/cases/1941	United States-Venezuela BIT	\N
4538	claimant_appointee	http://www.italaw.com/cases/1941	L. Yves Fortier	0
4539	respondent_appointee	http://www.italaw.com/cases/1941	Alexis Mourre	0
4540	chair_president	http://www.italaw.com/cases/1941	Hi-Taek Shin	0
4541	claimant	http://www.italaw.com/cases/1945	Axiata Group	\N
4542	respondent_state	http://www.italaw.com/cases/1945	India	\N
4543	investment_treaty	http://www.italaw.com/cases/1945	India-Mauritius BIT	\N
4544	claimant	http://www.italaw.com/cases/1962	CC/Devas (Mauritius) Ltd.	\N
4545	claimant	http://www.italaw.com/cases/1962	Devas Employees Mauritius Private Limited	\N
4546	claimant	http://www.italaw.com/cases/1962	Telecom Devas Mauritius Limited	\N
4547	respondent_state	http://www.italaw.com/cases/1962	India	\N
4548	investment_treaty	http://www.italaw.com/cases/1962	India-Mauritius BIT	\N
4549	claimant	http://www.italaw.com/cases/1964	Gelsenwasser AG	\N
4550	respondent_state	http://www.italaw.com/cases/1964	Algeria	\N
4551	investment_treaty	http://www.italaw.com/cases/1964	Algeria-Germany BIT	\N
4552	claimant	http://www.italaw.com/cases/1966	Gavrilovic	\N
4553	respondent_state	http://www.italaw.com/cases/1966	Croatia	\N
4554	investment_treaty	http://www.italaw.com/cases/1966	Austria-Croatia BIT	\N
4555	claimant_appointee	http://www.italaw.com/cases/1966	Stanimir Alexandrov	0
4556	respondent_appointee	http://www.italaw.com/cases/1966	Matthias Scherer	0
4557	claimant	http://www.italaw.com/cases/1968	Grupo Francisco Hernando Contreras	\N
4558	respondent_state	http://www.italaw.com/cases/1968	Equatorial Guinea	\N
4559	investment_treaty	http://www.italaw.com/cases/1968	Equatorial Guinea-Spain BIT	\N
4560	claimant_appointee	http://www.italaw.com/cases/1968	Francisco Orrego Vicuña	0
4561	respondent_appointee	http://www.italaw.com/cases/1968	Raúl Vinuesa	0
4562	chair_president	http://www.italaw.com/cases/1968	Bernardo Sepúlveda Amor	0
4563	claimant	http://www.italaw.com/cases/1970	Guardian Fiduciary Trust	\N
4564	claimant	http://www.italaw.com/cases/1970	Ltd	\N
4565	claimant	http://www.italaw.com/cases/1970	f/k/a Capital Conservator Savings & Loan	\N
4566	respondent_state	http://www.italaw.com/cases/1970	Macedonia (former Yugoslav Republic of Macedonia)	\N
4567	investment_treaty	http://www.italaw.com/cases/1970	Netherlands-Macedonia BIT	\N
4568	claimant_appointee	http://www.italaw.com/cases/1970	Andreas Bucher	0
4569	respondent_appointee	http://www.italaw.com/cases/1970	Brigitte Stern	0
4570	claimant	http://www.italaw.com/cases/1972	Inversión y Gestión de Bienes,	\N
4571	claimant	http://www.italaw.com/cases/1972	IGB18 Las Rozas	\N
4572	claimant	http://www.italaw.com/cases/1972	S.L.	\N
4573	claimant	http://www.italaw.com/cases/1972	IGB	\N
4574	respondent_state	http://www.italaw.com/cases/1972	Spain	\N
4575	investment_treaty	http://www.italaw.com/cases/1972	Spain-Venezuela BIT	\N
4576	arbitrator	http://www.italaw.com/cases/1972	Rodrigo Oreamuno Blanco	0
4577	claimant	http://www.italaw.com/cases/1977	Liman Caspian Oil BV	\N
4578	claimant	http://www.italaw.com/cases/1977	NCL Dutch Investment BV	\N
4579	respondent_state	http://www.italaw.com/cases/1977	Kazakhstan	\N
4580	investment_treaty	http://www.italaw.com/cases/1977	Energy Charter Treaty (ECT)	\N
4581	claimant_appointee	http://www.italaw.com/cases/1977	Kaj Hobér	0
4582	respondent_appointee	http://www.italaw.com/cases/1977	James Crawford	0
4583	chair_president	http://www.italaw.com/cases/1977	Karl-Heinz Böckstiegel	0
4584	claimant	http://www.italaw.com/cases/2010	Burimi SRL	\N
4585	claimant	http://www.italaw.com/cases/2010	Eagle Games SH.A	\N
4586	respondent_state	http://www.italaw.com/cases/2010	Albania	\N
4587	investment_treaty	http://www.italaw.com/cases/2010	Albania-Italy BIT	\N
4588	claimant_appointee	http://www.italaw.com/cases/2010	Bernardo Cremades	0
4589	respondent_appointee	http://www.italaw.com/cases/2010	Ibrahim Fadlallah	0
4590	chair_president	http://www.italaw.com/cases/2010	Daniel Price	0
4591	claimant_appointee	http://www.italaw.com/cases/2010	Bernardo Cremades	1
4592	respondent_appointee	http://www.italaw.com/cases/2010	Ibrahim Fadlallah	1
4593	chair_president	http://www.italaw.com/cases/2010	Daniel Price	1
4594	claimant_appointee	http://www.italaw.com/cases/2010	Bernardo Cremades	2
4595	respondent_appointee	http://www.italaw.com/cases/2010	Ibrahim Fadlallah	2
4596	chair_president	http://www.italaw.com/cases/2010	Daniel Price	2
4597	claimant_appointee	http://www.italaw.com/cases/2010	Bernardo Cremades	3
4598	respondent_appointee	http://www.italaw.com/cases/2010	Ibrahim Fadlallah	3
4599	chair_president	http://www.italaw.com/cases/2010	Daniel Price	3
4600	claimant	http://www.italaw.com/cases/2020	Lao Holdings N.V.	\N
4601	respondent_state	http://www.italaw.com/cases/2020	Laos	\N
4602	investment_treaty	http://www.italaw.com/cases/2020	Laos-Netherlands BIT	\N
4603	claimant_appointee	http://www.italaw.com/cases/2020	Bernard Hanotiau	1
4604	respondent_appointee	http://www.italaw.com/cases/2020	Brigitte Stern	1
4605	chair_president	http://www.italaw.com/cases/2020	Ian Binnie	1
4606	claimant_appointee	http://www.italaw.com/cases/2020	Bernard Hanotiau	2
4607	respondent_appointee	http://www.italaw.com/cases/2020	Brigitte Stern	2
4608	chair_president	http://www.italaw.com/cases/2020	Ian Binnie	2
4609	claimant_appointee	http://www.italaw.com/cases/2020	Bernard Hanotiau	3
4610	respondent_appointee	http://www.italaw.com/cases/2020	Brigitte Stern	3
4611	chair_president	http://www.italaw.com/cases/2020	Ian Binnie	3
4612	arbitrator	http://www.italaw.com/cases/2020	Bernard Hanotiau	5
4613	arbitrator	http://www.italaw.com/cases/2020	Brigitte Stern	5
4614	chair_president	http://www.italaw.com/cases/2020	Ian Binnie	5
4615	claimant	http://www.italaw.com/cases/2022	LSF-KEB Holdings SCA	\N
4616	respondent_state	http://www.italaw.com/cases/2022	Korea	\N
4617	investment_treaty	http://www.italaw.com/cases/2022	Belgium-Luxembourg-Korea BIT	\N
4618	claimant_appointee	http://www.italaw.com/cases/2022	Charles Brower	0
4619	respondent_appointee	http://www.italaw.com/cases/2022	Brigitte Stern	0
4620	chair_president	http://www.italaw.com/cases/2022	V.V. Veeder	0
4621	claimant	http://www.italaw.com/cases/2024	Karkey Karadeniz Elektrik Uretim A.S.	\N
4622	respondent_state	http://www.italaw.com/cases/2024	Pakistan	\N
4623	investment_treaty	http://www.italaw.com/cases/2024	Pakistan-Turkey BIT	\N
4624	claimant_appointee	http://www.italaw.com/cases/2024	Horacio Grigera Naón	0
4625	respondent_appointee	http://www.italaw.com/cases/2024	David A.O. Edward	0
4626	chair_president	http://www.italaw.com/cases/2024	Yves Derains	0
4627	claimant_appointee	http://www.italaw.com/cases/2024	Horacio Grigera Naón	1
4628	respondent_appointee	http://www.italaw.com/cases/2024	David A.O. Edward	1
4629	chair_president	http://www.italaw.com/cases/2024	Yves Derains	1
4630	claimant	http://www.italaw.com/cases/2026	Gavazzi	\N
4631	respondent_state	http://www.italaw.com/cases/2026	Romania	\N
4632	investment_treaty	http://www.italaw.com/cases/2026	Italy-Romania BIT	\N
4633	claimant_appointee	http://www.italaw.com/cases/2026	V.V. Veeder	0
4634	respondent_appointee	http://www.italaw.com/cases/2026	Mauro Rubino-Sammartano	0
4635	chair_president	http://www.italaw.com/cases/2026	Hans van Houtte	0
4636	claimant	http://www.italaw.com/cases/2028	MNSS B.V.	\N
4637	claimant	http://www.italaw.com/cases/2028	Recupero Credito Acciaio N.V.	\N
4638	respondent_state	http://www.italaw.com/cases/2028	Montenegro	\N
4639	investment_treaty	http://www.italaw.com/cases/2028	Montenegro-Netherlands BIT	\N
4640	claimant_appointee	http://www.italaw.com/cases/2028	Emmanuel Gaillard	0
4641	respondent_appointee	http://www.italaw.com/cases/2028	Christoph Schreuer	0
4642	chair_president	http://www.italaw.com/cases/2028	Andrés Rigo Sureda	0
4643	claimant_appointee	http://www.italaw.com/cases/2028	Emmanuel Gaillard	1
4644	respondent_appointee	http://www.italaw.com/cases/2028	Christoph Schreuer	1
4645	chair_president	http://www.italaw.com/cases/2028	Andrés Rigo Sureda	1
4646	claimant	http://www.italaw.com/cases/2032	Allawi	\N
4647	respondent_state	http://www.italaw.com/cases/2032	Pakistan	\N
4648	investment_treaty	http://www.italaw.com/cases/2032	Pakistan-United Kingdom BIT	\N
4649	claimant_appointee	http://www.italaw.com/cases/2032	Charles Brower	0
4650	arbitrator	http://www.italaw.com/cases/2032	J. Christopher Thomas	0
4651	chair_president	http://www.italaw.com/cases/2032	L. Yves Fortier	0
4652	claimant	http://www.italaw.com/cases/2034	Maiman	\N
4653	respondent_state	http://www.italaw.com/cases/2034	Egypt	\N
4654	investment_treaty	http://www.italaw.com/cases/2034	Egypt-Poland BIT	\N
4655	claimant_appointee	http://www.italaw.com/cases/2034	Michael Reisman	0
4656	respondent_appointee	http://www.italaw.com/cases/2034	J. Christopher Thomas	0
4657	chair_president	http://www.italaw.com/cases/2034	Donald McRae	0
4658	claimant	http://www.italaw.com/cases/2036	Muhammet Çap & Sehil Inşaat Endustri ve Ticaret Ltd. Sti.	\N
4659	respondent_state	http://www.italaw.com/cases/2036	Turkmenistan	\N
4660	investment_treaty	http://www.italaw.com/cases/2036	Turkey-Turkmenistan BIT	\N
4661	claimant_appointee	http://www.italaw.com/cases/2036	Bernard Hanotiau	0
4662	respondent_appointee	http://www.italaw.com/cases/2036	Laurence Boisson de Chazournes	0
4663	chair_president	http://www.italaw.com/cases/2036	Julian Lew	0
4664	claimant_appointee	http://www.italaw.com/cases/2036	Bernard Hanotiau	1
4665	respondent_appointee	http://www.italaw.com/cases/2036	Laurence Boisson de Chazournes	1
4666	claimant	http://www.italaw.com/cases/2038	Orascom Telelcom Holding	\N
4667	respondent_state	http://www.italaw.com/cases/2038	Algeria	\N
4668	investment_treaty	http://www.italaw.com/cases/2038	Algeria-Egypt BIT	\N
4669	claimant_appointee	http://www.italaw.com/cases/2038	L. Yves Fortier	0
4670	respondent_appointee	http://www.italaw.com/cases/2038	Pierre-Marie Dupuy	0
4671	chair_president	http://www.italaw.com/cases/2038	Bernardo Cremades	0
4672	claimant	http://www.italaw.com/cases/2040	Orascom TMT Investments S.à r.l.	\N
4673	respondent_state	http://www.italaw.com/cases/2040	Algeria	\N
4674	investment_treaty	http://www.italaw.com/cases/2040	Algeria-Egypt BIT	\N
4675	claimant_appointee	http://www.italaw.com/cases/2040	Albert Jan van den Berg	0
4676	respondent_appointee	http://www.italaw.com/cases/2040	Brigitte Stern	0
4677	chair_president	http://www.italaw.com/cases/2040	Gabrielle Kaufmann-Kohler	0
4678	claimant	http://www.italaw.com/cases/2042	Ping An Life Insurance Company of China	\N
4679	claimant	http://www.italaw.com/cases/2042	Limited	\N
4680	respondent_state	http://www.italaw.com/cases/2042	Belgium	\N
4681	investment_treaty	http://www.italaw.com/cases/2042	Belgium-China BIT	\N
4682	claimant_appointee	http://www.italaw.com/cases/2042	David Williams	0
4683	respondent_appointee	http://www.italaw.com/cases/2042	Philippe Sands	0
4684	chair_president	http://www.italaw.com/cases/2042	Lawrence Collins	0
4685	claimant	http://www.italaw.com/cases/2044	Progas Energy Ltd.	\N
4686	respondent_state	http://www.italaw.com/cases/2044	Pakistan	\N
4687	investment_treaty	http://www.italaw.com/cases/2044	Mauritius-Pakistan BIT	\N
4688	claimant_appointee	http://www.italaw.com/cases/2044	Emmanuel Gaillard	0
4689	arbitrator	http://www.italaw.com/cases/2044	Ahmed El-Kosheri	0
4690	chair_president	http://www.italaw.com/cases/2044	Guillermo Aguilar Alvarez	0
4691	claimant	http://www.italaw.com/cases/2046	Repsol	\N
4692	claimant	http://www.italaw.com/cases/2046	S.A.	\N
4693	respondent_state	http://www.italaw.com/cases/2046	Argentina	\N
4694	investment_treaty	http://www.italaw.com/cases/2046	Argentina-Spain BIT	\N
4695	claimant_appointee	http://www.italaw.com/cases/2046	Francisco Orrego Vicuña	0
4696	respondent_appointee	http://www.italaw.com/cases/2046	Brigitte Stern	0
4697	chair_president	http://www.italaw.com/cases/2046	Claus von Wobeser	0
4698	claimant_appointee	http://www.italaw.com/cases/2046	Francisco Orrego Vicuña	1
4699	respondent_appointee	http://www.italaw.com/cases/2046	Brigitte Stern	1
4700	chair_president	http://www.italaw.com/cases/2046	Claus von Wobeser	1
4701	claimant	http://www.italaw.com/cases/2048	Rusoro Mining Ltd.	\N
4702	respondent_state	http://www.italaw.com/cases/2048	Venezuela	\N
4703	investment_treaty	http://www.italaw.com/cases/2048	Canada-Venezuela BIT	\N
4704	claimant_appointee	http://www.italaw.com/cases/2048	Francisco Orrego Vicuña	0
4705	respondent_appointee	http://www.italaw.com/cases/2048	Bruno Simma	0
4706	chair_president	http://www.italaw.com/cases/2048	Juan Fernández-Armesto	0
4707	claimant_appointee	http://www.italaw.com/cases/2048	Bruno Simma	1
4708	chair_president	http://www.italaw.com/cases/2048	Juan Fernández-Armesto	1
4709	claimant	http://www.italaw.com/cases/2050	Sanum Investments Limited	\N
4710	respondent_state	http://www.italaw.com/cases/2050	Laos	\N
4711	investment_treaty	http://www.italaw.com/cases/2050	China-Laos BIT	\N
4712	arbitrator	http://www.italaw.com/cases/2050	Bernard Hanotiau	0
4713	arbitrator	http://www.italaw.com/cases/2050	Brigitte Stern	0
4714	chair_president	http://www.italaw.com/cases/2050	Andrés Rigo Sureda	0
4715	arbitrator	http://www.italaw.com/cases/2050	Brigitte Stern	2
4716	arbitrator	http://www.italaw.com/cases/2050	Bernard Hanotiau	2
4717	chair_president	http://www.italaw.com/cases/2050	Andrés Rigo Sureda	2
4718	country_in_which_this_occurs	http://www.italaw.com/cases/2050	Singapore	4
4719	claimant	http://www.italaw.com/cases/2052	Supervision y Control S.A.	\N
4720	respondent_state	http://www.italaw.com/cases/2052	Costa Rica	\N
4721	investment_treaty	http://www.italaw.com/cases/2052	Costa Rica-Spain BIT	\N
4722	claimant_appointee	http://www.italaw.com/cases/2052	Joseph Klock	0
4723	respondent_appointee	http://www.italaw.com/cases/2052	Eduardo Silva Romero	0
4724	chair_president	http://www.italaw.com/cases/2052	Claus von Wobeser	0
4725	claimant	http://www.italaw.com/cases/2055	Sax	\N
4726	respondent_state	http://www.italaw.com/cases/2055	City of St. Petersburg	\N
4727	arbitrator	http://www.italaw.com/cases/2055	Andrey Yurlevitch Bushev	0
4728	arbitrator	http://www.italaw.com/cases/2055	Per Runeland	0
4729	chair_president	http://www.italaw.com/cases/2055	Marc Blessing	0
4730	claimant	http://www.italaw.com/cases/2062	Houben	\N
4731	respondent_state	http://www.italaw.com/cases/2062	Burundi	\N
4732	investment_treaty	http://www.italaw.com/cases/2062	Belgium-Burundi BIT	\N
4733	claimant_appointee	http://www.italaw.com/cases/2062	Yas Banifatemi	0
4734	respondent_appointee	http://www.italaw.com/cases/2062	Brigitte Stern	0
4735	chair_president	http://www.italaw.com/cases/2062	Gilbert Guillaume	0
4736	claimant	http://www.italaw.com/cases/2068	Marfin Investment Group	\N
4737	respondent_state	http://www.italaw.com/cases/2068	Cyprus	\N
4738	investment_treaty	http://www.italaw.com/cases/2068	Cyprus-Greece BIT	\N
4739	claimant	http://www.italaw.com/cases/2070	CEZ	\N
4740	respondent_state	http://www.italaw.com/cases/2070	Albania	\N
4741	investment_treaty	http://www.italaw.com/cases/2070	Energy Charter Treaty (ECT)	\N
4742	claimant	http://www.italaw.com/cases/2073	Poštová banka	\N
4743	claimant	http://www.italaw.com/cases/2073	a.s.	\N
4744	claimant	http://www.italaw.com/cases/2073	ISTROKAPITAL SE	\N
4745	respondent_state	http://www.italaw.com/cases/2073	Greece	\N
4746	investment_treaty	http://www.italaw.com/cases/2073	Cyprus-Greece BIT	\N
4747	investment_treaty	http://www.italaw.com/cases/2073	Greece-Slovakia BIT	\N
4748	claimant_appointee	http://www.italaw.com/cases/2073	John Townsend	0
4749	respondent_appointee	http://www.italaw.com/cases/2073	Brigitte Stern	0
4750	chair_president	http://www.italaw.com/cases/2073	Eduardo Zuleta	0
4751	claimant_appointee	http://www.italaw.com/cases/2073	John Townsend	1
4752	respondent_appointee	http://www.italaw.com/cases/2073	Brigitte Stern	1
4753	chair_president	http://www.italaw.com/cases/2073	Eduardo Zuleta	1
4754	claimant_appointee	http://www.italaw.com/cases/2073	John Townsend	2
4755	respondent_appointee	http://www.italaw.com/cases/2073	Brigitte Stern	2
4756	chair_president	http://www.italaw.com/cases/2073	Eduardo Zuleta	2
4757	claimant_appointee	http://www.italaw.com/cases/2073	John Townsend	3
4758	respondent_appointee	http://www.italaw.com/cases/2073	Brigitte Stern	3
4759	chair_president	http://www.italaw.com/cases/2073	Eduardo Zuleta	3
4760	claimant_appointee	http://www.italaw.com/cases/2073	John Townsend	4
4761	respondent_appointee	http://www.italaw.com/cases/2073	Brigitte Stern	4
4762	chair_president	http://www.italaw.com/cases/2073	Eduardo Zuleta	4
4763	claimant	http://www.italaw.com/cases/2076	Bosca	\N
4764	respondent_state	http://www.italaw.com/cases/2076	Lithuania	\N
4765	investment_treaty	http://www.italaw.com/cases/2076	Italy-Lithuania BIT	\N
4766	arbitrator	http://www.italaw.com/cases/2076	Daniel Price	0
4767	arbitrator	http://www.italaw.com/cases/2076	Brigitte Stern	0
4768	chair_president	http://www.italaw.com/cases/2076	Marc Lalonde	0
4769	claimant	http://www.italaw.com/cases/2078	Convial Callao S.A.	\N
4770	claimant	http://www.italaw.com/cases/2078	CCI - Compañía de Concesiones de Infraestructura S.A.	\N
4771	respondent_state	http://www.italaw.com/cases/2078	Peru	\N
4772	investment_treaty	http://www.italaw.com/cases/2078	Argentina-Peru BIT	\N
4773	claimant_appointee	http://www.italaw.com/cases/2078	Eduardo Zuleta	0
4774	respondent_appointee	http://www.italaw.com/cases/2078	Brigitte Stern	0
4775	chair_president	http://www.italaw.com/cases/2078	Yves Derains	0
4776	claimant_appointee	http://www.italaw.com/cases/2078	Eduardo Zuleta	1
4777	respondent_appointee	http://www.italaw.com/cases/2078	Brigitte Stern	1
4778	chair_president	http://www.italaw.com/cases/2078	Yves Derains	1
4779	claimant	http://www.italaw.com/cases/2080	Antaris Solar GmbH	\N
4780	respondent_state	http://www.italaw.com/cases/2080	Czech Republic	\N
4781	investment_treaty	http://www.italaw.com/cases/2080	Energy Charter Treaty (ECT)	\N
4782	investment_treaty	http://www.italaw.com/cases/2080	multiple BITs	\N
4783	claimant	http://www.italaw.com/cases/2082	Charanne	\N
4784	claimant	http://www.italaw.com/cases/2082	Construction Investments	\N
4785	respondent_state	http://www.italaw.com/cases/2082	Spain	\N
4786	investment_treaty	http://www.italaw.com/cases/2082	Energy Charter Treaty (ECT)	\N
4787	claimant_appointee	http://www.italaw.com/cases/2082	Guido Santiago Tawil	0
4788	respondent_appointee	http://www.italaw.com/cases/2082	Claus von Wobeser	0
4789	chair_president	http://www.italaw.com/cases/2082	Alexis Mourre	0
4790	claimant	http://www.italaw.com/cases/2084	Tenaris S.A.	\N
4791	claimant	http://www.italaw.com/cases/2084	Talta - Trading e Marketing Sociedade Unipessoal Lda.	\N
4792	respondent_state	http://www.italaw.com/cases/2084	Venezuela	\N
4793	investment_treaty	http://www.italaw.com/cases/2084	Luxembourg-Venezuela BIT	\N
4794	investment_treaty	http://www.italaw.com/cases/2084	Portugal-Venezuela BIT	\N
4795	claimant_appointee	http://www.italaw.com/cases/2084	Enrique Gómez Pinzón	0
4796	respondent_appointee	http://www.italaw.com/cases/2084	Brigitte Stern	0
4797	claimant	http://www.italaw.com/cases/2089	Ternium S.A.	\N
4798	claimant	http://www.italaw.com/cases/2089	Consorcio Siderurgia Amazonia S.L.	\N
4799	respondent_state	http://www.italaw.com/cases/2089	Venezuela	\N
4800	investment_treaty	http://www.italaw.com/cases/2089	Luxembourg-Venezuela BIT	\N
4801	investment_treaty	http://www.italaw.com/cases/2089	Spain-Venezuela BIT	\N
4802	claimant	http://www.italaw.com/cases/2091	Transban Investments Corp.	\N
4803	respondent_state	http://www.italaw.com/cases/2091	Venezuela	\N
4804	investment_treaty	http://www.italaw.com/cases/2091	Barbados-Venezuela BIT	\N
4805	claimant_appointee	http://www.italaw.com/cases/2091	David Caron	0
4806	respondent_appointee	http://www.italaw.com/cases/2091	Santiago Torres Bernárdez	0
4807	claimant_appointee	http://www.italaw.com/cases/2091	David Caron	1
4808	respondent_appointee	http://www.italaw.com/cases/2091	Santiago Torres Bernárdez	1
4809	chair_president	http://www.italaw.com/cases/2091	Peter Tomka	1
4810	claimant	http://www.italaw.com/cases/2093	Tullow Uganda Operations PTY LTD	\N
4811	respondent_state	http://www.italaw.com/cases/2093	Uganda	\N
4812	investment_treaty	http://www.italaw.com/cases/2093	Uganda-United Kingdom BIT	\N
4813	claimant	http://www.italaw.com/cases/2095	UAB E energija	\N
4814	respondent_state	http://www.italaw.com/cases/2095	Latvia	\N
4815	investment_treaty	http://www.italaw.com/cases/2095	Latvia-Lithuania BIT	\N
4816	arbitrator	http://www.italaw.com/cases/2095	August Reinisch	0
4817	claimant	http://www.italaw.com/cases/2097	Valle Verde Sociedad Financiera S.L.	\N
4818	respondent_state	http://www.italaw.com/cases/2097	Venezuela	\N
4819	investment_treaty	http://www.italaw.com/cases/2097	Spain-Venezuela BIT	\N
4820	claimant_appointee	http://www.italaw.com/cases/2097	Franco Ferrari	0
4821	respondent_appointee	http://www.italaw.com/cases/2097	Raúl Vinuesa	0
4822	chair_president	http://www.italaw.com/cases/2097	Enrique Barros Bourie	0
4823	claimant	http://www.italaw.com/cases/2099	Venoklim Holding B.V.	\N
4824	respondent_state	http://www.italaw.com/cases/2099	Venezuela	\N
4825	investment_treaty	http://www.italaw.com/cases/2099	Netherlands-Venezuela BIT	\N
4826	claimant_appointee	http://www.italaw.com/cases/2099	Enrique Gómez Pinzón	0
4827	respondent_appointee	http://www.italaw.com/cases/2099	Rodrigo Oreamuno Blanco	0
4828	chair_president	http://www.italaw.com/cases/2099	Yves Derains	0
4829	claimant_appointee	http://www.italaw.com/cases/2099	Enrique Gómez Pinzón	1
4830	respondent_appointee	http://www.italaw.com/cases/2099	Rodrigo Oreamuno Blanco	1
4831	chair_president	http://www.italaw.com/cases/2099	Yves Derains	1
4832	claimants_counsel	http://www.italaw.com/cases/2099	Gerardo Jimenez Umbarila	1
4833	claimants_counsel	http://www.italaw.com/cases/2099	Juan Pablo Lievano Vegalara	1
4834	claimants_counsel	http://www.italaw.com/cases/2099	Jimenez and Lievano Abogados	1
4835	respondents_counsel	http://www.italaw.com/cases/2099	Manuel Enrique Galindo Ballesteros	1
4836	respondents_counsel	http://www.italaw.com/cases/2099	Procuraduría General de la República Bolivariana de Venezuela	1
4837	respondents_counsel	http://www.italaw.com/cases/2099	George Kahale III	1
4838	respondents_counsel	http://www.italaw.com/cases/2099	Gabriela Álvarez-Ávila	1
4839	respondents_counsel	http://www.italaw.com/cases/2099	Eloy Barbará de Parres	1
4840	respondents_counsel	http://www.italaw.com/cases/2099	Claudia Frutos-Peterson	1
4841	respondents_counsel	http://www.italaw.com/cases/2099	Curtis Mallet-Prevost Colt & Mosle LLP	1
4842	claimant_appointee	http://www.italaw.com/cases/2099	Enrique Gómez Pinzón	2
4843	claimant	http://www.italaw.com/cases/2101	Veolia Propreté	\N
4844	respondent_state	http://www.italaw.com/cases/2101	Egypt	\N
4845	investment_treaty	http://www.italaw.com/cases/2101	Egypt-France BIT	\N
4846	claimant_appointee	http://www.italaw.com/cases/2101	Klaus Sachs	0
4847	respondent_appointee	http://www.italaw.com/cases/2101	Zachary Douglas	0
4848	chair_president	http://www.italaw.com/cases/2101	Abdulqawi Yusuf	0
4849	claimant	http://www.italaw.com/cases/2108	Corporación Quiport S.A.	\N
4850	respondent_state	http://www.italaw.com/cases/2108	Ecuador	\N
4851	investment_treaty	http://www.italaw.com/cases/2108	Various BITs	\N
4852	claimant	http://www.italaw.com/cases/2110	Spence International Investments	\N
4853	claimant	http://www.italaw.com/cases/2110	Holsten	\N
4854	claimant	http://www.italaw.com/cases/2110	Copher	\N
4855	claimant	http://www.italaw.com/cases/2110	Berkowitz	\N
4856	claimant	http://www.italaw.com/cases/2110	Gremillion	\N
4857	respondent_state	http://www.italaw.com/cases/2110	Costa Rica	\N
4858	investment_treaty	http://www.italaw.com/cases/2110	CAFTA	\N
4859	arbitrator	http://www.italaw.com/cases/2110	Mark Kantor	3
4860	arbitrator	http://www.italaw.com/cases/2110	Raúl Vinuesa	3
4861	chair_president	http://www.italaw.com/cases/2110	Daniel Bethlehem	3
4862	claimant	http://www.italaw.com/cases/2112	International Company for Railway Systems (ICRS)	\N
4863	respondent_state	http://www.italaw.com/cases/2112	Jordan	\N
4864	investment_treaty	http://www.italaw.com/cases/2112	Jordan-Kuwait BIT	\N
4865	arbitrator	http://www.italaw.com/cases/2112	Stanimir Alexandrov	0
4866	arbitrator	http://www.italaw.com/cases/2112	Bernard Audit	0
4867	chair_president	http://www.italaw.com/cases/2112	Patrick Robinson	0
4868	arbitrator	http://www.italaw.com/cases/2112	Stanimir Alexandrov	1
4869	arbitrator	http://www.italaw.com/cases/2112	Bernard Audit	1
4870	chair_president	http://www.italaw.com/cases/2112	Patrick Robinson	1
4871	arbitrator	http://www.italaw.com/cases/2112	Stanimir Alexandrov	2
4872	arbitrator	http://www.italaw.com/cases/2112	Bernard Audit	2
4873	chair_president	http://www.italaw.com/cases/2112	Patrick Robinson	2
4874	arbitrator	http://www.italaw.com/cases/2112	Stanimir Alexandrov	3
4875	arbitrator	http://www.italaw.com/cases/2112	Bernard Audit	3
4876	chair_president	http://www.italaw.com/cases/2112	Patrick Robinson	3
4877	claimant	http://www.italaw.com/cases/2119	AES Solar	\N
4878	respondent_state	http://www.italaw.com/cases/2119	Spain	\N
4879	investment_treaty	http://www.italaw.com/cases/2119	Energy Charter Treaty (ECT)	\N
4880	claimant_appointee	http://www.italaw.com/cases/2119	Charles Brower	0
4881	respondent_appointee	http://www.italaw.com/cases/2119	Bernardo Sepúlveda Amor	0
4882	chair_president	http://www.italaw.com/cases/2119	Gabrielle Kaufmann-Kohler	0
4883	claimant	http://www.italaw.com/cases/2121	South American Silver Limited	\N
4884	respondent_state	http://www.italaw.com/cases/2121	Bolivia	\N
4885	investment_treaty	http://www.italaw.com/cases/2121	Bolivia-United Kingdom BIT	\N
4886	claimant_appointee	http://www.italaw.com/cases/2121	Francisco Orrego Vicuña	4
4887	respondent_appointee	http://www.italaw.com/cases/2121	Osvaldo Guglielmino	4
4888	chair_president	http://www.italaw.com/cases/2121	Eduardo Zuleta	4
4889	claimant_appointee	http://www.italaw.com/cases/2121	Francisco Orrego Vicuña	5
4890	respondent_appointee	http://www.italaw.com/cases/2121	Osvaldo Guglielmino	5
4891	chair_president	http://www.italaw.com/cases/2121	Eduardo Zuleta	5
4892	arbitrator	http://www.italaw.com/cases/2121	Francisco Orrego Vicuña	7
4893	arbitrator	http://www.italaw.com/cases/2121	Osvaldo Guglielmino	7
4894	chair_president	http://www.italaw.com/cases/2121	Eduardo Zuleta Jaramillo	7
4895	arbitrator	http://www.italaw.com/cases/2121	Francisco Orrego Vicuña	8
4896	arbitrator	http://www.italaw.com/cases/2121	Osvaldo Guglielmino	8
4897	chair_president	http://www.italaw.com/cases/2121	Eduardo Zuleta Jaramillo	8
4898	arbitrator	http://www.italaw.com/cases/2121	Osvaldo Guglielmino	9
4899	arbitrator	http://www.italaw.com/cases/2121	Francisco Orrego Vicuña	9
4900	chair_president	http://www.italaw.com/cases/2121	Eduardo Zuleta Jaramillo	9
4901	claimant	http://www.italaw.com/cases/2123	Impresa Grassetto S. p. A.	\N
4902	respondent_state	http://www.italaw.com/cases/2123	Slovenia	\N
4903	investment_treaty	http://www.italaw.com/cases/2123	Italy-Slovenia BIT	\N
4904	claimant_appointee	http://www.italaw.com/cases/2123	Pierre-Yves Tschanz	0
4905	respondent_appointee	http://www.italaw.com/cases/2123	Brigitte Stern	0
4906	chair_president	http://www.italaw.com/cases/2123	William Park	0
4907	claimant	http://www.italaw.com/cases/2125	Cervin Investissements S.A.	\N
4908	claimant	http://www.italaw.com/cases/2125	Rhone Investissements S.A.	\N
4909	respondent_state	http://www.italaw.com/cases/2125	Costa Rica	\N
4910	investment_treaty	http://www.italaw.com/cases/2125	Costa Rica-Switzerland BIT	\N
4911	claimant_appointee	http://www.italaw.com/cases/2125	Ricardo Ramírez	0
4912	respondent_appointee	http://www.italaw.com/cases/2125	Andrés Jana	0
4913	chair_president	http://www.italaw.com/cases/2125	Alexis Mourre	0
4914	claimant_appointee	http://www.italaw.com/cases/2125	Ricardo Ramírez	1
4915	claimant_appointee	http://www.italaw.com/cases/2125	Ricardo Ramírez	2
4916	respondent_appointee	http://www.italaw.com/cases/2125	Andrés Jana	2
4917	chair_president	http://www.italaw.com/cases/2125	Alexis Mourre	2
4918	claimant	http://www.italaw.com/cases/2127	Valores Mundiales	\N
4919	claimant	http://www.italaw.com/cases/2127	S.L.	\N
4920	claimant	http://www.italaw.com/cases/2127	Consorcio Andino S.L.	\N
4921	respondent_state	http://www.italaw.com/cases/2127	Venezuela	\N
4922	investment_treaty	http://www.italaw.com/cases/2127	Spain-Venezuela BIT	\N
4923	claimant	http://www.italaw.com/cases/2129	Ossama Al Sharif	\N
4924	respondent_state	http://www.italaw.com/cases/2129	Egypt	\N
4925	investment_treaty	http://www.italaw.com/cases/2129	Egypt-Jordan BIT	\N
4926	claimant_appointee	http://www.italaw.com/cases/2129	Stephen Schwebel	0
4927	respondent_appointee	http://www.italaw.com/cases/2129	J. Christopher Thomas	0
4928	claimant	http://www.italaw.com/cases/2131	Caratube International Oil Company LLP	\N
4929	claimant	http://www.italaw.com/cases/2131	Hourani	\N
4930	respondent_state	http://www.italaw.com/cases/2131	Kazakhstan	\N
4931	investment_treaty	http://www.italaw.com/cases/2131	Kazakhstan-United States BIT	\N
4932	claimant_appointee	http://www.italaw.com/cases/2131	Laurent Aynès	0
4933	respondent_appointee	http://www.italaw.com/cases/2131	Bruno Boesch	0
4934	chair_president	http://www.italaw.com/cases/2131	Laurent Lévy	0
4935	arbitrator	http://www.italaw.com/cases/2131	Laurent Lévy	2
4936	arbitrator	http://www.italaw.com/cases/2131	Laurent Aynès	2
4937	arbitrator	http://www.italaw.com/cases/2131	Laurent Aynès	3
4938	arbitrator	http://www.italaw.com/cases/2131	Jacques Salès	3
4939	chair_president	http://www.italaw.com/cases/2131	Laurent Lévy	3
4940	claimant	http://www.italaw.com/cases/2151	Ossama Al Sharif	\N
4941	respondent_state	http://www.italaw.com/cases/2151	Egypt	\N
4942	investment_treaty	http://www.italaw.com/cases/2151	Egypt-Jordan BIT	\N
4943	claimant_appointee	http://www.italaw.com/cases/2151	Daniel Price	0
4944	respondent_appointee	http://www.italaw.com/cases/2151	Brigitte Stern	0
4945	claimant	http://www.italaw.com/cases/2153	Ossama Al Sharif	\N
4946	respondent_state	http://www.italaw.com/cases/2153	Egypt	\N
4947	investment_treaty	http://www.italaw.com/cases/2153	Egypt-Jordan BIT	\N
4948	claimant_appointee	http://www.italaw.com/cases/2153	Stephen Schwebel	0
4949	respondent_appointee	http://www.italaw.com/cases/2153	Philippe Sands	0
4950	claimant	http://www.italaw.com/cases/2160	van Riet	\N
4951	respondent_state	http://www.italaw.com/cases/2160	Croatia	\N
4952	investment_treaty	http://www.italaw.com/cases/2160	Belgium-Luxembourg-Croatia BIT	\N
4953	claimant_appointee	http://www.italaw.com/cases/2160	Ibrahim Fadlallah	0
4954	respondent_appointee	http://www.italaw.com/cases/2160	Toby Landau	0
4955	chair_president	http://www.italaw.com/cases/2160	Karl-Heinz Böckstiegel	0
4956	claimant	http://www.italaw.com/cases/2171	EVN AG	\N
4957	respondent_state	http://www.italaw.com/cases/2171	Bulgaria	\N
4958	investment_treaty	http://www.italaw.com/cases/2171	Austria-Bulgaria BIT	\N
4959	investment_treaty	http://www.italaw.com/cases/2171	Energy Charter Treaty (ECT)	\N
4960	claimant	http://www.italaw.com/cases/2176	Garanti Koza LLP	\N
4961	respondent_state	http://www.italaw.com/cases/2176	Turkmenistan	\N
4962	investment_treaty	http://www.italaw.com/cases/2176	Turkmenistan-United Kingdom BIT	\N
4963	claimant_appointee	http://www.italaw.com/cases/2176	George Constantine Lambrou	0
4964	respondent_appointee	http://www.italaw.com/cases/2176	Laurence Boisson de Chazournes	0
4965	chair_president	http://www.italaw.com/cases/2176	John Townsend	0
4966	claimant_appointee	http://www.italaw.com/cases/2176	George Constantine Lambrou	1
4967	respondent_appointee	http://www.italaw.com/cases/2176	Laurence Boisson de Chazournes	1
4968	chair_president	http://www.italaw.com/cases/2176	John Townsend	1
4969	claimant_appointee	http://www.italaw.com/cases/2176	George Constantine Lambrou	2
4970	respondent_appointee	http://www.italaw.com/cases/2176	Laurence Boisson de Chazournes	2
4971	chair_president	http://www.italaw.com/cases/2176	John Townsend	2
4972	claimant	http://www.italaw.com/cases/2183	Mobil Exploration and Development Inc. Suc. Argentina	\N
4973	claimant	http://www.italaw.com/cases/2183	Mobil Argentina S.A.	\N
4974	respondent_state	http://www.italaw.com/cases/2183	Argentina	\N
4975	investment_treaty	http://www.italaw.com/cases/2183	Argentina-United States BIT	\N
4976	claimant_appointee	http://www.italaw.com/cases/2183	Piero Bernardini	0
4977	respondent_appointee	http://www.italaw.com/cases/2183	Antonio Remiro Brotons	0
4978	chair_president	http://www.italaw.com/cases/2183	Gustaf Moller	0
4979	claimant	http://www.italaw.com/cases/2185	Al-Kharafi and Sons Co.	\N
4980	respondent_state	http://www.italaw.com/cases/2185	Libya	\N
4981	investment_treaty	http://www.italaw.com/cases/2185	The Unified Agreement for the Investment of Arab Capital in the Arab States (The UA)	\N
4982	claimant_appointee	http://www.italaw.com/cases/2185	Ibrahim Fawzi	0
4983	respondent_appointee	http://www.italaw.com/cases/2185	Mohamed El-Kamoudi El-Hafi	0
4984	chair_president	http://www.italaw.com/cases/2185	Abdel Hamid El-Ahdab	0
4985	country_in_which_this_occurs	http://www.italaw.com/cases/2185	France	1
4986	claimant	http://www.italaw.com/cases/2219	Dede	\N
4987	claimant	http://www.italaw.com/cases/2219	Elhüseyni	\N
4988	respondent_state	http://www.italaw.com/cases/2219	Romania	\N
4989	investment_treaty	http://www.italaw.com/cases/2219	Romania-Turkey BIT	\N
4990	claimant_appointee	http://www.italaw.com/cases/2219	Nicolas Herzog	0
4991	respondent_appointee	http://www.italaw.com/cases/2219	Brigitte Stern	0
4992	chair_president	http://www.italaw.com/cases/2219	William Park	0
4993	claimant_appointee	http://www.italaw.com/cases/2219	Nicolas Herzog	1
4994	respondent_appointee	http://www.italaw.com/cases/2219	Brigitte Stern	1
4995	chair_president	http://www.italaw.com/cases/2219	William Park	1
4996	claimant	http://www.italaw.com/cases/2221	Tekstil	\N
4997	respondent_state	http://www.italaw.com/cases/2221	Uzbekistan	\N
4998	investment_treaty	http://www.italaw.com/cases/2221	Turkey-Uzbekistan BIT	\N
4999	claimant	http://www.italaw.com/cases/2230	Serter	\N
5000	respondent_state	http://www.italaw.com/cases/2230	France	\N
5001	investment_treaty	http://www.italaw.com/cases/2230	Turkey-France BIT	\N
5002	claimant	http://www.italaw.com/cases/2235	Edenred S.A.	\N
5003	respondent_state	http://www.italaw.com/cases/2235	Hungary	\N
5004	investment_treaty	http://www.italaw.com/cases/2235	France-Hungary BIT	\N
5005	claimant	http://www.italaw.com/cases/2242	Transglobal Green Energy	\N
5006	respondent_state	http://www.italaw.com/cases/2242	Panama	\N
5007	investment_treaty	http://www.italaw.com/cases/2242	Panama-United States of America BIT	\N
5008	claimant	http://www.italaw.com/cases/2250	Highbury International AVV	\N
5009	claimant	http://www.italaw.com/cases/2250	Ramstein Trading Inc.	\N
5010	respondent_state	http://www.italaw.com/cases/2250	Venezuela	\N
5011	investment_treaty	http://www.italaw.com/cases/2250	Netherlands-Venezuela BIT	\N
5012	claimant_appointee	http://www.italaw.com/cases/2250	Guido Santiago Tawil	0
5013	respondent_appointee	http://www.italaw.com/cases/2250	Claus von Wobeser	0
5014	chair_president	http://www.italaw.com/cases/2250	Enrique Barros Bourie	0
5015	claimant	http://www.italaw.com/cases/2252	Spentex Netherlands B.V.	\N
5016	respondent_state	http://www.italaw.com/cases/2252	Uzbekistan	\N
5017	investment_treaty	http://www.italaw.com/cases/2252	Netherlands-Uzbekistan BIT	\N
5018	claimant	http://www.italaw.com/cases/2256	Swissbourgh Diamond Mines (Pty) Limited	\N
5019	respondent_state	http://www.italaw.com/cases/2256	Lesotho	\N
5020	investment_treaty	http://www.italaw.com/cases/2256	Finance and Investment Protocol (FIP) for the Southern African Development Community (SADC)	\N
5021	claimant	http://www.italaw.com/cases/2258	Infinito Gold Ltd.	\N
5022	respondent_state	http://www.italaw.com/cases/2258	Costa Rica	\N
5023	investment_treaty	http://www.italaw.com/cases/2258	Canada-Costa Rica BIT	\N
5024	claimant	http://www.italaw.com/cases/2262	Khaitan Holdings Mauritius Limited	\N
5025	respondent_state	http://www.italaw.com/cases/2262	India	\N
5026	investment_treaty	http://www.italaw.com/cases/2262	India-Mauritius BIT	\N
5027	claimant	http://www.italaw.com/cases/2264	ECE Projektmanagement	\N
5028	respondent_state	http://www.italaw.com/cases/2264	Czech Republic	\N
5029	investment_treaty	http://www.italaw.com/cases/2264	Czech Republic-Germany BIT	\N
5030	arbitrator	http://www.italaw.com/cases/2264	Andreas Bucher	0
5031	arbitrator	http://www.italaw.com/cases/2264	J. Christopher Thomas	0
5032	chair_president	http://www.italaw.com/cases/2264	Franklin Berman	0
5033	claimant	http://www.italaw.com/cases/2268	Lundin Tunisia B. V.	\N
5034	respondent_state	http://www.italaw.com/cases/2268	Tunisia	\N
5035	investment_treaty	http://www.italaw.com/cases/2268	Sweden-Tunisia BIT	\N
5036	claimant_appointee	http://www.italaw.com/cases/2268	Emmanuel Gaillard	0
5037	respondent_appointee	http://www.italaw.com/cases/2268	Anna Joubin-Bret	0
5038	chair_president	http://www.italaw.com/cases/2268	Azzedine Kettani	0
5039	claimant	http://www.italaw.com/cases/2272	Metal-Tech Ltd.	\N
5040	respondent_state	http://www.italaw.com/cases/2272	Uzbekistan	\N
5041	investment_treaty	http://www.italaw.com/cases/2272	Israel-Uzbekistan BIT	\N
5042	arbitrator	http://www.italaw.com/cases/2272	John Townsend	0
5043	arbitrator	http://www.italaw.com/cases/2272	Claus von Wobeser	0
5044	chair_president	http://www.italaw.com/cases/2272	Gabrielle Kaufmann-Kohler	0
5045	claimant	http://www.italaw.com/cases/2275	Deutsche Telekom	\N
5046	respondent_state	http://www.italaw.com/cases/2275	India	\N
5047	investment_treaty	http://www.italaw.com/cases/2275	Germany-India BIT	\N
5048	claimant_appointee	http://www.italaw.com/cases/2275	Daniel Price	0
5049	claimant	http://www.italaw.com/cases/2277	KT Asia Investment Group B.V.	\N
5050	respondent_state	http://www.italaw.com/cases/2277	Kazakhstan	\N
5051	investment_treaty	http://www.italaw.com/cases/2277	Netherlands-Kazakhstan BIT	\N
5052	claimant_appointee	http://www.italaw.com/cases/2277	Ian Glick	0
5053	respondent_appointee	http://www.italaw.com/cases/2277	J. Christopher Thomas	0
5054	chair_president	http://www.italaw.com/cases/2277	Gabrielle Kaufmann-Kohler	0
5055	claimant	http://www.italaw.com/cases/2284	Stans Energy	\N
5056	respondent_state	http://www.italaw.com/cases/2284	Kyrgyz Republic	\N
5057	claimant_appointee	http://www.italaw.com/cases/2284	Nina Vilkova	1
5058	respondent_appointee	http://www.italaw.com/cases/2284	Leonid Balayan	1
5059	chair_president	http://www.italaw.com/cases/2284	Marina Zinovevna Park	1
5060	claimant_appointee	http://www.italaw.com/cases/2284	Nina Vilkova	2
5061	respondent_appointee	http://www.italaw.com/cases/2284	Leonid Balayan	2
5062	chair_president	http://www.italaw.com/cases/2284	Marina Zinovevna Park	2
5063	claimant	http://www.italaw.com/cases/2288	AES Corporation	\N
5064	claimant	http://www.italaw.com/cases/2288	Tau Power B.V.	\N
5065	respondent_state	http://www.italaw.com/cases/2288	Kazakhstan	\N
5066	investment_treaty	http://www.italaw.com/cases/2288	Kazakhstan-United States BIT	\N
5067	investment_treaty	http://www.italaw.com/cases/2288	Energy Charter Treaty (ECT)	\N
5068	claimant_appointee	http://www.italaw.com/cases/2288	Klaus Sachs	0
5069	respondent_appointee	http://www.italaw.com/cases/2288	Vaughan Lowe	0
5070	chair_president	http://www.italaw.com/cases/2288	Pierre Tercier	0
5071	claimant	http://www.italaw.com/cases/2291	Cemusa - Corporación Europea de Mobiliario Urbano	\N
5072	claimant	http://www.italaw.com/cases/2291	S.A.	\N
5073	claimant	http://www.italaw.com/cases/2291	Corporación Americana de Equipamientos Urbanos	\N
5074	claimant	http://www.italaw.com/cases/2291	S.L.	\N
5075	respondent_state	http://www.italaw.com/cases/2291	Mexico	\N
5076	investment_treaty	http://www.italaw.com/cases/2291	Mexico-Spain BIT	\N
5077	claimant	http://www.italaw.com/cases/2294	ASA International S.p.A.	\N
5078	respondent_state	http://www.italaw.com/cases/2294	Egypt	\N
5079	investment_treaty	http://www.italaw.com/cases/2294	Egypt-Italy BIT	\N
5080	claimant	http://www.italaw.com/cases/2297	Indorama International Finance Limited	\N
5081	respondent_state	http://www.italaw.com/cases/2297	Egypt	\N
5082	investment_treaty	http://www.italaw.com/cases/2297	Egypt-United Kingdom BIT	\N
5083	claimant_appointee	http://www.italaw.com/cases/2297	Christoph Schreuer	0
5084	respondent_appointee	http://www.italaw.com/cases/2297	Zachary Douglas	0
5085	chair_president	http://www.italaw.com/cases/2297	Donald McRae	0
5086	claimant	http://www.italaw.com/cases/2299	Sajwani	\N
5087	claimant	http://www.italaw.com/cases/2299	Damac Park Avenue for Real Estate Development S.A.E.	\N
5088	claimant	http://www.italaw.com/cases/2299	Damac Gamsha Bay for Development S.A.E.	\N
5089	respondent_state	http://www.italaw.com/cases/2299	Egypt	\N
5090	investment_treaty	http://www.italaw.com/cases/2299	Egypt-United Arab Emirates BIT	\N
5091	claimant_appointee	http://www.italaw.com/cases/2299	Daniel Price	0
5092	respondent_appointee	http://www.italaw.com/cases/2299	Toby Landau	0
5093	chair_president	http://www.italaw.com/cases/2299	Pierre Tercier	0
5094	claimant	http://www.italaw.com/cases/2301	Bawabet Al Kuwait Holding Company	\N
5095	respondent_state	http://www.italaw.com/cases/2301	Egypt	\N
5096	investment_treaty	http://www.italaw.com/cases/2301	Egypt-Kuwait BIT	\N
5097	claimant_appointee	http://www.italaw.com/cases/2301	Bernard Hanotiau	0
5098	respondent_appointee	http://www.italaw.com/cases/2301	Philippe Sands	0
5099	chair_president	http://www.italaw.com/cases/2301	Teresa Cheng	0
5100	claimant	http://www.italaw.com/cases/2303	CSP Equity Investment Sarl	\N
5101	respondent_state	http://www.italaw.com/cases/2303	Spain	\N
5102	investment_treaty	http://www.italaw.com/cases/2303	Energy Charter Treaty (ECT)	\N
5103	claimant	http://www.italaw.com/cases/2307	Mykhailenko	\N
5104	claimant	http://www.italaw.com/cases/2307	United Pipe Export Company Trading Ag	\N
5105	respondent_state	http://www.italaw.com/cases/2307	Belarus	\N
5106	investment_treaty	http://www.italaw.com/cases/2307	Belarus-Ukraine BIT	\N
5107	investment_treaty	http://www.italaw.com/cases/2307	Belarus-Switzerland BIT	\N
5108	claimant	http://www.italaw.com/cases/2317	RREEF Infrastructure (G.P.) Limited	\N
5109	claimant	http://www.italaw.com/cases/2317	RREEF Pan-European Infrastructure Two Lux S.à r.l.	\N
5110	respondent_state	http://www.italaw.com/cases/2317	Spain	\N
5111	investment_treaty	http://www.italaw.com/cases/2317	Energy Charter Treaty (ECT)	\N
5112	claimant	http://www.italaw.com/cases/2319	Antin Infrastructure Services Luxembourg S.à.r.l.	\N
5113	claimant	http://www.italaw.com/cases/2319	Antin Energia Termosolar B.V.	\N
5114	respondent_state	http://www.italaw.com/cases/2319	Spain	\N
5115	investment_treaty	http://www.italaw.com/cases/2319	Energy Charter Treaty (ECT)	\N
5116	claimant	http://www.italaw.com/cases/2347	AHS Niger	\N
5117	claimant	http://www.italaw.com/cases/2347	Menzies Middle East and Africa S.A.	\N
5118	respondent_state	http://www.italaw.com/cases/2347	Republic of Niger	\N
5119	claimant_appointee	http://www.italaw.com/cases/2347	Patrick Hubert	0
5120	respondent_appointee	http://www.italaw.com/cases/2347	Gaston Kenfack-Douajni	0
5121	chair_president	http://www.italaw.com/cases/2347	Fernando Mantilla-Serrano	0
5122	claimant	http://www.italaw.com/cases/2354	World Wide Minerals	\N
5123	respondent_state	http://www.italaw.com/cases/2354	Kazakhstan	\N
5124	investment_treaty	http://www.italaw.com/cases/2354	Canada-USSR BIT	\N
5125	claimant_appointee	http://www.italaw.com/cases/2354	Franklin Berman	0
5126	claimant	http://www.italaw.com/cases/2358	Stati	\N
5127	claimant	http://www.italaw.com/cases/2358	Ascom Group SA	\N
5128	claimant	http://www.italaw.com/cases/2358	Terra Raf Trans Traiding Ltd	\N
5129	respondent_state	http://www.italaw.com/cases/2358	Kazakhstan	\N
5130	investment_treaty	http://www.italaw.com/cases/2358	Energy Charter Treaty (ECT)	\N
5131	claimant_appointee	http://www.italaw.com/cases/2358	David Haigh	0
5132	respondent_appointee	http://www.italaw.com/cases/2358	Sergei Lebedev	0
5133	chair_president	http://www.italaw.com/cases/2358	Karl-Heinz Böckstiegel	0
5134	claimant	http://www.italaw.com/cases/2360	Erhas and others	\N
5135	respondent_state	http://www.italaw.com/cases/2360	Turkmenistan	\N
5136	investment_treaty	http://www.italaw.com/cases/2360	Turkey-Turkmenistan BIT	\N
5137	claimant_appointee	http://www.italaw.com/cases/2360	Stanimir Alexandrov	0
5138	respondent_appointee	http://www.italaw.com/cases/2360	Zachary Douglas	0
5139	chair_president	http://www.italaw.com/cases/2360	Alexis Mourre	0
5140	claimant	http://www.italaw.com/cases/2370	McKenzie	\N
5141	respondent_state	http://www.italaw.com/cases/2370	Vietnam	\N
5142	investment_treaty	http://www.italaw.com/cases/2370	United States-Vietnam Trade Relations Treaty	\N
5143	claimant_appointee	http://www.italaw.com/cases/2370	John Gotanda	0
5144	respondent_appointee	http://www.italaw.com/cases/2370	Campbell McLachlan	0
5145	chair_president	http://www.italaw.com/cases/2370	Neil Kaplan	0
5146	claimant	http://www.italaw.com/cases/2391	Lahoud	\N
5147	respondent_state	http://www.italaw.com/cases/2391	Congo Democratic Republic of (formerly Zaire)	\N
5148	claimant_appointee	http://www.italaw.com/cases/2391	Karim Hafez	0
5149	respondent_appointee	http://www.italaw.com/cases/2391	Marie-Andrée Ngwe	0
5150	chair_president	http://www.italaw.com/cases/2391	William Park	0
5151	claimant	http://www.italaw.com/cases/2404	RECOFI	\N
5152	respondent_state	http://www.italaw.com/cases/2404	Vietnam	\N
5153	investment_treaty	http://www.italaw.com/cases/2404	France-Vietnam BIT	\N
5154	claimant_appointee	http://www.italaw.com/cases/2404	Stanimir Alexandrov	0
5155	respondent_appointee	http://www.italaw.com/cases/2404	John Christopher Thomas	0
5156	claimant	http://www.italaw.com/cases/2406	Longreef Investments AVV	\N
5157	respondent_state	http://www.italaw.com/cases/2406	Venezuela	\N
5158	investment_treaty	http://www.italaw.com/cases/2406	Netherlands-Venezuela BIT	\N
5159	claimant_appointee	http://www.italaw.com/cases/2406	Enrique Gómez Pinzón	0
5160	respondent_appointee	http://www.italaw.com/cases/2406	Alexis Mourre	0
5161	chair_president	http://www.italaw.com/cases/2406	David A.O. Edward	0
5162	claimant_appointee	http://www.italaw.com/cases/2406	Enrique Gómez-Pinzón	1
5163	respondent_appointee	http://www.italaw.com/cases/2406	Alexis Mourre	1
5164	chair_president	http://www.italaw.com/cases/2406	David A.O. Edward	1
5165	claimant	http://www.italaw.com/cases/2408	TRACO Deutsche Travertinwerke GmbH	\N
5166	respondent_state	http://www.italaw.com/cases/2408	Poland	\N
5167	investment_treaty	http://www.italaw.com/cases/2408	Germany-Poland BIT	\N
5168	claimant_appointee	http://www.italaw.com/cases/2408	Christoph Schreuer	0
5169	respondent_appointee	http://www.italaw.com/cases/2408	Brigitte Stern	0
5170	chair_president	http://www.italaw.com/cases/2408	V.V. Veeder	0
5171	claimant	http://www.italaw.com/cases/2410	Swiss Investor	\N
5172	respondent_state	http://www.italaw.com/cases/2410	South Africa	\N
5173	investment_treaty	http://www.italaw.com/cases/2410	South Africa-Switzerland BIT	\N
5174	arbitrator	http://www.italaw.com/cases/2410	Dan Brennan	0
5175	arbitrator	http://www.italaw.com/cases/2410	Günther Frosch	0
5176	arbitrator	http://www.italaw.com/cases/2410	Gilbert Marcus	0
5177	claimant	http://www.italaw.com/cases/2444	Levy	\N
5178	respondent_state	http://www.italaw.com/cases/2444	Peru	\N
5179	investment_treaty	http://www.italaw.com/cases/2444	France-Peru BIT	\N
5180	respondent_appointee	http://www.italaw.com/cases/2444	Bernard Hanotiau	0
5181	chair_president	http://www.italaw.com/cases/2444	Rodrigo Oreamuno Blanco	0
5182	claimant_appointee	http://www.italaw.com/cases/2444	Joaquín Morales Godoy	1
5183	claimant	http://www.italaw.com/cases/2447	ST-AD GmbH	\N
5184	respondent_state	http://www.italaw.com/cases/2447	Bulgaria	\N
5185	investment_treaty	http://www.italaw.com/cases/2447	Bulgaria-Germany BIT	\N
5186	claimant_appointee	http://www.italaw.com/cases/2447	Bohuslav Klein	0
5187	respondent_appointee	http://www.italaw.com/cases/2447	J. Christopher Thomas	0
5188	chair_president	http://www.italaw.com/cases/2447	Brigitte Stern	0
5189	country_in_which_this_occurs	http://www.italaw.com/cases/2447	Germany	1
5190	claimant	http://www.italaw.com/cases/2456	Unión Fenosa Gas	\N
5191	claimant	http://www.italaw.com/cases/2456	S.A.	\N
5192	respondent_state	http://www.italaw.com/cases/2456	Egypt	\N
5193	investment_treaty	http://www.italaw.com/cases/2456	Egypt-Spain BIT	\N
5194	claimant	http://www.italaw.com/cases/2463	Central European Aluminium Company	\N
5195	respondent_state	http://www.italaw.com/cases/2463	Montenegro	\N
5196	investment_treaty	http://www.italaw.com/cases/2463	Cyprus-Serbia and Montenegro BIT	\N
5197	claimant	http://www.italaw.com/cases/2465	Bozbey	\N
5198	respondent_state	http://www.italaw.com/cases/2465	Turkmenistan	\N
5199	investment_treaty	http://www.italaw.com/cases/2465	Turkey-Turkmenistan BIT	\N
5200	claimant	http://www.italaw.com/cases/2467	JSC BTA Bank	\N
5201	respondent_state	http://www.italaw.com/cases/2467	Kyrgyz Republic	\N
5202	investment_treaty	http://www.italaw.com/cases/2467	Kazakhstan-Kyrgyz Republic BIT	\N
5203	claimant	http://www.italaw.com/cases/2469	Koch Minerals Sàrl	\N
5204	claimant	http://www.italaw.com/cases/2469	Koch Nitrogen International Sàrl	\N
5205	respondent_state	http://www.italaw.com/cases/2469	Venezuela	\N
5206	investment_treaty	http://www.italaw.com/cases/2469	Germany-Venezuela BIT	\N
5207	claimant	http://www.italaw.com/cases/2475	African Petroleum Gambia Limited (Block A4)	\N
5208	respondent_state	http://www.italaw.com/cases/2475	The Gambia	\N
5209	investment_treaty	http://www.italaw.com/cases/2475	Australia-Gambia BIT	\N
5210	claimant	http://www.italaw.com/cases/2477	African Petroleum Gambia Limited (Block A1)	\N
5211	respondent_state	http://www.italaw.com/cases/2477	The Gambia	\N
5212	investment_treaty	http://www.italaw.com/cases/2477	Australia-Gambia BIT	\N
5213	claimant	http://www.italaw.com/cases/2480	Antonov	\N
5214	respondent_state	http://www.italaw.com/cases/2480	Lithuania	\N
5215	investment_treaty	http://www.italaw.com/cases/2480	Lithuania-Russian Federation BIT	\N
5216	claimant	http://www.italaw.com/cases/2487	Caravelí Cotaruse Transmisora de Energía S.A.C.	\N
5217	respondent_state	http://www.italaw.com/cases/2487	Peru	\N
5218	investment_treaty	http://www.italaw.com/cases/2487	Spain-Peru BIT	\N
5219	claimant_appointee	http://www.italaw.com/cases/2487	Alexis Mourre	0
5220	respondent_appointee	http://www.italaw.com/cases/2487	Horacio Grigera Naón	0
5221	chair_president	http://www.italaw.com/cases/2487	Luiz Olavo Baptista	0
5222	claimant	http://www.italaw.com/cases/2494	National Gas S.A.E.	\N
5223	respondent_state	http://www.italaw.com/cases/2494	Egypt	\N
5224	investment_treaty	http://www.italaw.com/cases/2494	Egypt-United Arab Emirates BIT	\N
5225	claimant_appointee	http://www.italaw.com/cases/2494	L. Yves Fortier	0
5226	respondent_appointee	http://www.italaw.com/cases/2494	Brigitte Stern	0
5227	chair_president	http://www.italaw.com/cases/2494	V.V. Veeder	0
5228	claimant	http://www.italaw.com/cases/2513	Anglo American PLC	\N
5229	respondent_state	http://www.italaw.com/cases/2513	Venezuela	\N
5230	investment_treaty	http://www.italaw.com/cases/2513	United Kingdom-Venezuela BIT	\N
5231	claimant	http://www.italaw.com/cases/2515	Voltaic Network GmbH	\N
5232	respondent_state	http://www.italaw.com/cases/2515	Czech Republic	\N
5233	investment_treaty	http://www.italaw.com/cases/2515	Czech Republic-Germany BIT	\N
5234	investment_treaty	http://www.italaw.com/cases/2515	Energy Charter Treaty (ECT)	\N
5235	claimant	http://www.italaw.com/cases/2516	MOL Hungarian Oil and Gas Company Plc	\N
5236	respondent_state	http://www.italaw.com/cases/2516	Croatia	\N
5237	investment_treaty	http://www.italaw.com/cases/2516	Energy Charter Treaty (ECT)	\N
5238	claimant_appointee	http://www.italaw.com/cases/2516	William Park	1
5239	respondent_appointee	http://www.italaw.com/cases/2516	Brigitte Stern	1
5240	chair_president	http://www.italaw.com/cases/2516	Franklin Berman	1
5241	claimant	http://www.italaw.com/cases/2532	Nova Scotia Power Incorporated	\N
5242	respondent_state	http://www.italaw.com/cases/2532	Venezuela	\N
5243	investment_treaty	http://www.italaw.com/cases/2532	Canada-Venezuela BIT	\N
5244	claimant_appointee	http://www.italaw.com/cases/2532	David Williams	0
5245	respondent_appointee	http://www.italaw.com/cases/2532	Raúl Vinuesa	0
5246	chair_president	http://www.italaw.com/cases/2532	Hans van Houtte	0
5247	claimant_appointee	http://www.italaw.com/cases/2532	David Williams	1
5248	respondent_appointee	http://www.italaw.com/cases/2532	Raúl Vinuesa	1
5249	chair_president	http://www.italaw.com/cases/2532	Hans van Houtte	1
5250	claimant	http://www.italaw.com/cases/2540	AS Tallinna Vesi	\N
5251	respondent_state	http://www.italaw.com/cases/2540	Estonia	\N
5252	investment_treaty	http://www.italaw.com/cases/2540	Estonia-Netherlands BIT	\N
5253	claimant	http://www.italaw.com/cases/2542	Lindzor Capital Partners	\N
5254	respondent_state	http://www.italaw.com/cases/2542	Uruguay	\N
5255	investment_treaty	http://www.italaw.com/cases/2542	Spain-Uruguay BIT	\N
5256	investment_treaty	http://www.italaw.com/cases/2542	United States-Uruguay BIT	\N
5257	claimant	http://www.italaw.com/cases/2544	Vodafone	\N
5258	respondent_state	http://www.italaw.com/cases/2544	India	\N
5259	investment_treaty	http://www.italaw.com/cases/2544	India-Netherlands BIT	\N
5260	claimant	http://www.italaw.com/cases/2546	Nokia	\N
5261	respondent_state	http://www.italaw.com/cases/2546	India	\N
5262	investment_treaty	http://www.italaw.com/cases/2546	Finland-India BIT	\N
5263	claimant	http://www.italaw.com/cases/2556	Levy	\N
5264	claimant	http://www.italaw.com/cases/2556	Gremcitel S.A.	\N
5265	respondent_state	http://www.italaw.com/cases/2556	Peru	\N
5266	investment_treaty	http://www.italaw.com/cases/2556	France-Peru BIT	\N
5267	arbitrator	http://www.italaw.com/cases/2556	Eduardo Zuleta	1
5268	arbitrator	http://www.italaw.com/cases/2556	Raúl Vinuesa	1
5269	chair_president	http://www.italaw.com/cases/2556	Gabrielle Kaufmann-Kohler	1
5270	claimant	http://www.italaw.com/cases/2558	Highbury International AVV	\N
5271	claimant	http://www.italaw.com/cases/2558	Compañia Minera de Bajo Caroní AVV	\N
5272	claimant	http://www.italaw.com/cases/2558	Ramstein Trading Inc.	\N
5273	respondent_state	http://www.italaw.com/cases/2558	Venezuela	\N
5274	investment_treaty	http://www.italaw.com/cases/2558	Netherlands-Venezuela BIT	\N
5275	claimants_counsel	http://www.italaw.com/cases/2558	Andres A. Mezgravis	2
5276	claimants_counsel	http://www.italaw.com/cases/2558	Militza A. Santana	2
5277	claimants_counsel	http://www.italaw.com/cases/2558	Mezgravis & Asoc.	2
5278	claimants_counsel	http://www.italaw.com/cases/2558	Francisco Gonzalez de Cossio	2
5279	claimants_counsel	http://www.italaw.com/cases/2558	Gonzalez De Cossio Abogados S.C.	2
5280	claimants_counsel	http://www.italaw.com/cases/2558	Luis Delgado	2
5281	claimants_counsel	http://www.italaw.com/cases/2558	Homer Bonner Jacobs	2
5282	claimant	http://www.italaw.com/cases/2560	Şirketi	\N
5283	respondent_state	http://www.italaw.com/cases/2560	Turkmenistan	\N
5284	investment_treaty	http://www.italaw.com/cases/2560	Turkey-Turkmenistan BIT	\N
5285	claimant_appointee	http://www.italaw.com/cases/2560	Carolyn Lamm	1
5286	chair_president	http://www.italaw.com/cases/2560	Veijo Heiskanen	1
5287	claimant	http://www.italaw.com/cases/2564	Achmea B.V.	\N
5288	respondent_state	http://www.italaw.com/cases/2564	Slovak Republic	\N
5289	investment_treaty	http://www.italaw.com/cases/2564	Netherlands-Slovak Repubic BIT	\N
5290	arbitrator	http://www.italaw.com/cases/2564	Pierre-Marie Dupuy	0
5291	arbitrator	http://www.italaw.com/cases/2564	John Beechey	0
5292	chair_president	http://www.italaw.com/cases/2564	Laurent Lévy	0
5293	claimant	http://www.italaw.com/cases/2579	Energoalians SARL	\N
5294	respondent_state	http://www.italaw.com/cases/2579	Moldova	\N
5295	investment_treaty	http://www.italaw.com/cases/2579	Moldova-Ukraine BIT	\N
5296	investment_treaty	http://www.italaw.com/cases/2579	Energy Charter Treaty (ECT)	\N
5297	claimant_appointee	http://www.italaw.com/cases/2579	Mikhail Savranski	0
5298	respondent_appointee	http://www.italaw.com/cases/2579	Victor Volcinski	0
5299	chair_president	http://www.italaw.com/cases/2579	Dominic Pellew	0
5300	chair_president	http://www.italaw.com/cases/2579	Dominic Pellew	1
5301	claimant	http://www.italaw.com/cases/2581	JML Heirs LLC	\N
5302	claimant	http://www.italaw.com/cases/2581	J.M. Longyear LLC	\N
5303	respondent_state	http://www.italaw.com/cases/2581	Canada	\N
5304	investment_treaty	http://www.italaw.com/cases/2581	NAFTA	\N
5305	claimant	http://www.italaw.com/cases/2583	Société Industrielle des Boissons de Guinée	\N
5306	respondent_state	http://www.italaw.com/cases/2583	Guinea	\N
5307	claimant_appointee	http://www.italaw.com/cases/2583	Jean-Michel Jacquet	0
5308	respondent_appointee	http://www.italaw.com/cases/2583	Alexis Mourre	0
5309	chair_president	http://www.italaw.com/cases/2583	Pierre Mayer	0
5310	claimant	http://www.italaw.com/cases/2585	NextEra Energy Global Holdings B.V.	\N
5311	claimant	http://www.italaw.com/cases/2585	NextEra Energy Spain Holdings B.V.	\N
5312	respondent_state	http://www.italaw.com/cases/2585	Spain	\N
5313	investment_treaty	http://www.italaw.com/cases/2585	Energy Charter Treaty (ECT)	\N
5314	claimant	http://www.italaw.com/cases/2587	Diag Human S.E.	\N
5315	respondent_state	http://www.italaw.com/cases/2587	Czech Republic	\N
5316	country_in_which_this_occurs	http://www.italaw.com/cases/2587	England and Wales	0
5317	claimant	http://www.italaw.com/cases/2626	Grand Torg SRL	\N
5318	respondent_state	http://www.italaw.com/cases/2626	Moldova	\N
5319	investment_treaty	http://www.italaw.com/cases/2626	Moldova-Russian Federation BIT	\N
5320	arbitrator	http://www.italaw.com/cases/2626	Bengt Sjövall	0
5321	claimant	http://www.italaw.com/cases/2634	Bogdanov	\N
5322	claimant	http://www.italaw.com/cases/2634	Bogdanova	\N
5323	respondent_state	http://www.italaw.com/cases/2634	Moldova	\N
5324	investment_treaty	http://www.italaw.com/cases/2634	Moldova-Russian Federation BIT	\N
5325	arbitrator	http://www.italaw.com/cases/2634	Bengt Sjövall	0
5326	claimant	http://www.italaw.com/cases/2637	Lee John Beck	\N
5327	claimant	http://www.italaw.com/cases/2637	Central Asian Development Corporation	\N
5328	respondent_state	http://www.italaw.com/cases/2637	Kyrgyz Republic	\N
5329	investment_treaty	http://www.italaw.com/cases/2637	Moscow Convention for the Protection of Investors’ Rights	\N
5330	country_in_which_this_occurs	http://www.italaw.com/cases/2637	Russian Federation	1
5331	claimant	http://www.italaw.com/cases/2640	OKKV (OKKB)	\N
5332	respondent_state	http://www.italaw.com/cases/2640	Kyrgyz Republic	\N
5333	investment_treaty	http://www.italaw.com/cases/2640	Moscow Convention for the Protection of Investors’ Rights	\N
5334	country_in_which_this_occurs	http://www.italaw.com/cases/2640	Russian Federation	1
5335	claimant	http://www.italaw.com/cases/2690	Corona Materials LLC	\N
5336	respondent_state	http://www.italaw.com/cases/2690	Dominican Republic	\N
5337	investment_treaty	http://www.italaw.com/cases/2690	CAFTA	\N
5338	claimant	http://www.italaw.com/cases/2693	KBR	\N
5339	claimant	http://www.italaw.com/cases/2693	Inc.	\N
5340	respondent_state	http://www.italaw.com/cases/2693	Mexico	\N
5341	investment_treaty	http://www.italaw.com/cases/2693	NAFTA	\N
5342	arbitrator	http://www.italaw.com/cases/2693	Gabrielle Kaufmann-Kohler	2
5343	arbitrator	http://www.italaw.com/cases/2693	Gerardo Lozano Alarcón	2
5344	chair_president	http://www.italaw.com/cases/2693	Andrés Rigo Sureda	2
5345	claimant	http://www.italaw.com/cases/2698	Ballantine	\N
5346	respondent_state	http://www.italaw.com/cases/2698	Dominican Republic	\N
5347	investment_treaty	http://www.italaw.com/cases/2698	CAFTA	\N
5348	claimant	http://www.italaw.com/cases/2706	RSM Production Corporation	\N
5349	respondent_state	http://www.italaw.com/cases/2706	Saint Lucia	\N
5350	investment_treaty	http://www.italaw.com/cases/2706	Saint Lucia-United States BIT	\N
5351	claimant_appointee	http://www.italaw.com/cases/2706	Edward Nottingham	1
5352	respondent_appointee	http://www.italaw.com/cases/2706	Gavan Griffith	2
5353	claimant_appointee	http://www.italaw.com/cases/2706	Edward Nottingham	3
5354	respondent_appointee	http://www.italaw.com/cases/2706	Gavan Griffith	3
5355	chair_president	http://www.italaw.com/cases/2706	Siegfried Elsing	3
5356	claimant_appointee	http://www.italaw.com/cases/2706	Edward Nottingham	5
5357	respondent_appointee	http://www.italaw.com/cases/2706	Gavan Griffith	5
5358	chair_president	http://www.italaw.com/cases/2706	Siegfried Elsing	5
5359	claimant	http://www.italaw.com/cases/2723	Nusa Tenggara Partnership B.V.	\N
5360	claimant	http://www.italaw.com/cases/2723	PT Newmont Nusa Tenggara	\N
5361	respondent_state	http://www.italaw.com/cases/2723	Indonesia	\N
5362	investment_treaty	http://www.italaw.com/cases/2723	Indonesia-Netherlands BIT	\N
5363	claimant	http://www.italaw.com/cases/2727	Gold Reserve Inc.	\N
5364	respondent_state	http://www.italaw.com/cases/2727	Venezuela	\N
5365	investment_treaty	http://www.italaw.com/cases/2727	Canada-Venezuela BIT	\N
5366	claimant_appointee	http://www.italaw.com/cases/2727	David Williams	0
5367	respondent_appointee	http://www.italaw.com/cases/2727	Pierre-Marie Dupuy	0
5368	chair_president	http://www.italaw.com/cases/2727	Piero Bernardini	0
5369	claimant_appointee	http://www.italaw.com/cases/2727	David Williams	1
5370	respondent_appointee	http://www.italaw.com/cases/2727	Pierre-Marie Dupuy	1
5371	chair_president	http://www.italaw.com/cases/2727	Piero Bernardini	1
5372	claimant	http://www.italaw.com/cases/2735	Turkcell	\N
5373	respondent_state	http://www.italaw.com/cases/2735	Iran	\N
5374	investment_treaty	http://www.italaw.com/cases/2735	Iran-Turkey BIT	\N
5375	claimant	http://www.italaw.com/cases/2768	Vigotop Limited	\N
5376	respondent_state	http://www.italaw.com/cases/2768	Hungary	\N
5377	investment_treaty	http://www.italaw.com/cases/2768	Cyprus-Hungary BIT	\N
5378	claimant_appointee	http://www.italaw.com/cases/2768	R. Doak Bishop	0
5379	respondent_appointee	http://www.italaw.com/cases/2768	Veijo Heiskanen	0
5380	chair_president	http://www.italaw.com/cases/2768	Klaus Sachs	0
5381	claimant	http://www.italaw.com/cases/2770	PNG Sustainable Development Program Ltd.	\N
5382	respondent_state	http://www.italaw.com/cases/2770	Papua New Guinea	\N
5383	claimant_appointee	http://www.italaw.com/cases/2770	Michael Pryles	0
5384	respondent_appointee	http://www.italaw.com/cases/2770	Duncan Kerr	0
5385	chair_president	http://www.italaw.com/cases/2770	Gary Born	0
5386	claimant_appointee	http://www.italaw.com/cases/2770	Michael Pryles	1
5387	respondent_appointee	http://www.italaw.com/cases/2770	Duncan Kerr	1
5388	chair_president	http://www.italaw.com/cases/2770	Gary Born	1
5389	claimant	http://www.italaw.com/cases/2783	Alemanni	\N
5390	respondent_state	http://www.italaw.com/cases/2783	Argentina	\N
5391	investment_treaty	http://www.italaw.com/cases/2783	Argentina-Italy BIT	\N
5392	claimant_appointee	http://www.italaw.com/cases/2783	Karl-Heinz Böckstiegel	0
5393	respondent_appointee	http://www.italaw.com/cases/2783	J. Christopher Thomas	0
5394	chair_president	http://www.italaw.com/cases/2783	Franklin Berman	0
5395	claimant	http://www.italaw.com/cases/2797	Mytilineos Holdings SA	\N
5396	respondent_state	http://www.italaw.com/cases/2797	Serbia	\N
5397	investment_treaty	http://www.italaw.com/cases/2797	Greece-Serbia BIT	\N
5398	claimant	http://www.italaw.com/cases/2848	Bear Creek Mining Corporation	\N
5399	respondent_state	http://www.italaw.com/cases/2848	Peru	\N
5400	investment_treaty	http://www.italaw.com/cases/2848	Canada-Peru Free Trade Agreement	\N
5401	arbitrator	http://www.italaw.com/cases/2848	Michael Pryles	0
5402	arbitrator	http://www.italaw.com/cases/2848	Philippe Sands	0
5403	chair_president	http://www.italaw.com/cases/2848	Karl-Heinz Böckstiegel	0
5404	claimant	http://www.italaw.com/cases/2850	Forminster Enterprises Limited (Cyprus)	\N
5405	respondent_state	http://www.italaw.com/cases/2850	Czech Republic	\N
5406	investment_treaty	http://www.italaw.com/cases/2850	Czech Republic-Cyprus BIT	\N
5407	claimant_appointee	http://www.italaw.com/cases/2850	J. Martin Hunter	0
5408	respondent_appointee	http://www.italaw.com/cases/2850	August Reinisch	0
5409	chair_president	http://www.italaw.com/cases/2850	Paolo Michele Patocchi	0
5410	claimant	http://www.italaw.com/cases/2852	Fraport AG Frankfurt Airport Services Worldwide	\N
5411	respondent_state	http://www.italaw.com/cases/2852	Philippines	\N
5412	investment_treaty	http://www.italaw.com/cases/2852	Germany-Philippines BIT	\N
5413	claimant_appointee	http://www.italaw.com/cases/2852	Stanimir Alexandrov	0
5414	respondent_appointee	http://www.italaw.com/cases/2852	Albert Jan van den Berg	0
5415	chair_president	http://www.italaw.com/cases/2852	Piero Bernardini	0
5416	claimant	http://www.italaw.com/cases/2869	Armas	\N
5417	claimant	http://www.italaw.com/cases/2869	Gruber	\N
5418	respondent_state	http://www.italaw.com/cases/2869	Venezuela	\N
5419	investment_treaty	http://www.italaw.com/cases/2869	Spain-Venezuela BIT	\N
5420	claimant_appointee	http://www.italaw.com/cases/2869	Guido Santiago Tawil	0
5421	respondent_appointee	http://www.italaw.com/cases/2869	Rodrigo Oreamuno Blanco	0
5422	chair_president	http://www.italaw.com/cases/2869	Eduardo Grebler	0
5423	claimant	http://www.italaw.com/cases/2946	N.V. NISSHO IWAI S.A. (BENELUX)	\N
5424	investment_treaty	http://www.italaw.com/cases/2946	Argentina-Belgium-Luxembourg BIT	\N
5425	claimant	http://www.italaw.com/cases/2959	Aven	\N
5426	respondent_state	http://www.italaw.com/cases/2959	Costa Rica	\N
5427	investment_treaty	http://www.italaw.com/cases/2959	CAFTA-DR	\N
5428	claimant	http://www.italaw.com/cases/2979	OI European Group B.V.	\N
5429	respondent_state	http://www.italaw.com/cases/2979	Venezuela	\N
5430	investment_treaty	http://www.italaw.com/cases/2979	Netherlands-Venezuela BIT	\N
5431	claimant_appointee	http://www.italaw.com/cases/2979	Francisco Orrego Vicuña	0
5432	respondent_appointee	http://www.italaw.com/cases/2979	Alexis Mourre	0
5433	chair_president	http://www.italaw.com/cases/2979	Juan Fernández-Armesto	0
5434	claimant	http://www.italaw.com/cases/2988	TSIKinvest LLC	\N
5435	respondent_state	http://www.italaw.com/cases/2988	Moldova	\N
5436	investment_treaty	http://www.italaw.com/cases/2988	Moldova-Russian Federation BIT	\N
5437	chair_president	http://www.italaw.com/cases/2988	Kaj Hobér	0
5438	claimants_counsel	http://www.italaw.com/cases/2988	David Goldberg	0
5439	claimants_counsel	http://www.italaw.com/cases/2988	Artem Doudo	0
5440	claimants_counsel	http://www.italaw.com/cases/2988	White & Case	0
5441	respondents_counsel	http://www.italaw.com/cases/2988	Oleg Efrim	0
5442	respondents_counsel	http://www.italaw.com/cases/2988	Natalia Gherman	0
5443	respondents_counsel	http://www.italaw.com/cases/2988	Emil Druc	0
\.


--
-- Name: ita_entities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fl
--

SELECT pg_catalog.setval('ita_entities_id_seq', 5443, true);


--
-- Name: ita_cases_pkey; Type: CONSTRAINT; Schema: public; Owner: fl; Tablespace: 
--

ALTER TABLE ONLY ita_cases
    ADD CONSTRAINT ita_cases_pkey PRIMARY KEY (id);


--
-- Name: ita_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: fl; Tablespace: 
--

ALTER TABLE ONLY ita_documents
    ADD CONSTRAINT ita_documents_pkey PRIMARY KEY (id);


--
-- Name: ita_entities_pkey; Type: CONSTRAINT; Schema: public; Owner: fl; Tablespace: 
--

ALTER TABLE ONLY ita_entities
    ADD CONSTRAINT ita_entities_pkey PRIMARY KEY (id);


--
-- Name: ix_ita_cases_722666715494904506; Type: INDEX; Schema: public; Owner: fl; Tablespace: 
--

CREATE INDEX ix_ita_cases_722666715494904506 ON ita_cases USING btree (case_url);


--
-- Name: ix_ita_entities_3601534470407751146; Type: INDEX; Schema: public; Owner: fl; Tablespace: 
--

CREATE INDEX ix_ita_entities_3601534470407751146 ON ita_entities USING btree (case_url, doc_idx, entity, type);


--
-- Name: ix_ita_entities_6836391642608499101; Type: INDEX; Schema: public; Owner: fl; Tablespace: 
--

CREATE INDEX ix_ita_entities_6836391642608499101 ON ita_entities USING btree (case_url, entity, type);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

