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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying(25) NOT NULL,
    is_spherical boolean,
    size integer,
    distance_from_earth integer,
    age numeric,
    has_life boolean
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroids_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroids_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    age numeric,
    has_life boolean,
    weight integer,
    size integer,
    is_spherical boolean
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
    is_spherical boolean,
    size integer,
    distance_from_earth integer,
    age numeric,
    name character varying(25) NOT NULL,
    has_life boolean,
    descripption text,
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
    name character varying(25) NOT NULL,
    age numeric,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth integer,
    size integer,
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
    size integer,
    name character varying(25) NOT NULL,
    age numeric,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_pstarid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_pstarid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_pstarid_seq OWNER TO freecodecamp;

--
-- Name: star_pstarid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_pstarid_seq OWNED BY public.star.star_id;


--
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroids_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_pstarid_seq'::regclass);


--
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, 'Astar', true, 343, 4353, 33, true);
INSERT INTO public.asteroids VALUES (2, 'Basten', true, 343, 4353, 33, true);
INSERT INTO public.asteroids VALUES (3, 'Castagne', true, 343, 4353, 33, true);
INSERT INTO public.asteroids VALUES (4, 'Duncer', true, 343, 4353, 33, true);
INSERT INTO public.asteroids VALUES (5, 'Eston', true, 343, 4353, 33, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13.61, true, 2, 52850, true);
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 13.28, true, 0, 26481, true);
INSERT INTO public.galaxy VALUES (4, 'Fireworks', 12, true, 1, 20000, true);
INSERT INTO public.galaxy VALUES (37, 'CartWheel', 10, false, 3, 65000, true);
INSERT INTO public.galaxy VALUES (38, 'Butterfly', 9, true, 4, 145203, false);
INSERT INTO public.galaxy VALUES (39, 'Cigar', 8, true, 2, 30000, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, true, 234, 2353, 44556, 'Ventor', true, 'This is a moon', 1);
INSERT INTO public.moon VALUES (2, true, 234, 2353, 44556, 'Kalius', true, 'This is a moon', 2);
INSERT INTO public.moon VALUES (3, true, 234, 2353, 44556, 'mesao', true, 'This is a moon', 3);
INSERT INTO public.moon VALUES (4, true, 234, 2353, 44556, 'nongeto', true, 'This is a moon', 4);
INSERT INTO public.moon VALUES (5, true, 234, 2353, 44556, 'Jaden', true, 'This is a moon', 5);
INSERT INTO public.moon VALUES (6, true, 234, 2353, 44556, 'Itopen', true, 'This is a moon', 6);
INSERT INTO public.moon VALUES (7, true, 234, 2353, 44556, 'Opioum', true, 'This is a moon', 7);
INSERT INTO public.moon VALUES (8, true, 234, 2353, 44556, 'Palestine', true, 'This is a moon', 8);
INSERT INTO public.moon VALUES (9, true, 234, 2353, 44556, 'Uncore', true, 'This is a moon', 9);
INSERT INTO public.moon VALUES (10, true, 234, 2353, 44556, 'Poignk', true, 'This is a moon', 10);
INSERT INTO public.moon VALUES (11, true, 234, 2353, 44556, 'Kader', true, 'This is a moon', 11);
INSERT INTO public.moon VALUES (12, true, 234, 2353, 44556, 'Condh', true, 'This is a moon', 12);
INSERT INTO public.moon VALUES (14, true, 234, 2353, 44556, 'Hende', true, 'This is a moon', 12);
INSERT INTO public.moon VALUES (15, true, 234, 2353, 44556, 'Indec', true, 'This is a moon', 11);
INSERT INTO public.moon VALUES (16, true, 234, 2353, 44556, 'Infdshuc', true, 'This is a moon', 10);
INSERT INTO public.moon VALUES (17, true, 234, 2353, 44556, 'fkc', true, 'This is a moon', 9);
INSERT INTO public.moon VALUES (18, true, 234, 2353, 44556, 'Ashleen', true, 'This is a moon', 8);
INSERT INTO public.moon VALUES (19, true, 234, 2353, 44556, 'Kareen', true, 'This is a moon', 7);
INSERT INTO public.moon VALUES (20, true, 234, 2353, 44556, 'Patobham', true, 'This is a moon', 6);
INSERT INTO public.moon VALUES (21, true, 234, 2353, 44556, 'Casder', true, 'This is a moon', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 23, true, true, 0, 455, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 23, true, true, 0, 455, 2);
INSERT INTO public.planet VALUES (3, 'Mercury', 23, true, true, 0, 455, 3);
INSERT INTO public.planet VALUES (4, 'Venus', 23, true, true, 0, 455, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 23, true, true, 0, 455, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 23, true, true, 0, 455, 6);
INSERT INTO public.planet VALUES (7, 'Neptune', 23, true, true, 0, 455, 7);
INSERT INTO public.planet VALUES (8, 'Pluto', 23, true, true, 0, 455, 8);
INSERT INTO public.planet VALUES (9, 'Valhala', 23, true, true, 0, 455, 9);
INSERT INTO public.planet VALUES (10, 'Asgard', 23, true, true, 0, 455, 10);
INSERT INTO public.planet VALUES (11, 'Cosmos', 23, true, true, 0, 455, 11);
INSERT INTO public.planet VALUES (12, 'Castillia', 23, true, true, 0, 455, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 25, 'Antares', 25, 550, false, true, 1);
INSERT INTO public.star VALUES (2, 25, 'UY Scuti', 15, 250, false, true, 3);
INSERT INTO public.star VALUES (3, 25, 'RW Cephei', 35, 850, false, true, 4);
INSERT INTO public.star VALUES (4, 35, 'Mu Cephei', 15, 480, false, true, 37);
INSERT INTO public.star VALUES (5, 45, 'Betelgeuse', 17, 487, false, true, 38);
INSERT INTO public.star VALUES (6, 40, 'Antilia', 12, 257, false, true, 39);
INSERT INTO public.star VALUES (7, 40, 'Comea', 12, 257, false, true, 39);
INSERT INTO public.star VALUES (8, 40, 'Flaten', 12, 257, false, true, 39);
INSERT INTO public.star VALUES (9, 40, 'Krystal', 12, 257, false, true, 38);
INSERT INTO public.star VALUES (10, 40, 'Nothing', 12, 257, false, true, 38);
INSERT INTO public.star VALUES (11, 40, 'Keshu', 12, 257, false, true, 1);
INSERT INTO public.star VALUES (12, 40, 'M13', 12, 257, false, true, 1);


--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroids_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 39, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_pstarid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_pstarid_seq', 12, true);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uq_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_galaxy_name UNIQUE (name);


--
-- Name: moon uq_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_moon_name UNIQUE (name);


--
-- Name: planet uq_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet_name UNIQUE (name);


--
-- Name: star uq_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star_name UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

