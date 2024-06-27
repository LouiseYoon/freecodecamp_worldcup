--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(45) NOT NULL,
    age integer,
    asetriod_num integer,
    diameter numeric,
    nickname text,
    singular boolean,
    plural boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(45) NOT NULL,
    age integer,
    asetriod_num integer,
    diameter numeric,
    nickname text,
    singular boolean,
    plural boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(45) NOT NULL,
    age integer,
    asetriod_num integer,
    diameter numeric,
    nickname text,
    singular boolean,
    plural boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(45) NOT NULL,
    age integer,
    asetriod_num integer,
    diameter numeric,
    nickname text,
    singular boolean,
    plural boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(45) NOT NULL,
    age integer,
    asetriod_num integer,
    diameter numeric,
    nickname text,
    singular boolean,
    plural boolean
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'G1', NULL, NULL, NULL, 'g1', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'G2', NULL, NULL, NULL, 'g2', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'G3', NULL, NULL, NULL, 'g3', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'G4', NULL, NULL, NULL, 'g4', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'G5', NULL, NULL, NULL, 'g5', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'G6', NULL, NULL, NULL, 'g6', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M1', NULL, NULL, NULL, 'm1', NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'M2', NULL, NULL, NULL, 'm2', NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'M3', NULL, NULL, NULL, 'm3', NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'M4', NULL, NULL, NULL, 'm4', NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'M5', NULL, NULL, NULL, 'm5', NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'M6', NULL, NULL, NULL, 'm6', NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'M7', NULL, NULL, NULL, 'm7', NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'M8', NULL, NULL, NULL, 'm8', NULL, NULL, 2);
INSERT INTO public.moon VALUES (9, 'M9', NULL, NULL, NULL, 'm9', NULL, NULL, 3);
INSERT INTO public.moon VALUES (10, 'M10', NULL, NULL, NULL, 'm10', NULL, NULL, 4);
INSERT INTO public.moon VALUES (11, 'M11', NULL, NULL, NULL, 'm11', NULL, NULL, 5);
INSERT INTO public.moon VALUES (12, 'M12', NULL, NULL, NULL, 'm12', NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'M13', NULL, NULL, NULL, 'm13', NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'M14', NULL, NULL, NULL, 'm14', NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'M15', NULL, NULL, NULL, 'm15', NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'M16', NULL, NULL, NULL, 'm16', NULL, NULL, 4);
INSERT INTO public.moon VALUES (17, 'M17', NULL, NULL, NULL, 'm17', NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'M18', NULL, NULL, NULL, 'm18', NULL, NULL, 6);
INSERT INTO public.moon VALUES (19, 'M19', NULL, NULL, NULL, 'm19', NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'M20', NULL, NULL, NULL, 'm20', NULL, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'P1', NULL, NULL, NULL, 'p1', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'P2', NULL, NULL, NULL, 'p2', NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'P3', NULL, NULL, NULL, 'p3', NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'P4', NULL, NULL, NULL, 'p4', NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'P5', NULL, NULL, NULL, 'p5', NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'P6', NULL, NULL, NULL, 'p6', NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'P7', NULL, NULL, NULL, 'p7', NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'P8', NULL, NULL, NULL, 'p8', NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'P9', NULL, NULL, NULL, 'p9', NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'P10', NULL, NULL, NULL, 'p10', NULL, NULL, 4);
INSERT INTO public.planet VALUES (11, 'P11', NULL, NULL, NULL, 'p11', NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'P12', NULL, NULL, NULL, 'p12', NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S1', NULL, NULL, NULL, 's1', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'S2', NULL, NULL, NULL, 's2', NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'S3', NULL, NULL, NULL, 's3', NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'S4', NULL, NULL, NULL, 's4', NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'S5', NULL, NULL, NULL, 's5', NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'S6', NULL, NULL, NULL, 's6', NULL, NULL, 6);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'U1', NULL, NULL, NULL, 'u1', NULL, NULL);
INSERT INTO public.sun VALUES (2, 'U2', NULL, NULL, NULL, 'u2', NULL, NULL);
INSERT INTO public.sun VALUES (3, 'U3', NULL, NULL, NULL, 'u3', NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 1, false);


--
-- Name: galaxy galaxy_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_nickname_key UNIQUE (nickname);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nickname_key UNIQUE (nickname);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nickname_key UNIQUE (nickname);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_nickname_key UNIQUE (nickname);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_nickname_key UNIQUE (nickname);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

