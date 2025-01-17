PGDMP         1                {         
   arbitralis %   12.15 (Ubuntu 12.15-0ubuntu0.20.04.1) %   12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            	           1262    24576 
   arbitralis    DATABASE     |   CREATE DATABASE arbitralis WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'pt_BR.UTF-8' LC_CTYPE = 'pt_BR.UTF-8';
    DROP DATABASE arbitralis;
                postgres    false            �            1259    32770 	   registros    TABLE     �   CREATE TABLE public.registros (
    id integer NOT NULL,
    clima text NOT NULL,
    "userId" integer NOT NULL,
    icone text NOT NULL,
    lugar text,
    graus text,
    lat text,
    lng text,
    umidade text
);
    DROP TABLE public.registros;
       public         heap    postgres    false            �            1259    32768    registros_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.registros_id_seq;
       public          postgres    false    205            
           0    0    registros_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.registros_id_seq OWNED BY public.registros.id;
          public          postgres    false    204            �            1259    24596    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    profile_pic text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24594    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    203                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    202            }           2604    32773    registros id    DEFAULT     l   ALTER TABLE ONLY public.registros ALTER COLUMN id SET DEFAULT nextval('public.registros_id_seq'::regclass);
 ;   ALTER TABLE public.registros ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            |           2604    24599    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203                      0    32770 	   registros 
   TABLE DATA           `   COPY public.registros (id, clima, "userId", icone, lugar, graus, lat, lng, umidade) FROM stdin;
    public          postgres    false    205   q                 0    24596    users 
   TABLE DATA           A   COPY public.users (id, email, password, profile_pic) FROM stdin;
    public          postgres    false    203   �                  0    0    registros_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.registros_id_seq', 69, true);
          public          postgres    false    204                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 31, true);
          public          postgres    false    202            �           2606    32778    registros registros_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.registros
    ADD CONSTRAINT registros_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.registros DROP CONSTRAINT registros_pkey;
       public            postgres    false    205                       2606    24604    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203                  x������ � �            x������ � �     