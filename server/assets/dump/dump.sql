PGDMP                         x        	   beesocial    12.2    12.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16393 	   beesocial    DATABASE     �   CREATE DATABASE beesocial WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Italian_Italy.1252' LC_CTYPE = 'Italian_Italy.1252';
    DROP DATABASE beesocial;
                postgres    false            �            1259    16396 
   activities    TABLE     �   CREATE TABLE public.activities (
    id integer NOT NULL,
    title character varying(40) NOT NULL,
    description character varying(256) NOT NULL,
    img character varying(256) NOT NULL
);
    DROP TABLE public.activities;
       public         heap    postgres    false            �            1259    16394    activities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.activities_id_seq;
       public          postgres    false    203                       0    0    activities_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.activities_id_seq OWNED BY public.activities.id;
          public          postgres    false    202            �            1259    16407    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    last_name character varying(40) NOT NULL,
    email character varying(128),
    google_id character varying(128),
    image character varying(1024)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16405    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    205                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    204            �
           2604    16399    activities id    DEFAULT     n   ALTER TABLE ONLY public.activities ALTER COLUMN id SET DEFAULT nextval('public.activities_id_seq'::regclass);
 <   ALTER TABLE public.activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    16410    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205                      0    16396 
   activities 
   TABLE DATA           A   COPY public.activities (id, title, description, img) FROM stdin;
    public          postgres    false    203   �                 0    16407    users 
   TABLE DATA           M   COPY public.users (id, name, last_name, email, google_id, image) FROM stdin;
    public          postgres    false    205   �                  0    0    activities_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.activities_id_seq', 5, true);
          public          postgres    false    202                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    204            �
           2606    16404    activities activities_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.activities DROP CONSTRAINT activities_pkey;
       public            postgres    false    203            �
           2606    16417    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    205            �
           2606    16415    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    205                 x�u��N�0���S�;�Ŀ@�ā�	i�Z����%qZ��$k�GJ������z�֨�x�����0P.3����/:RO�`f�q��H�&1B�6��vk*���0lSfnNc�oՎc@x��8r�ڏ>@,z��A<6��>���	9��Lx��n�P�H}���
��<��T/TuA�H�8z��H�:�m)�}6�.Y��8���I{����.1��͖z��΍��x���T]2��7)�W?�}ĺ��3�-���<��sX��c���^M�U            x������ � �     