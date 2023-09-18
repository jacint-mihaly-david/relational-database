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
-- Name: anomaly; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.anomaly (
    anomaly_id integer NOT NULL,
    name character varying(30) NOT NULL,
    first_discovered date
);


ALTER TABLE public.anomaly OWNER TO freecodecamp;

--
-- Name: anomaly_anomaly_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.anomaly_anomaly_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anomaly_anomaly_id_seq OWNER TO freecodecamp;

--
-- Name: anomaly_anomaly_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.anomaly_anomaly_id_seq OWNED BY public.anomaly.anomaly_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mapped boolean,
    anomaly_detected boolean,
    is_federation_territory boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    population integer,
    distance_from_earth_in_km numeric,
    is_habitable boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    population integer,
    description text,
    is_habitable boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    anomaly_detected boolean,
    is_federation_territory boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: anomaly anomaly_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.anomaly ALTER COLUMN anomaly_id SET DEFAULT nextval('public.anomaly_anomaly_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: anomaly; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.anomaly VALUES (1, 'Q', '3007-04-23');
INSERT INTO public.anomaly VALUES (2, 'Warp Rift', '3060-11-09');
INSERT INTO public.anomaly VALUES (3, 'Jacint Mihaly David', '1995-06-22');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Draco II', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cosmos Redshift 7', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Malin 1', false, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Deimos', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Adrastea', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Aitne', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Amalthea', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Ananke', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (8, 'Aoede', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Arche', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Autonoe', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (11, 'Callisto', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (12, 'Carme', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (13, 'Carpo', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (14, 'Chaldene', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (15, 'Cyllene', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (16, 'Elara', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (17, 'Erinome', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'Euanthe', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (19, 'Euporie', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (20, 'Europa', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (21, 'Eurydome', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (22, 'Ganymede', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (23, 'Harpalyke', NULL, NULL, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, 'The planet with the second highest temperature in the Solar System', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, 'The warmest planet in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 8000, 'The only planet in the Solar System to have human life.', false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 0, 'Sometimes called the "red planet" and "the brother of Earth".', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 0, 'The largest planet in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 0, 'Sixth planet from the Sun. It has giant rings around it.', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 0, 'Seventh planet from the Sun.', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 0, 'The farthest planet from the Sun in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-186f', 0, 'A planet similar to Earth.', true, 2);
INSERT INTO public.planet VALUES (10, 'Kepler-16b', 0, 'Also known as a circumbinary planet, which orbits two stars.', false, 2);
INSERT INTO public.planet VALUES (11, 'Pegasi b', 0, 'A giant planet with half the mass of Jupiter and orbits its stars once every four days.', false, 2);
INSERT INTO public.planet VALUES (12, 'CoRoT 6b', 0, 'It''s known as super-Earth', true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Arcturus', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Alpha Centauri', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Castor', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, '51 Pegasi', 1, NULL, NULL);


--
-- Name: anomaly_anomaly_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.anomaly_anomaly_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 34, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: anomaly anomaly_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.anomaly
    ADD CONSTRAINT anomaly_name_key UNIQUE (name);


--
-- Name: anomaly anomaly_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.anomaly
    ADD CONSTRAINT anomaly_pkey PRIMARY KEY (anomaly_id);


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

