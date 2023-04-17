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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (513, 2018, 'Final', 313, 314, 4, 2);
INSERT INTO public.games VALUES (514, 2018, 'Third Place', 315, 316, 2, 0);
INSERT INTO public.games VALUES (515, 2018, 'Semi-Final', 314, 316, 2, 1);
INSERT INTO public.games VALUES (516, 2018, 'Semi-Final', 313, 315, 1, 0);
INSERT INTO public.games VALUES (517, 2018, 'Quarter-Final', 314, 317, 3, 2);
INSERT INTO public.games VALUES (518, 2018, 'Quarter-Final', 316, 318, 2, 0);
INSERT INTO public.games VALUES (519, 2018, 'Quarter-Final', 315, 319, 2, 1);
INSERT INTO public.games VALUES (520, 2018, 'Quarter-Final', 313, 320, 2, 0);
INSERT INTO public.games VALUES (521, 2018, 'Eighth-Final', 316, 321, 2, 1);
INSERT INTO public.games VALUES (522, 2018, 'Eighth-Final', 318, 322, 1, 0);
INSERT INTO public.games VALUES (523, 2018, 'Eighth-Final', 315, 323, 3, 2);
INSERT INTO public.games VALUES (524, 2018, 'Eighth-Final', 319, 324, 2, 0);
INSERT INTO public.games VALUES (525, 2018, 'Eighth-Final', 314, 325, 2, 1);
INSERT INTO public.games VALUES (526, 2018, 'Eighth-Final', 317, 326, 2, 1);
INSERT INTO public.games VALUES (527, 2018, 'Eighth-Final', 320, 327, 2, 1);
INSERT INTO public.games VALUES (528, 2018, 'Eighth-Final', 313, 328, 4, 3);
INSERT INTO public.games VALUES (529, 2014, 'Final', 329, 328, 1, 0);
INSERT INTO public.games VALUES (530, 2014, 'Third Place', 330, 319, 3, 0);
INSERT INTO public.games VALUES (531, 2014, 'Semi-Final', 328, 330, 1, 0);
INSERT INTO public.games VALUES (532, 2014, 'Semi-Final', 329, 319, 7, 1);
INSERT INTO public.games VALUES (533, 2014, 'Quarter-Final', 330, 331, 1, 0);
INSERT INTO public.games VALUES (534, 2014, 'Quarter-Final', 328, 315, 1, 0);
INSERT INTO public.games VALUES (535, 2014, 'Quarter-Final', 319, 321, 2, 1);
INSERT INTO public.games VALUES (536, 2014, 'Quarter-Final', 329, 313, 1, 0);
INSERT INTO public.games VALUES (537, 2014, 'Eighth-Final', 319, 332, 2, 1);
INSERT INTO public.games VALUES (538, 2014, 'Eighth-Final', 321, 320, 2, 0);
INSERT INTO public.games VALUES (539, 2014, 'Eighth-Final', 313, 333, 2, 0);
INSERT INTO public.games VALUES (540, 2014, 'Eighth-Final', 329, 334, 2, 1);
INSERT INTO public.games VALUES (541, 2014, 'Eighth-Final', 330, 324, 2, 1);
INSERT INTO public.games VALUES (542, 2014, 'Eighth-Final', 331, 335, 2, 1);
INSERT INTO public.games VALUES (543, 2014, 'Eighth-Final', 328, 322, 1, 0);
INSERT INTO public.games VALUES (544, 2014, 'Eighth-Final', 315, 336, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (313, 'France');
INSERT INTO public.teams VALUES (314, 'Croatia');
INSERT INTO public.teams VALUES (315, 'Belgium');
INSERT INTO public.teams VALUES (316, 'England');
INSERT INTO public.teams VALUES (317, 'Russia');
INSERT INTO public.teams VALUES (318, 'Sweden');
INSERT INTO public.teams VALUES (319, 'Brazil');
INSERT INTO public.teams VALUES (320, 'Uruguay');
INSERT INTO public.teams VALUES (321, 'Colombia');
INSERT INTO public.teams VALUES (322, 'Switzerland');
INSERT INTO public.teams VALUES (323, 'Japan');
INSERT INTO public.teams VALUES (324, 'Mexico');
INSERT INTO public.teams VALUES (325, 'Denmark');
INSERT INTO public.teams VALUES (326, 'Spain');
INSERT INTO public.teams VALUES (327, 'Portugal');
INSERT INTO public.teams VALUES (328, 'Argentina');
INSERT INTO public.teams VALUES (329, 'Germany');
INSERT INTO public.teams VALUES (330, 'Netherlands');
INSERT INTO public.teams VALUES (331, 'Costa Rica');
INSERT INTO public.teams VALUES (332, 'Chile');
INSERT INTO public.teams VALUES (333, 'Nigeria');
INSERT INTO public.teams VALUES (334, 'Algeria');
INSERT INTO public.teams VALUES (335, 'Greece');
INSERT INTO public.teams VALUES (336, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 544, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 336, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
