--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

-- Started on 2020-05-18 10:30:33 PDT

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

--
-- TOC entry 2 (class 3079 OID 13039)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2929 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2930 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 199 (class 1259 OID 33327)
-- Name: poweruser; Type: TABLE; Schema: public; Owner: student
--

CREATE TABLE public.poweruser (
    userid integer NOT NULL,
    subscriptiondate date NOT NULL
);


ALTER TABLE public.poweruser OWNER TO student;

--
-- TOC entry 198 (class 1259 OID 33319)
-- Name: users; Type: TABLE; Schema: public; Owner: student
--

CREATE TABLE public.users (
    userid integer NOT NULL,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    birthdate date NOT NULL,
    height integer,
    weight integer,
    gender character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO student;

--
-- TOC entry 197 (class 1259 OID 33297)
-- Name: workouts; Type: TABLE; Schema: public; Owner: student
--

CREATE TABLE public.workouts (
    workoutid integer NOT NULL,
    userid integer,
    activitytype character varying(255) NOT NULL,
    dateperformed timestamp without time zone NOT NULL,
    distance numeric(5,2) NOT NULL,
    duration numeric(10,2) NOT NULL,
    avghr integer,
    maxhr integer
);


ALTER TABLE public.workouts OWNER TO student;

--
-- TOC entry 2921 (class 0 OID 33327)
-- Dependencies: 199
-- Data for Name: poweruser; Type: TABLE DATA; Schema: public; Owner: student
--

INSERT INTO public.poweruser (userid, subscriptiondate) VALUES (2, '2019-08-28');


--
-- TOC entry 2920 (class 0 OID 33319)
-- Dependencies: 198
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: student
--

INSERT INTO public.users (userid, firstname, lastname, birthdate, height, weight, gender) VALUES (1, 'Manny', 'Riolo', '1998-01-01', 72, 175, 'male');
INSERT INTO public.users (userid, firstname, lastname, birthdate, height, weight, gender) VALUES (2, 'David', 'Thacker', '1999-08-25', 68, 155, 'male');
INSERT INTO public.users (userid, firstname, lastname, birthdate, height, weight, gender) VALUES (3, 'Joshua', 'Krutz', '2001-05-14', 67, 155, 'male');


--
-- TOC entry 2919 (class 0 OID 33297)
-- Dependencies: 197
-- Data for Name: workouts; Type: TABLE DATA; Schema: public; Owner: student
--

INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (1, 3, 'Cycling', '2018-07-18 14:07:00', 6.48, 5648.00, 93, 128);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (2, 3, 'Cycling', '2017-06-22 06:13:00', 8.28, 5389.00, 103, 144);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (3, 1, 'Cycling', '2017-05-08 16:18:00', 6.41, 2756.00, 114, 133);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (4, 3, 'Cycling', '2015-12-09 16:12:00', 7.35, 2334.00, 123, 168);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (5, 1, 'Cycling', '2018-09-04 16:03:00', 12.62, 3885.00, 123, 172);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (6, 1, 'Cycling', '2018-01-01 12:17:00', 15.84, 4790.00, 126, 146);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (7, 2, 'Cycling', '2017-05-25 06:49:00', 3.50, 1038.00, 125, 141);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (8, 1, 'Cycling', '2015-09-27 08:13:00', 13.20, 3793.00, 115, 158);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (9, 3, 'Cycling', '2017-12-31 12:14:00', 7.36, 2104.00, 126, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (10, 1, 'Cycling', '2019-04-07 12:12:00', 10.19, 2869.00, 126, 169);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (11, 3, 'Cycling', '2019-09-25 16:04:00', 12.22, 3429.00, 138, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (12, 1, 'Cycling', '2018-01-01 12:01:00', 2.73, 763.00, 112, 134);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (13, 3, 'Cycling', '2017-06-13 06:10:00', 13.85, 3872.00, 124, 172);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (14, 1, 'Cycling', '2018-08-23 16:09:00', 9.74, 2715.00, 143, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (15, 2, 'Cycling', '2020-04-07 13:43:00', 17.75, 4954.00, 134, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (16, 3, 'Cycling', '2015-12-15 15:51:00', 11.62, 3085.00, 133, 162);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (17, 3, 'Cycling', '2017-06-11 15:40:00', 13.20, 3495.00, 124, 168);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (18, 2, 'Cycling', '2017-05-21 09:04:00', 20.86, 5465.00, 121, 154);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (19, 3, 'Cycling', '2020-04-05 13:08:00', 11.45, 2991.00, 152, 196);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (20, 1, 'Cycling', '2017-06-27 06:35:00', 8.52, 2204.00, 127, 148);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (21, 1, 'Cycling', '2016-05-28 15:21:00', 9.82, 2546.00, 114, 183);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (22, 3, 'Cycling', '2016-02-15 14:31:00', 11.69, 3002.00, 132, 161);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (23, 2, 'Cycling', '2015-09-03 06:00:00', 8.79, 2242.00, 105, 153);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (24, 1, 'Cycling', '2016-05-29 07:02:00', 4.66, 1187.00, 127, 153);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (25, 2, 'Cycling', '2017-01-29 13:44:00', 11.69, 2977.00, 139, 172);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (26, 1, 'Cycling', '2018-07-25 09:29:00', 8.54, 2177.00, 118, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (27, 3, 'Cycling', '2016-08-06 17:31:00', 20.54, 5227.00, 122, 177);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (28, 3, 'Cycling', '2020-04-11 13:25:00', 31.72, 8038.00, 136, 183);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (29, 1, 'Cycling', '2015-09-07 17:35:00', 4.16, 1049.00, 141, 159);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (30, 3, 'Cycling', '2016-01-28 13:21:00', 13.94, 3515.00, 139, 174);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (31, 1, 'Cycling', '2016-04-17 12:59:00', 9.76, 2439.00, 108, 151);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (32, 3, 'Cycling', '2018-08-02 06:18:00', 8.10, 2007.00, 121, 139);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (33, 2, 'Cycling', '2017-05-20 18:01:00', 11.70, 2892.00, 114, 142);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (34, 3, 'Cycling', '2018-07-31 06:12:00', 9.19, 2266.00, 122, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (35, 1, 'Cycling', '2020-04-13 14:01:00', 13.44, 3290.00, 136, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (36, 2, 'Cycling', '2018-07-24 19:37:00', 13.95, 3411.00, 131, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (37, 1, 'Cycling', '2017-05-23 06:19:00', 10.20, 2464.00, 134, 153);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (38, 2, 'Cycling', '2016-03-17 17:02:00', 13.26, 3206.00, 127, 157);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (39, 3, 'Cycling', '2015-11-11 11:19:00', 8.07, 1923.00, 109, 148);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (40, 1, 'Cycling', '2019-09-03 16:17:00', 8.46, 2004.00, 133, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (41, 3, 'Cycling', '2018-07-15 08:17:00', 8.99, 2117.00, 131, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (42, 3, 'Cycling', '2016-01-02 14:22:00', 15.06, 3514.00, 147, 167);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (43, 2, 'Cycling', '2018-10-02 16:04:00', 13.01, 3039.00, 133, 168);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (44, 1, 'Cycling', '2016-02-14 13:44:00', 13.78, 3219.00, 134, 174);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (45, 1, 'Cycling', '2017-04-19 10:29:00', 19.86, 4648.00, 143, 175);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (46, 1, 'Cycling', '2020-04-08 11:38:00', 10.02, 2346.00, 135, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (47, 3, 'Cycling', '2016-05-07 15:24:00', 13.84, 3217.00, 132, 167);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (48, 1, 'Cycling', '2015-11-29 13:25:00', 8.75, 2030.00, 144, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (49, 3, 'Cycling', '2015-09-13 07:55:00', 16.61, 3755.00, 129, 158);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (50, 1, 'Cycling', '2016-05-26 12:12:00', 11.76, 2661.00, 134, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (51, 2, 'Cycling', '2016-01-10 13:34:00', 14.28, 3240.00, 144, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (52, 2, 'Cycling', '2016-07-24 14:52:00', 24.66, 5587.00, 133, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (53, 3, 'Cycling', '2020-03-05 16:15:00', 5.71, 1287.00, 172, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (54, 3, 'Cycling', '2016-07-26 17:58:00', 28.88, 6514.00, 147, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (55, 2, 'Cycling', '2015-12-30 15:37:00', 8.81, 1967.00, 148, 172);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (56, 3, 'Cycling', '2016-02-06 14:27:00', 11.89, 2656.00, 142, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (57, 3, 'Cycling', '2018-09-25 16:02:00', 12.30, 2746.00, 143, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (58, 2, 'Cycling', '2016-07-31 07:36:00', 36.31, 8016.00, 142, 175);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (59, 2, 'Cycling', '2018-08-30 16:09:00', 17.98, 3972.00, 146, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (60, 2, 'Cycling', '2020-04-06 12:19:00', 11.45, 2531.00, 160, 192);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (61, 1, 'Cycling', '2019-09-13 16:13:00', 11.56, 2514.00, 141, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (62, 2, 'Cycling', '2016-04-03 12:25:00', 23.19, 5020.00, 135, 208);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (63, 3, 'Cycling', '2019-09-23 16:00:00', 15.55, 3362.00, 148, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (64, 2, 'Cycling', '2015-09-05 09:50:00', 8.61, 1835.00, 134, 161);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (65, 2, 'Cycling', '2016-05-24 16:36:00', 10.01, 2102.00, 143, 177);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (66, 1, 'Cycling', '2015-09-06 18:42:00', 5.64, 1177.00, 139, 164);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (67, 3, 'Cycling', '2016-04-24 13:14:00', 8.59, 1800.00, 142, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (68, 2, 'Cycling', '2016-05-29 11:49:00', 30.30, 6289.00, 148, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (69, 2, 'Cycling', '2016-05-21 10:11:00', 25.14, 5193.00, 137, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (70, 1, 'Cycling', '2019-10-08 16:02:00', 18.01, 3639.00, 144, 168);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (71, 2, 'Cycling', '2019-10-02 16:02:00', 13.70, 2738.00, 163, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (72, 1, 'Cycling', '2018-08-28 16:11:00', 15.16, 3000.00, 136, 164);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (73, 2, 'Cycling', '2019-08-20 16:06:00', 15.15, 3000.00, 152, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (74, 2, 'Cycling', '2018-09-13 16:08:00', 17.82, 3507.00, 146, 171);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (75, 2, 'Cycling', '2018-09-17 16:13:00', 11.91, 2345.00, 147, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (76, 2, 'Cycling', '2019-08-13 16:02:00', 14.39, 2812.00, 159, 183);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (77, 1, 'Cycling', '2019-10-15 16:04:00', 20.27, 3943.00, 156, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (78, 3, 'Cycling', '2019-10-25 12:31:00', 8.12, 1551.00, 153, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (79, 2, 'Cycling', '2018-09-20 16:04:00', 15.09, 2812.00, 150, 174);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (80, 3, 'Cycling', '2019-09-19 16:02:00', 15.81, 2943.00, 155, 183);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (81, 3, 'Cycling', '2019-09-09 15:53:00', 23.59, 4378.00, 159, 192);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (82, 3, 'Cycling', '2019-10-04 15:59:00', 16.50, 3021.00, 156, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (83, 3, 'Cycling', '2019-08-27 16:01:00', 25.19, 4243.00, 162, 183);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (84, 2, 'Cycling', '2018-10-11 15:56:00', 12.00, 2047.00, 116, 154);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (85, 2, 'Cycling', '2018-09-06 16:05:00', 22.00, 3001.00, 126, 165);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (86, 1, 'Cycling', '2018-10-09 16:27:00', 10.00, 1663.00, 158, 177);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (87, 1, 'Cycling', '2019-02-27 15:58:00', 11.48, 4099.00, 103, 124);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (88, 2, 'Cycling', '2019-08-08 17:16:00', 7.31, 2540.00, 154, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (89, 1, 'Cycling', '2020-02-08 08:03:00', 22.16, 7228.00, 117, 165);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (90, 1, 'Cycling', '2020-03-04 16:02:00', 9.89, 3182.00, 119, 150);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (91, 3, 'Cycling', '2019-01-14 15:58:00', 14.05, 4282.00, 140, 175);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (92, 2, 'Cycling', '2020-01-16 15:59:00', 12.69, 3833.00, 128, 161);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (93, 1, 'Cycling', '2020-02-03 16:01:00', 14.33, 4195.00, 132, 177);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (94, 3, 'Cycling', '2020-02-12 16:00:00', 12.19, 3536.00, 132, 162);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (95, 2, 'Cycling', '2020-01-27 16:00:00', 12.71, 3564.00, 129, 171);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (96, 3, 'Cycling', '2019-11-12 16:00:00', 12.89, 3601.00, 146, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (97, 1, 'Cycling', '2020-02-19 16:30:00', 14.00, 3904.00, 146, 182);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (98, 3, 'Cycling', '2020-01-29 15:59:00', 16.47, 4510.00, 132, 167);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (99, 1, 'Cycling', '2019-09-16 17:05:00', 14.67, 3995.00, 146, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (100, 2, 'Cycling', '2020-01-08 15:59:00', 13.74, 3753.00, 163, 188);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (101, 3, 'Cycling', '2020-01-14 15:59:00', 13.60, 3607.00, 142, 189);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (102, 3, 'Cycling', '2020-02-06 16:00:00', 14.18, 3732.00, 146, 164);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (103, 3, 'Cycling', '2019-10-29 17:14:00', 10.38, 2624.00, 138, 174);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (104, 2, 'Cycling', '2019-02-25 15:59:00', 6.12, 1502.00, 153, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (105, 1, 'Cycling', '2020-01-10 15:42:00', 9.88, 2418.00, 168, 201);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (106, 1, 'Cycling', '2020-02-04 17:29:00', 13.06, 3119.00, 144, 164);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (107, 2, 'Cycling', '2020-02-05 16:00:00', 17.67, 4204.00, 141, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (108, 1, 'Cycling', '2020-02-25 16:01:00', 14.99, 3541.00, 145, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (109, 1, 'Cycling', '2020-01-30 15:59:00', 15.20, 3608.00, 159, 185);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (110, 2, 'Cycling', '2020-02-07 14:02:00', 13.13, 2760.00, 159, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (111, 2, 'Cycling', '2018-08-16 16:11:00', 12.43, 2484.00, 142, 172);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (112, 1, 'Cycling', '2018-08-14 16:11:00', 13.00, 2401.00, 135, 156);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (113, 1, 'Cycling', '2018-11-07 16:00:00', 25.00, 3812.00, 110, 141);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (114, 2, 'Cycling', '2017-11-12 13:27:00', 13.00, 1203.00, 141, 165);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (115, 2, 'Cycling', '2018-04-29 18:05:00', 12.00, 1808.00, 143, 168);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (116, 3, 'Cycling', '2019-01-09 16:03:00', 18.00, 2762.00, 127, 172);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (117, 1, 'Cycling', '2018-04-21 17:07:00', 4.00, 942.00, 156, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (118, 2, 'Cycling', '2018-11-05 15:59:00', 19.00, 3178.00, 135, 174);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (119, 1, 'Cycling', '2020-04-17 15:28:00', 13.16, 3163.00, 137, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (120, 2, 'Cycling', '2020-04-16 14:50:00', 12.16, 2903.00, 136, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (121, 3, 'Cycling', '2020-04-26 11:36:00', 25.24, 5929.00, 130, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (122, 3, 'Cycling', '2020-04-19 12:28:00', 23.40, 5458.00, 133, 187);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (123, 1, 'Cycling', '2020-04-27 13:44:00', 16.24, 3693.00, 132, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (124, 1, 'Cycling', '2020-04-28 12:16:00', 8.52, 1884.00, 136, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (125, 3, 'Cycling', '2020-04-17 16:56:00', 2.89, 578.30, 154, 174);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (126, 2, 'Running', '2018-08-02 06:12:00', 0.88, 204.70, 109, 133);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (127, 1, 'Running', '2016-04-22 16:31:00', 0.19, 51.30, 162, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (128, 1, 'Running', '2016-08-04 20:08:00', 0.26, 73.60, 157, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (129, 1, 'Running', '2015-12-10 16:39:00', 0.19, 55.50, 171, 185);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (130, 1, 'Running', '2016-08-04 20:13:00', 0.26, 76.50, 184, 193);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (131, 3, 'Running', '2015-10-23 16:22:00', 0.51, 148.40, 172, 184);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (132, 3, 'Running', '2016-08-04 20:14:00', 0.26, 77.50, 192, 197);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (133, 1, 'Running', '2015-12-10 16:35:00', 0.19, 57.60, 159, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (134, 3, 'Running', '2016-08-04 20:11:00', 0.26, 76.90, 177, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (135, 2, 'Running', '2015-12-10 16:37:00', 0.19, 57.40, 168, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (136, 3, 'Running', '2016-03-25 10:46:00', 0.51, 160.40, 164, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (137, 2, 'Running', '2016-03-25 10:51:00', 0.52, 164.80, 174, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (138, 3, 'Running', '2017-01-04 16:44:00', 0.51, 166.30, 186, 196);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (139, 2, 'Running', '2017-01-25 15:19:00', 1.02, 339.30, 130, 141);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (140, 1, 'Running', '2016-12-27 14:51:00', 1.01, 339.30, 182, 193);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (141, 1, 'Running', '2017-01-20 16:24:00', 1.03, 347.40, 137, 153);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (142, 3, 'Running', '2018-09-16 10:20:00', 0.39, 135.00, 128, 143);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (143, 3, 'Running', '2015-09-18 16:50:00', 1.88, 647.00, 180, 189);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (144, 1, 'Running', '2017-01-04 16:30:00', 0.52, 178.00, 192, 201);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (145, 3, 'Running', '2016-04-22 16:28:00', 0.20, 71.20, 138, 172);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (146, 2, 'Running', '2017-01-04 16:11:00', 0.52, 181.60, 177, 190);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (147, 1, 'Running', '2017-01-04 16:36:00', 0.51, 177.60, 192, 200);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (148, 1, 'Running', '2017-01-20 16:41:00', 1.05, 368.90, 150, 156);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (149, 3, 'Running', '2017-03-30 09:49:00', 5.00, 1772.00, 131, 153);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (150, 3, 'Running', '2017-02-13 16:29:00', 3.12, 1110.00, 138, 150);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (151, 2, 'Running', '2017-05-13 09:03:00', 3.08, 1096.00, 123, 141);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (152, 1, 'Running', '2016-02-09 16:20:00', 2.81, 1003.00, 182, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (153, 1, 'Running', '2017-01-04 16:24:00', 0.51, 181.80, 184, 196);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (154, 2, 'Running', '2017-02-20 16:12:00', 1.01, 365.70, 150, 162);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (155, 1, 'Running', '2017-01-20 16:33:00', 0.78, 283.60, 142, 149);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (156, 3, 'Running', '2016-08-09 20:32:00', 2.79, 1015.00, 185, 195);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (157, 3, 'Running', '2017-02-20 15:58:00', 2.02, 742.00, 142, 154);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (158, 2, 'Running', '2018-09-06 09:47:00', 1.53, 561.80, 139, 154);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (159, 2, 'Running', '2017-09-06 09:46:00', 1.52, 559.00, 146, 160);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (160, 3, 'Running', '2017-01-04 16:17:00', 0.51, 188.80, 186, 193);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (161, 3, 'Running', '2016-07-19 20:03:00', 1.02, 380.80, 174, 183);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (162, 3, 'Running', '2018-11-06 16:15:00', 0.26, 95.80, 162, 168);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (163, 1, 'Running', '2020-03-05 16:08:00', 0.90, 339.20, 182, 189);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (164, 3, 'Running', '2019-11-08 07:44:00', 1.48, 564.00, 157, 171);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (165, 1, 'Running', '2015-10-18 18:04:00', 6.04, 2315.00, 169, 187);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (166, 3, 'Running', '2016-04-22 16:26:00', 0.19, 74.60, 147, 167);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (167, 2, 'Running', '2017-05-08 15:23:00', 1.24, 485.60, 131, 155);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (168, 2, 'Running', '2018-08-21 16:10:00', 3.16, 1239.00, 152, 188);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (169, 2, 'Running', '2016-04-22 16:07:00', 1.58, 627.00, 153, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (170, 3, 'Running', '2016-12-27 14:26:00', 1.01, 401.60, 163, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (171, 1, 'Running', '2015-09-19 09:00:00', 6.03, 2393.00, 177, 189);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (172, 1, 'Running', '2015-10-26 16:07:00', 4.23, 1686.00, 163, 177);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (173, 2, 'Running', '2016-08-04 19:39:00', 1.91, 769.00, 170, 182);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (174, 1, 'Running', '2018-10-01 16:29:00', 1.20, 483.30, 159, 182);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (175, 3, 'Running', '2016-04-08 16:06:00', 1.75, 705.00, 163, 175);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (176, 1, 'Running', '2016-03-24 10:15:00', 9.01, 3671.00, 178, 188);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (177, 1, 'Running', '2016-08-16 19:26:00', 8.00, 3297.00, 169, 184);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (178, 3, 'Running', '2016-05-10 16:37:00', 2.68, 1103.00, 165, 187);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (179, 3, 'Running', '2016-04-18 17:04:00', 0.96, 395.90, 169, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (180, 2, 'Running', '2016-04-12 16:02:00', 1.85, 769.00, 159, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (181, 2, 'Running', '2016-04-18 16:36:00', 1.66, 690.00, 160, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (182, 3, 'Running', '2015-12-23 14:09:00', 6.39, 2664.00, 174, 184);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (183, 1, 'Running', '2016-12-31 10:59:00', 3.22, 1348.00, 160, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (184, 1, 'Running', '2015-10-23 15:55:00', 2.31, 973.00, 156, 166);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (185, 3, 'Running', '2018-03-28 15:28:00', 6.44, 2717.00, 146, 188);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (186, 3, 'Running', '2016-08-11 19:43:00', 1.94, 821.00, 162, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (187, 2, 'Running', '2016-08-04 20:37:00', 1.58, 669.00, 174, 193);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (188, 1, 'Running', '2017-01-18 15:38:00', 2.82, 1194.00, 141, 159);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (189, 1, 'Running', '2015-09-07 18:20:00', 1.83, 777.00, 161, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (190, 1, 'Running', '2015-09-21 15:52:00', 9.19, 3907.00, 168, 184);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (191, 1, 'Running', '2017-01-07 09:06:00', 13.15, 5582.00, 176, 185);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (192, 3, 'Running', '2016-07-21 09:00:00', 1.82, 775.00, 155, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (193, 1, 'Running', '2016-05-03 16:21:00', 4.59, 1959.00, 163, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (194, 1, 'Running', '2017-05-28 17:00:00', 3.01, 1287.00, 164, 190);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (195, 2, 'Running', '2016-05-02 16:25:00', 6.11, 2608.00, 172, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (196, 3, 'Running', '2016-08-17 18:56:00', 0.77, 329.40, 152, 165);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (197, 3, 'Running', '2016-02-10 15:44:00', 3.97, 1700.00, 167, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (198, 1, 'Running', '2017-02-28 16:07:00', 6.99, 2993.00, 165, 189);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (199, 2, 'Running', '2016-05-23 15:42:00', 5.06, 2165.00, 171, 190);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (200, 3, 'Running', '2017-01-20 15:44:00', 1.87, 803.00, 146, 154);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (201, 1, 'Running', '2016-07-19 19:38:00', 1.45, 622.00, 157, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (202, 2, 'Running', '2017-05-15 14:58:00', 6.00, 2576.00, 145, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (203, 1, 'Running', '2017-01-19 16:01:00', 9.00, 3862.00, 170, 187);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (204, 1, 'Running', '2015-09-19 08:33:00', 0.66, 284.20, 157, 166);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (205, 1, 'Running', '2017-04-03 16:30:00', 2.29, 989.00, 119, 131);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (206, 1, 'Running', '2020-03-05 16:37:00', 0.93, 399.60, 179, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (207, 3, 'Running', '2017-01-10 16:31:00', 6.79, 2931.00, 178, 189);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (208, 3, 'Running', '2017-03-06 16:33:00', 7.25, 3141.00, 127, 148);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (209, 2, 'Running', '2017-03-14 16:06:00', 6.24, 2703.00, 146, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (210, 1, 'Running', '2016-01-05 16:12:00', 1.95, 845.00, 171, 182);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (211, 3, 'Running', '2016-02-17 15:43:00', 2.30, 996.00, 173, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (212, 3, 'Running', '2015-09-10 16:36:00', 2.30, 1001.00, 156, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (213, 3, 'Running', '2016-05-11 16:06:00', 4.32, 1875.00, 162, 183);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (214, 1, 'Running', '2016-12-20 16:15:00', 8.98, 3898.00, 173, 183);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (215, 2, 'Running', '2017-03-02 16:02:00', 7.59, 3296.00, 145, 185);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (216, 2, 'Running', '2016-08-09 08:49:00', 3.49, 1512.00, 166, 188);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (217, 1, 'Running', '2017-04-24 16:05:00', 1.83, 798.00, 143, 166);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (218, 2, 'Running', '2016-08-09 20:02:00', 1.95, 846.00, 163, 177);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (219, 1, 'Running', '2017-01-23 15:46:00', 8.00, 3489.00, 169, 188);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (220, 1, 'Running', '2017-01-24 16:02:00', 1.70, 744.00, 132, 145);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (221, 1, 'Running', '2015-10-28 15:54:00', 1.75, 763.00, 152, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (222, 1, 'Running', '2017-11-13 14:24:00', 3.23, 1410.00, 152, 174);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (223, 1, 'Running', '2016-05-05 16:40:00', 5.05, 2206.00, 159, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (224, 3, 'Running', '2016-05-07 19:17:00', 1.22, 532.70, 155, 161);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (225, 1, 'Running', '2016-02-08 15:30:00', 6.38, 2794.00, 171, 188);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (226, 1, 'Running', '2017-01-25 15:48:00', 1.88, 827.00, 156, 167);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (227, 3, 'Running', '2016-05-09 16:25:00', 2.06, 904.00, 155, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (228, 2, 'Running', '2016-03-25 10:17:00', 1.87, 821.00, 161, 174);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (229, 3, 'Running', '2015-12-10 16:02:00', 2.92, 1286.00, 164, 177);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (230, 3, 'Running', '2015-12-04 14:36:00', 5.09, 2237.00, 172, 189);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (231, 1, 'Running', '2017-01-17 12:26:00', 2.66, 1172.00, 163, 185);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (232, 1, 'Running', '2018-09-19 15:57:00', 3.00, 1324.00, 140, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (233, 3, 'Running', '2016-03-23 10:11:00', 1.99, 877.00, 166, 187);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (234, 3, 'Running', '2016-04-18 17:31:00', 0.71, 314.60, 174, 195);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (235, 3, 'Running', '2017-02-13 15:56:00', 1.91, 845.00, 133, 154);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (236, 3, 'Running', '2017-01-04 15:56:00', 1.02, 452.60, 171, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (237, 2, 'Running', '2015-10-24 08:02:00', 8.20, 3645.00, 160, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (238, 3, 'Running', '2017-03-24 16:30:00', 1.51, 671.00, 139, 149);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (239, 3, 'Running', '2016-02-09 16:02:00', 0.84, 372.20, 151, 169);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (240, 2, 'Running', '2017-03-13 16:08:00', 1.29, 572.00, 123, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (241, 2, 'Running', '2020-01-27 17:00:00', 2.51, 1119.00, 181, 199);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (242, 3, 'Running', '2017-05-12 17:15:00', 5.80, 2589.00, 143, 156);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (243, 1, 'Running', '2015-09-19 11:34:00', 0.35, 155.60, 151, 158);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (244, 3, 'Running', '2015-09-08 16:50:00', 0.72, 323.00, 164, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (245, 2, 'Running', '2017-04-10 16:06:00', 2.62, 1171.00, 132, 147);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (246, 1, 'Running', '2016-01-02 13:31:00', 5.00, 2234.00, 172, 185);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (247, 2, 'Running', '2016-12-22 16:44:00', 4.48, 2002.00, 161, 190);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (248, 2, 'Running', '2017-06-13 16:00:00', 5.30, 2368.00, 160, 198);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (249, 2, 'Running', '2016-05-10 16:03:00', 1.34, 600.00, 147, 161);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (250, 3, 'Running', '2017-01-05 16:27:00', 8.11, 3631.00, 170, 183);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (251, 3, 'Running', '2016-10-05 17:10:00', 2.77, 1241.00, 118, 118);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (252, 1, 'Running', '2017-05-10 19:30:00', 1.91, 856.00, 138, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (253, 1, 'Running', '2016-05-13 18:05:00', 2.44, 1098.00, 161, 174);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (254, 2, 'Running', '2018-04-21 17:24:00', 1.31, 586.90, 169, 177);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (255, 2, 'Running', '2016-08-18 19:11:00', 4.46, 2005.00, 154, 183);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (256, 1, 'Running', '2016-03-22 10:20:00', 5.80, 2608.00, 177, 193);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (257, 1, 'Running', '2017-02-15 15:53:00', 2.67, 1205.00, 136, 156);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (258, 3, 'Running', '2017-02-20 15:31:00', 1.11, 502.10, 129, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (259, 2, 'Running', '2017-06-14 17:28:00', 2.02, 912.00, 140, 157);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (260, 1, 'Running', '2017-02-21 16:04:00', 7.42, 3364.00, 127, 149);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (261, 2, 'Running', '2017-03-08 16:09:00', 7.61, 3449.00, 137, 155);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (262, 1, 'Running', '2017-03-10 16:02:00', 6.07, 2752.00, 164, 187);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (263, 1, 'Running', '2017-11-23 09:02:00', 6.24, 2825.00, 153, 201);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (264, 2, 'Running', '2019-03-24 06:22:00', 3.04, 1381.00, 123, 153);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (265, 2, 'Running', '2018-10-31 15:58:00', 2.06, 939.00, 143, 167);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (266, 1, 'Running', '2017-03-16 16:21:00', 6.85, 3119.00, 151, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (267, 2, 'Running', '2017-03-28 09:51:00', 4.67, 2127.00, 134, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (268, 2, 'Running', '2017-02-22 15:48:00', 1.95, 892.00, 128, 175);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (269, 1, 'Running', '2017-06-15 08:59:00', 4.00, 1824.00, 153, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (270, 2, 'Running', '2017-04-21 16:11:00', 4.57, 2083.00, 158, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (271, 2, 'Running', '2017-02-13 16:54:00', 1.35, 616.00, 127, 135);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (272, 1, 'Running', '2019-01-09 16:50:00', 1.24, 566.00, 168, 177);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (273, 3, 'Running', '2017-04-03 16:15:00', 1.75, 803.00, 117, 134);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (274, 3, 'Running', '2017-02-08 15:52:00', 2.76, 1265.00, 149, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (275, 1, 'Running', '2017-02-14 16:04:00', 6.06, 2780.00, 150, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (276, 3, 'Running', '2018-10-10 15:59:00', 5.24, 2406.00, 156, 175);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (277, 1, 'Running', '2018-09-21 16:01:00', 0.80, 367.70, 142, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (278, 3, 'Running', '2015-12-21 14:08:00', 4.36, 2005.00, 167, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (279, 3, 'Running', '2017-02-01 16:36:00', 0.84, 388.30, 133, 148);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (280, 1, 'Running', '2017-01-06 15:55:00', 5.78, 2658.00, 147, 172);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (281, 1, 'Running', '2015-12-14 15:42:00', 4.60, 2117.00, 161, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (282, 3, 'Running', '2017-03-27 10:29:00', 2.55, 1174.00, 152, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (283, 2, 'Running', '2017-03-13 17:21:00', 1.96, 906.00, 151, 159);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (284, 2, 'Running', '2019-12-23 12:31:00', 2.63, 1212.00, 146, 164);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (285, 1, 'Running', '2017-02-09 17:21:00', 2.77, 1277.00, 154, 169);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (286, 3, 'Running', '2016-04-19 16:09:00', 3.27, 1506.00, 160, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (287, 3, 'Running', '2017-03-31 09:47:00', 2.68, 1239.00, 131, 141);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (288, 3, 'Running', '2017-03-01 17:08:00', 0.61, 283.70, 128, 143);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (289, 2, 'Running', '2017-02-22 16:56:00', 1.44, 668.00, 142, 161);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (290, 1, 'Running', '2017-03-15 16:19:00', 1.87, 864.00, 144, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (291, 2, 'Running', '2017-03-27 09:35:00', 1.84, 854.00, 121, 130);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (292, 3, 'Running', '2017-03-01 15:54:00', 1.00, 464.90, 125, 140);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (293, 1, 'Running', '2017-01-23 17:08:00', 0.84, 389.10, 155, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (294, 3, 'Running', '2018-09-17 16:56:00', 1.03, 480.30, 172, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (295, 2, 'Running', '2018-07-18 20:13:00', 5.53, 2566.00, 161, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (296, 3, 'Running', '2016-02-11 15:54:00', 2.66, 1238.00, 163, 190);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (297, 1, 'Running', '2018-01-25 15:52:00', 1.42, 662.00, 150, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (298, 3, 'Running', '2017-02-10 15:41:00', 6.06, 2830.00, 128, 146);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (299, 3, 'Running', '2017-03-24 16:00:00', 1.85, 861.00, 139, 149);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (300, 1, 'Running', '2017-06-05 09:02:00', 2.61, 1221.00, 143, 174);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (301, 3, 'Running', '2015-10-23 16:32:00', 1.13, 527.70, 164, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (302, 1, 'Running', '2017-04-12 16:42:00', 1.64, 765.00, 148, 159);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (303, 3, 'Running', '2017-05-10 19:51:00', 1.17, 546.80, 151, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (304, 3, 'Running', '2016-07-21 10:02:00', 2.01, 941.00, 165, 171);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (305, 3, 'Running', '2016-05-25 15:38:00', 4.38, 2053.00, 163, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (306, 3, 'Running', '2017-03-09 15:51:00', 1.91, 895.00, 131, 141);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (307, 3, 'Running', '2015-10-23 16:54:00', 0.97, 453.50, 155, 165);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (308, 2, 'Running', '2019-11-28 08:02:00', 6.23, 2921.00, 150, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (309, 1, 'Running', '2017-02-06 15:59:00', 7.82, 3669.00, 166, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (310, 3, 'Running', '2017-03-07 16:01:00', 1.81, 852.00, 143, 153);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (311, 1, 'Running', '2019-11-15 16:00:00', 3.30, 1551.00, 170, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (312, 2, 'Running', '2017-04-26 15:29:00', 2.01, 947.00, 151, 200);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (313, 1, 'Running', '2017-04-15 15:17:00', 2.47, 1167.00, 135, 150);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (314, 3, 'Running', '2017-02-08 17:13:00', 2.53, 1192.00, 157, 168);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (315, 2, 'Running', '2016-08-17 19:13:00', 5.47, 2585.00, 159, 177);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (316, 1, 'Running', '2017-01-20 16:56:00', 1.90, 895.00, 152, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (317, 1, 'Running', '2017-03-23 16:09:00', 8.05, 3803.00, 155, 193);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (318, 1, 'Running', '2019-02-25 16:24:00', 3.18, 1501.00, 186, 197);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (319, 3, 'Running', '2017-01-18 16:50:00', 1.65, 780.00, 138, 149);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (320, 3, 'Running', '2017-05-01 16:03:00', 1.83, 866.00, 136, 150);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (321, 3, 'Running', '2017-03-21 16:32:00', 4.09, 1932.00, 138, 162);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (322, 1, 'Running', '2017-01-31 16:08:00', 2.73, 1291.00, 157, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (323, 3, 'Running', '2019-09-20 15:59:00', 4.44, 2101.00, 167, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (324, 2, 'Running', '2020-02-11 15:52:00', 2.96, 1401.00, 168, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (325, 3, 'Running', '2017-04-26 16:37:00', 1.30, 620.00, 125, 150);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (326, 1, 'Running', '2017-03-20 16:18:00', 1.74, 826.00, 138, 156);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (327, 1, 'Running', '2017-03-20 17:29:00', 0.95, 450.10, 149, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (328, 3, 'Running', '2016-05-02 17:59:00', 0.79, 374.10, 166, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (329, 2, 'Running', '2020-04-14 13:13:00', 2.66, 1266.00, 163, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (330, 1, 'Running', '2015-09-08 16:14:00', 1.81, 862.00, 157, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (331, 1, 'Running', '2015-09-02 16:40:00', 1.95, 929.00, 164, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (332, 1, 'Running', '2017-01-12 14:41:00', 5.00, 2389.00, 143, 160);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (333, 1, 'Running', '2015-12-11 15:44:00', 2.09, 1001.00, 157, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (334, 2, 'Running', '2017-04-07 19:43:00', 2.30, 1099.00, 141, 175);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (335, 3, 'Running', '2017-06-23 08:52:00', 4.20, 2005.00, 143, 175);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (336, 2, 'Running', '2017-05-03 15:56:00', 1.89, 904.00, 146, 177);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (337, 3, 'Running', '2017-04-17 16:03:00', 1.82, 872.00, 144, 155);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (338, 1, 'Running', '2016-05-13 17:50:00', 1.00, 479.00, 144, 156);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (339, 3, 'Running', '2017-04-06 16:22:00', 2.62, 1251.00, 145, 175);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (340, 2, 'Running', '2018-10-16 16:51:00', 2.96, 1420.00, 135, 150);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (341, 1, 'Running', '2017-06-20 08:58:00', 4.00, 1922.00, 152, 189);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (342, 2, 'Running', '2018-08-13 16:05:00', 3.75, 1801.00, 150, 195);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (343, 2, 'Running', '2017-04-25 16:13:00', 5.39, 2590.00, 142, 163);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (344, 2, 'Running', '2018-09-26 16:01:00', 4.00, 1925.00, 146, 163);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (345, 3, 'Running', '2017-04-04 16:06:00', 5.25, 2526.00, 153, 168);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (346, 1, 'Running', '2016-01-05 16:58:00', 1.04, 499.70, 168, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (347, 1, 'Running', '2018-07-03 19:11:00', 3.01, 1446.00, 155, 187);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (348, 2, 'Running', '2017-04-03 16:47:00', 2.13, 1025.00, 148, 164);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (349, 3, 'Running', '2017-12-14 15:42:00', 5.18, 2498.00, 152, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (350, 1, 'Running', '2018-07-17 08:54:00', 4.27, 2059.00, 148, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (351, 3, 'Running', '2017-03-04 08:53:00', 10.11, 4881.00, 153, 171);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (352, 3, 'Running', '2016-04-18 17:52:00', 0.91, 440.20, 165, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (353, 2, 'Running', '2016-08-11 20:45:00', 1.27, 614.00, 168, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (354, 1, 'Running', '2018-11-06 16:18:00', 4.87, 2360.00, 161, 175);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (355, 1, 'Running', '2015-11-09 15:54:00', 3.47, 1681.00, 172, 197);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (356, 2, 'Running', '2018-07-19 08:57:00', 2.88, 1400.00, 130, 177);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (357, 3, 'Running', '2017-04-05 15:33:00', 1.70, 827.00, 132, 142);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (358, 2, 'Running', '2017-06-21 08:54:00', 2.47, 1202.00, 139, 163);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (359, 1, 'Running', '2020-02-05 17:11:00', 1.74, 848.00, 164, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (360, 1, 'Running', '2017-05-11 15:57:00', 1.68, 821.00, 142, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (361, 3, 'Running', '2019-08-16 15:57:00', 4.23, 2062.00, 160, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (362, 3, 'Running', '2017-03-13 17:53:00', 3.24, 1586.00, 154, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (363, 3, 'Running', '2019-04-20 16:38:00', 1.79, 875.00, 134, 144);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (364, 3, 'Running', '2019-05-11 15:40:00', 2.75, 1350.00, 130, 148);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (365, 2, 'Running', '2019-09-12 15:57:00', 3.72, 1830.00, 158, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (366, 3, 'Running', '2017-06-22 08:55:00', 3.00, 1475.00, 149, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (367, 2, 'Running', '2018-08-22 16:02:00', 6.10, 3001.00, 164, 187);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (368, 1, 'Running', '2020-02-27 15:59:00', 3.65, 1801.00, 164, 177);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (369, 3, 'Running', '2018-08-27 16:14:00', 4.66, 2297.00, 155, 185);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (370, 1, 'Running', '2017-04-14 16:45:00', 5.35, 2638.00, 143, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (371, 1, 'Running', '2017-02-24 16:00:00', 6.52, 3220.00, 138, 162);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (372, 1, 'Running', '2018-03-21 16:17:00', 3.83, 1890.00, 153, 184);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (373, 1, 'Running', '2015-11-24 12:26:00', 3.62, 1788.00, 172, 190);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (374, 1, 'Running', '2020-03-10 15:56:00', 6.22, 3086.00, 174, 189);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (375, 1, 'Running', '2017-02-27 17:24:00', 1.66, 827.00, 133, 146);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (376, 2, 'Running', '2017-03-29 10:22:00', 1.76, 876.00, 135, 152);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (377, 2, 'Running', '2018-03-22 16:57:00', 2.64, 1313.00, 146, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (378, 1, 'Running', '2017-02-23 16:25:00', 7.60, 3778.00, 150, 185);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (379, 2, 'Running', '2017-06-06 15:43:00', 1.32, 657.00, 172, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (380, 1, 'Running', '2017-02-15 17:00:00', 0.97, 482.70, 136, 156);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (381, 1, 'Running', '2018-11-06 15:59:00', 1.79, 891.00, 155, 167);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (382, 3, 'Running', '2019-10-23 16:10:00', 2.21, 1104.00, 153, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (383, 2, 'Running', '2019-02-26 16:00:00', 0.94, 468.70, 163, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (384, 3, 'Running', '2018-07-02 19:07:00', 3.01, 1501.00, 153, 184);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (385, 2, 'Running', '2020-03-25 12:41:00', 2.00, 999.00, 165, 195);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (386, 3, 'Running', '2017-04-28 20:34:00', 1.47, 737.00, 141, 151);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (387, 1, 'Running', '2018-07-04 17:26:00', 3.00, 1506.00, 155, 194);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (388, 1, 'Running', '2017-04-22 15:47:00', 1.80, 903.00, 137, 145);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (389, 3, 'Running', '2015-09-03 16:54:00', 2.54, 1275.00, 156, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (390, 3, 'Running', '2018-07-01 13:07:00', 2.50, 1257.00, 129, 141);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (391, 2, 'Running', '2019-05-21 18:14:00', 2.15, 1081.00, 153, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (392, 3, 'Running', '2020-04-15 13:37:00', 3.32, 1672.00, 162, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (393, 1, 'Running', '2017-02-03 15:41:00', 4.81, 2420.00, 139, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (394, 1, 'Running', '2018-09-12 15:58:00', 4.18, 2101.00, 158, 187);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (395, 1, 'Running', '2018-07-20 09:07:00', 5.36, 2701.00, 137, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (396, 1, 'Running', '2017-08-22 16:07:00', 1.61, 813.00, 149, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (397, 3, 'Running', '2019-01-08 15:56:00', 4.94, 2491.00, 164, 182);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (398, 2, 'Running', '2017-03-29 11:39:00', 1.05, 530.40, 121, 140);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (399, 1, 'Running', '2017-02-27 15:59:00', 2.15, 1086.00, 131, 151);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (400, 2, 'Running', '2017-06-16 08:55:00', 3.67, 1855.00, 157, 187);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (401, 2, 'Running', '2019-09-10 16:10:00', 6.06, 3062.00, 166, 187);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (402, 2, 'Running', '2019-04-09 15:44:00', 2.87, 1452.00, 159, 192);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (403, 3, 'Running', '2017-05-09 16:08:00', 2.01, 1016.00, 141, 171);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (404, 3, 'Running', '2017-06-24 07:43:00', 3.80, 1924.00, 135, 177);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (405, 2, 'Running', '2017-03-03 16:26:00', 3.98, 2020.00, 147, 158);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (406, 3, 'Running', '2017-01-03 17:02:00', 1.19, 606.00, 152, 160);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (407, 3, 'Running', '2019-05-18 12:46:00', 2.51, 1276.00, 135, 150);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (408, 3, 'Running', '2015-12-22 14:02:00', 3.12, 1589.00, 165, 174);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (409, 1, 'Running', '2015-11-10 15:47:00', 5.11, 2601.00, 157, 190);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (410, 1, 'Running', '2018-04-19 16:08:00', 8.73, 4452.00, 152, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (411, 3, 'Running', '2018-08-11 19:48:00', 3.53, 1801.00, 171, 190);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (412, 1, 'Running', '2017-03-07 17:18:00', 2.00, 1022.00, 158, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (413, 1, 'Running', '2017-04-11 16:10:00', 5.51, 2820.00, 130, 148);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (414, 3, 'Running', '2017-03-31 10:48:00', 1.81, 928.00, 136, 151);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (415, 2, 'Running', '2019-08-06 15:57:00', 2.06, 1057.00, 148, 176);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (416, 3, 'Running', '2017-04-24 16:40:00', 0.67, 343.40, 138, 150);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (417, 2, 'Running', '2020-03-03 15:59:00', 5.10, 2626.00, 167, 190);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (418, 1, 'Running', '2019-04-20 17:03:00', 0.37, 189.70, 146, 159);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (419, 2, 'Running', '2018-08-26 19:09:00', 1.30, 673.00, 147, 175);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (420, 2, 'Running', '2018-08-15 16:01:00', 4.80, 2477.00, 147, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (421, 3, 'Running', '2019-07-01 18:29:00', 2.84, 1469.00, 157, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (422, 2, 'Running', '2017-08-28 13:52:00', 2.59, 1341.00, 163, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (423, 3, 'Running', '2018-07-29 07:25:00', 0.80, 415.70, 156, 166);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (424, 1, 'Running', '2017-04-05 18:21:00', 1.44, 748.00, 145, 154);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (425, 2, 'Running', '2018-03-29 14:48:00', 3.90, 2028.00, 144, 163);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (426, 2, 'Running', '2018-04-23 16:12:00', 6.01, 3126.00, 159, 183);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (427, 1, 'Running', '2016-08-15 19:05:00', 9.10, 4732.00, 161, 187);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (428, 1, 'Running', '2018-09-21 16:23:00', 0.52, 272.50, 135, 146);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (429, 1, 'Running', '2019-02-28 15:59:00', 4.68, 2448.00, 160, 175);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (430, 2, 'Running', '2020-04-24 12:31:00', 3.03, 1587.00, 162, 184);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (431, 2, 'Running', '2017-03-22 15:55:00', 1.59, 837.00, 146, 159);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (432, 2, 'Running', '2017-09-12 00:58:00', 3.71, 1948.00, 143, 161);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (433, 3, 'Running', '2020-01-21 16:00:00', 3.92, 2056.00, 163, 184);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (434, 3, 'Running', '2020-03-26 13:58:00', 2.01, 1057.00, 151, 167);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (435, 1, 'Running', '2019-11-16 14:23:00', 4.00, 2112.00, 160, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (436, 3, 'Running', '2017-04-13 16:10:00', 3.50, 1850.00, 132, 157);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (437, 2, 'Running', '2019-02-26 16:13:00', 4.65, 2459.00, 178, 198);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (438, 1, 'Running', '2019-10-03 16:00:00', 6.24, 3301.00, 166, 183);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (439, 3, 'Running', '2019-10-16 16:02:00', 5.55, 2939.00, 171, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (440, 1, 'Running', '2017-02-01 16:06:00', 0.84, 443.60, 129, 136);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (441, 1, 'Running', '2018-08-26 12:55:00', 3.40, 1801.00, 149, 184);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (442, 3, 'Running', '2015-12-08 15:31:00', 4.68, 2479.00, 157, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (443, 3, 'Running', '2019-09-18 15:57:00', 4.41, 2341.00, 164, 183);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (444, 3, 'Running', '2018-06-03 11:53:00', 2.01, 1070.00, 135, 153);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (445, 1, 'Running', '2017-03-22 16:56:00', 0.75, 399.40, 140, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (446, 3, 'Running', '2017-12-21 16:12:00', 4.02, 2137.00, 173, 190);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (447, 2, 'Running', '2015-11-13 16:03:00', 3.63, 1936.00, 154, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (448, 1, 'Running', '2019-08-04 11:05:00', 2.03, 1085.00, 144, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (449, 2, 'Running', '2019-08-01 14:14:00', 2.12, 1134.00, 152, 198);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (450, 1, 'Running', '2018-09-05 15:59:00', 5.30, 2831.00, 154, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (451, 1, 'Running', '2020-02-26 15:59:00', 5.05, 2701.00, 162, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (452, 3, 'Running', '2017-02-18 10:15:00', 4.76, 2549.00, 176, 198);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (453, 2, 'Running', '2019-05-04 13:44:00', 1.50, 805.00, 142, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (454, 2, 'Running', '2019-08-12 16:53:00', 2.80, 1503.00, 152, 197);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (455, 1, 'Running', '2017-04-05 17:00:00', 1.17, 630.00, 137, 160);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (456, 3, 'Running', '2018-09-24 19:40:00', 3.00, 1615.00, 136, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (457, 2, 'Running', '2019-08-31 09:17:00', 3.00, 1619.00, 131, 146);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (458, 2, 'Running', '2017-04-22 17:04:00', 1.66, 896.00, 155, 167);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (459, 1, 'Running', '2020-04-10 07:02:00', 3.01, 1629.00, 151, 165);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (460, 1, 'Running', '2017-06-19 08:56:00', 2.94, 1593.00, 147, 165);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (461, 2, 'Running', '2017-12-15 15:24:00', 2.90, 1577.00, 141, 160);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (462, 3, 'Running', '2018-12-30 13:31:00', 3.27, 1778.00, 146, 164);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (463, 1, 'Running', '2019-04-09 16:09:00', 0.20, 109.10, 168, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (464, 3, 'Running', '2017-01-04 16:49:00', 1.15, 626.00, 164, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (465, 2, 'Running', '2018-09-16 10:48:00', 1.19, 649.00, 139, 149);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (466, 2, 'Running', '2020-01-13 15:59:00', 5.47, 2981.00, 169, 188);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (467, 2, 'Running', '2020-01-28 15:59:00', 6.01, 3291.00, 160, 182);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (468, 1, 'Running', '2017-05-03 16:58:00', 0.94, 514.20, 151, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (469, 2, 'Running', '2019-07-20 12:53:00', 2.05, 1129.00, 130, 167);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (470, 2, 'Running', '2019-09-04 15:55:00', 2.91, 1599.00, 142, 168);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (471, 1, 'Running', '2019-08-12 17:22:00', 0.54, 295.00, 172, 187);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (472, 2, 'Running', '2019-12-07 16:09:00', 3.01, 1656.00, 151, 183);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (473, 2, 'Running', '2019-07-18 20:21:00', 2.00, 1105.00, 133, 170);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (474, 2, 'Running', '2015-12-10 16:56:00', 1.70, 937.00, 152, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (475, 2, 'Running', '2019-05-21 12:26:00', 0.95, 527.60, 125, 142);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (476, 3, 'Running', '2018-08-03 08:47:00', 3.85, 2135.00, 146, 157);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (477, 3, 'Running', '2016-02-09 16:40:00', 0.85, 475.10, 150, 179);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (478, 3, 'Running', '2019-09-02 14:32:00', 4.95, 2750.00, 151, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (479, 3, 'Running', '2018-08-09 17:00:00', 3.37, 1871.00, 160, 202);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (480, 2, 'Running', '2019-06-12 08:03:00', 2.16, 1213.00, 144, 171);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (481, 2, 'Running', '2019-07-06 12:19:00', 1.92, 1080.00, 123, 137);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (482, 3, 'Running', '2019-05-04 14:07:00', 0.64, 360.70, 152, 169);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (483, 2, 'Running', '2020-02-10 15:59:00', 0.47, 266.10, 142, 150);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (484, 2, 'Running', '2019-09-04 16:29:00', 0.24, 136.30, 145, 156);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (485, 2, 'Running', '2018-07-27 11:53:00', 3.00, 1710.00, 129, 167);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (486, 3, 'Running', '2018-12-25 11:03:00', 2.94, 1674.00, 138, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (487, 1, 'Running', '2018-04-22 15:27:00', 5.64, 3226.00, 153, 181);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (488, 3, 'Running', '2018-12-19 08:12:00', 3.59, 2060.00, 139, 173);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (489, 2, 'Running', '2019-06-13 07:26:00', 3.18, 1832.00, 141, 163);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (490, 1, 'Running', '2018-03-30 07:35:00', 3.05, 1761.00, 129, 144);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (491, 2, 'Running', '2019-09-14 11:22:00', 3.11, 1805.00, 154, 175);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (492, 3, 'Running', '2019-10-16 16:54:00', 0.35, 203.50, 166, 174);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (493, 1, 'Running', '2019-08-21 16:04:00', 5.16, 3001.00, 157, 185);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (494, 3, 'Running', '2018-06-04 15:00:00', 2.50, 1458.00, 150, 184);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (495, 1, 'Running', '2018-04-16 14:48:00', 7.62, 4439.00, 171, 198);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (496, 2, 'Running', '2017-10-13 08:50:00', 2.30, 1345.00, 127, 157);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (497, 3, 'Running', '2019-08-19 16:06:00', 4.73, 2780.00, 166, 200);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (498, 3, 'Running', '2018-04-17 15:46:00', 7.04, 4146.00, 155, 184);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (499, 2, 'Running', '2018-06-10 12:35:00', 4.00, 2370.00, 167, 200);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (500, 3, 'Running', '2018-06-09 12:27:00', 2.84, 1688.00, 159, 200);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (501, 2, 'Running', '2019-10-07 15:57:00', 6.00, 3589.00, 162, 186);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (502, 3, 'Running', '2017-05-10 20:43:00', 0.26, 162.00, 134, 144);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (503, 2, 'Running', '2017-05-12 20:45:00', 0.39, 241.20, 128, 138);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (504, 1, 'Running', '2020-03-17 10:50:00', 1.31, 811.00, 128, 152);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (505, 3, 'Running', '2020-04-25 14:09:00', 5.15, 3226.00, 144, 191);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (506, 2, 'Running', '2017-03-09 16:53:00', 0.68, 430.80, 128, 153);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (507, 1, 'Running', '2016-12-16 11:20:00', 1.54, 992.00, 141, 167);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (508, 3, 'Running', '2017-03-24 16:46:00', 0.73, 474.60, 139, 156);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (509, 2, 'Running', '2019-06-15 19:39:00', 0.36, 237.60, 118, 131);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (510, 3, 'Running', '2016-04-18 17:18:00', 0.92, 626.00, 155, 192);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (511, 2, 'Running', '2017-04-15 16:29:00', 2.34, 1606.00, 124, 151);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (512, 3, 'Running', '2016-12-22 16:15:00', 2.48, 1714.00, 161, 172);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (513, 3, 'Running', '2015-09-02 18:09:00', 0.74, 517.00, 151, 164);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (514, 1, 'Running', '2019-03-24 05:50:00', 0.20, 140.10, 124, 150);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (515, 3, 'Running', '2020-03-14 14:09:00', 3.51, 2568.00, 127, 152);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (516, 1, 'Running', '2018-04-28 06:10:00', 26.92, 19802.00, 151, 189);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (517, 1, 'Running', '2016-08-09 21:03:00', 1.00, 782.00, 142, 172);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (518, 1, 'Running', '2017-10-09 15:50:00', 3.13, 2686.00, 158, 184);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (519, 1, 'Running', '2017-03-15 17:40:00', 1.01, 899.00, 97, 150);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (520, 1, 'Running', '2016-08-12 15:10:00', 5.22, 4855.00, 145, 178);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (521, 1, 'Running', '2018-02-06 15:49:00', 4.49, 6954.00, 129, 180);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (522, 3, 'Running', '2017-11-12 13:52:00', 1.45, 586.50, 181, 192);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (523, 3, 'Running', '2017-11-13 14:09:00', 0.70, 300.40, 149, 160);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (524, 3, 'Running', '2019-12-23 13:37:00', 1.06, 585.50, 135, 150);
INSERT INTO public.workouts (workoutid, userid, activitytype, dateperformed, distance, duration, avghr, maxhr) VALUES (525, 3, 'Running', '2016-08-05 09:56:00', 0.06, 45.60, 139, 142);


--
-- TOC entry 2797 (class 2606 OID 33331)
-- Name: poweruser poweruser_pkey; Type: CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.poweruser
    ADD CONSTRAINT poweruser_pkey PRIMARY KEY (userid);


--
-- TOC entry 2795 (class 2606 OID 33326)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);


--
-- TOC entry 2793 (class 2606 OID 33301)
-- Name: workouts workouts_pkey; Type: CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.workouts
    ADD CONSTRAINT workouts_pkey PRIMARY KEY (workoutid);


-- Completed on 2020-05-18 10:30:33 PDT

--
-- PostgreSQL database dump complete
--

