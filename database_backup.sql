--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: projects; Type: TABLE; Schema: public; Owner: hughgoodwin
--

CREATE TABLE public.projects (
    id integer NOT NULL,
    title character varying
);


ALTER TABLE public.projects OWNER TO hughgoodwin;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: hughgoodwin
--

CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO hughgoodwin;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hughgoodwin
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: volunteers; Type: TABLE; Schema: public; Owner: hughgoodwin
--

CREATE TABLE public.volunteers (
    id integer NOT NULL,
    name character varying,
    project_id integer
);


ALTER TABLE public.volunteers OWNER TO hughgoodwin;

--
-- Name: volunteers_id_seq; Type: SEQUENCE; Schema: public; Owner: hughgoodwin
--

CREATE SEQUENCE public.volunteers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.volunteers_id_seq OWNER TO hughgoodwin;

--
-- Name: volunteers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hughgoodwin
--

ALTER SEQUENCE public.volunteers_id_seq OWNED BY public.volunteers.id;


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: hughgoodwin
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: volunteers id; Type: DEFAULT; Schema: public; Owner: hughgoodwin
--

ALTER TABLE ONLY public.volunteers ALTER COLUMN id SET DEFAULT nextval('public.volunteers_id_seq'::regclass);


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: hughgoodwin
--

COPY public.projects (id, title) FROM stdin;
889	Teaching Kids to Code
\.


--
-- Data for Name: volunteers; Type: TABLE DATA; Schema: public; Owner: hughgoodwin
--

COPY public.volunteers (id, name, project_id) FROM stdin;
572	Alex G.	889
573	Alex F.	889
\.


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hughgoodwin
--

SELECT pg_catalog.setval('public.projects_id_seq', 889, true);


--
-- Name: volunteers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hughgoodwin
--

SELECT pg_catalog.setval('public.volunteers_id_seq', 573, true);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: hughgoodwin
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: volunteers volunteers_pkey; Type: CONSTRAINT; Schema: public; Owner: hughgoodwin
--

ALTER TABLE ONLY public.volunteers
    ADD CONSTRAINT volunteers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

