--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

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

SET default_with_oids = false;

--
-- Name: expenses; Type: TABLE; Schema: public; Owner: boruch
--

CREATE TABLE public.expenses (
    id integer DEFAULT nextval('public.pk'::regclass) NOT NULL,
    amount numeric(6,2) NOT NULL,
    memo text NOT NULL,
    created_on date DEFAULT CURRENT_DATE NOT NULL,
    CONSTRAINT expenses_amount_check CHECK ((amount > 0.01))
);


ALTER TABLE public.expenses OWNER TO boruch;

--
-- Data for Name: expenses; Type: TABLE DATA; Schema: public; Owner: boruch
--

COPY public.expenses (id, amount, memo, created_on) FROM stdin;
1	5.00	breakfast	2020-11-22
2	100.00	tuition	2020-11-22
3	200.00	birthday party	2020-11-22
4	1.00	test	2020-11-23
\.


--
-- Name: expenses expenses_pkey; Type: CONSTRAINT; Schema: public; Owner: boruch
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

