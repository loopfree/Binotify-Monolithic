--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0 (Debian 15.0-1.pgdg110+1)
-- Dumped by pg_dump version 15.0

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
-- Name: Album; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Album" (
    album_id integer NOT NULL,
    judul character(64) NOT NULL,
    penyanyi character(64) NOT NULL,
    total_duration integer NOT NULL,
    image_path character(256) NOT NULL,
    tanggal_terbit date NOT NULL,
    genre character(64)
);


ALTER TABLE public."Album" OWNER TO postgres;

--
-- Name: Song; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Song" (
    song_id integer NOT NULL,
    judul character(64) NOT NULL,
    penyanyi character(128),
    tanggal_terbit date NOT NULL,
    genre character(64),
    duration integer NOT NULL,
    audio_path character(256) NOT NULL,
    image_path character(256),
    album_id integer
);


ALTER TABLE public."Song" OWNER TO postgres;

--
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    user_id integer NOT NULL,
    email character(256) NOT NULL,
    password character(256) NOT NULL,
    username character(256) NOT NULL,
    is_admin boolean NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- Data for Name: Album; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Album" (album_id, judul, penyanyi, total_duration, image_path, tanggal_terbit, genre) FROM stdin;
1	エルマ                                                             	Yorushika                                                       	1151	https://i.scdn.co/image/ab67616d00001e020fc9f40ffa270f17b66bcdac                                                                                                                                                                                                	2019-08-28	J-pop                                                           
2	XYZ                                                             	PenyanyiXYZ                                                     	0	https://i.picsum.photos/id/872/300/300.jpg?hmac=HujH3Mgh2RMeuw4lOSBWUO9bacVOk1cejZbV6fWVvY0                                                                                                                                                                     	2012-01-01	X-pop                                                           
3	ABC                                                             	PenyanyiABC                                                     	0	https://i.picsum.photos/id/373/300/300.jpg?hmac=w0d74PnIeUtaBxE5NuNBG9kswBBnJ1QTH67fdQB51XQ                                                                                                                                                                     	2012-07-01	A-pop                                                           
4	Summer Nights                                                   	TWICE                                                           	388	https://i.scdn.co/image/ab67616d0000b27340d7efd2594a2b6bda60ea18                                                                                                                                                                                                	2018-07-09	K-pop                                                           
\.


--
-- Data for Name: Song; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Song" (song_id, judul, penyanyi, tanggal_terbit, genre, duration, audio_path, image_path, album_id) FROM stdin;
6	Dance The Night Away                                            	TWICE                                                                                                                           	2018-07-09	K-pop                                                           	180	/assets/audio/TWICE _Dance The Night Away_ M_V1666936946.mp3                                                                                                                                                                                                    	https://i.scdn.co/image/ab67616d0000b27340d7efd2594a2b6bda60ea18                                                                                                                                                                                                	4
5	ノーチラス                                                           	Yorushika                                                                                                                       	2019-08-28	J-pop                                                           	240	/assets/audio/ - ノーチラス (OFFICIAL VIDEO)1666937118.mp3                                                                                                                                                                                                           	https://i.scdn.co/image/ab67616d0000b2730fc9f40ffa270f17b66bcdac                                                                                                                                                                                                	1
8	More & More                                                     	TWICE                                                                                                                           	2020-07-01	K-pop                                                           	240	/assets/audio/TWICE _MORE & MORE_ M_V1666937713.mp3                                                                                                                                                                                                             	/assets/img/more_and_more1666937713.jpg                                                                                                                                                                                                                         	\N
4	エイミー                                                            	Yorushika                                                                                                                       	2019-08-28	J-pop                                                           	212	/assets/audio/Yorushika - Amy (エイミー) (Lyrics_Kan_Rom_Eng)1666937082.mp3                                                                                                                                                                                         	https://i.scdn.co/image/ab67616d0000b2730fc9f40ffa270f17b66bcdac                                                                                                                                                                                                	1
3	心に穴が空いた                                                         	Yorushika                                                                                                                       	2019-08-28	J-pop                                                           	264	/assets/audio/ - 心に穴が空いた (Music Video)1666937138.mp3                                                                                                                                                                                                            	https://i.scdn.co/image/ab67616d0000b2730fc9f40ffa270f17b66bcdac                                                                                                                                                                                                	1
2	歩く                                                              	Yorushika                                                                                                                       	2019-08-28	J-pop                                                           	206	/assets/audio/Yorushika - Walk (歩く) (Lyrics_Kan_Rom_Eng)1666937159.mp3                                                                                                                                                                                          	https://i.scdn.co/image/ab67616d0000b2730fc9f40ffa270f17b66bcdac                                                                                                                                                                                                	1
1	雨とカプチーノ                                                         	Yorushika                                                                                                                       	2019-08-28	J-pop                                                           	269	/assets/audio/ - 雨とカプチーノ(Official Video)1666937177.mp3                                                                                                                                                                                                          	https://i.scdn.co/image/ab67616d0000b2730fc9f40ffa270f17b66bcdac                                                                                                                                                                                                	1
9	The Feels                                                       	TWICE                                                                                                                           	2021-10-01	                                                                	232	/assets/audio/TWICE _The Feels_ M_V1666937776.mp3                                                                                                                                                                                                               	/assets/img/the_feels1666937776.jpg                                                                                                                                                                                                                             	\N
7	What Is Love                                                    	TWICE                                                                                                                           	2018-07-09	K-pop                                                           	208	/assets/audio/TWICE _What is Love__ M_V1666937617.mp3                                                                                                                                                                                                           	/assets/img/what_is_love1666937589.jpg                                                                                                                                                                                                                          	4
10	Feel Special                                                    	TWICE                                                                                                                           	2018-08-23	K-pop                                                           	221	/assets/audio/TWICE_Feel Special_M_V1666937851.mp3                                                                                                                                                                                                              	/assets/img/feel_special1666937851.jpg                                                                                                                                                                                                                          	\N
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" (user_id, email, password, username, is_admin) FROM stdin;
531	admin@admin.com                                                                                                                                                                                                                                                 	b                                                                                                                                                                                                                                                               	admin                                                                                                                                                                                                                                                           	t
308	ice@gmail.com                                                                                                                                                                                                                                                   	jdf                                                                                                                                                                                                                                                             	ice                                                                                                                                                                                                                                                             	f
\.


--
-- Name: Album Album_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Album"
    ADD CONSTRAINT "Album_pkey" PRIMARY KEY (album_id);


--
-- Name: Song Song_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Song"
    ADD CONSTRAINT "Song_pkey" PRIMARY KEY (song_id);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (user_id);


--
-- Name: Song fk_album; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Song"
    ADD CONSTRAINT fk_album FOREIGN KEY (album_id) REFERENCES public."Album"(album_id);


--
-- PostgreSQL database dump complete
--

