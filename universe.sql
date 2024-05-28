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
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years integer
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
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
    name character varying(30),
    description text,
    has_life boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
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
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
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
-- Name: ufo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ufo (
    ufo_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    friendly boolean
);


ALTER TABLE public.ufo OWNER TO freecodecamp;

--
-- Name: ufo_ufo_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ufo_ufo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ufo_ufo_id_seq OWNER TO freecodecamp;

--
-- Name: ufo_ufo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ufo_ufo_id_seq OWNED BY public.ufo.ufo_id;


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
-- Name: ufo ufo_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo ALTER COLUMN ufo_id SET DEFAULT nextval('public.ufo_ufo_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Nearest spiral', 2537000, 10000);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Our galaxy', 0, 13600);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Close neighbor', 3000000, 8000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Interacting pair', 23000000, 10000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Edge-on spiral', 29000000, 9000);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Face-on spiral', 21000000, 14000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth''s natural satellite', false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars''s innermost moon', false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars''s outermost moon', false, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Largest moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 'Galilean moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (6, 'Io', 'Volcanically active moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (7, 'Europa', 'Icy moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Largest moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (11, 'Charon', 'Pluto''s largest moon', false, 9);
INSERT INTO public.moon VALUES (12, 'Triton', 'Largest moon of Neptune', false, 8);
INSERT INTO public.moon VALUES (13, 'Nereid', 'Moon of Neptune', false, 8);
INSERT INTO public.moon VALUES (14, 'Miranda', 'Moon of Uranus', false, 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', 'Moon of Uranus', false, 7);
INSERT INTO public.moon VALUES (16, 'Ariel', 'Moon of Uranus', false, 7);
INSERT INTO public.moon VALUES (17, 'Tethys', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (18, 'Enceladus', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (19, 'Dione', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (20, 'Hyperion', 'Moon of Saturn', false, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Swift Messenger of the Gods', false, 57909175, 4500, 2);
INSERT INTO public.planet VALUES (2, 'Venus', 'Shrouded Beauty of the Morning Star', false, 26100000, 4500, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 'Blue Jewel of the Cosmos', true, 0, 4500, 2);
INSERT INTO public.planet VALUES (4, 'Mars', 'Red Planet of Endless Deserts', false, 40100000, 4500, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Giant Guardian of the Inner System', false, 629000000, 4500, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Ringed Majesty of the Outer System', false, 1275000000, 4500, 2);
INSERT INTO public.planet VALUES (7, 'Andromeda Prime', 'Eternal Haven of the Ancients', true, 2537000, 10000, 1);
INSERT INTO public.planet VALUES (8, 'Triangulum Prime', 'Shrouded Enigma of the Triad Stars', true, 3000000, 8000, 3);
INSERT INTO public.planet VALUES (9, 'Whirlpool Prime', 'Vortex of Eternal Serenity', true, 23000000, 10000, 4);
INSERT INTO public.planet VALUES (10, 'Sombrero Prime', 'Hat of Cosmic Wonders', true, 29000000, 9000, 5);
INSERT INTO public.planet VALUES (11, 'Pinwheel Prime', 'Spiraling Nexus of Possibilities', true, 21000000, 14000, 6);
INSERT INTO public.planet VALUES (12, 'Andromeda Second', 'Whispering Sands of Remembrance', false, 2537000, 10000, 1);
INSERT INTO public.planet VALUES (13, 'Triangulum Second', 'Echoes of Forgotten Time', false, 3000000, 8000, 3);
INSERT INTO public.planet VALUES (14, 'Whirlpool Second', 'Whispers from the Celestial Whirl', false, 23000000, 10000, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Andromeda Star', 'Cosmic gem', 2537000, 10000, 1);
INSERT INTO public.star VALUES (2, 'Milky Way Star', 'Galactic beacon', 0, 13600, 2);
INSERT INTO public.star VALUES (3, 'Triangulum Star', 'Mysterious triangle', 3000000, 8000, 3);
INSERT INTO public.star VALUES (4, 'Whirlpool Star', 'Dancing fireball', 23000000, 10000, 4);
INSERT INTO public.star VALUES (5, 'Sombrero Star', 'Hat of the universe', 29000000, 9000, 5);
INSERT INTO public.star VALUES (6, 'Pinwheel Star', 'Spinning brilliance', 21000000, 14000, 6);


--
-- Data for Name: ufo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ufo VALUES (1, 'Strange disk', 'green guys', false);
INSERT INTO public.ufo VALUES (2, 'Flying potato', 'pink folks', true);
INSERT INTO public.ufo VALUES (3, 'Blob', 'blib-blops', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: ufo_ufo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ufo_ufo_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: ufo ufo_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo
    ADD CONSTRAINT ufo_name_key UNIQUE (name);


--
-- Name: ufo ufo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo
    ADD CONSTRAINT ufo_pkey PRIMARY KEY (ufo_id);


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

