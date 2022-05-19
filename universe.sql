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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_type_id integer,
    galaxy_activity boolean,
    galaxy_size_in_kparsecs numeric(1000,2),
    galaxy_star_number_on_billions integer,
    galaxy_description text NOT NULL
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    galaxy_type_description text,
    name character varying(50) NOT NULL
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer,
    moon_size integer,
    moon_description text NOT NULL,
    moon_discover_year date,
    orbit_type_id integer,
    moon_orbit_days numeric(1000,2),
    moon_distance_from_planet numeric(1000,2)
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
-- Name: orbit_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.orbit_type (
    orbit_type_id integer NOT NULL,
    orbit_description text,
    name character varying(50) NOT NULL
);


ALTER TABLE public.orbit_type OWNER TO freecodecamp;

--
-- Name: orbit_type_orbit_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.orbit_type_orbit_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orbit_type_orbit_type_id_seq OWNER TO freecodecamp;

--
-- Name: orbit_type_orbit_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.orbit_type_orbit_type_id_seq OWNED BY public.orbit_type.orbit_type_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_type_id integer,
    star_id integer,
    planet_distance_from_its_star_in_au numeric(1000,2),
    planet_moons_number integer,
    planet_description text NOT NULL,
    planet_life boolean,
    planet_number_from_own_star integer,
    orbit_type_id integer,
    planet_gravity numeric(1000,2),
    planet_rotation_period_days numeric(1000,2),
    planet_god_related boolean,
    planet_orbital_period_year numeric(1000,2),
    planet_mass numeric(1000,2)
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    planet_type_description text,
    name character varying(50) NOT NULL
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_type_id integer,
    galaxy_id integer,
    star_distance_from_earth_in_parsecs numeric(1000,2),
    star_planets_number integer,
    star_description text NOT NULL
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
-- Name: star_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_type (
    star_type_id integer NOT NULL,
    star_type_description text,
    name character varying(50) NOT NULL
);


ALTER TABLE public.star_type OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_type_star_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_type_star_type_id_seq OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_type_star_type_id_seq OWNED BY public.star_type.star_type_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: orbit_type orbit_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.orbit_type ALTER COLUMN orbit_type_id SET DEFAULT nextval('public.orbit_type_orbit_type_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_type star_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type ALTER COLUMN star_type_id SET DEFAULT nextval('public.star_type_star_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 1, true, 4.30, 30, 'It is a satellite galaxy of the Milky Way. They have a prominent central bar and spiral arm.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 4, true, 67.48, 1000, 'The Andromeda Galaxy was formed roughly 10 billion years ago from the collision and subsequent merger of smaller protogalaxies.');
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 4, true, 56.75, 400, 'The Milky Way consists of a bar-shaped core region surrounded by a warped disk of gas, dust and stars.');
INSERT INTO public.galaxy VALUES (4, 'Sagittarius Dwarf Spheroidal Galaxy', 2, true, 3.00, 1, 'It is an elliptical loop-shaped satellite galaxy of the Milky Way. It contains four globular cluster in its main body.');
INSERT INTO public.galaxy VALUES (5, 'Whirpool', 1, true, 23.30, 100, 'It is an interacting grand design spiral galaxy, it lies in the constellation Canes Venatici.');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 2, true, 15.00, 100, 'It is a peculiar galaxy of unclear classification in the constellation borders of Virgo and Corvus, it has a bright nucleus, an unusually large central bulge and a prominent dust lane in its outer disk.');


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'They have a flat, spinning disk with a central bulge surrounded by spiral arms', 'Spiral');
INSERT INTO public.galaxy_type VALUES (2, 'They have an elongated spherical shape and lack a nucleus or bulge at the center', 'Elliptical');
INSERT INTO public.galaxy_type VALUES (3, 'They have no definite shape, though they are in constant motion like other galaxies', 'Irregular');
INSERT INTO public.galaxy_type VALUES (4, 'They share the same features and functions as regular spiral galaxies, but they also have a bar of bright stars that lie along the center of the bulge and extend into the disk', 'Barred Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon - Luna', 3, 3475, 'Only Natural Satellite of Earth, it is the fifth larger satellite in the solar system, the largest satellite in the solar system relative to its major planet and larger than any known dwarf planet.', NULL, 1, 27.32, 384400.00);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 10, 'Discovered by Asaph Hall, very near to the planet', '1877-08-18', 2, 0.32, 9270.00);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 8, 'Discovered by Asaph Hall, is the second moon on Mars.', '1877-08-18', 2, 1.20, 23460.00);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, 5276, 'Discovered by Galileo Galilei is the biggest moon of Jupiter.', '1610-01-07', 2, 7.16, 1070000.00);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 3126, 'Discovered by Galilei, its the smallest Galilean satellite of Jupiter', '1610-01-08', 1, 3.55, 670900.00);
INSERT INTO public.moon VALUES (6, 'Callisto', 5, 4800, 'Discovered by Galilei, its the second biggest moon in the solar system after Ganymede.', '1610-01-07', 1, 16.69, 1883000.00);
INSERT INTO public.moon VALUES (7, 'Io', 5, 3629, 'Discoverd by Galilei, its the fouth largest moon in the solar system, has the highest density of any moon, the strongest surface gravity of any moon and the lowest amount of water of any known astronomical object in the solar system. With over 400 volcanoes, it is the most geologically active object in the solar system.', '1610-01-08', 1, 1.77, 421600.00);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 5150, 'Titan is the second largest moon in the solar system and is the only known object in space other than Earth on which clear evidence of stable bodies of surface liquid. It was discovered by Christiaan Huygens.', '1655-03-25', 1, 15.94, 1221850.00);
INSERT INTO public.moon VALUES (9, 'Iapetus', 6, 1436, 'It is the third largest satellite of Saturn and the eleventh largest in the solar system. The Cassini mission revealed several unusual features, such a massive equatorial ridge running three quarters of way around the moon and distinctive color pattern.', '1671-10-25', 1, 79.32, 3561300.00);
INSERT INTO public.moon VALUES (10, 'Rhea', 6, 1528, 'It is the second largest moon of Saturn. It is the smallest body in the solar system for which precise measurements have confirmed a shape consistent with hydrostatic equilibrium.', '1672-12-23', 1, 4.51, 527040.00);
INSERT INTO public.moon VALUES (11, 'Titania', 7, 1578, 'It is the largest moon of Uranus and the eighth largest moon in the solar system. Discovered by William Herschel, its orbit lies inside Uranus magnetosphere.', '1787-01-11', 1, 8.71, 435840.00);
INSERT INTO public.moon VALUES (12, 'Oberon', 7, 1526, 'It is the outermost major moon of Uranus, it is the second largest and the second most massive of the Uranian moons. The Uranian system has been studied up close only once: the spacecraft Voyager 2 took several images of Oberon in January 1986, allowing 40% of the moons surface to be mapped.', '1787-01-11', 1, 13.46, 582600.00);
INSERT INTO public.moon VALUES (13, 'Triton', 8, 2705, 'It is the largest satellite of Neptune and was the first Neptunian moon to be discovered by William Lassel. It is the only large moon in the solar system with a retrograde orbit. Because of its retrograde orbit and composition similar to Pluto, Triton is thought to have been a dwarf planet, captured from the Kuiper belt.', '1846-10-10', 2, 5.88, 354800.00);
INSERT INTO public.moon VALUES (14, 'Helike', 5, 4, 'Discovered by Sheppard, Jewitt and Kleyna, Helike belongs to the Ananke Group.', '2003-02-25', 1, 634.80, 21263000.00);
INSERT INTO public.moon VALUES (15, 'Ananke', 5, 20, 'Ananke gives its name to the Ananke group, retrograde irregular moons which orbit Jupiter between 19.3 and 22.7 Gm. It was discovered by Seth Barnes Nicholson.', '1951-09-28', 1, 631.00, 21200000.00);
INSERT INTO public.moon VALUES (16, 'Carme', 5, 30, 'Carme gives its name to the Carme group, made up of irregular retrograde moons orbiting Jupiter at a distance ranging between 23 and 24 Gm and at a inclination of about 165 grades.', '1938-07-30', 1, 692.00, 22600000.00);
INSERT INTO public.moon VALUES (17, 'Himalia', 5, 170, 'Himalia is the largest irregular satellite of Jupiter. It is the sixth largest Jovian satellite, after the four Galilean moons and Amalthea.', '1904-12-03', 1, 250.57, 11480000.00);
INSERT INTO public.moon VALUES (18, 'Amalthea', 5, 167, 'Amalthea was the last natural satellite to be discovered by direct visual observation, by Edward Emerson Barnard. Amalthea is the largest of the inner satellites of Jupiter and is irregularly shaped and reddish in color.', '1892-09-09', 1, 0.49, 181300.00);
INSERT INTO public.moon VALUES (19, 'Pasiphae', 5, 36, 'Pasiphae orbits Jupiter on a high eccentricity and high inclination retrograde orbit. It gives the name to the Pasiphae group, irregular retrograd moons orbiting Jupiter at distances ranging between 22.8 and 24.1 million km, and with inclinations ranging between 144.5 and 158.3 degrees.', '1908-01-27', 1, 735.00, 23500000.00);
INSERT INTO public.moon VALUES (20, 'Enceladus', 6, 498, 'Enceladus is mostly covered by fresh, clean ice, making it one of the most reflective bodies on the solar system. Cassini perfomed chemical analisys of Enceladus plumes, finding evidency for hidrothermal activity, possibly driving complex chemestry, this enviroment could be habitable to some Earths hydrothermal vents microorganisms, and that plume-found methane could be produced by such organisms.', '1789-08-28', 1, 1.37, 238020.00);


--
-- Data for Name: orbit_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.orbit_type VALUES (1, 'An orbit with an eccentricity greater than 0 and less than 1 whose orbit trace the path of an ellipse', 'Eliptical');
INSERT INTO public.orbit_type VALUES (2, 'An orbit that has an eccentricity of 0 and whose path trace a circle', 'Circular');
INSERT INTO public.orbit_type VALUES (3, 'An orbit with an eccentricity equal to 1', 'Parabolic');
INSERT INTO public.orbit_type VALUES (4, 'An orbit with an eccentricity greater than 1', 'Hyperbolic');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4, 1, 0.40, 0, 'It is the smallest planet in the solar system and the closest to the Sun.', false, 1, 1, 3.70, 58.65, true, 0.24, 0.05);
INSERT INTO public.planet VALUES (2, 'Venus', 4, 1, 0.70, 0, 'It is the second planet from the Sun and the brightest natural object in Earths night sky after the Moon.', false, 2, 2, 8.87, -243.02, true, 0.62, 0.82);
INSERT INTO public.planet VALUES (3, 'Earth', 4, 1, 1.00, 1, 'It is the third planet from the Sun and the only astronomical object known to harbor life, the only one known to have current geological activity.', true, 3, 1, 9.81, 1.00, false, 1.00, 1.00);
INSERT INTO public.planet VALUES (4, 'Mars', 4, 1, 1.50, 2, 'It the four planet from the Sun and the second smallest planet in the Solar System.', false, 4, 1, 3.72, 1.03, true, 1.88, 0.11);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 1, 9.50, 80, 'It is the fifth planet from the Sun and the largest in the solar system. It is a gas giant with a mass more than two and a half times that of all the others planets in the solar system combined, less than 0/1000 the mass of the sun.', false, 5, 1, 24.79, 0.41, true, 11.86, 318.00);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 1, 9.50, 83, 'It is the sixth planet from the Sun and the second largest in the solar system, distinguished by its extensive ring system.', false, 6, 1, 10.44, 0.45, true, 29.46, 95.00);
INSERT INTO public.planet VALUES (7, 'Uranus', 2, 1, 19.20, 27, 'It is the seventh planet from the Sun. Uniquely among the planets, it orbits the Sun on its side; its axial tilt is over ninety degrees to the ecliptic. It has the cooldest planetary atmosphere in the solar system.', false, 7, 1, 8.87, -0.72, true, 84.01, 14.00);
INSERT INTO public.planet VALUES (8, 'Neptune', 2, 1, 30.10, 14, 'It is the eighth and farthest planet from the Sun. Neptune is not visible to the unaided eye and is the only planet in the solar system found by matemathical prediction rather than by empirical observation.', false, 8, 2, 11.15, 0.67, false, 164.80, 17.00);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri B', 3, 2, 0.05, 0, 'It is the closest, potentially habitable exoplanet to Earth.', false, 1, 1, 10.34, 36.00, false, 0.03, 1.60);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri C', 3, 2, 1.49, 0, 'Due to its large distance from its star, it is unlikely to be habitable, with a low equilibrium temperature of around 39K.', false, 2, 1, 26.13, 82.60, false, 5.28, 7.00);
INSERT INTO public.planet VALUES (11, 'Wolf 359 C - GJ406C', 3, 4, 0.02, 0, 'It is an exoplanet orbiting the star Wolf 359, located about 7.9 ly away from solar system. Its discovery was publicly announced on 2019.', false, 2, 1, 18.40, 2.69, false, 0.01, 3.80);
INSERT INTO public.planet VALUES (12, 'Lalande 21185B', 3, 5, 0.08, 0, 'It is an exoplanet orbiting the star Lalande 21185, located about 8.3 ly away from solar system. Its discovery was publicly announced on 2017.', false, 1, 1, 15.54, 12.95, false, 0.04, 2.64);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'They are planets the size of Jupiter of Saturn or much much larger', 'Gas giant');
INSERT INTO public.planet_type VALUES (2, 'They are similar in size to Neptune or Uranus, they likely have a mixture of interior compositions, but all will have hydrogen and helium-dominated outer atmospheres and rocky cores', 'Neptunian planet');
INSERT INTO public.planet_type VALUES (3, 'They are tipicaly terrestrial planets that may or may not have atmospheres. They are more massive than Earth but lighter than Neptune', 'Super Earth');
INSERT INTO public.planet_type VALUES (4, 'They are Earth sized and smaller, composed of rock, silicate, water or carbon', 'Terrestrial Planet');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5, 1, 0.00, 8, 'It is a nearly perfect ball of hot plasma, heated to incandescence by nuclear fusion reactions in its core, radiating the energy mainly as visible light, ultraviolet light and infrared light.');
INSERT INTO public.star VALUES (2, 'C Proxima Centauri', 7, 1, 1.30, 3, 'It is a red dwarf star with a mass about 12.5% of the Sun mass.');
INSERT INTO public.star VALUES (3, 'A Rigil Kentaurus', 5, 1, 1.33, 0, 'It is a binary system star, appears to be a single star to the naked eye, it is the brightest in the southern constellation of Centaurus.');
INSERT INTO public.star VALUES (4, 'Wolf 359', 7, 1, 2.40, 2, 'It is a red dwarf star located in the constellation Leo.');
INSERT INTO public.star VALUES (5, 'Lalande 21185', 7, 1, 2.55, 2, 'It is the apparent brightest red dwarf in the northern hemisphere.');
INSERT INTO public.star VALUES (6, 'A Sirius', 1, 1, 2.67, 0, 'It is the brightest star in the night sky.');


--
-- Data for Name: star_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_type VALUES (1, 'O-Type stars are very hot and extremely luminous, with most of their radiated output in the ultraviolet range', 'Class O');
INSERT INTO public.star_type VALUES (2, 'B-Type stars are very luminous and blue', 'Class B');
INSERT INTO public.star_type VALUES (3, 'A-Type stars are among the more common naked eyes stars and they are white or bluish-white', 'Class A');
INSERT INTO public.star_type VALUES (4, 'F-Type stars have strengthening spectral lines H and K of Ca II. Their color is white', 'Class F');
INSERT INTO public.star_type VALUES (5, 'G-Type stars, including the Sun, have prominent spectral lines H and K of Ca II', 'Class G');
INSERT INTO public.star_type VALUES (6, 'K-Type stars are orangish stars that are slightly cooler than the Sun. They are also giant K-types stars', 'Class K');
INSERT INTO public.star_type VALUES (7, 'M-Type stars are the most common. About 76% of the main-sequence stars in the solar neighborhood are class M stars', 'Class M');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: orbit_type_orbit_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.orbit_type_orbit_type_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_type_star_type_id_seq', 7, true);


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
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


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
-- Name: orbit_type orbit_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.orbit_type
    ADD CONSTRAINT orbit_type_name_key UNIQUE (name);


--
-- Name: orbit_type orbit_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.orbit_type
    ADD CONSTRAINT orbit_type_pkey PRIMARY KEY (orbit_type_id);


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
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


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
-- Name: star_type star_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_name_key UNIQUE (name);


--
-- Name: star_type star_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_pkey PRIMARY KEY (star_type_id);


--
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


--
-- Name: moon moon_orbit_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_orbit_type_id_fkey FOREIGN KEY (orbit_type_id) REFERENCES public.orbit_type(orbit_type_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_orbit_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_orbit_type_id_fkey FOREIGN KEY (orbit_type_id) REFERENCES public.orbit_type(orbit_type_id);


--
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


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
-- Name: star star_star_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_type_id_fkey FOREIGN KEY (star_type_id) REFERENCES public.star_type(star_type_id);


--
-- PostgreSQL database dump complete
--

