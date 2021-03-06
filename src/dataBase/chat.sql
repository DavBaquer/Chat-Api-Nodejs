PGDMP     *                	    y            chat    10.18    10.18     ?
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?
           1262    16393    chat    DATABASE     ?   CREATE DATABASE chat WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE chat;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ?
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ?
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    16404    message    TABLE     ?   CREATE TABLE public.message (
    id integer NOT NULL,
    transmitter text,
    date timestamp with time zone,
    text_message text,
    avatar text
);
    DROP TABLE public.message;
       public         postgres    false    3            ?            1259    16402    message_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.message_id_seq;
       public       postgres    false    197    3            ?
           0    0    message_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.message_id_seq OWNED BY public.message.id;
            public       postgres    false    196            o
           2604    16407 
   message id    DEFAULT     h   ALTER TABLE ONLY public.message ALTER COLUMN id SET DEFAULT nextval('public.message_id_seq'::regclass);
 9   ALTER TABLE public.message ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            ?
          0    16404    message 
   TABLE DATA               N   COPY public.message (id, transmitter, date, text_message, avatar) FROM stdin;
    public       postgres    false    197   A       ?
           0    0    message_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.message_id_seq', 25, true);
            public       postgres    false    196            q
           2606    16412    message message_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.message DROP CONSTRAINT message_pkey;
       public         postgres    false    197            ?
   ?   x?e??j?0г???Ю?X?%P(-?r?ekL*KE?Bӯ??8=??3h?St?'<r?mdA??DU*???v???J?/??Є.@?'/?8????kq???a??%D??4?F??Wxw??+?|g?????v??????H"="Ӑ?Pm>\?֬n???nH??O?~	???%Uӯ}n???fi?h??dQ?o?Qv     