--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer NOT NULL,
    guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_user_id_seq OWNER TO freecodecamp;

--
-- Name: games_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_user_id_seq OWNED BY public.games.user_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    name character varying(22),
    user_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN user_id SET DEFAULT nextval('public.games_user_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (56, 728);
INSERT INTO public.games VALUES (56, 152);
INSERT INTO public.games VALUES (57, 335);
INSERT INTO public.games VALUES (57, 634);
INSERT INTO public.games VALUES (56, 425);
INSERT INTO public.games VALUES (56, 240);
INSERT INTO public.games VALUES (56, 302);
INSERT INTO public.games VALUES (58, 401);
INSERT INTO public.games VALUES (58, 241);
INSERT INTO public.games VALUES (59, 940);
INSERT INTO public.games VALUES (59, 293);
INSERT INTO public.games VALUES (58, 832);
INSERT INTO public.games VALUES (58, 622);
INSERT INTO public.games VALUES (58, 55);
INSERT INTO public.games VALUES (60, 523);
INSERT INTO public.games VALUES (60, 677);
INSERT INTO public.games VALUES (61, 3);
INSERT INTO public.games VALUES (61, 812);
INSERT INTO public.games VALUES (60, 452);
INSERT INTO public.games VALUES (60, 439);
INSERT INTO public.games VALUES (60, 341);
INSERT INTO public.games VALUES (62, 975);
INSERT INTO public.games VALUES (62, 151);
INSERT INTO public.games VALUES (63, 472);
INSERT INTO public.games VALUES (63, 611);
INSERT INTO public.games VALUES (62, 34);
INSERT INTO public.games VALUES (62, 98);
INSERT INTO public.games VALUES (62, 289);
INSERT INTO public.games VALUES (64, 331);
INSERT INTO public.games VALUES (64, 274);
INSERT INTO public.games VALUES (65, 303);
INSERT INTO public.games VALUES (65, 191);
INSERT INTO public.games VALUES (64, 333);
INSERT INTO public.games VALUES (64, 876);
INSERT INTO public.games VALUES (64, 854);
INSERT INTO public.games VALUES (66, 410);
INSERT INTO public.games VALUES (66, 937);
INSERT INTO public.games VALUES (67, 266);
INSERT INTO public.games VALUES (67, 623);
INSERT INTO public.games VALUES (66, 378);
INSERT INTO public.games VALUES (66, 443);
INSERT INTO public.games VALUES (66, 408);
INSERT INTO public.games VALUES (68, 1000);
INSERT INTO public.games VALUES (68, 329);
INSERT INTO public.games VALUES (69, 777);
INSERT INTO public.games VALUES (69, 283);
INSERT INTO public.games VALUES (68, 155);
INSERT INTO public.games VALUES (68, 564);
INSERT INTO public.games VALUES (68, 613);
INSERT INTO public.games VALUES (70, 547);
INSERT INTO public.games VALUES (70, 106);
INSERT INTO public.games VALUES (71, 155);
INSERT INTO public.games VALUES (71, 563);
INSERT INTO public.games VALUES (70, 506);
INSERT INTO public.games VALUES (70, 130);
INSERT INTO public.games VALUES (70, 737);
INSERT INTO public.games VALUES (72, 973);
INSERT INTO public.games VALUES (72, 923);
INSERT INTO public.games VALUES (73, 59);
INSERT INTO public.games VALUES (73, 882);
INSERT INTO public.games VALUES (72, 806);
INSERT INTO public.games VALUES (72, 700);
INSERT INTO public.games VALUES (72, 932);
INSERT INTO public.games VALUES (74, 181);
INSERT INTO public.games VALUES (74, 484);
INSERT INTO public.games VALUES (75, 592);
INSERT INTO public.games VALUES (75, 232);
INSERT INTO public.games VALUES (74, 676);
INSERT INTO public.games VALUES (74, 270);
INSERT INTO public.games VALUES (74, 554);
INSERT INTO public.games VALUES (76, 579);
INSERT INTO public.games VALUES (76, 134);
INSERT INTO public.games VALUES (77, 565);
INSERT INTO public.games VALUES (77, 205);
INSERT INTO public.games VALUES (76, 793);
INSERT INTO public.games VALUES (76, 483);
INSERT INTO public.games VALUES (76, 347);
INSERT INTO public.games VALUES (78, 891);
INSERT INTO public.games VALUES (78, 233);
INSERT INTO public.games VALUES (79, 243);
INSERT INTO public.games VALUES (79, 494);
INSERT INTO public.games VALUES (78, 882);
INSERT INTO public.games VALUES (78, 627);
INSERT INTO public.games VALUES (78, 921);
INSERT INTO public.games VALUES (80, 899);
INSERT INTO public.games VALUES (80, 998);
INSERT INTO public.games VALUES (81, 585);
INSERT INTO public.games VALUES (81, 877);
INSERT INTO public.games VALUES (80, 637);
INSERT INTO public.games VALUES (80, 749);
INSERT INTO public.games VALUES (80, 407);
INSERT INTO public.games VALUES (82, 12);
INSERT INTO public.games VALUES (83, 95);
INSERT INTO public.games VALUES (83, 640);
INSERT INTO public.games VALUES (84, 74);
INSERT INTO public.games VALUES (84, 379);
INSERT INTO public.games VALUES (83, 853);
INSERT INTO public.games VALUES (83, 375);
INSERT INTO public.games VALUES (83, 768);
INSERT INTO public.games VALUES (85, 149);
INSERT INTO public.games VALUES (85, 738);
INSERT INTO public.games VALUES (86, 807);
INSERT INTO public.games VALUES (86, 221);
INSERT INTO public.games VALUES (85, 945);
INSERT INTO public.games VALUES (85, 62);
INSERT INTO public.games VALUES (85, 224);
INSERT INTO public.games VALUES (87, 959);
INSERT INTO public.games VALUES (87, 821);
INSERT INTO public.games VALUES (88, 748);
INSERT INTO public.games VALUES (88, 639);
INSERT INTO public.games VALUES (87, 816);
INSERT INTO public.games VALUES (87, 177);
INSERT INTO public.games VALUES (87, 420);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1677984216355', 56);
INSERT INTO public.users VALUES ('user_1677984216354', 57);
INSERT INTO public.users VALUES ('user_1677984357659', 58);
INSERT INTO public.users VALUES ('user_1677984357657', 59);
INSERT INTO public.users VALUES ('user_1677984566562', 60);
INSERT INTO public.users VALUES ('user_1677984566561', 61);
INSERT INTO public.users VALUES ('user_1677984601138', 62);
INSERT INTO public.users VALUES ('user_1677984601137', 63);
INSERT INTO public.users VALUES ('user_1677984621493', 64);
INSERT INTO public.users VALUES ('user_1677984621492', 65);
INSERT INTO public.users VALUES ('user_1677984641702', 66);
INSERT INTO public.users VALUES ('user_1677984641701', 67);
INSERT INTO public.users VALUES ('user_1677984702046', 68);
INSERT INTO public.users VALUES ('user_1677984702045', 69);
INSERT INTO public.users VALUES ('user_1677984728771', 70);
INSERT INTO public.users VALUES ('user_1677984728770', 71);
INSERT INTO public.users VALUES ('user_1677984807291', 72);
INSERT INTO public.users VALUES ('user_1677984807290', 73);
INSERT INTO public.users VALUES ('user_1677984821842', 74);
INSERT INTO public.users VALUES ('user_1677984821841', 75);
INSERT INTO public.users VALUES ('user_1677984831564', 76);
INSERT INTO public.users VALUES ('user_1677984831563', 77);
INSERT INTO public.users VALUES ('user_1677984842288', 78);
INSERT INTO public.users VALUES ('user_1677984842287', 79);
INSERT INTO public.users VALUES ('user_1677984859719', 80);
INSERT INTO public.users VALUES ('user_1677984859718', 81);
INSERT INTO public.users VALUES ('Joe', 82);
INSERT INTO public.users VALUES ('user_1677985073283', 83);
INSERT INTO public.users VALUES ('user_1677985073282', 84);
INSERT INTO public.users VALUES ('user_1677985134791', 85);
INSERT INTO public.users VALUES ('user_1677985134790', 86);
INSERT INTO public.users VALUES ('user_1677985228052', 87);
INSERT INTO public.users VALUES ('user_1677985228051', 88);


--
-- Name: games_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_user_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 88, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

