--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.1
-- Dumped by pg_dump version 9.5.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: awards; Type: TABLE; Schema: public; Owner: Sarah
--

CREATE TABLE awards (
    name character varying(50) NOT NULL,
    year integer NOT NULL,
    winner_id integer
);


ALTER TABLE awards OWNER TO "Sarah";

--
-- Name: brands; Type: TABLE; Schema: public; Owner: Sarah
--

CREATE TABLE brands (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    founded integer,
    headquarters character varying(50),
    discontinued integer
);


ALTER TABLE brands OWNER TO "Sarah";

--
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: Sarah
--

CREATE SEQUENCE brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE brands_id_seq OWNER TO "Sarah";

--
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Sarah
--

ALTER SEQUENCE brands_id_seq OWNED BY brands.id;


--
-- Name: models; Type: TABLE; Schema: public; Owner: Sarah
--

CREATE TABLE models (
    id integer NOT NULL,
    year integer NOT NULL,
    brand_name character varying(50),
    name character varying(50) NOT NULL
);


ALTER TABLE models OWNER TO "Sarah";

--
-- Name: models_id_seq; Type: SEQUENCE; Schema: public; Owner: Sarah
--

CREATE SEQUENCE models_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE models_id_seq OWNER TO "Sarah";

--
-- Name: models_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Sarah
--

ALTER SEQUENCE models_id_seq OWNED BY models.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Sarah
--

ALTER TABLE ONLY brands ALTER COLUMN id SET DEFAULT nextval('brands_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Sarah
--

ALTER TABLE ONLY models ALTER COLUMN id SET DEFAULT nextval('models_id_seq'::regclass);


--
-- Data for Name: awards; Type: TABLE DATA; Schema: public; Owner: Sarah
--

COPY awards (name, year, winner_id) FROM stdin;
IIHS Safety	2015	49
IIHS Safety Award	2015	50
\.


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: Sarah
--

COPY brands (id, name, founded, headquarters, discontinued) FROM stdin;
1	Ford	1903	Dearborn, MI	\N
2	Chrysler	1925	Auburn Hills, Michigan	\N
3	Hillman	1907	Ryton-on-Dunsmore, England	1981
4	Chevrolet	1911	Detroit, Michigan	\N
5	Cadillac	1902	New York City, NY	\N
6	BMW	1916	Munich, Bavaria, Germany	\N
7	Austin	1905	Longbridge, England	1987
8	Fairthorpe	1954	Chalfont St Peter, Buckinghamshire	1976
9	Studebaker	1852	South Bend, Indiana	1967
10	Pontiac	1926	Detroit, MI	2010
11	Buick	1903	Detroit, MI	\N
12	Rambler	1901	Kenosha, Washington	1969
13	Plymouth	1928	Auburn Hills, Michigan	2001
14	Tesla	2003	Palo Alto, CA	\N
15	Ford	1903	Dearborn, MI	\N
16	Chrysler	1925	Auburn Hills, Michigan	\N
17	Hillman	1907	Ryton-on-Dunsmore, England	1981
18	Chevrolet	1911	Detroit, Michigan	\N
19	Cadillac	1902	New York City, NY	\N
20	BMW	1916	Munich, Bavaria, Germany	\N
21	Austin	1905	Longbridge, England	1987
22	Fairthorpe	1954	Chalfont St Peter, Buckinghamshire	1976
23	Studebaker	1852	South Bend, Indiana	1967
24	Pontiac	1926	Detroit, MI	2010
25	Buick	1903	Detroit, MI	\N
26	Rambler	1901	Kenosha, Washington	1969
27	Plymouth	1928	Auburn Hills, Michigan	2001
28	Tesla	2003	Palo Alto, CA	\N
29	Ford	1903	Dearborn, MI	\N
30	Chrysler	1925	Auburn Hills, Michigan	\N
31	Hillman	1907	Ryton-on-Dunsmore, England	1981
32	Chevrolet	1911	Detroit, Michigan	\N
33	Cadillac	1902	New York City, NY	\N
34	BMW	1916	Munich, Bavaria, Germany	\N
35	Austin	1905	Longbridge, England	1987
36	Fairthorpe	1954	Chalfont St Peter, Buckinghamshire	1976
37	Studebaker	1852	South Bend, Indiana	1967
38	Pontiac	1926	Detroit, MI	2010
39	Buick	1903	Detroit, MI	\N
40	Rambler	1901	Kenosha, Washington	1969
41	Plymouth	1928	Auburn Hills, Michigan	2001
42	Tesla	2003	Palo Alto, CA	\N
\.


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Sarah
--

SELECT pg_catalog.setval('brands_id_seq', 42, true);


--
-- Data for Name: models; Type: TABLE DATA; Schema: public; Owner: Sarah
--

COPY models (id, year, brand_name, name) FROM stdin;
1	1909	Ford	Model T
2	1926	Chrysler	Imperial
3	1950	Hillman	Minx Magnificent
4	1953	Chevrolet	Corvette
5	1954	Chevrolet	Corvette
6	1954	Cadillac	Fleetwood
7	1955	Chevrolet	Corvette
8	1955	Ford	Thunderbird
9	1956	Chevrolet	Corvette
10	1957	Chevrolet	Corvette
11	1957	BMW	600
12	1958	Chevrolet	Corvette
13	1958	BMW	600
14	1958	Ford	Thunderbird
15	1959	Austin	Mini
16	1959	Chevrolet	Corvette
17	1959	BMW	600
18	1960	Chevrolet	Corvair
19	1960	Chevrolet	Corvette
20	1960	Fillmore	Fillmore
21	1960	Fairthorpe	Rockette
22	1961	Austin	Mini Cooper
23	1961	Studebaker	Avanti
24	1961	Pontiac	Tempest
25	1961	Chevrolet	Corvette
26	1962	Pontiac	Grand Prix
27	1962	Chevrolet	Corvette
28	1962	Studebaker	Avanti
29	1962	Buick	Special
30	1963	Austin	Mini
31	1963	Austin	Mini Cooper S
32	1963	Rambler	Classic
33	1963	Ford	E-Series
34	1963	Studebaker	Avanti
35	1963	Pontiac	Grand Prix
36	1963	Chevrolet	Corvair 500
37	1963	Chevrolet	Corvette
38	1964	Chevrolet	Corvette
39	1964	Ford	Mustang
40	1964	Ford	Galaxie
41	1964	Pontiac	GTO
42	1964	Pontiac	LeMans
43	1964	Pontiac	Bonneville
44	1964	Pontiac	Grand Prix
45	1964	Plymouth	Fury
46	1964	Studebaker	Avanti
47	1964	Austin	Mini Cooper
48	1909	Ford	Model T
49	1926	Chrysler	Imperial
50	1950	Hillman	Minx Magnificent
51	1953	Chevrolet	Corvette
52	1954	Chevrolet	Corvette
53	1954	Cadillac	Fleetwood
54	1955	Chevrolet	Corvette
55	1955	Ford	Thunderbird
56	1956	Chevrolet	Corvette
57	1957	Chevrolet	Corvette
58	1957	BMW	600
59	1958	Chevrolet	Corvette
60	1958	BMW	600
61	1958	Ford	Thunderbird
62	1959	Austin	Mini
63	1959	Chevrolet	Corvette
64	1959	BMW	600
65	1960	Chevrolet	Corvair
66	1960	Chevrolet	Corvette
67	1960	Fillmore	Fillmore
68	1960	Fairthorpe	Rockette
69	1961	Austin	Mini Cooper
70	1961	Studebaker	Avanti
71	1961	Pontiac	Tempest
72	1961	Chevrolet	Corvette
73	1962	Pontiac	Grand Prix
74	1962	Chevrolet	Corvette
75	1962	Studebaker	Avanti
76	1962	Buick	Special
77	1963	Austin	Mini
78	1963	Austin	Mini Cooper S
79	1963	Rambler	Classic
80	1963	Ford	E-Series
81	1963	Studebaker	Avanti
82	1963	Pontiac	Grand Prix
83	1963	Chevrolet	Corvair 500
84	1963	Chevrolet	Corvette
85	1964	Chevrolet	Corvette
86	1964	Ford	Mustang
87	1964	Ford	Galaxie
88	1964	Pontiac	GTO
89	1964	Pontiac	LeMans
90	1964	Pontiac	Bonneville
91	1964	Pontiac	Grand Prix
92	1964	Plymouth	Fury
93	1964	Studebaker	Avanti
94	1964	Austin	Mini Cooper
95	2015	Chevrolet	Malibu
96	2015	Subaru	Outback
97	1909	Ford	Model T
98	1926	Chrysler	Imperial
99	1950	Hillman	Minx Magnificent
100	1953	Chevrolet	Corvette
101	1954	Chevrolet	Corvette
102	1954	Cadillac	Fleetwood
103	1955	Chevrolet	Corvette
104	1955	Ford	Thunderbird
105	1956	Chevrolet	Corvette
106	1957	Chevrolet	Corvette
107	1957	BMW	600
108	1958	Chevrolet	Corvette
109	1958	BMW	600
110	1958	Ford	Thunderbird
111	1959	Austin	Mini
112	1959	Chevrolet	Corvette
113	1959	BMW	600
114	1960	Chevrolet	Corvair
115	1960	Chevrolet	Corvette
116	1960	Fillmore	Fillmore
117	1960	Fairthorpe	Rockette
118	1961	Austin	Mini Cooper
119	1961	Studebaker	Avanti
120	1961	Pontiac	Tempest
121	1961	Chevrolet	Corvette
122	1962	Pontiac	Grand Prix
123	1962	Chevrolet	Corvette
124	1962	Studebaker	Avanti
125	1962	Buick	Special
126	1963	Austin	Mini
127	1963	Austin	Mini Cooper S
128	1963	Rambler	Classic
129	1963	Ford	E-Series
130	1963	Studebaker	Avanti
131	1963	Pontiac	Grand Prix
132	1963	Chevrolet	Corvair 500
133	1963	Chevrolet	Corvette
134	1964	Chevrolet	Corvette
135	1964	Ford	Mustang
136	1964	Ford	Galaxie
137	1964	Pontiac	GTO
138	1964	Pontiac	LeMans
139	1964	Pontiac	Bonneville
140	1964	Pontiac	Grand Prix
141	1964	Plymouth	Fury
142	1964	Studebaker	Avanti
143	1964	Austin	Mini Cooper
\.


--
-- Name: models_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Sarah
--

SELECT pg_catalog.setval('models_id_seq', 143, true);


--
-- Name: brands_pkey; Type: CONSTRAINT; Schema: public; Owner: Sarah
--

ALTER TABLE ONLY brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: models_pkey; Type: CONSTRAINT; Schema: public; Owner: Sarah
--

ALTER TABLE ONLY models
    ADD CONSTRAINT models_pkey PRIMARY KEY (id);


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

