--
-- PostgreSQL database dump
--

\restrict ctrrZEFMZ8ingcOmnuak6MrAHOos13mGti8CR7bpXIu6jPh8QgdkoRIeWsbvRTB

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-05 07:42:48

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 222 (class 1259 OID 16523)
-- Name: nilai; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nilai (
    id integer NOT NULL,
    siswa_id integer NOT NULL,
    mata_pelajaran character varying,
    nilai integer
);


ALTER TABLE public.nilai OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16522)
-- Name: nilai_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nilai_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nilai_id_seq OWNER TO postgres;

--
-- TOC entry 5024 (class 0 OID 0)
-- Dependencies: 221
-- Name: nilai_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nilai_id_seq OWNED BY public.nilai.id;


--
-- TOC entry 220 (class 1259 OID 16512)
-- Name: siswa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.siswa (
    id integer NOT NULL,
    nama character varying NOT NULL,
    umur integer,
    jurusan character varying
);


ALTER TABLE public.siswa OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16511)
-- Name: siswa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.siswa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.siswa_id_seq OWNER TO postgres;

--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 219
-- Name: siswa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.siswa_id_seq OWNED BY public.siswa.id;


--
-- TOC entry 4862 (class 2604 OID 16526)
-- Name: nilai id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nilai ALTER COLUMN id SET DEFAULT nextval('public.nilai_id_seq'::regclass);


--
-- TOC entry 4861 (class 2604 OID 16515)
-- Name: siswa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siswa ALTER COLUMN id SET DEFAULT nextval('public.siswa_id_seq'::regclass);


--
-- TOC entry 5018 (class 0 OID 16523)
-- Dependencies: 222
-- Data for Name: nilai; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nilai (id, siswa_id, mata_pelajaran, nilai) FROM stdin;
11	1	Matematika	85
12	2	Bahasa Inggris	90
13	3	Kimia	100
14	4	Informatika	80
15	5	Matematika	80
\.


--
-- TOC entry 5016 (class 0 OID 16512)
-- Dependencies: 220
-- Data for Name: siswa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.siswa (id, nama, umur, jurusan) FROM stdin;
1	Andi	16	IPA
2	Budi	17	IPS
3	Wahid	17	IPA
4	Hikmal	15	IPA
5	Brisam	16	IPS
\.


--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 221
-- Name: nilai_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nilai_id_seq', 15, true);


--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 219
-- Name: siswa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.siswa_id_seq', 5, true);


--
-- TOC entry 4866 (class 2606 OID 16532)
-- Name: nilai nilai_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nilai
    ADD CONSTRAINT nilai_pkey PRIMARY KEY (id);


--
-- TOC entry 4864 (class 2606 OID 16521)
-- Name: siswa siswa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siswa
    ADD CONSTRAINT siswa_pkey PRIMARY KEY (id);


--
-- TOC entry 4867 (class 2606 OID 16533)
-- Name: nilai nilai_siswa_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nilai
    ADD CONSTRAINT nilai_siswa_id_fkey FOREIGN KEY (siswa_id) REFERENCES public.siswa(id);


-- Completed on 2025-10-05 07:42:48

--
-- PostgreSQL database dump complete
--

\unrestrict ctrrZEFMZ8ingcOmnuak6MrAHOos13mGti8CR7bpXIu6jPh8QgdkoRIeWsbvRTB

