--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.2

-- Started on 2021-02-09 21:19:09

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

--
-- TOC entry 8 (class 2615 OID 16402)
-- Name: authentication; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA authentication;


ALTER SCHEMA authentication OWNER TO postgres;

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3010 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 206 (class 1259 OID 16413)
-- Name: resource_owner_tb; Type: TABLE; Schema: authentication; Owner: postgres
--

CREATE TABLE authentication.resource_owner_tb (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE authentication.resource_owner_tb OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16411)
-- Name: resource_owner_tb_id_seq; Type: SEQUENCE; Schema: authentication; Owner: postgres
--

CREATE SEQUENCE authentication.resource_owner_tb_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE authentication.resource_owner_tb_id_seq OWNER TO postgres;

--
-- TOC entry 3011 (class 0 OID 0)
-- Dependencies: 205
-- Name: resource_owner_tb_id_seq; Type: SEQUENCE OWNED BY; Schema: authentication; Owner: postgres
--

ALTER SEQUENCE authentication.resource_owner_tb_id_seq OWNED BY authentication.resource_owner_tb.id;


--
-- TOC entry 212 (class 1259 OID 24644)
-- Name: asset_network_as; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset_network_as (
    id integer NOT NULL,
    asset integer NOT NULL,
    network integer NOT NULL
);


ALTER TABLE public.asset_network_as OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 24642)
-- Name: asset_network_as_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.asset_network_as_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asset_network_as_id_seq OWNER TO postgres;

--
-- TOC entry 3012 (class 0 OID 0)
-- Dependencies: 211
-- Name: asset_network_as_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.asset_network_as_id_seq OWNED BY public.asset_network_as.id;


--
-- TOC entry 204 (class 1259 OID 16405)
-- Name: asset_tb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset_tb (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.asset_tb OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16403)
-- Name: assets_tb_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.assets_tb_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assets_tb_id_seq OWNER TO postgres;

--
-- TOC entry 3013 (class 0 OID 0)
-- Dependencies: 203
-- Name: assets_tb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.assets_tb_id_seq OWNED BY public.asset_tb.id;


--
-- TOC entry 210 (class 1259 OID 24621)
-- Name: network_resource_owner_as; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.network_resource_owner_as (
    id integer NOT NULL,
    network integer NOT NULL,
    resource_owner integer NOT NULL
);


ALTER TABLE public.network_resource_owner_as OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 24619)
-- Name: network_resource_owner_as_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.network_resource_owner_as_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.network_resource_owner_as_id_seq OWNER TO postgres;

--
-- TOC entry 3014 (class 0 OID 0)
-- Dependencies: 209
-- Name: network_resource_owner_as_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.network_resource_owner_as_id_seq OWNED BY public.network_resource_owner_as.id;


--
-- TOC entry 208 (class 1259 OID 24610)
-- Name: network_tb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.network_tb (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.network_tb OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 24608)
-- Name: network_tb_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.network_tb_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.network_tb_id_seq OWNER TO postgres;

--
-- TOC entry 3015 (class 0 OID 0)
-- Dependencies: 207
-- Name: network_tb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.network_tb_id_seq OWNED BY public.network_tb.id;


--
-- TOC entry 2853 (class 2604 OID 16416)
-- Name: resource_owner_tb id; Type: DEFAULT; Schema: authentication; Owner: postgres
--

ALTER TABLE ONLY authentication.resource_owner_tb ALTER COLUMN id SET DEFAULT nextval('authentication.resource_owner_tb_id_seq'::regclass);


--
-- TOC entry 2856 (class 2604 OID 24647)
-- Name: asset_network_as id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_network_as ALTER COLUMN id SET DEFAULT nextval('public.asset_network_as_id_seq'::regclass);


--
-- TOC entry 2852 (class 2604 OID 16408)
-- Name: asset_tb id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_tb ALTER COLUMN id SET DEFAULT nextval('public.assets_tb_id_seq'::regclass);


--
-- TOC entry 2855 (class 2604 OID 24624)
-- Name: network_resource_owner_as id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.network_resource_owner_as ALTER COLUMN id SET DEFAULT nextval('public.network_resource_owner_as_id_seq'::regclass);


--
-- TOC entry 2854 (class 2604 OID 24613)
-- Name: network_tb id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.network_tb ALTER COLUMN id SET DEFAULT nextval('public.network_tb_id_seq'::regclass);


--
-- TOC entry 2998 (class 0 OID 16413)
-- Dependencies: 206
-- Data for Name: resource_owner_tb; Type: TABLE DATA; Schema: authentication; Owner: postgres
--

COPY authentication.resource_owner_tb (id, name) FROM stdin;
1	root
\.


--
-- TOC entry 3004 (class 0 OID 24644)
-- Dependencies: 212
-- Data for Name: asset_network_as; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset_network_as (id, asset, network) FROM stdin;
1	1	1
\.


--
-- TOC entry 2996 (class 0 OID 16405)
-- Dependencies: 204
-- Data for Name: asset_tb; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset_tb (id, name) FROM stdin;
1	Root Asset
\.


--
-- TOC entry 3002 (class 0 OID 24621)
-- Dependencies: 210
-- Data for Name: network_resource_owner_as; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.network_resource_owner_as (id, network, resource_owner) FROM stdin;
1	1	1
\.


--
-- TOC entry 3000 (class 0 OID 24610)
-- Dependencies: 208
-- Data for Name: network_tb; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.network_tb (id, name) FROM stdin;
1	Root Network
\.


--
-- TOC entry 3016 (class 0 OID 0)
-- Dependencies: 205
-- Name: resource_owner_tb_id_seq; Type: SEQUENCE SET; Schema: authentication; Owner: postgres
--

SELECT pg_catalog.setval('authentication.resource_owner_tb_id_seq', 1, true);


--
-- TOC entry 3017 (class 0 OID 0)
-- Dependencies: 211
-- Name: asset_network_as_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.asset_network_as_id_seq', 1, true);


--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 203
-- Name: assets_tb_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.assets_tb_id_seq', 3, true);


--
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 209
-- Name: network_resource_owner_as_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.network_resource_owner_as_id_seq', 1, true);


--
-- TOC entry 3020 (class 0 OID 0)
-- Dependencies: 207
-- Name: network_tb_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.network_tb_id_seq', 1, true);


--
-- TOC entry 2860 (class 2606 OID 16418)
-- Name: resource_owner_tb resource_owner_tb_pkey; Type: CONSTRAINT; Schema: authentication; Owner: postgres
--

ALTER TABLE ONLY authentication.resource_owner_tb
    ADD CONSTRAINT resource_owner_tb_pkey PRIMARY KEY (id);


--
-- TOC entry 2858 (class 2606 OID 16410)
-- Name: asset_tb assets_tb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_tb
    ADD CONSTRAINT assets_tb_pkey PRIMARY KEY (id);


--
-- TOC entry 2864 (class 2606 OID 24626)
-- Name: network_resource_owner_as network_resource_owner_as_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.network_resource_owner_as
    ADD CONSTRAINT network_resource_owner_as_pk PRIMARY KEY (id);


--
-- TOC entry 2862 (class 2606 OID 24618)
-- Name: network_tb network_tb_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.network_tb
    ADD CONSTRAINT network_tb_pk PRIMARY KEY (id);


--
-- TOC entry 2867 (class 2606 OID 24648)
-- Name: asset_network_as asset_network_as_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_network_as
    ADD CONSTRAINT asset_network_as_fk FOREIGN KEY (asset) REFERENCES public.asset_tb(id);


--
-- TOC entry 2868 (class 2606 OID 24653)
-- Name: asset_network_as asset_network_as_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_network_as
    ADD CONSTRAINT asset_network_as_fk_1 FOREIGN KEY (network) REFERENCES public.network_tb(id);


--
-- TOC entry 2865 (class 2606 OID 24627)
-- Name: network_resource_owner_as network_resource_owner_as_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.network_resource_owner_as
    ADD CONSTRAINT network_resource_owner_as_fk FOREIGN KEY (network) REFERENCES public.network_tb(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2866 (class 2606 OID 24632)
-- Name: network_resource_owner_as network_resource_owner_as_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.network_resource_owner_as
    ADD CONSTRAINT network_resource_owner_as_fk_1 FOREIGN KEY (resource_owner) REFERENCES authentication.resource_owner_tb(id) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2021-02-09 21:19:09

--
-- PostgreSQL database dump complete
--

