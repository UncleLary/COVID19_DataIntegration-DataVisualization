PGDMP                          {           is_database    15.3    15.3 #               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16398    is_database    DATABASE     �   CREATE DATABASE is_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1250';
    DROP DATABASE is_database;
                postgres    false            !           0    0    DATABASE is_database    COMMENT     1   COMMENT ON DATABASE is_database IS 'proj sem 6';
                   postgres    false    3360            �            1259    16399 
   covid_data    TABLE     �  CREATE TABLE public.covid_data (
    id text,
    date timestamp without time zone,
    confirmed double precision,
    deaths double precision,
    recovered double precision,
    tests double precision,
    vaccines double precision,
    people_vaccinated double precision,
    people_fully_vaccinated double precision,
    hosp double precision,
    icu double precision,
    vent double precision,
    school_closing double precision,
    workplace_closing double precision,
    cancel_events double precision,
    gatherings_restrictions double precision,
    transport_closing double precision,
    stay_home_restrictions double precision,
    internal_movement_restrictions double precision,
    international_movement_restrictions double precision,
    information_campaigns double precision,
    testing_policy double precision,
    contact_tracing double precision,
    facial_coverings double precision,
    vaccination_policy double precision,
    elderly_people_protection double precision,
    government_response_index double precision,
    stringency_index double precision,
    containment_health_index double precision,
    economic_support_index double precision,
    administrative_area_level bigint,
    administrative_area_level_1 text,
    administrative_area_level_2 double precision,
    administrative_area_level_3 double precision,
    latitude double precision,
    longitude double precision,
    population double precision,
    iso_alpha_3 text,
    iso_alpha_2 text,
    iso_numeric double precision,
    iso_currency text,
    key_local double precision,
    key_google_mobility text,
    key_apple_mobility text,
    key_jhu_csse text,
    key_nuts double precision,
    key_gadm text
);
    DROP TABLE public.covid_data;
       public         heap    postgres    false            �            1259    16405    eur_pln    TABLE     �   CREATE TABLE public.eur_pln (
    id integer NOT NULL,
    date date,
    lastvalue numeric(10,4),
    openingvalue numeric(10,4),
    max numeric(10,4),
    min numeric(10,4)
);
    DROP TABLE public.eur_pln;
       public         heap    postgres    false            �            1259    16404    eur_pln_id_seq    SEQUENCE     �   CREATE SEQUENCE public.eur_pln_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.eur_pln_id_seq;
       public          postgres    false    216            "           0    0    eur_pln_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.eur_pln_id_seq OWNED BY public.eur_pln.id;
          public          postgres    false    215            �            1259    16419    eur_usd    TABLE     �   CREATE TABLE public.eur_usd (
    id integer NOT NULL,
    date date,
    lastvalue numeric(10,4),
    openingvalue numeric(10,4),
    max numeric(10,4),
    min numeric(10,4)
);
    DROP TABLE public.eur_usd;
       public         heap    postgres    false            �            1259    16418    eur_usd_id_seq    SEQUENCE     �   CREATE SEQUENCE public.eur_usd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.eur_usd_id_seq;
       public          postgres    false    220            #           0    0    eur_usd_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.eur_usd_id_seq OWNED BY public.eur_usd.id;
          public          postgres    false    219            �            1259    16429    events    TABLE     n   CREATE TABLE public.events (
    id integer NOT NULL,
    date date,
    description text,
    source text
);
    DROP TABLE public.events;
       public         heap    postgres    false            �            1259    16428    events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    222            $           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    221            �            1259    16412    usd_pln    TABLE     �   CREATE TABLE public.usd_pln (
    id integer NOT NULL,
    date date,
    lastvalue numeric(10,4),
    openingvalue numeric(10,4),
    max numeric(10,4),
    min numeric(10,4)
);
    DROP TABLE public.usd_pln;
       public         heap    postgres    false            �            1259    16411    usd_pln_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usd_pln_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usd_pln_id_seq;
       public          postgres    false    218            %           0    0    usd_pln_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usd_pln_id_seq OWNED BY public.usd_pln.id;
          public          postgres    false    217            x           2604    16408 
   eur_pln id    DEFAULT     h   ALTER TABLE ONLY public.eur_pln ALTER COLUMN id SET DEFAULT nextval('public.eur_pln_id_seq'::regclass);
 9   ALTER TABLE public.eur_pln ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            z           2604    16422 
   eur_usd id    DEFAULT     h   ALTER TABLE ONLY public.eur_usd ALTER COLUMN id SET DEFAULT nextval('public.eur_usd_id_seq'::regclass);
 9   ALTER TABLE public.eur_usd ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            {           2604    16432 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            y           2604    16415 
   usd_pln id    DEFAULT     h   ALTER TABLE ONLY public.usd_pln ALTER COLUMN id SET DEFAULT nextval('public.usd_pln_id_seq'::regclass);
 9   ALTER TABLE public.usd_pln ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218                      0    16399 
   covid_data 
   TABLE DATA           K  COPY public.covid_data (id, date, confirmed, deaths, recovered, tests, vaccines, people_vaccinated, people_fully_vaccinated, hosp, icu, vent, school_closing, workplace_closing, cancel_events, gatherings_restrictions, transport_closing, stay_home_restrictions, internal_movement_restrictions, international_movement_restrictions, information_campaigns, testing_policy, contact_tracing, facial_coverings, vaccination_policy, elderly_people_protection, government_response_index, stringency_index, containment_health_index, economic_support_index, administrative_area_level, administrative_area_level_1, administrative_area_level_2, administrative_area_level_3, latitude, longitude, population, iso_alpha_3, iso_alpha_2, iso_numeric, iso_currency, key_local, key_google_mobility, key_apple_mobility, key_jhu_csse, key_nuts, key_gadm) FROM stdin;
    public          postgres    false    214   �,                 0    16405    eur_pln 
   TABLE DATA           N   COPY public.eur_pln (id, date, lastvalue, openingvalue, max, min) FROM stdin;
    public          postgres    false    216   <�                 0    16419    eur_usd 
   TABLE DATA           N   COPY public.eur_usd (id, date, lastvalue, openingvalue, max, min) FROM stdin;
    public          postgres    false    220   ò                 0    16429    events 
   TABLE DATA           ?   COPY public.events (id, date, description, source) FROM stdin;
    public          postgres    false    222   �                 0    16412    usd_pln 
   TABLE DATA           N   COPY public.usd_pln (id, date, lastvalue, openingvalue, max, min) FROM stdin;
    public          postgres    false    218   Z�       &           0    0    eur_pln_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.eur_pln_id_seq', 685, true);
          public          postgres    false    215            '           0    0    eur_usd_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.eur_usd_id_seq', 685, true);
          public          postgres    false    219            (           0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 13, true);
          public          postgres    false    221            )           0    0    usd_pln_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usd_pln_id_seq', 685, true);
          public          postgres    false    217            }           2606    16410    eur_pln eur_pln_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.eur_pln
    ADD CONSTRAINT eur_pln_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.eur_pln DROP CONSTRAINT eur_pln_pkey;
       public            postgres    false    216            �           2606    16424    eur_usd eur_usd_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.eur_usd
    ADD CONSTRAINT eur_usd_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.eur_usd DROP CONSTRAINT eur_usd_pkey;
       public            postgres    false    220            �           2606    16436    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    222                       2606    16417    usd_pln usd_pln_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usd_pln
    ADD CONSTRAINT usd_pln_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usd_pln DROP CONSTRAINT usd_pln_pkey;
       public            postgres    false    218                  x�ݽ͎m��%�^�S�7�6=�PP�n��} �*A5@H<=��kF�̝��N.�{��{����Ȉi�������/����Ԩ����������翏���?��n���G��?X�m�>>z�l���������_�\��w�G����c��)���������]������������������_����������?�w������/����;��o�?�O����!�p��B��! �? � �?���ȶ+��q�|C������h�o��?�~Ro$���D��4$�w �/������KW �Fؗ��6��36<����C���C�c���߄���ǟ/]D;[����x>!џ!�q�- ��MD;]����o��B�ǯ8�MD_�sƓ�?�*�h#4��P��(>�?Q�Az@������:�D9�6,ژ���m�A�����X�~�����*�m�
� �eT��A��{�
��Ȅ� 	Ω���3����x��`�;�t`�k�D�v��]�X
��/�@��琷�=/�����x3\{v~��+�{����!�/������'�U��Ӂ+X2h8���p�Wa�Q�!~p|���'��	k"^��}��˰6
E� wѸG��lLd���c���U�ƣ�Ƌ?Ã�ɅUµ)������qmL���`�3��|X%`�b�g�7���U�)	����A:�#��A۸�Ȍ�����.~b��`<��6??48��.���#|��W~��W��,G8gj���N%`{�FqG<�����R��#���'[$y�@*A��ǌ�|�����޲�L�x^Ӹ�'0b���6
2=�j I�[�a�Q,�6�7<�����ˑ�^0���`��t�<��mT�&�cD�������8�e��)�Iab�z��
����0T�oi�0�������7��G�q����m�"nH �O~sm޹ 6�S�]���H]n�!���+�g��B���҉�q�o���<�U��q�c�L!���w��P����nNΨ�M�kM]�|�@����Z�^m��YP��;=�R�^r"d�#<U������`�;���T�V��}C,��^|���f�)������W�� �(��/Xb|��4��{'G�&x�pIzoY帴��Le��"du��-������4�7p*匊��8̣?f��Lv���I����0x��/�n�׬����Y�4��)�X�A�M��^�*�Ў�`_sj|�������ܙ���M�����Y�^����/�͛Ŭng):�q,�.�[=��+��Y�z��6<��[��,hP�O�����ﷶ֠`Ong)���a���Ͷ�^Eg~�Y���[�@~�c��,H��� ���V1&������v�bB���'�ͨp�|��nN�# ���~-�\>E��Ow
.�a�ϐ����}��s������+��Q���y<|8zh�žW�Ǩxz{l��g((ޙ
UL9�j����|ޢ�H���uhD��'8.��ܫ>����g{r�{�� �'t�81�;����6�B�Ў�0����Ox�u3+��ǘ���s��o��V���4S�L <�����n^���9��"�=O���?�Y|�և�yy
��֔�o	�ă�&��q�����1��Q妜��W�����s���rvf���^���x8��[����<P�?£ހ���|�����vN�j3�E����o�'� ���I�lH�Z(�K��h� aاĝ�	�~�@��l&���Lֳ��>���$+o'g*���g�r^����/���ͮ�W��UM�����N̦$<��\��sh��s8��E�~A1y�����ۙ�Q����"������Jw�b2���D;�KW�x?w��-;\_x�����U����� ��=�эz��]�^�"����`�7xC��7Nx��졄���ˁ�^��#p�O�*��i�;x���#�.�>r��]xs�7�x�����7跾���m�e��n�cc��E���#����c�u��1�;_�Y��W���B����^�w����B���1���n>�h%xu�<_�n5�n^���ka�$�
��q��߽]&��� ����JJ�%%��F]ƀ~opN�(F�ȍ�ΤOQ��_F&>9uU��qC:��*6��9�.�d��šV�/;�)����};W|w��o3#�y ��:��"6x�CE�02�y�.�m`����Q2<���[����̨�i�G�hH�A��yѹ����r7t��v©MF���#�\�w�"^��ӈ��^�0��Q�j�@Cĵ4&�3K���<jFC�_B��RP�;<������v�I<�Bp7��~��T��S��f��1&�m��YEӲSu��H|C�E��]/]����'����T�v���v�̣p4&e�b���S�"���L���/�긗UzEx;��7;�����
�۩�u���m��W��S��`T�(h����Qr�o�.6�����Bv�R�N]�!�� �d��]5>N1<G����T!�v�R�n\��_|>K�����n��*��)G��Ԃ��غ�P���6Mnr�5��^5�7��ފ
m[A�W��C�<�x��裏\д�U#��qv|^H}�wP҂7���;I���-I�����+%���ݾx��/� 
��`׷�����o��`lֈٝ\+U�������"�h|?=�o�.�HKh|���^Ŭ�^5bi��"�P�C�V�yƄ^��_D�4i�1���i���Qc�v%���Ǽ7r9�iGe��𑨟�==�r�Ŏ�G��v��t�R�-yz;3��	�R��ޒ%^���r�ɖ!���j^Ѵ��̑��ؼ0��H>z������(1���	2~<��ڎ�Xx@L�ϥ��_:~>�7ŷo���v"��*`���ķ���v�����/�!����{�;VC�f���vA���ل�)�}�79���9�5=���~v�o�o#02�SA�Loq�~��o�oc0�XT��8J"��W8����S��h�1xjw����7ŷц'zX��-C����kd�j�FFP����_Do�o'1��V
|Ç�?���IL�3Q��)�����yS|;�1x�d�ܮu6������=�ѱ�rL[�x�
4,��\ �_4��)�}�eC�uPN˅�wY����)�}�e�/>���]W�*:��T�):V�2}Q��^�I�e2��H�%%�5i�D����H���:E2t(n�%���PI��\��$�,i?7���B�e�<iD��R�pp�����Wz8	�vS��^0Ӱ28DlF���.~6*��{�,��_�]*�.�xɶ�·��9&-!"Vw'�����2�N��<�v��p�	߰���~�����}�~���rD�M��J®%���;��`_�aY-�>�>n�y�R w��n�z�`쫼�Wķ�+o�0�ٱt�]�K�߾���Zw��(�|�"���͎M������)�~�>��I�'&�_2_N�>��9���od�q��,i?���$���?Ě����m��_]��@nLf���� i��+�DK��
���C|޶���hE|��V��Mo9��Z�I�5���v�����ݻ�/��R�v#P)J�)�_�R�K�ϝ��L|�떝�t��}�I��*��P�}!�1���$ȝ�́����1�m��_V�?�}�O>0�<>�<F�h����n�1��$X���{�,�n/���(@���<������ղ�ycrC�����[�[�F^�:B0�Qq�
�`����:�Y�CE��u�����ՎF�j�v��Խ�>�׃�1c�,��U'�[a�x�������=��_��%��X��ty<��v_G�����a̘8[5�'>G+x37�b�%���Ml~��qUt��+cޥG�Q�C]���׊��ގ���l[�ٸu̪��gH��A!�gqȕc�4���zm�(�nc-nlLs���Τ���[�[�:5ґ�����r���;����    ԑ&�C��ӣ�Ճ�o=o�H��L���1{1� x���6�>O��#��}W��}�y��Yc��S�Ft�ά��}z�a���ǜ6O���~�/�QG��'8rl^�Ep{��cY1�E�>��p�Ȓ����qv�`��+'<�1�&�����{��vO$�^	+o�-=�xZ�,6R�����;<�i�]�a�n��z=x;q�n�6al�e"mV�r�ą݃�E�n(,������Ɲ�Ȍs
��HO��fuk����E'axS�Nz��C.7����Gg3X�G�(� �*����8;�ġ�Qv����A��X�>����}U������?&z������ �

xYm�ѻ���_w��}�f#��I�t��L��Z[
�n���B!��\���}1l�����R8���d#����h�bǂ�ݛ�MI<���|�T`�Y��͞���4B�C����
�X>������ϻa�C��}i�hi0��X~/�g�A1x��pゑ�`_έk��j������9�a�f�!�v�q�n,�X���$>;�Q�5tj7X�T��������<��`�!�[޾ B	v�C����R���~���tr	���	T�;�s?��ئ ��﫧��@V�!���ю�bq��P_?4ڿ�����Ox�������
a�@#�G����ٵk��]�PU#HB���C�F������{9������I�5e:��L�o���"3���5��m}ގ��El�F%~|�7���=�?��r�؃�����fp�rO�nYc�FȘw�7�N� �O��H=3e4�W͗k�Qp�$xؑ��fX��t�iR.,n�L7xvM�0B3�'����E��*����{�����,/� �20+F��B!���y��T�R{o�Qu��UkɊ��>75���q��a4}	�b���)�CK&N���h�=�E��R�	��� w��d��"��q��"a;��C�G��!>�T{j@�+b�[(�����-\�E�m���Q!����n�g-�r�LiȎ�f>��߹t��Z��15�]X�>f���ݻk+�(�n#,�<G��1��~3_�E�m�ŉ+���Յ��z�Ť�җs�M$��������#,?�Y��[�X���=N)y�U��t���A���JX]�ET�Ѽ�i���nc-n?�'$uE��(�^��5�SS�C�9WȜ�ﺥW1�::��<����y���g7��{GGU���挄t0�"�p�ۚT�ztT�z#��=b�C�p�aL��5��2�t���n؟����z/�Q�����;榄)E����6�bf�^�17��r�-�l:��6�w�M�\j�^���o�S�/��"����6#�ï��0#$�{U������a�-bEi���r1.E\���L&d$zΜz�@�Ϋ��� ���?&�zE|A�u_V:���N:�9+�,"���Y*�D��Txn ��1qzbv�J2)���sr�ǁ��Nhh������b��7��h���G�%��W���94�>+�����o�]I���tME@k��	��m�=����|���r���T�}�,P����/n�R���驎� �(�iN�u=�����k���Ç�ޗKw�e_��n��8���7m��|�^�� ��N�Y��̎cG�{ذZ�;t�zP2ԞI)����ys~s����Q-��r˾z -Wq,8�5�'�Zp�ubo�Iѭ뭗 *��R/{Ѩ�nʄ.���s,���c�����Q��7�5�Ê˪�ę�3�;u���>Q���P˩��5�g+��u��h
���_.�U�����f�b4{$�:CuϞ�rJ�J��������T�4�
�2��L� ���zj��b<8~О��{��;�Fw����ڇh��~	-ƨ��Y�C��0��+}���[���ŞN�_����XW=^ZD��o��m�����.��nOPP�}z�W3^E�/_߮��KG�^ w"7�r���`�e�R9aq��6�ϵt�ȝɍx%�Ґ�� U��0�I��݂��m$�sgt�Ê�E�ћ��uC����/�Kj�^0wf7$B�x��zLoae�c&���E"����[�'�ºӼ�4��¨ذ,��=���nw.50�4/�������͘KO,6W=�{~	�G�m�	�c�v��b*�1�v|~W��{�L��+���.#S<���3�*eeO�B�,�f�^�l_�#�R��.a�_��i�l3Ep��~�N�qлǠ���g_��N������e���y�y%���ot����p2&���w	��g"�v`5�5x��q��	K4�%���g�b��NW\ҁ���h�M����w�)��Q�;��8(_��ܗ���ײ������3yo���:�P*��kX���8��qs# Cβ�,Ե��}�<�&4�~�N� ��x!��-�)ܡ%O�����E�ga��{T�XZpG�ᾊ^�i��l�$����2�g�7��s���֥NqS=�G�;U��ܐFk8�ӝ���+�xgK�0h\�tN�D#2�1k��}!o�8�4��8Df�$;�J�����e*hS�Y�����LSQ��97ha{��N�� �S�؅�iX�Y�@�i�C�4&�ιr�s�aNp��:�����7{�&��85̮�:dM�::,z`?�h�B���ɂ= �i�K+-_�[p���&��Fx��������=8�+�u�I�JC4�S�.��34�{�TǷ�4�j�w.%���
���=mo���61�C�1�ڍ>ʉq�Xu8&�W$bd->��V!��9J�q�#�X�\�E�#SN��������q
�䚩�5&� ��e>��n���RJ$|���=�y��bMt�����V��ަ�?����+*�c��>�	�G0gTZ�ga��,���xǁ7�D��|o�Oe؈,#��15`}$jwR�N#eĉŇ�������/� �Ů7`F�	H<89�-h�����~�ѕ�
�G���x?��� 2ʽ��n��s|�h��,�ܱ(�c}D���>p��Vb}C�;��`���;�>�
��*�,oAI�ł�@�iޞ&)��}�*���A!��dx�	@�1�߳�7�G�$�+h��:c&��{�*%X�{��}t�q�K
�T���J�MLq�p���\�ōh�tsd�7p�Ś"猜N5����q�bm����D����њ}��۫9ڣ~)���Ce\8�����X��g��`�C�ރMY���f8���m�n.#75���c�0W�-�Dʑ��t<�n��R��"n�RQЕ�����U�3T=r� /�D�r�`�	ң#��g�I%���6���c�^��k�Zf�dO�XK�;�Ή�r��Q��	��(�^S豵&�MA�ա�ʲ�ֆ��[�S�ɕҠ�+���Ъ�Ra�Ƙ�TϷ���%)��(wj���a��zLz�I}�$�&��D3�'��8*���a����U�U磉lV��i��rr��O[�`�w*SR�|/��XZn4��$���t�pXy���d����[
��S�E;�,�!��&�QG���N2Y��x�ռ��U	�|W7��@�{p���(x� ��-36>1%�[DK}�����rWw'T�H��qA�󨉬�PXd�Jt
}J��Yιp�r�F�j&h�C�#g�w�����S�����c���꿵�q<��6�꣰����hKjrD�7 f���ӹo���w����A������:Ё�:A�ɛ`�%^\_���f!�t@vdQ��1��M7@�%^��S'zM�:5��S�kh��SQ���Q\ G���/[��d�T��S93Q�9s7-�������'h�\uF����vo�Qb���q��Q��1҆�?t|��k9 ��8-:�P6�E�y��<�s�����	���b ��P����NgO!uBk��۱���}g�����1#�2�}b���@�_�k�%����3ձX��c}�C��uiI�A� �xF�,�����M>    �A���8eGS�����R7^"�0�<����sG6D4�)�8�'8b�x�7��&��v)����@@ȡ+��bi6[z�p����A+o���&���;C�ɕY�q9b�֤��&1r�-B��#�X�P�!l�������V�a����r���x|5�tW[`!�;�µE�uR�;�˂��/�+����"a�d[�Y�βK�{@�V1���d�<�d�O��;��RD����Q"
��XƓA �q���t�A"`2�S�-���f� �+�"�a�/kY����_	9���E^�9B_������ ��@��m��cz"v����gz�w����ͽVDA5!p�D�w@�*3�z���ǀ
_�����A������h=���
���p�]In��d%�_s�%���S�;�'����K;ܙ]�W3�ն���C#�[µ�Q=�w�pͱ��}b�1���^	��9K��GXi�J�^����8��s�VF���ֈ��1A��1�d��Kz��"pe�+�~�(R��C�D��}[�Rc,�Rw��>*��.Wj.�0���ع�Fa2�9�W y[��"lM y�
'r�����/J|����G�[E�U��ߒ_\m�(͡X׳�f���3�lB99��:�f/�x�Q��#0�\%�n�-��U�����Ӌה�xc�K4K����R�cpJo�\�P�98�Paa'8��ND�K)�f��e�hf�㿊!���/uBe�r�w°�]Ta�	5`����o �$Hj ���p������|�?	�) gˉ���[�v�s�)��
z�Z�I����
�82�k�`1�[s咟�6����A��"Fޘ"�u۴�E�n����є�Z	�k웦a�;_�K��#�=Ф�|���B�Y�c�G?HE�!޹#c��O[ڣ��M�q\�u �|�]x!��F8Lt*���QwY~����&�g�w���Z�NŮW�n\ڈ�GP�f\f׎I26�w�;��=�M��5�9g�H9���=I�[��\�r��
.��}B����0#Sr��*NS#g�<��s_�m���:"�@�᪠�V����O��#D@���m���I�������L	$"���H���[��6)$�3k�r�wn�qx��)�vƻq���؋�a���>�zK3��X)����Q�J��8%kǠM��
�R)R�9�w,��tD�_�`�N�W2�lvî,2!��^�� �J��z��K#���a,��guw��.q"&��W�T��w����h8"C|�������^��_��u��"J�a���
��d,�`�3A�h�T�Λ&����F�TYZ�2�=[#'�M�}��W�~�ٴܝ4�l�8:�����ă�G�WE�d�E&C����}2z-�;o�@���N�[�F��G��AI1�L��9�\�Κ�O2�DPrp�Q&�T읕��B	YVA����e�F�Gr�
��bk�N�ڏb/�N�&欑�g�8�ʻ�9��3�� �GP�g���~���� ���)0jʝ�N���0U9o��~y�(�y'O��P,B�b��=6�XD<�q�:tn�B�0�lj����90��<Gۦ��}J1��3	����ũ�=���^a~5��W�8�,l�`P�&�X�gU�-�$�T�a���7ݐl�����ǫs15�Ѻ�����"�	���R�u`p8�k�<�ѢS+x���(7'b��s9Ywl��<�ɡ��U���0�9P0�"��ǹ6���L.�� �� ��n����mtA�VE��� ��Z��C`�!�>F3��R����A�3d= �ē����cxF(U��q=�q}�Z���ßU�R�w�"�L�C��P�x���\w��Z�ӽ�y��5�����C�j�S��b"lA�!��AT��rQ��r�P��1�G~������_���+öL
{�`�E]V�{���Yn�	��5�I����|��l`�+ ��U}.��]o������$��t�v�G�Ϡ��2�Zk����/'ǥ�.��������`Y�y�����\�9l��j�Ÿ��ohB^�i�YcLD:����=*U�s[*2�ՀD��=�˶� k����{��?8���]Z�A���)�6�1.�^e����2�()B0"�\��G�'��#e`?
O�#9~�2�݉y>�|F�v�@g�oT#�kψ{�Ƿr��%�����\��\��
z��j(�b�=7�.�R9��
ց0��d�)
�#~���:f+���ȽjX�A������ܛ߅������fO��	���6�|��S���[6�&���î�~����8�~G3>���D����S�}��"q�˙��Jhq�d�jG�S+�OCW3��&Xu��v&�k��}�(6��72Oz�	�`�綏�eA�c���x��|�.�ˌ���,���gxlH�b�;Y�=&��¦����G��"���?��d�%��#��M��
f���FiX��A�4����@@�oW�2�&Ĺ��R��%�Ty�S>X�f���ڙ��R����E����7:�(�M ���:��5���e��CɃ���81��Rڏ8MKa�Pi�&zB�����@rO~WU�r���04=�P]s�o3 ��oX!^J��7���B|����<QF�a��^��Q"�ׇ+A]9^}�&��!>&����n弳��,;��
`�4b{%���K!ֳ�j3��ㄡ\�'K.�Z���pW����Z����N%���jO8f$v ��ײGtpQ(�qM$z���J�A|����m�Тi�mfV do��ptO�D��{�r����H}�ڦ�=Ɗ	B���ܰU������ʽ�r"F�R �;���[�wC���Q��uHbaGd��}p� XC�X������ĵ�����(N��z�����K\��~u�]o�ո�8b͙�8׵���=��|؀W��f��\S"r�������I����� M	Y��"�����́x,��?�=��k�v��A�$;��!>K�S�v�O�l�nӕorƖ]5H�;��=�^P����*HpKϻ=u�i"(R@��cwqز�s<���c�'�Bn�5-v��nC�sXX;��=�w��b�tH5�'��h��3�f�Uw���ó(?b��%#�$Ĕ���d^��3����;K�b��"��X�D�i���:�ׄ�J4e��Ζ�m�b�'Ѳ���a� �/�HPts��c�jf=\SV!�X�ɴ�=�[�|�bL>I�21;C����%�x!�	a�b
�%
 ?	��&�Lu1���� P~V��AI�a^�/�Ŋ ��ˀ �l���Ʋ��4�iDͩZ�!�Tӕr��2�̕{�l	��s� {:g��!��(�|�R�b�Vh����	�a�*�< �ɄF�D���j�O����	ȲNy~.l���77���;R$�:�A>����w��wٞ�p^
J�d��vI��h� ���G�A���a�3ہ������C#��P��jL�,�Έ�p��9'�k 扪K��=y��0�4�]+�a���3{���(\��ӫm\zAm�A���T4~�ɺ�$ �6:|ЪHۚ�C�K�8����Ii� ���X��C�m���OY��%��F� �\���1���B7x�g����p�i�,06T�� ��[ձ�Ә}ᵕ�pL�w�i�6q��}̂�..�w�j��ZJ��x!���@��Z��@�As-�7ׇI�S���"��A�;�U�=�<�Zc��ݹ#jF�F��P���[U��g�'1�x��c�8b{�uFq�C�4�����7�3ou֍��>o�h�� X���c��h	����J���HQ�,/������:�n������Է��WO��̊��'�����)��?[�q������$^�~$޵&"�� �Ѻ�Bk�I���b^�nx��GPM �~#4�"�w8    o������3��`#<�����5�֪��s��lK��f'�c�a���3J�=�֦H���WN�.*�[��֧@u�%:Y�<c�f�G�Q=	��&�Z���8��:���u��!k�
������7��Z>��8�f�\��9�5�&��M�G�p�(�Ȼ\[̋�=9Uo�6y�����,� Nш�r7c�f�J��y�F$�����{8"�Wl��>���/�h�I�G&~f��B}2�Y�!�򼓷]O8n-v�'�
B��	t.�;�ņ܈��v57jv�Y\�4O���w����<M.v�~C��B7��2��H�k�@����=����u�]�)G	��+ʡq�C��M�1�k�=�ʀ�h��X��4��e)����(��dP=+�����X_6<��1{��D���9��GuOu Z���+75�FD�VkP�H�b���֊m��N<*ׇޯ�ߵ2�g�/b^��;K���9w�*7B-�-e�G�L�Y�àU��>;>ǰT�^�\�>F;�1Z��=A�x�^��0�,��
}G�)��G��:�;޸�a�`�@��/�=qF��r2�W�h*�8���ܐ*x��ګ:xON�a�ě�	�x��F��;�j`'��G3��@��z_�g���/��׭�u�B$���k��Y4G�����o����{�OvE�,�D	0ϕ���i)������h|��-����N�vo��i���Gb�f�	��Y��*G_��?�9∙�j�#;� ��[{s�'�h�L������(
:�@D,(tK���g��<�'��eÞ2�#^^�J�s��*j
hj���d�CW~�s��Îy������Z�}�!�D_C9�'��Igeg��w��� �9��_d� ��6,�Ne$_�@�gx�,h�Oz<��Wؿ��9��Kr�t�~��⟔V��`���Ea��J���V����w�`и��(�S�JZ����=���9�J����� d���-}�9ܓF1vRL�b/W3x��;�mu�8])��;�^�Ge+3@���q��qa�{�;	�`s/�]8�1�Ͱ}^�
6�{Qt͍^���ax��H�Հ|�e�2Q�4O'K^�x�;�"�����Q@�"ܓ7�&o���\w������"��(x�O�$�'����N�2g��ո݂���e���ɤ4E�e|*�y|,�J�z��./c�12��:��|n�N�,�^�w���^���gP��v��2pO>����{���-�����	/0RR%�|J5#�.�`j�k�k�t�#=Udj�=���Yp/&%���[Is��P�*���쩖�a�Ќߡ+�@=�s�q�5]p�ݯ���\ͭ���c�OqA�0�c�d0���KpI�9P
�(�/�U5��Z�E�4BX<��çV��~o�dO�(m�ˬ��� N�/�>��5�t[A�t�'���=�:#�X�T�W��(43[=�t+f�Xo��ba���0dq�9�G$nuL[S��w7U��2C������B�j���%L�܀����o�hX恽�+}f��Y�Is���E���)�wF��#���E��?�\����K���I�3f��ܸ�W:/�����7�{�Go)�����N'F�#� '�-r���ߊ��dq���n���}&�m�I�Ĺ�ʕ�4�w�B�a�x�f(c\��R������2P-��]��BK�G0��>;2�d<];�b����6ն���2�����r)ǜ�V�v�I��h&5�R��v+^- �[ӡ����8�:�]�c�3��Í�oM�ز�ʘ>z�Z��>�V1rh��+��Xޥ�NͿ9\:ᆯ���\�pa��S�
Z�>�������w~�w���N���@�ZB=4Bؑqm������-M�
M�9ܓ7	Q���\�=y��r�����XE�t�&�@X`ѥM�A���i>������x�f�q~+c�bU^��וvZ�?�XW�LQ!��o����ɞ�H�:�/�n���Y�����L��5�ޭ�	� ��|/���x�zep�uww�sj2���x$��No��Y�ta�\�%���Ѓ�,��BY��oGo��I��,�҆Kq�s� >"&�W��Y/�=J�8�lߌ�}9 \qS�{k^�@�FrH�.=q*��g-��ly��|r���̜��S�:-�J���(fb�!�,.4����W1Bx'wdG/��w����.f@\�4�L�2$���i�i�R����SU,K˂_9�v�e��^0��)6K^74$ެ�U�.�̰���T�|P��i��aɬ*�ނ銣��A'2��K
���]W u�R{;+z�)���:�1G�Pڍ3e��&4�oA�Ê��/xA�������/��(3��!�1��d�=xTo�w�5bx�u'�B݂3�ֳ�\9���]2Ÿ㍻��S��'^n����Z���`P�oP�/�¿h|st_����wtԪ� ����:���s�(6��v�ԫ����r����\,�t#��{p�q������(�9a�d���j�B,��̇��G���@w�ʪ�L����cd��uR�g�s�i�3�=xa�xe�q_K�h��Dh��M*�I ރ�����[�*E�}�B4�����mƀ���5S��T�hh��>�@MX5h��R��`;c6����R�_�%mI�'��y��w��?�!�����N��k)��Qg��S�x�� �����i�L�Qqs�&��j���5�A����gR7o�T�	�G�ͥ�/�JWG d��C.�da�#ra	�V�\�_��O5���O+X$���S�P|��q�z�����bH��K���YeS�Ct<�;��q����r��F�z1h,��{�&�^�a,���B#3�NL��j�G�{0��n����8��K��`�bkKA�|0(��m�k�(�O%��)��:2i��o�L�9ރA9�j�կ�ĭ*U����P��M�4�r�a��B�9�XDA���gjs�{�-�k�RD=������q��A=[�]r+S��z��^e�0�z� ���������B���_��������"^E#����qg}� g���H�+������~��(�\\2��x'%+&v/ֈ?&�ڠ��x�#�q�����KXV5�}��'���i��m���y#��;v��zF�_��N(�3��	&C��\1�\k���FpD";d�zF��D9 "�7�ř�2�c�����C�r�&,�@���|�a�`��S�J����h1���E�����uz����<YQȖ9�J9�vc��oa���NV}�M���\`�,�#<�k;��Ic�8��B��`�����O��@�`TA���N�mΫa��3Ђ$�K�pE��b.h/H��C�a"�B{��w�?��8u%#�P��8H9a�A�v��v������*�y�O�L<L��;��`S����Z �^�N� ����_[uF�f��r��ia�7�P^'�M�Ư�`X�ΐ���ju/LF�Ia�����Q�iS�Ui@+���N���\���£z�&q�O�X:���d���=a�eM��N��pq�]_rrq����B�Ht(^b������l�&V���6?SD������J�7g��G�ױa�W��;gB�""9k㕒	�'��w���U@F�ѵy1�{�r����ڴ���?P1���
,-��V�Q�EJ,��@�_Ӆւe$Zb���֌W{w����S���@�����>a}=�x��L��)ĵ�1�X�%~�a%�O�F�`�:1{�?���)b�v�wF�����_آ�V,���%��3U�L�.���N�Nv�f��ba�� �G�NdoV�΢X!k��}����ös�`L��n�d(�C���׃�G�#���(`�ۻs&	WM�B�(3-�$À�~VS�VC��%�����+Fg��}�-���r��H�8�(FJD6�V��<+����-'��T�<�@�����Y���qio��a"���DJ��<by�^hl�3�`B�j�K�D�G���sH�0׻�̈́�    D�H�y~���N���`�i��A'k.
�#<o���5�F���-�g��b�^L8�� XMȖq���4*��N�]��_���:{����!	X�����B�[����I���bx`��,�d��+�Ҝ��:ox'U@H�Ծt���?4N�5��E�A>��S�N��Y�Q^��-^� �����HMm'�9V�{���S�?�#��Q���Ħ_1:���M��"�K���@@���wFe����J�J�
�ړ0v�	�1���=jvqg����!ti	x"9��߇r=Cu��u4�H��t�fh�`Wne�<a�z�w.�o�F/�����vh&h`�zA�Q�3�݇+��a�3��8Q�
���MĴ��ҟ�GvgFD%���ĻS)o�Xo�u}��ą���=�p������rr��c���z�SN�@i�Wi@F|%P��Hz�+�g
K��Ny'X��|x�״!���
��q�w��a�{9�;�r�>k��D��<�	x��K[3I�Ga/��x_�\VK&1z�"
���.��?������X��(�e���S�`�h*vD�/�P#�0:�9��� ��U�*x�Z,�ނJ���X#���}��Z��}\!�cG�'�=}`��D9�$Z�m	�L2g������;�*�o�'ђ�,p�Z��);��㩜G�qξd���y�W;M!�z@� ����T�������Ӊ�\��#�g�_�T��$y�����痛���A|��z���Q!���z���2��i뫩o��q���~����(Nձ��I1�R�ai�y��T�v��q[��w�Cd(4��&�5v��"�Aa��5W�����?��9�A=��^�9�Jg0#W�K� x�����^M!,nV/x�=%ޗ�
�����;���u$һ�Wůą^�w��Ň����-`+K51��ܦ`�?��K����;�w�f��VOf�R��?�轏��P�W&���w�ؕ���%M�3^\Q`2ٲ�`H]`o0��S�>�|a{K��i��H5^ߖhgnml��d��W���wƨ�ˉ��W�� ���)��&�ig��;4���)%T+<"]��U�8�>|Ed�-U�!�V�N)�lj��R���zVˈ��pk=[��A1D _#3��lf1LSs= �w��]�v� ��ث���Xto�E/�,��J�a����3d��7��w�ӭ�� ��<>.�e>`�p���K�o�#�x�[��请��L��/0�02��~پ�����[�o�;�"zA�mW�.b#r;9�t�g����gX
�N�0=1%����k�۾�*�v��E�)i4^]U�2B�>H�8O�_ė!��k�����
����xe�GuI�j����F�λjX�;�y� ��0�{� � xNC�3^��NW�J�*�wr�uXU�j�ץRa��9����x�A�����V#��z������R2R���ڋ����f�9|��5��[C;;e�:�����5�\�Ψ�})��2���,
G�g(�������3*�F뽵W��`�193�VC[%�K��r��(vb�n_'�ו�.��&�L9���u�������\J,K�a��K,r	����#SVc����b���}(kv��f]�N���\/��z���da�!Z��*�T�h�{��ֈw~�C#� �R��d���1bᙤ��	-���ØB����������Sr�α��0�j_�] #��n��Yv���`_��U��{S����,6~���jB���W�J"��50(�<�m@m���ܝW�sr�����$��!��U�(����RC,���8��������24�Y��%MH�ȟ��}��	�>���7�<{HSW�\.�,no"�܄�#������moDRZ�����͠g������ڠ45�g�K����R��;n�O�^|�z�l䦠"أ��B0�x�I��w��o�2�7HlEH��n�]JeH�#)��W&����o�Xw�:��E�3T��8b(�k���o���u15��B�5,CB7��L���fVZ�MJNc���].ΰ��3u�*�ӭ��p�-b����y6�s!���2�h�B
 B&��]�Y�� ���h�j�kC!��6wĖ���/͑B�����d�m޴��pfϻ����3λ-���^�M	���׆�@l	J Vo�Y܎���\��#��c!R �_��]�-C
� ��~���4�C�3/�(�,��Vc�G�Rh��b�f�¥Q=���E��\��q��e���eA�5]���yk�;�b�`��]g��9s<�I<r���ˮ�C�R)z�9�	*n���
����!�w%,�������"_a-�幢��N�-U��X�ζ�@��?�Wot �P���Yq	����K=k��LE�^����^�Į�;䫁8u��2�9?���w�%:�Y$�פF 6Ke3b��2"�K��ϥ��[��-�;�B�
�aP�����J�6���q��~��]�wgX�Vt����FC��J�	��]�U;ݝ^)aH	p�#�P����0���='�)�J��������3,Sto����*��]�	�>gG0�����J��>�Ҽ��@84.�� �&��P�v�;�Rmh��tJ�Nw��\
B����6a����>���kܜ�K�_�~��|ߺ���QS��-�hɶ�4��h�%��+M$��d�t[{��	������e�?~��k�y*|m�׀��Ef΄��7�"�h��[*w���� ���d`$�*:0g5)3{6� �#MT�{�Ii� �3�+�a{-�8x�f�p��-S�+���`����������t>(��h�y��f��6^�F@?��g�b��mB��^g'��i�!E��8�"f�.�\��V��9)Nمc��hyEy�:�X�h���y�9�E�m_���/���M�����]bH���`kVf�eI�FQ�6i"���a�RR�qMEaIqV��)�:��l�jhw�d=�_:�����a1l��fj3��m����:Im�A$˰�
hwr�ա!گ'i�:�:a�t&6�+7�撕�8Ȕy%��;!�^�΄�{yo�՞=f��-Y�������M-�cvnd�(h��q��!�<6�$f^�?���Z sTw,>!�3_ے�w�U�Z�:��d��3]�~�,���)g�2�T�C͊��GǼ� �<؆v�cƠ�/�^G1Vm?Т>�h�c�3�oj�����4ڵ����:$�v�[�:���F��͇N�v�w���̍8��ݒ�1�B���D�:F�l�Q�qb�i������{�d: ]Ci�攬�r�6�V����#Cg��-}fc����>��7��b~�(��(�@�UfM� _n��X�Ug��ۻ�(�f>��lCK}�B;�<ڸ�Ț�OG��Y�y��$�?ao�N;����,l4>�3ԉh�M�����9�������-S18J�Gɰ�8�V�>�p�P����}^�N��9c������}�A�;�
G���Wp�Ȩt�^ժ����4lC`�R@�Y�����3&��@�����\<1�8�t�/�;h�:ڗ�U�/�(_���6NhJOh��g֐�-��,�Ԃ`J�Z&"N�L�I)�1f'�`.8��`}��'X�[&����=�`A9~�X!qn�v�����Lp�#��:P����u������H��"�o�\�i���fǰv�,�"Z��=��HX_����F��~~@�s���J�X�&b�}�f���ZO�h
Ow���`�
�=8��ϦQR�����HО�sܲ*����W����-�V	���"�\�v�t	V:+����*P)M^I���!L)�͂l�K����?Co���S���LH�	���g6[G0�5��ً�`�+9grk��� �a�p�\���� kݾ��K�=�b�|����u!�Gy T  1���E�_`Q_[`��d+�cF.Gu���y��˹�&ѿ#e �,�ue�R|2�ܤX~��i�i��YO����=����JI���L���D,ǘ'�VNh���q��]�u�8Gl˘��[<�]���ގ�N2��yi�QѹɃ٦sq�*�8�Wwp����L�������X92�$p靠͡��<���NN�|�9��#�*��/��_��eCW��\̈tz�T�l�]�x���R���\�?��$���VZ�\���i�?��`�͌ֳ�
SOV.��[�9�Vw�J�Q�h�HO�%��ɒ�*:i{�� kF�O~�_t����dN�9[��3�������MZ�95����ɟ|e"��U�X�`��zw�+���j�O���O�[&b`*��`���������w�3G�S�?`(ٖ䨱�f�	6^�lE
��#�X>
�ݫn�Z�X.�<�%�;KK(���(���U7��T���~3P��� ���	6���
��(�Z���g�f
���{xa�l�6G�'d�u���g+�:`����K;�Q���2��tͪXAch��O���z%�r��_���f4S�O��
�r�� V�M�k������g�W<ٓH=�.�.�0�a@)_�(�dH�b��:���ni\�6���uh�$X����ˠ=�O[/-?�pe%��8����X�]�(�ɧ��u���1{��V=\����t�)�4ʗ�G��֓);Vz,�2
�):�|�l��'Xy�����=Y�Z ���d��zMr���^v*��hO���h%i�/��J`O"���p�
N�1��зX�}BC��7o��dR������S�q�X�T`���x:;���ɧ�V��Z�`�$��gK-<F��`��N>��X	�oI�ۿe���)�JOh��VK&�U[����7�M�RG��G*��n"�w[�Ҏ�6E����\�++3�Jp�\�y�+��Q�X�r����I�Xj��s�Ao�ǿړ$�@;���tD|�&Y��+����h���F.�v�#���|��N�
!z1Vd�f�ln`H��	��eS�(a�v��g;��Y2��U����|;��f�IB}�����T	����v�R@���Ɋ�Q�6P
��䈹,`���4�zzRy�,����О�ѡÙh��F
����"�(8E��/�\ģ��OZLyk���hy ��/�6+�=���ޘ���6��"��}��v.���[	�������-�� [��@o����� N��DQ���d�[�\q`/�1�����֗�{�\��\o�ˠ����W���k���Vٛ�u�+�8 25	��q42���P��<!��"1��([{��%��\08+����W>^�f��Ϳvf+c��R�*�Kl��o�.� k��`gA|�*�Ξ`��	*,q_�м,H��Re��t�ܶw6>Y�`=���*�=iS��`�kwu���R�PLk'��/��О�	��̢��/��3j�!xS�hO�D��#�o��M����e��h))�_��Ze'_�,o�Ab�s�cn���+�=�T�R��%s�̘c��*���B����w�u�y,V�^�ފ�2>	�6��<�2P<m(��"ؓB1�u�����/�s´����8ϊegw��D��i�DVҩ�գ��VăN��P}�}�&�����T�����is��mO���9����[��i~�w�}b�ze�y��u��_����d}�=����!���]��:Qy\.V1����t�u��^�nުw=ۛ �ґƀ�~��K��ڃ���[������VW%��b5}R���ս6l�tK�[9�y��Q|�:G��� k�n��V�Y��&��X]U�X�	�^�U�0��_���I��R��`�ȼU����m`yf����<Y�7�=oU:�����)�������U��PQ��v���=]>�nG�c��xnk:ЪdLg���W�8o
���=�`Tɘ(g��=Ӡ6�+X����`i�����b���X]=��}����`�;����2��D9l?!��;{P��zW	v��)`�X��[������x{^��{F[�m�֮/�Uؙ��lЊ`��u(B�ٲ�̒�.h�ΚF;����i=kF�,K�N����gɎ���#�2Q����X��Nģ�t����؛�W�غ��ƏX.	VN���=��آ��q��
��ϒ] [�l5 ,�����s �{p(��u���)�i��qNp%�	a,�j��Y�����_�S���:��9�%X�P0}z��L�:[���o-�W$X��z`�ʝz[bf��c�J���5ւ���'{��?�Z���3]�K�`�yv+SΰEt�v�13�&mm2.	� �S|�S�b��W�`�a���z��neJkc��+��qy�|0���d]a���*�حPi�ժ�B�slc� ������j�V�� O�k�"��u���h+_1ZD���ч�vy��DB�"J������1(���=¡�k�[�3�n�Kg��7��0'ü�)U����Y���N�W&*�/�������j=�+;+�Zti��լ�/�,%��]3�ؖ���Ͻ�:�W��o���W��S�Y��=�j�����X-� 6x���
���ɏ��,A��Z���E����S�����u{�h�[�����e��"�,_`��P�"+�c=��*�`9Wl8ZZ`��5�XkO�s�dZ�O�s�k�B�,������>t5�%$�;g�|b-�2Qs�t�}�:���O�h�X5��r�m��ܫ��a����r�o��(]v&_��UK�.�-�k#F`�����+փ@E,���5n����hq
?)��+փ?��ǎ�Y ]���c#����zW�}�&++�/���*}�^�bw�W�@���������ݯ���V{2�Y��|�=rQQ-�}�T�Z�Z�焖f72Т����)h�k��kX綼�|�b���]��Iu��vɭc!v�%���	���z0'���^�ްo��u���,h���:s��Ċ5��}�����^�Q���>>�^����X<��V�U�')�w�z0�89��zIR��%��5LV�
t��SHڟ�����J�N�D�/��$���N�������nC�;;��D��N�a^�q����z�DSυ��_��sݗj��KyP�hV�u��Tv����'��z[ol<���<��������\�.���u��Q5��g�2��̾��_�X�����g*���z�İ�=�S�+1�Q'Xd�A��)���hw�?���Lڼ�h�Wc[8+�(w�;Y?��/>A�zcAU1�J[�D���dڛb=��$BV��h�*YSV[`�V�M%J�+�9���\yU�0rX+Xe���𾘓����I�zXw�Da,�{b��od| ���(�r���:�津w�:N\]��&ۻ�ݙRX۞��9��=��F�iO��ժw�z`5L�\ ��Y����Ud֋l�bd0�9�9d�ڛ����V�I��]�<	��+���O��WX�U���D!y�����0,�K���`�G%݆��u���`J��tͱ��OC;���Ib�C�s�v�*�
�u��5��<F�?�>xW�S
��s���_���>�
$�����`J�R�l�N��+�d���������Q�uZ��k�(���'�Acq�pC���Q����bN'V�O�3��Y���Hȇ�<違�ya��������L���j���f�e�#*_��Z�O��J$�=����,��kn߂2%K��WA�s2������֞��+w���9G%�|��I�מ�����U�2s�
��ۦ���?������-            x�m�[��(���{�>�&`/��u��X����̒1���O}�������[�l�������SSp�2׎s���R���u~�~m����O��������Xs2���,����?��<�>�����#��Tۻ3��L�� �#��
�_Ӟ��v����������g�`̻�oGb��}Q��=�M�ſ�)��k��/$���`e�9��TfyJMI�jg�bH�C�Χ����e�3��X��O�)�uX,�5A񔑒 ��^,��?�R��t�v��y�����h~��e�#���Hvm���RR��s�Z���<wJ�ǧ1	vi���Χ�)y�2�q�3�n��>�S������������o����4<"}�`}�x��x{bt��u1 ��o���>������ژg�{`�z�����L��G;�}�s��k���Q���{�WX;j<J�1��n�p�ӎ���?51:�6��go������c&F�Q���<p�x�~Zbt4n�y$Ѹя��̧%FMk�I[��Qg}Zb���yf���fIr<�b����;���c,�y4`��>��de)/����}�H�������[J<?�9�c���1�)y6�򀱻�Q���Jɥ9?��������[����~DΘ���~�G�G7~0��̶��KJ�L��`���e�5%u�"�iE������r|��,����Ĩ�ڗ&��Y�[Ş-�f�1k�=OO��Y����K������|#�O�u?J�==1b)�3�1��V31��p>���n���U?��A�������4%��Ov)v~$F��7蠾,�>#1��g�u��8�ps��Ĩ�00��1��Ҹ��@��To{��d��<]���wi��Β����&]y�JI^4�����kvJ?oL�4x�k��)ɢO���3ߐl��I�[��a���jJ��(��|���O���d{�&�]�ׂYOI&hLp�x��Ĉ�Z�� �	q��Xb�7�as�f��L����h����=1�7��XF��l�%F�����J7}̙�9/F�\�x�0晉�9D���>��*v���#�=9������^�K&FG7��D��w׭��ĨH�넨�eg���31B���& �v����3/F�Ƶ}\AG7;^�,��L�D�c�:�����w�us��D��wP{=Ǧ��y�<3kl��o�t~��7%ٺc�:�J�� WI�3JY}���G�aWMIv�0tE�.9��>�s�}{���x��u��$3;��vbu@m�Y#%k��>�Џe�.?+1b���N�,��X��)��2� ��+J�Ӿ��Q�DcJ�G%F:������S�y���s��� #8L��4�ىQe���fm$��];vbt�aǹ����"w��N��o�>�%=��db��z ���O�N��b���s�"��;1b��X7_�˘��=;1B)�k�o��6d_�&�y�Yg�K[c�<h1���GJ�w$ȟh�_Y���ݓ�hIQ����������ձX?gs����hKQ���L�mq ��hy{�2Ɂ��ca3��񉢡�#��dx�xv�Z����q���8=n��;S���|�*�����`���|�h��bY��7�BK��=��kT|_K���J�����H�K���j01x�n�|�%�:����:��gLG�&Z��f���9�{6_-��͵��{�XJ��$_L .�=�h�$Z�0���3]H�}u.�h��/�K�T&��y-��J�^��L���h��PM��G��m9��D-~q`��KR�~�>�a]ɾ�w��8.��p�m7փ6�C��}����%YV���8Kߏ��z��0dY6�:�����q>W6K�;`�(�ϖ�m�����A,y�nfo�P;͔��X���Q�*�)ʾtW`��g���(��c�jp��M�
+0^)�
��<{+-�:q@�lˌ}m��v*ob�DX��ǥ%Z����Z w8�\-����-6�yZV���P���h��7�J�
Z�UuP5W���>�J���]:��VO� _�Gaԫ�A+�Dfv�9��U��`J/Z[���8A��؏���"I�Bc;�y]>RbK�.�(x4Y'?�+�����1KQb_�w �Tj��[>v�JB��MV?F])J�%_ ћ�8Z3�����tΙ�g�����R�H���!�����7��f��}�H�إ��pl�
�|_G��Hx*buD=N�H���i0�v �2-Q�Cy�F�i!�h�=�(�"d?|�\4�BS�a]��q�q����0~LyzbWF�E�O��Ñ�������-q#CܤH
ȍ,�";^$׃�6���h�ś��8��9�8ږh5�A�g���B��7(^bu �!6��2!*�^�3[�H5*&��Q�@h���: �۱Y3E��@}w|2�~�!ʻ�]��	�c�3pي%`������s�tE��M��ű�q#N��+\� K1������!��8��Q�cĲ.c���nh������DK�u2ҩ�q��&Zbr!c��@�E�;-����*#��Jg���cB���6r�D��d��`j�����h1IqYSxJ�}]�VCyF��;�|k%Z���� }"OY���v"e�Y�a	W�uv�*<�:y�W�	�Z��9v�3S9:;�s<:��D��uX�T{ڠ ��.ZEe�7+���ǵ��\�"Dᾍ��Y�����[��ѳt����F3dr\t��(\��Hb�{�ÜKa��q�9�P��ˎ�^#D�<�`���k߁Kb���G� l�(��#.�R����X�k�,��S@T�v�lrFwy�mi4�-]|�N�p�?0e]x��-�<�A��JXG{'Z8N�Jp�Av��N���+u�A���o��%�S����ŝr�hi���}���G�o�%"I����Ĩ����~w�%�\4��hƛE��)a'ZU.�}ŷ�{�q�O}�����ʾ܀��E��q*$ӛ���+E���墕F�T/���k���ܗ8z��2BT�O�+7=�^.#DAT�`�?'|���������r��Gm)�����X��u�^.�EA�0*�h��%���2B�-d!��G@zPb���bQ�ˊ*>��Ӝ�h)!`��|�۟Z-4�.���T,v �Bc���Q|}��R-i�源�Fy��D�P��(%�����Z-�ZP��W�<د5��a^2V���7|�Z-4�d{�e�B���\-B�W}��T{�>�Z-��V ]�*&t�j��L��P#�D3)'�\��sM�T*#ځ�tWK�7�
�ឨ�p�X���/�,DK�P�e�s�q�vњ��������V�D�d$�7����E{���J��"]t�(���G\v���=˲OT+`ϊ���tǏ6\�춭<��%?��ϳR���]"�}���v�* fPv�4�=Ѻ��'�m=ڄ��=�:�<<qz��9iE%c
�-�'ZDŕ���F��؞h��A�}�@��XV�UU�g#���y(�Ԟh�����Ε}mŵ�'Z�%��W��(>�'Zj��A�z+9�C�-r����@E�*�u$Z7��F�4�eO#�h���y[?g�B���'k�U���J/���8.�����*�0��@k�U1���VN'�1.:RK�NB�Z�\4�e)�i)t���d��u�sX�#��S��D�k"J�d+@�1ם�JG��o'��!�7E�p&oP��-|�H��!|U?	�,�*rX�X<Ԋ��-EŸ��^+D���X:g�U�0��%Z���m������L���\m?Y�has^B;8y:ܱ%Z�I�;O8��w�E-��,eXj:���3ѺM��a~k��1��ծ��1���f��5E1D���d�!�-Eۏa�r����\��(�S�ujT<Â��H���Ũv̒�|Ǩ���bxU΀�(2�Ι��� {Ep�؁����.Hf�Nf��v��ϩ���j��֛��sW��V'k�&Z`�p��DmFrZW�ś���)A����h����#Jau%Z�T�\ڃ��HLV�Ed��
�P��H�����K��*~k�h    �M�����g��t`W�E;.a�b�F�%O]������G݉�k�&Ne��x`'Z?C�1�ٙUDo;т�?�o0��`�&Z�w[a��$Ca|�1���m�]���sf]g�Ǩ#E��f���}ݖ�B�i�)�Q3�{�(��T5
�qП�W�N4���^�u��w�b0�S�����i2O
۰5�Y�V{�'ZD�36�0����m�9XB����-E�(��܊�B4Ѻ�.�}Q́��ʭ>��wluXVM��� �vL��؁DK�P�*q���=�oo��Jv~��%���7�R �QL<�?ߟV-1���D�����>גh����9'S��zZI��_�<�թ!����h�_B[7DV��V-m�L\�V�Go�$Z$��AUK�ԑ�Ek\ǩ<G��~��.����@�>^Sg�����_)��a��,���!�S���2̤;6|��MQ���Ji����Z>Q��
-9�=���((-~��zϻ��UEK%��'Z�x�=E�LV��A�[˟�e�U��n9(OR׺CP-�M��~@��M���(Ed��E2��&ZE��G��tJ�CX-]m�*���G�~�[���)I����hu?�-Ѻ���W#��-�kK���(�"���`=�%Zb��*ZD�b˧���h�1K=\
�!#j-�R��uZ4#,o-�Ra���ϕQ�j\��w/�(�y��{k�a�I�Ҩl�:��B��e�^���� �S���>.��j�%/�a]>.�.���%����|\�m�[D4y�|���˸]�����0��;�q���n��@D[�	�U��+7�p��Z��D����Vܯ�VQ}J7/T��ͧM�Цzo���ɧ�E��Dmҝ"U����R�UtA�N�R�[��h��r_h����'0-�|Rn%wY1j���[��#��V��/?׵,OL�H��q^��;H<�g�V��O�VqK�}��J�D�劺� �H�p�E,�"<]~;W�.Z��U�|�qW��~\��z���xF�22��1o�۫�oZ��)J^��x�k��
�q��A��2�@�͈�kOQ�sj�%�Y�1�[h�|��j�[�1�8uæw��%���LQ�몠�н���QW�*%�QD$���Y���JF��6�ba�f��JQu��u���:-P�7I&�U��|�f��<����R*q��_g���Q7�׋�y^��8
s�E��#b��h�W�@���UX��D�,ōF�x~�ˍ�z�!~n�Ư�.3ѺMF?�݊�
�6-���VIn�*P�0g%ZM0�#�Ce������Cl�=�|��2֍���f����s\ƺ7�t!��|ܶ&�׏�P[o�,;?02��u����P[���<إ�qN���2֥��2	U�p	a_?.Cm�c*p;u�ž��+�%C�J<����P[�M^doO���e�{�O'�Z��av�%�m�ϱ�
���D��\��?Ro��N�t��^�V�M�$nv����7�������D��S*g�"3ډ�N2L�(�@�E-]�CG�B%����DK���<bj�
�a'Z2OZV{�{���o�UŐ̟�����7�R�ys]MY'�=�M�T�[�h���kP��2����e��s�qϹ��b�WHe��cY#E��>2�Z��/���o9Tn�tVi�떰\��z�R���{a0��RT�C�T��"Oy��e��c�Q�I�vJ�7���}�z��-�$�z��el��d�u�X���������W�.�Y�M�t��������llVI���P��kȔ-��hq�	7��%`V�&Z��1Q�b�1���.�h�����V�q/>�I<aA_��SI��6��DK_n��%�6���}l����ncj����h��jup�E{�|Y5�bՎ��G��;v�&Zj�P��.�����R-5	�@��<d��4����eܶ^������y��Qv@��AԼ���r���Tܼ��;&�R���a~�I�v����eܶ�1�~���z��/�q�z��Ʈw�b�.Z>Q�A��s�M� �BP�\�m�\�Y�jH��O�\�m뽅 U���6�]�\����5�v>}���kK����%e�Ki���j��(4O[��qL ђk��NU�� ?-Ѻ����EU���k�U�r2ICo�O�'Zh,_�1����I܉�=�Ro�q���W����D�:��������D�Ja���zG��&Z��WÝ'ZW�*�hU�(,���=����^.#�Z1+E�*bv���2n[���5���ؽc�+E�+��ą�~����w�"��; s�\���K�k\�����6�r!�d��WͨO���2n[�`��c]Vu`/�q�zo�{dU��tw|����k|���9�Ƨ�����˸m��0 �C2�`$Z|AǾ5X{�G�ŹL�S��}����h1;�w���oƏ���")4�s�E��m�%ZY!U��ɧ�l�߲D��)�H���zC4��q�&�N:�l�M�(���L�m2*��ͲD�sO�`�����N�n���A�iٝ���-�BI�'&c�m�!�DKEV�w�������2n[��Ci|��L�w��Y������d��r��].���ɦ.��ã��Qbv<&��ӭ�5E��cpq2ž��eܶ^���
s��\�m�%�{���G߁�eܶ^+\��|y��2B���a���$"��eܶ^���8R�ɗ;�h���>��r�(�f&Z�~d�J󲶑o�Dū�����M1߬�ha�*SnL�^��%O_��u	��ڍ�x	C�-�#̟���fBV����7k��*||cY���D�蚶�n�7FM��No��F_��+���y��[Vt1�u�V��Ɓ���� C4�R�$���t&_��ډ�.��ϻ���j�e���*�-��1J�cԚ����I��ԕ'.�f[/߳�����)�nGe��V�WE��Q����z��T�]��2��ZT!�T���T1������U|V��f�%�/��|D�`�[p���w�rJ�
�p�eԟ�^Ѻ�o��o�UTr�{T��7�R�h*�gT"M�o��"�=i̕�[��&Zj�U��>���v;�h���U�Q_1$ȊQ����+����o����g���(Ř@�%�X�v�m7��M�Pn�R��Lt�N�(���"�Z��-=_C4ђ���Q,�	8Z�u�z��]f_9Pu�JKQ�@��eA�L���z˥"jq�;PF���=�	�N��:��f)Jo�\��Ct۠��LQ�T�Tَ?V{FY)J��~zQ%������?Q"��J��/�.��)ʾ��'C�{�F�ZR��.])��?/G�&Z���K5#*���@M��֫�N��Rv��q�DK-� ��>����3j�U��[��.��5��6+�ꐉ�l�DKp��]e.}��L Ѫ��f�k�_�g�DK>V�=�OէW���h)`��̃߬�hWlּ���rA��v�R[��㸓�p,*�*�hKъ�y�kK��3��6ZO�v�鈞�,����h#Ec�E��H��{����=�Y���7=>;��:�}��V|9h����|�S;��Ps��+E㕓&�5ωX|���v��O����;���E��4�FS�,��{�&���-)�٥�l�zyU|)`�D���m�`Rns�}�z����Y
Y\�I�3z��đ8�=������+��m4�̦D-���-�W�T��CSw����D�������N6�'ZG�&�Fo�wyGO��nM�N =�~��`|�2�B�(*N,���Y�-�[#�B��fwt|r!��	�DKm�0
8�YѹGoc$Z��a�0+�o�8�E-\%�ƇC̔%�	\���k\02�/aT��8�a)�!R�U~��#�c�(DrW+3�b�Z,k�(�$k�8���:����5�X}��ϫ��{��)�~D�eC�Q�|�p<Է�>>?g�K���j������B��3����m�����Vb=Eɞ�o�D_Up�ϰDKɩ��Wt����j�%bn�N"��h˘@�UtN�}K�E��nY�ErʧZMT<��՞a�V�=Y��������a���,�Z�{��h���4�F
��K��p&Z�@b���9��њ�VE�ѿ2�K�R|�6ђrw��#���9?c&Z�� m  ,�-iJ���n̋�U�n�)��҅!:S��8��S���r̕�����8}V��;Ea��%Q�Y3����(�J��7��<>�2VIQ��q��;D������'�np�Ո�&�y�:Z���Y:m&�O����S��,������5R�;p�|�ţ���N~%Z�q2eTL4A���+��<���#�zL �b!���pc�4w�V��Ɗ$��5�-bh�NB�	l(&�>םh������E�mk��+'Z��b���Ꙋ~'Zd�|�l��J�}=c'Z����������9v��F�[��#Rw}$�;��}���!��(���h)'���v{�[���˰�>�o��U�˙�NQ���$J����>.Cm�c���bAUd�}\��>�=s���f�����P[������jdy��2��a�����k=�qj���(C^����OTu��+��ߘ��(6G��G�jE+�����P�Rdm1���N�p��A��1o�&ZG��'W &%� �+���bw�g�y�H�J�%�	�ν���m��@I�t��;=��'�-��i%��qn59�j,���+�Q�;Y�bmb�(-XI�l��Tw�
�J��y⎴��4��Žc+��2N������[aV��k�(���=�5�j��%lܱ���&�EKm�F�����k �DB���qj��f$�_�����N�w��u�gB��2��;��|�dA+�h����P[��f�)Q�r\O���P[��Z�-%s=���eLe�s��}Ђ�����|\��z�͢��|��|\��z����8>��}�)z���|5~��dF��D�X�O�/��E����ϵ%Zd�ʞhrXt�N�	�D�����Յ��\���hQ���:G� ]Qb����؉ww��p$���h�8@O����3�H!�%Z�T�"��ɗ�ؖha��N�.�oL�c-�"���O��2�h�D��J�`R8Y�s���=�:��zra������X���]3��cm����N��>;�d9^���2��k\��թ�¾~\ƺ�M�B��;$�|>.Cm�� {�W�}�Z��PC��:��e��׸km{���?�q�F��?�VG���c���^�
u�QgY�/���2֍�� {C�����DK�u�Ly������ ��þ�+?6-'��W��žZ��H�Pni>����ı������H;r���`#�B�R��x.=����DK�"��S5����h�Nℒv�Y:��3j��r7N���"�n�D�cGo��{(��=�7K����,R��ff�V�R��e�a�-�j�JU!^�K<�����}�[\"�%c��c���^�bh�&�5���-5,�8>0;��q����YE�3��&�R����y���_੷۬��P[�|Em�&��bԏ��7�e��RS$�������K���7��Qk��i����ps���P[�n�m����F�0-�M�p��u`g�uu�I6�Θ@��>�K(��H���������جD�&��0z��pFM���a��1驙q��V��z� ?��{���g�J��c�q�	�.���[����2v�"��D���㤃i�8ޏ�J��
�(����,
�3��n+�"^�Ŏr/v`9h��}��zy%�            x�]][�$�
��K����˝�8.�a��Z�*4� DR��OI%�M�o��j�G9%E���͝\����տ*��n���s�|�K�w��g�/�����U>��5[C�����l�Կ) ����E-�[��b�f��=�̉c��&��oG� 	vO_�DV�o��b�z�Z�}���fF��W�� w�r����'�	d�r�X���<���e���]H������v|�˗��������>Oo���=}^��q.�Ng�o|i�%�t�s�v����-$G���Y�&��Y���'T�9�RH�W�Q���P���W�Q���G��x���#��>BX��f\�"��k���c�{�.�8����k�ȏ��:�"�
�N76�r]�8*t��@.��br�#�ۢ�Û��r�2���ˏu4����x\���j�_P]�_G�Kΰ��W�Q���F|KN���G�oB(�	�k��|�6!S��֞!Şޅd$��;>�4��!���W������r���ʡD�K����`��=&�-�F/�O������E"RnH�kz��bH�B����KC�Y�IB�����8�?@Ʒ��>�&��x4�s~dYy~Mq��o���49�<n�?�\WK⨄Hox��&�8*��ˣ��ndh�^L991�;�E�.��g�ɉ=ӧ�.�H8}3�Wܴ�.�A [�4B!�q]�I�wD��Ga=�����_���M$QB׻��!a=p��|Xx�����5�P�ii	I�dF5^�[�ӷ�̽������IH�M�h_���"a��M1M��2}��,��C[��m.UH��em4��MH�Q�l2���q�\��v!���G1�Gj~nC�#R\^��T%�S���7fd�����8bgm+���[�Gp��^�`d���∳�$1�Ѯ�7�Qy3P�;Sa6L��E�e��Oq��N摘a���G�7���Y4���р�EV����ήm�SH�`�Y%�l`�<��HӐ�2S-H󎹅<��LQ!DL�ڷ������*�6��W�)jY�K���*B�7�!C�}Z�_�"3sӷA;�ں.�jB淳�,�a�lO�BR/�m�k4��h��c`��?J���`K!�-���AG1-���4�1��{29�Q�>�ޞ�_[e��d/��-e�m�8�P���d�\9RQ�\�`Q;��c����[���aZ��z)TA�i��;}[��"����>�8����+�	lqT)<���X6/��Ѥo�;Zhi\�o!�p嬢M���q)	Z��د��0eAǣJJZ����MEPx�(�&�}]%3\��N5��MP`��`��x2]�~�\u"�qA[I�eM9A���5�F�mٙ��7X��FofH��lYp�9zmd�h�h*(�C�o����u��k�-��j��Yl���r�qL�,�;z嚾GT3
�؂�v��1�[O.�؂�v::ТWc+�-���u����5 ��J^:`}����9�-<k����7'���؂-͓�Z�����7�؂��x2�X`�jz-b>�G�jNy֭>,��D�A%�ā"�0h�%��_Y��Zŏ�u�&��ֹם���[�n�E���WO��@,:�\l̢�ͷn	b�g�Q�Z}XSP�R���B7�[�X�*����"�4�\[Њ�+2t6��u��΍bcF>�Q��GTlQ/���8���Ul��6l! ���^�[�/���Ƴ��ڰ�؂s���'��b΍E�a(+(�f�Ul�Q���n�_�bs&0�SDTl!�,j��Z��e[pn���`���&���ȹ3�Ѧe��)��-��"�����$�9��GѢ�L�1s�5��9vuzJ~H[n��(���4�5�f.�*�ùi���/���9��D<#;t

7��m���Fx�s,cŤs�����m<9TG�5
nibӹi ���X��[���c��־^��}��«w��xa[l!:ē��X��آz�|�
�,XXr���`+[�I�����0B����V[0��8��q�-��-̱�*'iFݡb�s,ҥ�80���:��{`��@��5��b���l�ld��!�ho�`t��φCl�w���
P����豳�g衳llE�¡�+�u��H$��J�*3Zp�DOs�V�P�H�$��D�¡rpR�hy><}�j�C)�b�{:��(�r�CaR�1%��Q�0("Yx,�����`�Pj����wXQ�ph{���Ie�N���n�>��<�V���5m���ߚb��Ӥ�>��r�-���F�eF8�g�!!���k@l�GƊQ��x�-xl�ܤ �Y�[�8�����Zb�r�g`f*��[̊A��?����<v�~ɖ��\b���F��8b6勜醣���~�����s~Z0�Շ�m/��3āq�����7G>�c�0���3���ʠY��z�z@˅��I�B�$ė;Q�p(��C,	�^��=�mQ�|+��O�X������[1�1���4��u��Ȋa�Lsh�͈�b�g�B�|S.�آ���ʱ��W�؊�?2��L=�A�ݰ�-�2�ܥ$��X�qXL��A�liS��''�%DIb�����͵�Mq%�-87�P�=���l�[pC�������Тx��V��i_<-�/<��^���䒏S�Eɇ�+kZϏ-=-��d�k�2�ηІg�ڴ5th��GȚF7�A������)����%j�����f.Q�0h��\,@O$4��.(��G��-�C���@Ï5���[�d�o2�{��:�TP�/��X)-��*��ǖ2���LHe�f)b�xlA��Z�㔥x�El��ZP ��l�^��*`}�E��� b�`�?
-xT�El<kaX�b��^�����Eɔʇ%�
����Â �e[�l�y2*�ū饈�����2l����m'bB*Q�4(�'�+j6e:7R�x�p�B-��<e��k�_A-P��3�
�<����yd�z7������Z�TOB��- ]PR�c}K��ZƁ���~��γ%��@��q��k	
#���Cs�H�Z�����E����+MlE`E�ꯅ�ihb+3N3��F(w/hb:GdG��+z[�����x�W�آ��h�+�_ib+��!0h������FK�Jb=6�U�����ޠ���V��6�v��C���3m t�i���V�2��9Y�]z�u�����K���Uų��Ω	n.�

�आ���[����&(��Z�����]�.2v7�W����!(,�S%E�t�]YSP�|Z�±�}](�XN_��F˲I�oA�c�9�o��dI��b*�c��=��XZ�Fq��آ�t��cY�e�š�\d0���u�-:7&�gH���z�b+��N�8,׀آr�i����V�y�����@l1�ѫ���A��E�揜����~�)�J����ܰa�`��o5f��^T|wc��ބ�%,L|�D�U��g�z���	J߂��X�o�
9��\0��0ֶ80��\f�GY׎�C��Xm���3��5ׅ����Iby��Ūeq� Y�bl��$hat@����p�-,��¤������B+��>ߌ*����whȗ<�4����PT(C���[Xq��B��;�8��
~�I�Z`�x���V�8�A�/|͡b��:��|�g�����L�}ߏ+�
K=,�j����؊~*i;�u_�b+J�푃����n��ס�Z�-'y���`�EUK�ɆQ�5�]���:Y�d��L{AYc���=Vc:�y/,X!1��KPҝ�;J���-(��e����CkJ�ҹ�Q�������Z�L-���x�W���j���׷P-��\�p��-�Kظ�_-��$��܌� �]V��b���	P������ob��9֡b�څ2/�\�[LS��ק�aPߗ.�0q���9A*�ך�Vykic���6��V��~�xZ�>*�"e�1ejd�����iN��e[�#`�Ō���l�;qR�,.i`

*9�2�D	�P���?؂�0?������-P���    (Iз(�X��̼�ؒ/�I)u6X����J�I�x[,$_n��
ʔ�9.�W�c�*MP.�c�E*?���u(�%=��.�Z�V���▓��"����Bbk�Y��"���B�8e���[���
��~:��-����Va��&@[HJK����4
��be�%�(��B⽊-
	7dŧ����W�ŵ�.��/�H6�آ�")ͬ�$���W����h�Z)���e�[�a��E�3�%(��������A���R���,�|��2FTuG��X.}��2F�!5��b�aMY��1��;!y�+�e�Xq�GY#
�4#����M7�:Ld�an-c�sG�� yt���nA�+ND�6�؊�o%�K�Ulq��?%f��W�Ŭ��0�d�b˝������ܫ�|�Y�b�p_��W6	�؊���s~�Fq�Vab�&ٛs��k[Ȋw��� ;W=f�]lEw���6v�ڣ���W$�9�r.A��.���_���t�-n�|E!�s��bWo��{��Wr��eĶ��d�[}�����Z���ο���ڣ��eĶ�x���z��2����E�b�#�e̻���}%~���ZFl�7|�q/�MY��1�'��ײ�;~\�)��340cs�A���tŗ��ց��{���� M�)���EG{t6������nz\��3eM���
�r�x���Do�����n�P�[|m�}3���eW7#�b�#���Xoy�4�V�8�I�X����?j)�l�|`����"6��R�ÕSl�cY�>���-�.�Uc����Xw�[�X���|!�-�ZFl�]�c���n-�n����nf3�n-�n뭿FH�1�n-#��r��/�l�Z��{���//��f�[˸�zIe��Q��po-C�zc2�|>���e�m����B�b�ZFl�܉A�hڮ�-�Xg`a�����C��7�nIn��Ҡb�CEpg
v�m�Ul�]4�5���-��ն���]4�{[t��H蕛��^�؊= lA��f)@l�w���G��x�-:wg<b��n��$�bw��1հ���V�3o �z�Ή$�Xt㜴�=�^�i���z�S«	�_�����w�sۺ�`�}����Ol�5�t����;J��:�?Of<��@�����U���B��������4[��ڭe���Nb2��Q�,(��?rD�wh�u���)&����c#�����ˠb+��,���9�A��;fU��.-�-F)B�������Vl"�&����Fl[��h/q�2���V�o:�C�آs��As]Y��*�l���4P�V|��x41C���-̱;�N-#��-8wG��Q���l�m�qx��{`g}������2F� .���O��i�SZ��%��tn:���/>�-(L!�EG �2jQ˸�z�`
�����e����b&�h�L��e�m������pӎZ����7[�;��ޠM��R@��'�a[pՁW6�^��c��Bt�V�,<#f[�'N��dĖN�Ulq�ll��d܆n���-�E�H��o�hb��M��מ�c�6��-���) v�Ml��:Lb��rY�hb��~�ŽP�U~��3g�4m�Ul�c�	spW��`+�G8
hs�&5�+@�-�F-�n�~���T݂b���-fQ˸�z;��l�#����5j]���a@���ע�q�����_X�OqQ˸�z�\��0ִiʊZ����`}᭡s�ߠ]��B��5��-Tl�`8��6���~MJ[<s
�0�
}T��؂�
��<}lIi�b�����Q�b+�,/Z XU�U��!�x:�Ǉy��-աb>Zx(S6�H���6�bo,���pn?M݆��qxA�b����!�x2�'�y4�g���*�x��U	��-L�q/[�}�>�`�[���+�E{�	���z�U��Q*c+j��7W��3HȰaE-á2�\��xV��������s���E-#�����'m�a�2b[o�I�c� mz��By�C\Ҁё����Bև�V7��ZFl�.�"𗭹�[�ظp��`->�L���@誈��s�%�h}$���[Kl�����TV\gXb���k�l1� b[y|m
Klŭ��}@=}\b�ѷbX<��L�KlA���J+������~�@l�G�R��Lj�[���k�[l!:D� ��*��V9�_+�-0��~BC-��m�ײ�z�)�{���ǹ�y�ߴ���r���������e���7W��G��+jJMr�Ч�)(��^~c�1
P�(w[on�i���w3B�2���?�ꅘ��߱���NǼ�ƈ�Il�("Z ��]*��k���ыl��Il1��7��N�t�C:�KE�;�$��/���W�G[�)L�4��-�Ҙa���*��;e��;qb+��\����i�b�M(o<��2��D�b��t%�i�F���l��{'#/A�+��*hy�$u_�l�s�9��5&<�vAaK�Lq���[v�������lz�S��*�����jy	�m����ܲ�Pf� �!�6ޠb�^������5�G[s��e��|���H؋�ʑ ��)j2e��9�������Ulq"f2js�6�Ν��V��]�1��@���\�؊9��x,s3�"���$����s�Y1�`��/]�*�"O�72-G(��3��-&-q!<.�[cz�j\@7-��ŒG�Z-�c|��q}{�M�3��k��k�Ž~�`�:�7kf��M��r����|�[��6L^��\S��G��p��x�>�.A�z��.���[�����:^G��;�x�%A�-o�Ą���J�޲��WBo\ּy���K[����m���;��2�&��[q��r�-���&��[د��yE\L~=e[�2�u4�a9aobv�x�r����,��������8��Tl��x�2ZP�>�5���9��1ZP��0]l�b��k���%�ᭋ-�Љ}��Ê�-�t��k ;O�+�5mX]l�^҄���R��wt�-^���.����{�b[o��i�3��g��!h�X����)�S��S�"��;J�+k	J7���B�����-(��ר����M��k<y��	�~m��G�P���M��>���>��� nc���~M�2F1��W�i`4A:��p�3��$�߇؊+=�o��;N}Xb�w��z����-��ת��x<�w��!�x��IA�$�C;W�!�x�./ie(�i�blM�E��Z�����SlQ/$��ПT�fS�[�i@ �1�pU�}�Њ-�eǄ;S��_^��SlA�X=u\�
��#S�[��CȆ�Q���lu^d�{M�u����:��l8�z]���PXO=S|�k`��R=��x@��0��J��^X�n~	�ʂ�G�('���^M�U.g&����͠UP��2���&�yd�z:���F[��
b�+[4��v�`�-hypjP��Ku�l���Z%�h�	�[��[������u�-x,��p�9������M(IO���[d}Q�t*�m�am����1ޑ��!ix��b;x?=�`��5@l�6ct>���C�/)�4��N�btc�I�K�]��-�x5we�yC蘮�`��z�;E઼4N�[P��E@Kxwl�o�Z���������>�o�ZƠ�L��N
�7n-��z
����G/߸�n�Mxym��!��۸�n�|P:v�ؗ�J��#�+��ƭe�pC����_�}k�֛Z|0���Ile�(}��bù�7�����XN-��.V[�'";2gzZsb�؊p�����kd��p]8��q�˵G[`�A���-8Tlj��~� b�0J���pН�,��)��Р�5��BF���ZmXf�Yl!���r[��[p�Ɓp�E�>�[����8�/BO�կ����ɉ�ѿAm�ΦA��g � 3J4ɫd��2��7aW{	U���&ƭep[o����lg[B�[��ބzr[ �HnY��19qrՂ��	���{��|{D�?��C�� ?  ��~3��ep[oJ�{B��Ӂ��Z����ɤ��z �b�uN/�4�-���*��c�\Kx��E3��?�"��P4�-�T���=	�\nbI~FzT�U��9���Aʹ���8��p&�g�XF[ 8�pqH*�w:Tl�G3�-0��,���zp�,,+yЬb����/YS��o4��-�m�C.���[�XtC��-�B8���qk�֛p������gLƭep[o@3��Z�zָ�n�M8�pmF�e8ɯ����m���0%̱fn߸��nH�&�NiFxk�֛p"��э�.�v�K�A	�RS��E��9	�T����!���B̘����t���m�1~ƽ��-���#��p
�؂�y��E!�n.]l���z[ ��k@F[pn�P�J,��(��Ŗ�����X�K��F[�d6c��`���	I[����ρ��b�Ӣ�#$�lfCl�sL�gX��[Cl���9z嗶�Cl!��M�����(Os��BV�:Cq��ph�u��>ZB ��G �vA����Gf.����AZ��Ï��[�8�z���y����X2n-�l��l����r�������@���R!G5��n�=s,�``�_߸��M7�4�0m��I�e�m�2�̰� ��.��q�����#��e��N������^�>P��)��rb">aP���pN�?�:����^O��-� ���v��Σ��pL��������RKl��}+��=�/=�^b�7``��u(��tڠbf��e���z�b��|�xZ��	�ο���x��	O������-h{��`�~���}�� �P         .  x���Mn� ���\����l*UQU)R��`;`A"n�s���
6��VI�Do�y��a@A9*r4[�raG�P��IJ�{��0/0�6F��{������^��L�Ruv�q�Y݊2�E��9�`���5��nUTL^����������Yr��x>v��r���V\�r�G7�Ձ�]4�]�m��nt�P� ��T)���b�!��ҵ�ZZk����}�Kal%�1�ć.�_S�Q�QҬb�Q��>�Z*��Hp�~�d�:�&��oߑj_S�J`���:"�_�kcwE�u ��n�e�'���            x�U�[��
��;s�{y@Թ���c	�7]��#Fy9�T�3�h���_���;q�c������"�?��Aт^{�o���"����X���R���p��ӊ��{� }V��?鎉�9�p�G�0�Pɩ�a�������)#jPl�9�9E�P�T�֟9�6�[�����Dn|mOoE�2a<s]1�~��{RN#�/φ��1ǎ/Ֆ�GQ�`gɎ�8wƗS��gQ�(G����\F)E��K&�:��Έ3�޾���rڎ�����r�}��H������v�>�����Qv^�b�l=c���^}�)J^�b#�=L��ާߢp���O�|{�~F+J�0�~�@�t��(�Ѐ����ĽhG����-N�6�}���\��gF��և4��aR�߼��Q����0!���C|�ӞQ̄Ny��0l��}Fad�Ƽ�1F��F���
���/���^�(��7����˽m�e�9x (��ϞY����Xʜ�l�3����x���o��n뙅��1J������<n�/F�_�5�>���ي�e0�	�XѸ�v[�*����p081� ����E����'HV����>seL~u���3���$d������KC�nX�k��E_�$��{���Q�eLB�� ��^��ć����Ϝ�#�(�=��7��/��0ʥ�Q�3�Xf3�%�Qg�־�)�4-��(Xn@��D�1���h��&� �yN|��hė; ����yFc�����
C�G
#����~�6�<�0�x�I�A�J�}���(T����{��P��U1X�E����U񢽐r��)YҞU��
�O"6�r�ƭ���� Y�+�%/�-�9��̆�]�,�����0��<�e�fG��[��6�[�(C}[��橈~o���<h���P��G�G�Z�2���GGQ�k��	S��9�:�YJ�8�)i�LT�R�`�T���I-�0H�4��͜�QFx��8Ƅ�WR-�0V��>-�}bmlE��9@Za��<ْ-��͎+��)����gF@<�8�k�c�c��oh08(:�iHva�7�l"�3<sfmva��#4�H�-��A�.�B7,o#�baE|�iAra�i_
C	1�5�>��H]�<�AiM�ă�����(�/8��2�)��OQ ��u38���b�}�2Ⳟ,�Q�1�N+J�^k�'h����<O/JH�%Jo$�C�E$f`ș�f�r�s�G1�=��'s-Vd>�HQ�:&�5��xQ�OVQxNR�w�n<�0�_�^9pIx�Ek�0"�Xޘ�
��6��QF�$�&Na��x`�ݓR�幅��q$(C�Z�)/����ȵǢ� CZ����[�L������ii\aD
���$�̄Ҳ��F�z�b��f�i�$r>2G`�j��-�7�ɞT��)�s#�&@yQ�����nbzn&���[�L鐉��gdVl�YkEJ�,�%A�x�Yz�z�2�"*��$Jj�YE
�n99H7��q�H�/:�URM�T��� ����c��G���$|��ݘ�t'�"E�NV��suf�"%sut�0��'#-����ȡ}�(��Z�U3G���~��-Դ#%�Z��|}xɡЊ��)�2j06�ov��B+�2�蟋��H��X:�{�5�߳�2x���{6�����)&Jg9i���7|��ŗ��Zh0{�,'P�����G-�(hgOD�a7H-~��
u�X	�Fgp��i��V�부�?$ �w��$>}Z��8X����e���n	���x�0Wq5��'��X�JJ~ŤY�1@���zB�լ��J��z(̦��g`��Q�t�f�-������+A�p#���
����ti�nQX�T�
X1�S���9� �R�˱�[��>�����+C��P��wLH�i�,�@����n1��f��,��(�Մ/H[T�T�Y����?{ ��(�Dڲf�K�����4��Bk ��٩���YNZh!�c�4Ju �Yh$+<�7��X��)�Կ���ƬL��>-�+e�[amMa��Yh��陘�d���A�eI�jh߮�PX�|��+I\\��ʇ�)�[���:�t�*"�
���a���U��f	\��*qS�������k���%n��B�T0���}u���������{{����0q����֙����._��H��_	b#�MS��4q?��Ȑ��W����Yu&p޸cb�`Z0t�\3�0�I#-�:�ӣL����-kZ)v��t ����B+�D�,�b���Uh�c���Y��B��J�tz�8��p��I-|,Q���6C��Y�/���[cg�(YdB-b�v�xC�p�9i��{ ����@�\�--���B��3S�`�K�ZlN�ֻ�q3J�>j��{:����s��e��4؃�:��,��t�-U8�b��Q�L@#�[�pR�؋�9|�I����X�;1@�6|�[���� o��ﯴ"E�V��1r���z�F��T4[a�Al�1�-X8i,vd��;P��>�'%L��#�[�]h��bX�f�F�|���
�4�|؎k �.��"�<H��Y@�]�v�ET�r{��K�]Ş���7e��:D�s;�
-��Q8��t��W����a�9���Z�<i�Y���|���Za	� T5u�c�Sh��#u�����Z�Ĳy&B�OJ�;��Z���-IǦ��[��-_���)�୯l�v!�E�y�|��la]������
p󄾙6:n��V0�t!�H�Rej�F}KN����&��&Fڋ4��.>�e�����e�F����"`�W��ti���~�@��2x�N:0$<�u���Ƿ�ᤓ@�6RD����Z8��8�����N�Z8��߹�E���Z�8a�!t��c���Q�"Ӝ��/�3Z�EВ�*��_���qg�?.�X���Vh�H�E(up���VheD#DDx��y|F+���W
��ē8���
�~2�"��9+9FZheR8����c9��xC]$|�fH-T�Fz���!,�%���V�ľ�[���%s�1�Q�����2��`=܏���3o-�I7�x�L��X�����1ΞD�p����z�[�pRR��;�\V�H�#%�)�]Lg.��#XE��|�RI���Bd5R-R��	���f2�-V��CH*#�Ԑ�^hu����)|�,�Z��J�aQ,o�U�1
-�X��L�~�!߲8�H-�\I���{�(���ݐ%��-c�3F�5H��f�]r��ZC�Ԃ�@",�~�(�x�H�n5�e)>j�EƹBH��`�v�Qha�ZK����n�y��Bc�@��7�8�����R��IV|��2�u���w��<��HQ��e��a�3�e@��&�'�5nf4�e@��)�hrYb���NC���"�1�*R��2�
Ã���2�k9�`�&����A-�Qh_�����8�H)]���������[=��f*^�Rh��Z��pyNSC)���5���3�ug$��o*Έ�^��s��B�o�eM�s���eI��S)'��zg�Z(7y�k��΂#-�r��_fOB�Ռ��Zo97.��s��J�5����"���	�-)�F\�������W�V�s{�v��, ֋�x��=&�,㠑�"�)'Y�yK��X�Hg
��<p��Ü%E��$4?+$)���e�"͊^ʉ��2-RJ�)
ɥ4���������_�\��Fz>R�I-�nidpf�=��E�qE�qqi�&��HQn⛞&���4�B+�Er�2EUW-����SݗK����ZhaH����l���?-�z�Љ�nfE��
-"�����X\�OZh������Պ�Z#k�-Z�.Hc��Uk��J,�H�J@��S�;�Qw�5~,j�~g��h�����Y[e:A�knc�"%���:r���ہ=�Q,2*����sK���^�ġbD�����W�r�5�9��5�溵�H㏛�ߢ4BLxĽ��E��W��Ӳ@JL��H�8�[grjw1��˾EJ�99�;    �9���"�]:��!���F=�����̬q
-
?Yp��ⓧ�}�B�����a��P��w<�Z�Ov�����f2N�E9���C�wn�$]N�E�Gn֪�欬n���B���͒UP�R#-���t�s9iA�u�[�ShQ��l���{�Tc�q�B����L,����B�-��	.�}�~L�n�E�g�9[���w?<1n��;ۜ�ߜ�'����g�-ɪ.���BG];l�]EJeɺ+����)��l��+j0�v�"vY'�<��_:�N�R����w�?�{���.����Y����֊4�Q��1��h��?ҷ�CU��O"Kl��F��v�E�sr��w�g�E*|��Q&v�1�B��('�Φ�]㙭��q��1���FZhe����|ޒ�g�Bk�i *X#�v��8k^h�P$��]��~�}�Bk��O,�don�g�B+����l��V�>�ZYe=���ë�^#-��_)�M�w�],�1�B��u38������������,�Y�4{�5s��r�%�����/Z�u��c	 wu��w�"Y-�(H��\O��:���{�J���HY��>�H�V��ъ�7���H�M-�#�)A�") �L��M`�"%f�r#'L`�\�,�܇ɝ�܎!�q�R��7�&�IZ.����4�vf�y���UheP�:�|G&6��ZhQ�����R����.�������v71a�Q��%A"^F�g�B�r��Y�#�h4�B��OVn�$�̼�B����95�k����J�.�afu�KRh��e��x1B-H~�,�������R\�������8��<��K��5��e��]�M��w�bQR�_-#�D���Q��Nz��S�Zo�V?ү��Gx5�RXdc=K��W��,�p����K,r]'E
���4������jy����jV�U�T>R��Mc����0��ZF���=���7%�r���24հ��ߓe��Zyl#��f5*$S
��af��f�A������a}�))���
-���8�s�G�%>W�Ś����?ĸ�O`Z��s����c��3���~_�kz�*�2o#"j鹱r�E{Zd�'7�0޷�%�g�B+g�]�t�d�u�Bk�b��k�0��]�q}K�yI���U��<�k��s�`乛i�jy�׹�H߀�n3_-cg5�h�g��xD��2�Xo��㵘@��}�W��c�'��w�d�D��w~��<�{8�z��������2�X���jn���7�j��89��aҳrw�;�.RL�A�z������z3'�M��P���S-�PLϛ�R,��������N�踋ۅP��⟜���g�B+����E�GE���]h���y3���,�"�g�B�<6e� ȁg,��"�e��������]hq��<���<��eZy�y��`�s�g�B��f�u9c��i�3w���w��?��{����L\~�B/עL#}�:y�h���I�W�=*�jy����p�\���4�i�W��c��M8�Z��'��|���^�F�$�I�H���2�X�A�r��3��b&._-�fM�=�s�����e���KO�8���p���H����;��#3y�)����_y��$�e���&�mYLaY杍��u�|�NC^-2z�-��=+ut�,2|�-�r�BJ4-��]�-������sܗH�>j�E#��;4� ���ZYN�y��B��-�xs�>��|�h��V*�;W�y�m�-�Pn\���F��{�Ziɲ�EŨ���=�
�,��7-Z -�ТB���C�gk�7�i�/Z���3�[y�F�T��ow��B��!������8�a��H�N�W˸�4V�샞�w!�f�W˸�!A� ���F�?��2�X�y�(�U>�|�[�����<�I=�"x�jy����T~WZ'��e�TC�i���a�d8�(R���S�9���޽���fx�WNdi��&�S
�-]l'-���L*^U�"s-�PC���SB��f���<������$yo�����V���R&��B2�V�r�YF�R>��(�F^I��n,K���+�(��[��y�ˉ�$-�8$Xw��#/���(����B�fiYz.���Z1�Z<v�;�y���zk���~�%���4y}kN�E��?ɍ/�t3��p`��M?����	D1w,o-�=�{'�������/�Qo�n��k\T���#o-�=�{w�ws�1�w�~k~��Yȁ7��]��[�x������hw^R���EJE�WrF�r��JL@�T~֓Hd{s_��B��n��ﵴ<:,t�Yh%�'����.D,���SMn(��8��u�Yh��"'�ۃ��3�2ў�V� ʹ&h�p�-�V^K��.��_�#Rh��A�5,�~K���K���Ϋ��mc��Bcw^�J*u�뙼H��B8����y9��u�Br>��ˣ��ہ���Z��������y{k߱�M�%� �s^;��[�x���V*�c8~���[�x���K���w��&�o-�=�����}�F~��&o-�Ia��Ε���2Nyk���^黿���N:?R�Dϭ��e{�X�������~��%\���k�u�M��lє��8W����}.z04zv4o%�Т��qڡ���o��*��Y�]Wzv(:4�>j�E��F+�Lt���H�~:u4:�h��F-�1���à'�y-�F6��C̡�}m�eq������6��pd�
-�<�����ɾAZh�l9�<z6��EZh�fa�l�ؿNZheߣlx#]��wb{k�ui��`(�9��ƾ���~m�ڙAs�+K�[a��28��ȴBc.3���zkN�?��Χ��pҖx��Q�4��N�č�ٗ�[��X�;u#�7u�' E��|(�u3oƁ����^'�I�M�'�����[�pR�7'uj��s�E
���o{��r>j���f���TN*�#����@�i��ݧ�Z���K�c��c��Z؜{�w�"��L ��
�>��iaBo""���C��K{�Z^�Sh�Nrp��or�H��0���	A�Zh�Deݛ��y��|=�]T��цd�=�c�)��!pմ�th��Sh!�r���
~^[n�51Ј}f�l�p'O-c��W�����J9��2F��CĨ#�
ROw�e�<��c�I�I^ܗ�j#��ƴhNh��.��2�w��ޛ�;LY2�}�ZF�ft�h:���9�G�e��X�Ea�Ui�N6�G=E��1�my��S3j�;�{5C����e,j�;�{)']�"�c���Z�S%������]�Qq֑Tah�7�_��ʮ*�$��!N�Q-�⛝B\���߅X��b�'���''��/��B��_�qaV�j�b�݄fOk��|�B�I��!��na��Z�5��0mĈ ������  !κ��{Mq���Bӻ����w�X�E�����b:�jH=��"J����.́��]]�!�6^��)x�a�r�U�yv꼲(?�uL�i&����_���(��Hn�#�o���)�L�u5�lr���#��o��͑���hE|Y!��HL-�^�)�3�j/*��:i��|Y���j�����k���]򈝉�(�z�f�jbd�ja��V*��⢱ySR���b�=���p�+�kZ�؆Vw4��(����Qh��Q$�	��h�u�V���Е�F�i���D�2iۉ���`�Bkd3:��e�K�C�3k�hMtkh��/6Q����5g�H��F�?Q���֔"�&"5p�s�
�w��\E��	�����Ѵ��YS��׳NX�1�L��ǲv���6$|Ci'/~.c�S��_�I�81�0D�Nvޏ����m��N�vq��}��"�7O�B�&���
[ҋ4h&Mh	��]�u#���nHߜ.t._ �V��"M�j����]�B�n���|����)� -�"���sڨZ�,)� Mz�j����۩>K
-��4r$�g�XѻIJ�E{��G�q�;��b)�|M'��)��=n�V��k���kh��eh�B��
�����4-z�*�H.-:�R:.��v`W�Eƹff�t�$�7_��Uh�Lri   ���H�I_��^��D�ă�����J���xth�
�Qw��,ԹGP:vv��S��f��БHH��Y�i�b�� ����H[�H/Lљ�f&C�G�n�=�Hi�FfXj�,E�0�|3V��|�Y:�4ֳ���]�.�"�0*E�#u6���Ѡ��{>K-�{�(�q�L㽧I�Z9IA�®ij�7j-�:����i����k�E�[�$j�͞��D��ԙ	�ox'����pI<���k؅=�G+�҂���B+�IH��s ����Z�ЊW�
�'�JrC��.�n#���`��ɫ<1مV(��	U(��ݚ�S����p��a��ٲ��o����7/�b���(~Tv�S��ɋ��S>�9�ڷH÷��O
�d#f8�ӊ��t��,;T]�n�:�H���8�R#��Mןu�GfR$�Fd��z֙E�.6H����}��"�'�,Q�\�No���*�	�1���Ɔg.����p ���[�*~�h�B+�-�jo�̼�d�B�� v<(a���:�{���Q�ׂ[h��NZ�fxa|�o�/A�B+�n�n#_o����>7)��R��i��]��[�BS��u���7�%F�����-�0��?�x�}�
ZXK�����Œz~�B���/��ì���8�I�dh�m4YV��Z�fT�ۨ�̞0g�_-C�M��?�ø��G�Z���<�%d���h�N�~�Mǹ�������fسH���\�/_��ehF�sa��d�ӝt}��@[~�'�j��I�H'��'0�;�	�/k)V*/��u���Vh���X��Vǐ�>m��i�,�����-tta嘤�������
5����쟙��x�Z�8'fŭ?�28pԘ��p�"d-����@/�ҧ��A�i��'Ph�r�L۷2��7ncV/�p�#��`�/3'-��qv��$ ���Bǩ�<]���j/�0�4$O߶���X�Z�Fcu�f�H��}=��26�sљܒ����7��el����5b��.��\�Z�Fc�\H�S��R�R�/E�1��7+�U��A��ǣ_-c���/~l�Y�;c<��26�s�����`x�G�Z��qZLꤛP�P��F7�~����n~���)�C�;��~����&�{���w埅Vh잡�q�J��W�:�1�,�:�纱.[�e-�Yh����^��oRD���:�"�a)�m~-�0���V,DTAMO�Zh�(}�u����fBe��B+%�0&��X�g�2�M�	/��W��v�B+4V��0+{�jI��Z�@y�r�&;V��Rhd��P%7se|���.~G��a��F�j��d�	A�<�ѯ�qp���(�Z�������e�Tn~_D��]��K1y�j'��G`�nĸ*�,��j���^"��S���9�"�|s}E�1�v���4P_3�DI�;�Z�z�4�:ì,v���e��_-��!\32�ũ��'�tZ��X(Ò�3�!5��GW�z�yc��������
;����,���B�c���k�@^�q%�Vܺ
���D�O��=7v���B+���bO{_��Uh�}�L`߀�ྼñ�Z��m��Þ��@{tZ�R	l����#K�T-���˽��"��?��V�at.�����/�h��z�����m�n.Zh!vT/v�h��<�~���r��[�K��߅Я�qQ�ͯ�l���,.���W˸��&�����J�m�~����ݜ!�氐��[_-�>6����e�~���ro
��`�n�NJ+RL �j!��#�k�|����ĭ��N�s��j7},{�:Sl1�^Я�q�{��gX�-(Cs������7���ݕ{Z�X�"����j�-|�	���(���7n~tZ�� �N���;���`!��%b�C��[�?����C������=}ڨ�Њ�]���}�]��0f�B+��J�.���+������Њ������,�K�	�Ob�)���^���Q������2p
-h�`��H.?F�����Ђ|.�Xs�ݷ�=���y����((     