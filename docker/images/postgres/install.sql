--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.2

-- Started on 2021-02-08 21:03:00

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
-- TOC entry 2974 (class 0 OID 0)
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
-- TOC entry 2975 (class 0 OID 0)
-- Dependencies: 205
-- Name: resource_owner_tb_id_seq; Type: SEQUENCE OWNED BY; Schema: authentication; Owner: postgres
--

ALTER SEQUENCE authentication.resource_owner_tb_id_seq OWNED BY authentication.resource_owner_tb.id;


--
-- TOC entry 204 (class 1259 OID 16405)
-- Name: assets_tb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assets_tb (
    id integer NOT NULL,
    resource_owner integer NOT NULL
);


ALTER TABLE public.assets_tb OWNER TO postgres;

--
-- TOC entry 2976 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN assets_tb.resource_owner; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.assets_tb.resource_owner IS 'The user wich the asset belongs to';


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
-- TOC entry 2977 (class 0 OID 0)
-- Dependencies: 203
-- Name: assets_tb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.assets_tb_id_seq OWNED BY public.assets_tb.id;


--
-- TOC entry 2833 (class 2604 OID 16416)
-- Name: resource_owner_tb id; Type: DEFAULT; Schema: authentication; Owner: postgres
--

ALTER TABLE ONLY authentication.resource_owner_tb ALTER COLUMN id SET DEFAULT nextval('authentication.resource_owner_tb_id_seq'::regclass);


--
-- TOC entry 2832 (class 2604 OID 16408)
-- Name: assets_tb id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assets_tb ALTER COLUMN id SET DEFAULT nextval('public.assets_tb_id_seq'::regclass);


--
-- TOC entry 2968 (class 0 OID 16413)
-- Dependencies: 206
-- Data for Name: resource_owner_tb; Type: TABLE DATA; Schema: authentication; Owner: postgres
--

COPY authentication.resource_owner_tb (id, name) FROM stdin;
1	root
\.


--
-- TOC entry 2966 (class 0 OID 16405)
-- Dependencies: 204
-- Data for Name: assets_tb; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.assets_tb (id, resource_owner) FROM stdin;
\.


--
-- TOC entry 2978 (class 0 OID 0)
-- Dependencies: 205
-- Name: resource_owner_tb_id_seq; Type: SEQUENCE SET; Schema: authentication; Owner: postgres
--

SELECT pg_catalog.setval('authentication.resource_owner_tb_id_seq', 1, true);


--
-- TOC entry 2979 (class 0 OID 0)
-- Dependencies: 203
-- Name: assets_tb_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.assets_tb_id_seq', 1, false);


--
-- TOC entry 2837 (class 2606 OID 16418)
-- Name: resource_owner_tb resource_owner_tb_pkey; Type: CONSTRAINT; Schema: authentication; Owner: postgres
--

ALTER TABLE ONLY authentication.resource_owner_tb
    ADD CONSTRAINT resource_owner_tb_pkey PRIMARY KEY (id);


--
-- TOC entry 2835 (class 2606 OID 16410)
-- Name: assets_tb assets_tb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assets_tb
    ADD CONSTRAINT assets_tb_pkey PRIMARY KEY (id);


--
-- TOC entry 2838 (class 2606 OID 16424)
-- Name: assets_tb assets_tb_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assets_tb
    ADD CONSTRAINT assets_tb_fk FOREIGN KEY (resource_owner) REFERENCES authentication.resource_owner_tb(id) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2021-02-08 21:03:00

--
-- PostgreSQL database dump complete
--

