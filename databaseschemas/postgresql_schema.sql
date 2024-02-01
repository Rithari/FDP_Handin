--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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
-- Name: clubs; Type: TABLE; Schema: public; Owner: rithari
--

CREATE TABLE public.clubs (
    club_id integer NOT NULL,
    club_code character varying(255),
    name character varying(255),
    domestic_competition_id character varying(255),
    squad_size integer,
    average_age double precision,
    foreigners_number integer,
    foreigners_percentage double precision,
    national_team_players integer,
    stadium_name character varying(255),
    stadium_seats integer,
    net_transfer_record double precision,
    last_season integer,
    url text
);


ALTER TABLE public.clubs OWNER TO rithari;

--
-- Name: competitions; Type: TABLE; Schema: public; Owner: rithari
--

CREATE TABLE public.competitions (
    competition_id character varying(255) NOT NULL,
    competition_code character varying(255),
    name character varying(255),
    sub_type character varying(255),
    type character varying(255),
    country_id integer,
    country_name character varying(255),
    domestic_league_code character varying(255),
    confederation character varying(255),
    url text
);


ALTER TABLE public.competitions OWNER TO rithari;

--
-- Name: players; Type: TABLE; Schema: public; Owner: rithari
--

CREATE TABLE public.players (
    player_id integer,
    first_name character varying(255),
    last_name character varying(255),
    name character varying(255),
    last_season integer,
    current_club_id integer,
    player_code character varying(255),
    country_of_birth character varying(255),
    city_of_birth character varying(255),
    country_of_citizenship character varying(255),
    date_of_birth date,
    sub_position character varying(255),
    "position" character varying(255),
    foot character varying(255),
    height_in_cm double precision,
    market_value_in_eur double precision,
    highest_market_value_in_eur double precision,
    contract_expiration_date date,
    agent_name character varying(255),
    image_url text,
    url text,
    current_club_domestic_competition_id character varying(255),
    current_club_name character varying(255),
    age double precision
);


ALTER TABLE public.players OWNER TO rithari;

--
-- Name: clubs clubs_pkey; Type: CONSTRAINT; Schema: public; Owner: rithari
--

ALTER TABLE ONLY public.clubs
    ADD CONSTRAINT clubs_pkey PRIMARY KEY (club_id);


--
-- Name: competitions competitions_pkey; Type: CONSTRAINT; Schema: public; Owner: rithari
--

ALTER TABLE ONLY public.competitions
    ADD CONSTRAINT competitions_pkey PRIMARY KEY (competition_id);


--
-- Name: clubs fk_clubs_competitions; Type: FK CONSTRAINT; Schema: public; Owner: rithari
--

ALTER TABLE ONLY public.clubs
    ADD CONSTRAINT fk_clubs_competitions FOREIGN KEY (domestic_competition_id) REFERENCES public.competitions(competition_id);


--
-- Name: players fk_players_clubs; Type: FK CONSTRAINT; Schema: public; Owner: rithari
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT fk_players_clubs FOREIGN KEY (current_club_id) REFERENCES public.clubs(club_id);


--
-- PostgreSQL database dump complete
--

