--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO anttoon;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: anttoon
--

CREATE SEQUENCE auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO anttoon;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anttoon
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO anttoon;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: anttoon
--

CREATE SEQUENCE auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO anttoon;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anttoon
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO anttoon;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: anttoon
--

CREATE SEQUENCE auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO anttoon;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anttoon
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO anttoon;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO anttoon;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: anttoon
--

CREATE SEQUENCE auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO anttoon;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anttoon
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: anttoon
--

CREATE SEQUENCE auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO anttoon;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anttoon
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO anttoon;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: anttoon
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO anttoon;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anttoon
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO anttoon;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: anttoon
--

CREATE SEQUENCE django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO anttoon;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anttoon
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO anttoon;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: anttoon
--

CREATE SEQUENCE django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO anttoon;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anttoon
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO anttoon;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: anttoon
--

CREATE SEQUENCE django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO anttoon;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anttoon
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO anttoon;

--
-- Name: methodics_methodics; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE methodics_methodics (
    id integer NOT NULL,
    name character varying(200),
    "desc" text,
    active boolean NOT NULL,
    slug character varying(200),
    img character varying(100)
);


ALTER TABLE methodics_methodics OWNER TO anttoon;

--
-- Name: methodics_methodics_id_seq; Type: SEQUENCE; Schema: public; Owner: anttoon
--

CREATE SEQUENCE methodics_methodics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE methodics_methodics_id_seq OWNER TO anttoon;

--
-- Name: methodics_methodics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anttoon
--

ALTER SEQUENCE methodics_methodics_id_seq OWNED BY methodics_methodics.id;


--
-- Name: portal_about; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE portal_about (
    id integer NOT NULL,
    header character varying(70),
    text text,
    active boolean NOT NULL
);


ALTER TABLE portal_about OWNER TO anttoon;

--
-- Name: portal_header_id_seq; Type: SEQUENCE; Schema: public; Owner: anttoon
--

CREATE SEQUENCE portal_header_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE portal_header_id_seq OWNER TO anttoon;

--
-- Name: portal_header_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anttoon
--

ALTER SEQUENCE portal_header_id_seq OWNED BY portal_about.id;


--
-- Name: portal_news; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE portal_news (
    id integer NOT NULL,
    header character varying(120),
    text text,
    img character varying(100),
    active boolean NOT NULL
);


ALTER TABLE portal_news OWNER TO anttoon;

--
-- Name: portal_news_id_seq; Type: SEQUENCE; Schema: public; Owner: anttoon
--

CREATE SEQUENCE portal_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE portal_news_id_seq OWNER TO anttoon;

--
-- Name: portal_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anttoon
--

ALTER SEQUENCE portal_news_id_seq OWNED BY portal_news.id;


--
-- Name: price_serviceprice; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE price_serviceprice (
    id integer NOT NULL,
    name character varying(70),
    "desc" text,
    price integer,
    active boolean NOT NULL,
    specialist_id integer,
    consult boolean NOT NULL,
    CONSTRAINT price_serviceprice_price_check CHECK ((price >= 0))
);


ALTER TABLE price_serviceprice OWNER TO anttoon;

--
-- Name: price_serviceprice_id_seq; Type: SEQUENCE; Schema: public; Owner: anttoon
--

CREATE SEQUENCE price_serviceprice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE price_serviceprice_id_seq OWNER TO anttoon;

--
-- Name: price_serviceprice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anttoon
--

ALTER SEQUENCE price_serviceprice_id_seq OWNED BY price_serviceprice.id;


--
-- Name: specialist_specialist; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE specialist_specialist (
    id integer NOT NULL,
    name character varying(100),
    image character varying(100),
    desc_short character varying(120),
    "desc" text,
    active boolean NOT NULL,
    consultation boolean NOT NULL
);


ALTER TABLE specialist_specialist OWNER TO anttoon;

--
-- Name: specialist_specialist_id_seq; Type: SEQUENCE; Schema: public; Owner: anttoon
--

CREATE SEQUENCE specialist_specialist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE specialist_specialist_id_seq OWNER TO anttoon;

--
-- Name: specialist_specialist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anttoon
--

ALTER SEQUENCE specialist_specialist_id_seq OWNED BY specialist_specialist.id;


--
-- Name: thumbnail_kvstore; Type: TABLE; Schema: public; Owner: anttoon
--

CREATE TABLE thumbnail_kvstore (
    key character varying(200) NOT NULL,
    value text NOT NULL
);


ALTER TABLE thumbnail_kvstore OWNER TO anttoon;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: methodics_methodics id; Type: DEFAULT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY methodics_methodics ALTER COLUMN id SET DEFAULT nextval('methodics_methodics_id_seq'::regclass);


--
-- Name: portal_about id; Type: DEFAULT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY portal_about ALTER COLUMN id SET DEFAULT nextval('portal_header_id_seq'::regclass);


--
-- Name: portal_news id; Type: DEFAULT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY portal_news ALTER COLUMN id SET DEFAULT nextval('portal_news_id_seq'::regclass);


--
-- Name: price_serviceprice id; Type: DEFAULT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY price_serviceprice ALTER COLUMN id SET DEFAULT nextval('price_serviceprice_id_seq'::regclass);


--
-- Name: specialist_specialist id; Type: DEFAULT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY specialist_specialist ALTER COLUMN id SET DEFAULT nextval('specialist_specialist_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add group	4	add_group
11	Can change group	4	change_group
12	Can delete group	4	delete_group
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add kv store	7	add_kvstore
20	Can change kv store	7	change_kvstore
21	Can delete kv store	7	delete_kvstore
22	Can add О компании	8	add_about
23	Can change О компании	8	change_about
24	Can delete О компании	8	delete_about
25	Can add Новость	9	add_news
26	Can change Новость	9	change_news
27	Can delete Новость	9	delete_news
28	Can add Специалист	10	add_specialist
29	Can change Специалист	10	change_specialist
30	Can delete Специалист	10	delete_specialist
31	Can add Наши услуги	11	add_methodics
32	Can change Наши услуги	11	change_methodics
33	Can delete Наши услуги	11	delete_methodics
34	Can add Услуги - Цены	12	add_serviceprice
35	Can change Услуги - Цены	12	change_serviceprice
36	Can delete Услуги - Цены	12	delete_serviceprice
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$bq1k7HcMPCwR$DMsem4d7x6rMITXxpjJEvYJYXZq4YCRZfSyB8eMtVVk=	2017-12-17 23:27:34.277+03	t	admin			aa@mm.ew	t	t	2017-11-26 02:26:26.779+03
2	pbkdf2_sha256$36000$sJ0vWH2waBqp$bLR7Qghuex3HlTQRxdYRHt3gnlxDlFFUS3Hw8Lua278=	2017-12-16 12:08:08.21+03	t	garry				t	t	2017-12-05 13:19:37+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-11-26 02:28:03.77+03	1	Specialist object	1	[{"added": {}}]	7	1
2	2017-11-26 02:29:06.387+03	2	Specialist object	1	[{"added": {}}]	7	1
3	2017-11-26 02:29:48.224+03	1	Specialist object	2	[{"changed": {"fields": ["image"]}}]	7	1
4	2017-11-26 02:29:56.918+03	2	Specialist object	3		7	1
5	2017-11-26 02:59:59.604+03	2	Иван Ургант - Телеведущий	1	[{"added": {}}]	7	1
6	2017-11-26 03:00:40.003+03	3	Елена Летучая - Блондиночка	1	[{"added": {}}]	7	1
7	2017-11-26 03:23:47.126+03	4	None - None	1	[{"added": {}}]	7	1
8	2017-11-26 03:24:17.366+03	3	Елена Летучая - Блондиночка	2	[{"changed": {"fields": ["image"]}}]	7	1
9	2017-11-26 03:24:28.125+03	2	Иван Ургант - Телеведущий	2	[{"changed": {"fields": ["image"]}}]	7	1
10	2017-11-26 03:24:41.393+03	3	Елена Летучая - Блондиночка	2	[{"changed": {"fields": ["image"]}}]	7	1
11	2017-11-26 03:25:27.644+03	4	Данил Данилыч - Электрик	2	[{"changed": {"fields": ["name", "desc_short", "desc"]}}]	7	1
12	2017-11-26 03:27:29.706+03	5	Петр Иванов - Крановщик	1	[{"added": {}}]	7	1
13	2017-11-26 15:36:00.254+03	1	Адаптивная физкультура	1	[{"added": {}}]	8	1
14	2017-11-26 15:38:14.311+03	2	Логопедический массаж	1	[{"added": {}}]	8	1
15	2017-11-26 15:44:22.719+03	5	Петр Иванов - Крановщик	2	[{"changed": {"fields": ["consultation"]}}]	7	1
16	2017-11-26 15:44:22.721+03	4	Данил Данилыч - Электрик	2	[{"changed": {"fields": ["consultation"]}}]	7	1
17	2017-11-26 15:44:22.724+03	3	Елена Летучая - Блондиночка	2	[{"changed": {"fields": ["consultation"]}}]	7	1
18	2017-11-26 15:44:22.727+03	2	Иван Ургант - Телеведущий	2	[{"changed": {"fields": ["consultation"]}}]	7	1
19	2017-11-26 15:44:22.731+03	1	Леонид Виницкий - Специалист Басист	2	[{"changed": {"fields": ["consultation"]}}]	7	1
20	2017-11-26 15:46:33.638+03	6	Евгений Кравец - логопедический массаж	1	[{"added": {}}]	7	1
21	2017-11-26 15:47:44.258+03	7	Михаил Жванецкий - Адаптивная физическая культура	1	[{"added": {}}]	7	1
22	2017-11-28 14:35:47.058+03	1	Адаптивная физкультура (1 час)	1	[{"added": {}}]	9	1
23	2017-11-28 14:37:08.292+03	1	Адаптивная физкультура (1 час)	2	[{"changed": {"fields": ["desc"]}}]	9	1
24	2017-11-28 14:44:22.539+03	2	Мобилизация периферических суставов (1 час)	1	[{"added": {}}]	9	1
25	2017-11-28 14:45:20.331+03	3	Логопед (30 минут)	1	[{"added": {}}]	9	1
26	2017-11-28 14:45:41.35+03	4	Логопед (1 час)	1	[{"added": {}}]	9	1
27	2017-11-28 15:07:18.148+03	5	Петр Иванов - Крановщик	2	[{"changed": {"fields": ["consultation"]}}]	7	1
28	2017-11-28 15:07:18.151+03	4	Данил Данилыч - Электрик	2	[{"changed": {"fields": ["consultation"]}}]	7	1
29	2017-11-28 15:07:18.153+03	3	Елена Летучая - Блондиночка	2	[{"changed": {"fields": ["consultation"]}}]	7	1
30	2017-11-28 15:07:18.155+03	2	Иван Ургант - Телеведущий	2	[{"changed": {"fields": ["consultation"]}}]	7	1
31	2017-11-28 15:07:18.157+03	1	Леонид Виницкий - Специалист Басист	2	[{"changed": {"fields": ["consultation"]}}]	7	1
32	2017-11-28 15:16:36.564+03	8	Иван Жадан - Детский психолог	1	[{"added": {}}]	7	1
33	2017-11-28 15:17:51.683+03	5	Консультации детского психолога	1	[{"added": {}}]	10	1
34	2017-11-28 15:25:06.04+03	5	Консультации детского психолога	2	[{"changed": {"fields": ["consult"]}}]	9	1
35	2017-11-28 15:25:22.72+03	5	Консультации детского психолога	2	[{"changed": {"fields": ["specialist"]}}]	9	1
36	2017-11-28 15:26:14.873+03	5	Консультации детского психолога	2	[{"changed": {"fields": ["desc"]}}]	9	1
37	2017-11-28 15:35:55.77+03	6	Консультация терапевта	1	[{"added": {}}]	9	1
38	2017-11-28 16:44:32.274+03	4	Логопед (1 час)	2	[{"changed": {"fields": ["specialist", "consult"]}}]	9	1
39	2017-11-28 20:37:29.711+03	7	Масаж	1	[{"added": {}}]	9	1
40	2017-11-28 20:37:47.722+03	7	Масаж	2	[{"changed": {"fields": ["consult"]}}]	9	1
41	2017-11-28 20:38:03.979+03	7	Масаж	2	[{"changed": {"fields": ["specialist"]}}]	9	1
42	2017-11-29 01:44:44.895+03	4	Данил Данилыч - Электрик	2	[{"changed": {"fields": ["consultation"]}}]	7	1
43	2017-11-29 01:44:51.667+03	4	Данил Данилыч - Электрик	2	[{"changed": {"fields": ["consultation"]}}]	7	1
44	2017-11-29 01:45:16.616+03	5	Петр Иванов - Крановщик	2	[{"changed": {"fields": ["consultation"]}}]	7	1
45	2017-11-29 01:45:16.619+03	4	Данил Данилыч - Электрик	2	[{"changed": {"fields": ["consultation"]}}]	7	1
46	2017-11-29 01:45:16.622+03	3	Елена Летучая - Блондиночка	2	[{"changed": {"fields": ["consultation"]}}]	7	1
47	2017-11-29 01:45:16.626+03	2	Иван Ургант - Телеведущий	2	[{"changed": {"fields": ["consultation"]}}]	7	1
48	2017-11-29 01:45:16.629+03	1	Леонид Виницкий - Специалист Басист	2	[{"changed": {"fields": ["consultation"]}}]	7	1
49	2017-12-01 16:47:00.94+03	1	О насСтроительство реабил	1	[{"added": {}}]	11	1
50	2017-12-01 16:52:10.185+03	1	О нас Строительство реабил	2	[]	11	1
51	2017-12-01 17:14:15.729+03	1	Новое Оборудован	1	[{"added": {}}]	12	1
52	2017-12-01 17:15:32.738+03	2	Наш Центр Расшир	1	[{"added": {}}]	12	1
53	2017-12-03 21:05:39.557+03	3	Специалисты высш	1	[{"added": {}}]	12	1
54	2017-12-03 21:17:10.384+03	4	Новая новсть	1	[{"added": {}}]	12	1
55	2017-12-03 22:10:18.275+03	1	Новое Оборудован	2	[{"changed": {"fields": ["text"]}}]	12	1
56	2017-12-03 23:42:32.382+03	4	Новая новсть	2	[{"changed": {"fields": ["img"]}}]	12	1
57	2017-12-03 23:45:21.931+03	4	Новая новсть	2	[{"changed": {"fields": ["img"]}}]	12	1
58	2017-12-03 23:48:15.379+03	3	Специалисты высш	2	[{"changed": {"fields": ["img"]}}]	12	1
59	2017-12-03 23:48:30.913+03	2	Наш Центр Расшир	2	[{"changed": {"fields": ["img"]}}]	12	1
60	2017-12-03 23:50:12.879+03	1	Новое Оборудован	2	[{"changed": {"fields": ["img"]}}]	12	1
61	2017-12-04 00:45:11.67+03	3	Новая методика	1	[{"added": {}}]	8	1
62	2017-12-05 13:19:37.333+03	2	garry	1	[{"added": {}}]	3	1
63	2017-12-05 13:20:10.308+03	2	garry	2	[{"changed": {"fields": ["is_staff", "is_superuser"]}}]	3	1
64	2017-12-06 17:16:36.731+03	5	Петр Иванов - Крановщик	2	[{"changed": {"fields": ["active"]}}]	7	1
65	2017-12-10 17:48:27.826+03	2	Иро Поли	1	[{"added": {}}]	11	1
66	2017-12-10 17:48:45.289+03	3	Иро Поли	1	[{"added": {}}]	11	1
67	2017-12-10 17:49:15.246+03	4	Иро Поли	1	[{"added": {}}]	11	1
68	2017-12-10 18:09:22.959+03	2	Иро Поли	2	[{"changed": {"fields": ["active"]}}]	11	1
69	2017-12-13 20:38:18.903+03	9	Иванченко Светлана Анатольевна - Психолог, педагог.	1	[{"added": {}}]	7	2
70	2017-12-13 20:52:21.258+03	5	 Центр детского разви	1	[{"added": {}}]	11	2
71	2017-12-13 20:57:34.635+03	4	Психолог коррекционный педагог (занятия с элементами АВА-терапии)	1	[{"added": {}}]	8	2
72	2017-12-13 21:05:44.796+03	9	Иванченко Светлана Анатольевна - Психолог, педагог.	2	[{"changed": {"fields": ["image"]}}]	7	1
73	2017-12-13 22:00:19.448+03	5	 Центр детского разви	2	[{"changed": {"fields": ["text"]}}]	11	2
74	2017-12-14 00:20:16.203+03	5	s <p>Центр детского ра	2	[{"changed": {"fields": ["header", "text"]}}]	11	1
75	2017-12-14 00:22:09.844+03	5	<p>Центр детского ра	2	[{"changed": {"fields": ["header"]}}]	11	1
76	2017-12-14 01:16:04.217+03	5	<h3 style="color:#aa	2	[{"changed": {"fields": ["text"]}}]	11	1
77	2017-12-14 01:17:29.663+03	5	<p>Центр детского ра	2	[{"changed": {"fields": ["text"]}}]	11	1
78	2017-12-14 01:18:02.676+03	5	<p>Центр детского ра	2	[{"changed": {"fields": ["text"]}}]	11	1
79	2017-12-14 01:21:12.15+03	1	О нас Строительство реабил	2	[{"changed": {"fields": ["active"]}}]	11	2
80	2017-12-15 19:06:07.121+03	9	Иванченко Светлана Анатольевна - Психолог,Коррекционный педагог.	2	[{"changed": {"fields": ["desc_short"]}}]	7	2
81	2017-12-15 19:24:44.518+03	8	Пярт Анна Николаевна - Логопед. Дефектолог	2	[{"changed": {"fields": ["name", "desc_short", "desc"]}}]	7	2
82	2017-12-15 19:33:36.595+03	7	Белухина Мария - Психолог	2	[{"changed": {"fields": ["name", "desc_short", "desc"]}}]	7	2
83	2017-12-15 19:33:39.903+03	7	Белухина Мария - Психолог	2	[]	7	2
84	2017-12-15 19:36:37.525+03	9	Иванченко Светлана Анатольевна - Психолог,Коррекционный педагог.	2	[{"changed": {"fields": ["desc"]}}]	7	2
85	2017-12-15 19:38:39.913+03	9	Иванченко Светлана Анатольевна - Психолог,Коррекционный педагог.	2	[{"changed": {"fields": ["desc"]}}]	7	2
86	2017-12-15 19:39:28.204+03	8	Пярт Анна Николаевна - Логопед. Дефектолог	2	[{"changed": {"fields": ["desc"]}}]	7	2
87	2017-12-15 19:40:14.927+03	7	Белухина Мария - Психолог	2	[{"changed": {"fields": ["desc"]}}]	7	2
88	2017-12-15 19:40:52.898+03	9	Иванченко Светлана Анатольевна - Психолог,Коррекционный педагог.	2	[]	7	2
89	2017-12-15 19:42:09.02+03	8	Пярт Анна Николаевна - Логопед. Дефектолог	2	[{"changed": {"fields": ["desc"]}}]	7	2
90	2017-12-15 19:43:37.355+03	6	None - адаптивная физкультура	2	[{"changed": {"fields": ["name", "desc_short", "desc"]}}]	7	2
91	2017-12-15 19:43:58.467+03	4	Данил Данилыч - Электрик	2	[{"changed": {"fields": ["active"]}}]	7	2
92	2017-12-15 19:43:58.554+03	3	Елена Летучая - Блондиночка	2	[{"changed": {"fields": ["active"]}}]	7	2
93	2017-12-15 19:43:58.635+03	2	Иван Ургант - Телеведущий	2	[{"changed": {"fields": ["active"]}}]	7	2
94	2017-12-15 19:43:58.714+03	1	Леонид Виницкий - Специалист Басист	2	[{"changed": {"fields": ["active"]}}]	7	2
95	2017-12-15 20:40:31.309+03	5	<p>Центр&nbsp;развит	2	[{"changed": {"fields": ["text"]}}]	11	2
96	2017-12-15 20:42:40.648+03	4	Психолог коррекционный педагог (занятия с элементами АВА-терапии)	2	[]	8	2
97	2017-12-15 20:50:57.553+03	3	Развивающие занятия в группах раннего развития	2	[{"changed": {"fields": ["name", "desc"]}}]	8	2
98	2017-12-15 20:50:57.911+03	3	Развивающие занятия в группах раннего развития	2	[]	8	2
99	2017-12-15 21:02:59.285+03	9	Иванченко Светлана Анатольевна - Психолог. Коррекционный педагог.	2	[{"changed": {"fields": ["desc_short", "desc"]}}]	7	2
100	2017-12-15 21:03:37.992+03	8	Пярт Анна Николаевна - Логопед. Дефектолог	2	[{"changed": {"fields": ["image"]}}]	7	2
101	2017-12-15 21:05:48.781+03	9	Иванченко Светлана Анатольевна - Психолог. Коррекционный педагог.	2	[]	7	2
102	2017-12-15 21:10:21.607+03	5	Петр Иванов - Крановщик	2	[{"changed": {"fields": ["active"]}}]	7	2
103	2017-12-15 21:12:07.17+03	8	Пярт Анна Николаевна - Логопед. Дефектолог	2	[{"changed": {"fields": ["image"]}}]	7	2
104	2017-12-15 21:12:35.035+03	5	Петр Иванов - Крановщик	2	[{"changed": {"fields": ["active"]}}]	7	2
105	2017-12-15 21:17:31.429+03	6	Консультация логопеда	2	[{"changed": {"fields": ["name", "specialist", "desc", "price"]}}]	9	2
106	2017-12-15 21:18:39.169+03	4	Логопед (1 час)	2	[{"changed": {"fields": ["specialist", "price"]}}]	9	2
107	2017-12-15 21:22:33.208+03	7	групповые занятия (6-12 мес., 30-40 мин.)	2	[{"changed": {"fields": ["name", "specialist", "price"]}}]	9	2
108	2017-12-15 21:23:57.461+03	8	групповые развивающие занятия (от года, 60 мин.)	1	[{"added": {}}]	9	2
109	2017-12-15 21:24:25.051+03	7	групповые развивающие занятия (6-12 мес., 30-40 мин.)	2	[{"changed": {"fields": ["name"]}}]	9	2
110	2017-12-15 21:25:03.502+03	1	Адаптивная физкультура (1 час)	2	[{"changed": {"fields": ["price"]}}]	9	2
111	2017-12-15 21:25:18.674+03	3	Логопед (30 минут)	2	[{"changed": {"fields": ["active"]}}]	9	2
112	2017-12-15 21:25:18.711+03	2	Мобилизация периферических суставов (1 час)	2	[{"changed": {"fields": ["active"]}}]	9	2
113	2017-12-15 21:33:57.893+03	5	<p>Центр&nbsp;развит	2	[{"changed": {"fields": ["text"]}}]	11	2
114	2017-12-15 23:43:05.973+03	5	<p>Центр&nbsp;развит	2	[{"changed": {"fields": ["text"]}}]	11	2
115	2017-12-16 12:21:54.531+03	5	<p>Центр&nbsp;развит	2	[{"changed": {"fields": ["text"]}}]	11	2
116	2017-12-16 12:25:22.683+03	3	занятие с психологом (40-60 мин)	2	[{"changed": {"fields": ["name", "specialist", "price"]}}]	9	2
117	2017-12-16 12:25:40.61+03	3	занятие с психологом (40-60 мин)	2	[{"changed": {"fields": ["desc"]}}]	9	2
118	2017-12-16 12:26:25.603+03	4	занятие с логопед (40-60 мин)	2	[{"changed": {"fields": ["name"]}}]	9	2
119	2017-12-16 12:28:07.08+03	4	занятие с логопедом (40-60 мин)	2	[{"changed": {"fields": ["name"]}}]	9	2
120	2017-12-16 12:28:29.429+03	1	Адаптивная физкультура (1 час)	2	[{"changed": {"fields": ["active"]}}]	9	2
121	2017-12-16 12:40:56.942+03	8	групповые развивающие занятия (от года, 60 мин.)	2	[{"changed": {"fields": ["price", "consult"]}}]	9	2
122	2017-12-16 12:40:56.98+03	7	групповые развивающие занятия (6-12 мес., 30-40 мин.)	2	[{"changed": {"fields": ["price"]}}]	9	2
123	2017-12-16 12:52:48.638+03	3	Развивающие занятия в группах раннего развития	2	[{"changed": {"fields": ["desc"]}}]	8	2
124	2017-12-16 13:07:29.803+03	2	Логопед Дефектолог	2	[{"changed": {"fields": ["name", "desc"]}}]	8	2
125	2017-12-16 13:08:20.347+03	8	Пярт Анна Николаевна - Логопед. Дефектолог	2	[{"changed": {"fields": ["desc"]}}]	7	2
126	2017-12-16 13:09:14.19+03	2	Логопед Дефектолог	2	[{"changed": {"fields": ["desc"]}}]	8	2
127	2017-12-16 13:15:05.037+03	4	Психолог. Коррекционный педагог	2	[{"changed": {"fields": ["name", "desc"]}}]	8	2
128	2017-12-16 13:16:57.758+03	2	Логопед Дефектолог	2	[{"changed": {"fields": ["desc"]}}]	8	2
129	2017-12-16 16:57:11.02+03	9	Иванченко Светлана Анатольевна - Психолог. Коррекционный педагог.	2	[{"changed": {"fields": ["image"]}}]	7	1
130	2017-12-16 16:57:46.352+03	6	None - адаптивная физкультура	2	[{"changed": {"fields": ["image"]}}]	7	1
131	2017-12-16 16:57:58.491+03	7	Белухина Мария - Психолог	2	[{"changed": {"fields": ["image"]}}]	7	1
132	2017-12-16 16:58:15.958+03	8	Пярт Анна Николаевна - Логопед. Дефектолог	2	[{"changed": {"fields": ["image"]}}]	7	1
133	2017-12-17 23:08:43.782+03	1	Адаптивная физкультура	2	[{"changed": {"fields": ["active"]}}]	8	2
134	2017-12-17 23:09:45.948+03	8	Пярт Анна Николаевна - Логопед. Дефектолог	2	[{"changed": {"fields": ["consultation"]}}]	7	2
135	2017-12-17 23:09:46.055+03	7	Белухина Мария - Психолог	2	[{"changed": {"fields": ["consultation"]}}]	7	2
136	2017-12-17 23:09:46.143+03	6	None - адаптивная физкультура	2	[{"changed": {"fields": ["active", "consultation"]}}]	7	2
137	2017-12-17 23:09:53.78+03	9	Иванченко Светлана Анатольевна - Психолог. Коррекционный педагог.	2	[{"changed": {"fields": ["consultation"]}}]	7	2
138	2017-12-17 23:16:31.963+03	3	Развивающие занятия в группах раннего развития	2	[]	8	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	user
4	auth	group
5	contenttypes	contenttype
6	sessions	session
7	thumbnail	kvstore
8	portal	about
9	portal	news
10	specialist	specialist
11	methodics	methodics
12	price	serviceprice
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-12-18 02:42:22.538574+03
2	auth	0001_initial	2017-12-18 02:42:22.63108+03
3	admin	0001_initial	2017-12-18 02:42:22.671626+03
4	admin	0002_logentry_remove_auto_add	2017-12-18 02:42:22.692578+03
5	contenttypes	0002_remove_content_type_name	2017-12-18 02:42:22.739879+03
6	auth	0002_alter_permission_name_max_length	2017-12-18 02:42:22.750641+03
7	auth	0003_alter_user_email_max_length	2017-12-18 02:42:22.76274+03
8	auth	0004_alter_user_username_opts	2017-12-18 02:42:22.775266+03
9	auth	0005_alter_user_last_login_null	2017-12-18 02:42:22.790014+03
10	auth	0006_require_contenttypes_0002	2017-12-18 02:42:22.79221+03
11	auth	0007_alter_validators_add_error_messages	2017-12-18 02:42:22.808201+03
12	auth	0008_alter_user_username_max_length	2017-12-18 02:42:22.82765+03
13	methodics	0001_initial	2017-12-18 02:42:22.840617+03
14	methodics	0002_auto_20171126_1230	2017-12-18 02:42:22.853042+03
15	methodics	0003_auto_20171128_1201	2017-12-18 02:42:22.888976+03
16	methodics	0004_methodics_img	2017-12-18 02:42:22.894647+03
17	methodics	0005_auto_20171217_2342	2017-12-18 02:42:22.899777+03
18	portal	0001_initial	2017-12-18 02:42:22.908753+03
19	portal	0002_auto_20171201_1343	2017-12-18 02:42:22.933882+03
20	portal	0003_news	2017-12-18 02:42:22.944392+03
21	portal	0004_news_active	2017-12-18 02:42:22.956286+03
22	portal	0005_auto_20171213_1830	2017-12-18 02:42:22.966979+03
23	specialist	0001_initial	2017-12-18 02:42:22.976747+03
24	specialist	0002_auto_20171125_2340	2017-12-18 02:42:22.996435+03
25	specialist	0003_auto_20171126_0017	2017-12-18 02:42:23.003866+03
26	specialist	0004_auto_20171126_1243	2017-12-18 02:42:23.019722+03
27	price	0001_initial	2017-12-18 02:42:23.03464+03
28	price	0002_consultprice	2017-12-18 02:42:23.051489+03
29	price	0003_auto_20171128_1222	2017-12-18 02:42:23.087798+03
30	price	0004_serviceprice_consult	2017-12-18 02:42:23.10044+03
31	price	0005_auto_20171213_1826	2017-12-18 02:42:23.110669+03
32	price	0006_remove_serviceprice_number	2017-12-18 02:42:23.119682+03
33	sessions	0001_initial	2017-12-18 02:42:23.129419+03
34	thumbnail	0001_initial	2017-12-18 02:42:23.139622+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
0trnsftw96p0tft2abu0bih8zd3f3vgq	ZWQ2NzQyYTY5YTdmYmRhNmYwMDU0NjM4ODVkZjMxN2VhODdkMGNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNWMzZWYwNTkwYjBmOTY3NTQ5NjAzMGYxMWNhYTllODE5YjFiM2E1In0=	2017-12-19 13:17:25.315+03
2hokavdlzpnjrv2bs0e8q0fki178gfb7	NmM1NjQ4MWNmMGM1MzY2NGE0NmRhY2I4N2YwZjYwYWM0MWQ5Y2NlMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjNiYWY0YWY0MzFiMDMxMGQ0NDFmZjFiZjJhOGRkY2IzMmFmYmFmYWQiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-12-30 16:56:29.692+03
2jj8p4bqpr3yf9alfuhcq89aj4zxlsxe	ZTQ0ZjU3MmIyMmVhNzJjMDljOTE2ZTY4MDA1Y2ZlM2Q1NjUwMWM4OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzgxZGVkYjI2NDFkMmFjODE4ZDcyYjMxZGUxZDZhZTc3OTY1MjY4MyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-12-20 17:16:12.834+03
4gv4ouc9z5mqooju3b7noe3ee1b21eot	ZDExMDMxZTNhMzdjOWUxZjYxNzM3MGE1MTk5NTg2YzJjZDY2NzY1Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2JhZjRhZjQzMWIwMzEwZDQ0MWZmMWJmMmE4ZGRjYjMyYWZiYWZhZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-28 00:16:06.869+03
5173ht9y6ult05l5bztmezsezlpmqwy0	ZjJjN2JhZDM2YmRhYTVhMDJmMGNiMWFmNmIwNmQxYzZlZjdkYTNjODp7Il9hdXRoX3VzZXJfaGFzaCI6IjM4MWRlZGIyNjQxZDJhYzgxOGQ3MmIzMWRlMWQ2YWU3Nzk2NTI2ODMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-27 20:22:43.296+03
9vme02gju1k9xutrxntfdyt4r5y0jmhy	NmYzNmY5MWIwNThjNGQwODQxM2Y5YjkzMGVkOGU0NjA3ODY3ZmM2ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmFmNGFmNDMxYjAzMTBkNDQxZmYxYmYyYThkZGNiMzJhZmJhZmFkIn0=	2017-12-28 01:12:40.547+03
frfarq9lxn62sx07gon83z5kwyfzo3ke	Y2EyODI5MTExODUyMjE2OWI0YjQ3NGFjOGZkMTk1ZGEyZmNkYWVhZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmNWMzZWYwNTkwYjBmOTY3NTQ5NjAzMGYxMWNhYTllODE5YjFiM2E1In0=	2017-12-18 00:43:58.831+03
gpfhbj1fxxmjfo5dpen4tum8ifbqrhws	NmM1NjQ4MWNmMGM1MzY2NGE0NmRhY2I4N2YwZjYwYWM0MWQ5Y2NlMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjNiYWY0YWY0MzFiMDMxMGQ0NDFmZjFiZjJhOGRkY2IzMmFmYmFmYWQiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-12-31 23:27:34.297+03
idti5yb7mrqg6bodj9cuyb141u4hqp8s	Y2EyODI5MTExODUyMjE2OWI0YjQ3NGFjOGZkMTk1ZGEyZmNkYWVhZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmNWMzZWYwNTkwYjBmOTY3NTQ5NjAzMGYxMWNhYTllODE5YjFiM2E1In0=	2017-12-10 02:26:47.823+03
lj1xiiivhw75o5ttxqzq7r7gon02821j	ZjNjODU4ZDY3MTZkYTNjMWE1ZmRiNzRiMzYyZjhiNjFjZDIyMTk1ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjVjM2VmMDU5MGIwZjk2NzU0OTYwMzBmMTFjYWE5ZTgxOWIxYjNhNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-12-12 14:34:33.016+03
qgyvdzr00dfuqo0ryiyd2cne91w1zd40	YTEwNzkxMmMwOTA5OWZhYWIwNTQxYjVmY2JkZDUwZTk3MjkyMzlkZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2JhZjRhZjQzMWIwMzEwZDQ0MWZmMWJmMmE4ZGRjYjMyYWZiYWZhZCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-12-27 23:42:01.173+03
ryzq8s5yej5rui4nikkbp0s4ywxr8rqi	ODYzZmQ5ZDkwYWVhNjM2NmE2NDk2ZDRiNTBiZGY5YmUzNjFiYjk0ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzgxZGVkYjI2NDFkMmFjODE4ZDcyYjMxZGUxZDZhZTc3OTY1MjY4MyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-24 18:08:53.914+03
vrcujttjq6i9mc1flsytyizb960btg2o	Y2M2OWY3Y2M2M2RmMWQ5NmVmODE4ODU3NGYyOGVjNDA2MjI2NGNhMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImZkZTBhYzc2ZTE4ZjBhNTFhNzkyZjc1MGE5OTcxNDI4ODRiZmYwMTUiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-12-30 12:08:08.23+03
w8pfgyuw68ysmj67aoougty6bjz38qt3	ZWQ2NzQyYTY5YTdmYmRhNmYwMDU0NjM4ODVkZjMxN2VhODdkMGNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNWMzZWYwNTkwYjBmOTY3NTQ5NjAzMGYxMWNhYTllODE5YjFiM2E1In0=	2017-12-12 20:36:46.243+03
wgdsfha98hvyr0lgodnnsw991vqabpac	NmMzYzJjYjJjODI4MDRlOTQ1ZjU4M2VmMzNhN2U2ZDI1YTA0MThjNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImY1YzNlZjA1OTBiMGY5Njc1NDk2MDMwZjExY2FhOWU4MTliMWIzYTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-15 16:45:31.342+03
ylq7jodcywy7nyedsk4vln4lban9q8vp	MGFhYWQwNWYxMzkwZTBkZjljZTAxOTY0YTFkMzlmMWIyZTU3N2Q2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImE1NzlmODFkNWVjNDA3Y2Y1NmQ5ZjYwMDg3N2M3NTljYzQyYWU0Y2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2017-12-27 20:27:19.489+03
\.


--
-- Data for Name: methodics_methodics; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY methodics_methodics (id, name, "desc", active, slug, img) FROM stdin;
1	Адаптивная физкультура	Адаптивная физическая культура (сокр. АФК)  — это комплекс мер спортивно-оздоровительного характера, направленных на реабилитацию и адаптацию к нормальной социальной среде людей с ограниченными возможностями, преодоление психологических барьеров, препятствующих ощущению полноценной жизни, а также сознанию необходимости своего личного вклада в социальное развитие общества.(материал из Википедии)	f	adaptivnaya-fizkultura	
2	Логопед Дефектолог	Работа с детьми от 2 лет, с различными нарушениями речи. Занятия по коррекции дисграфии, дислексии, дизорфографии. Все занятия проводятся с учетом индивидуальных особенностей ребенка, на основе авторских и современных методик, включая логопедический массаж, суджок терапию и другие интегрированные методики.	t	logopedicheskij-massazh	
3	Развивающие занятия в группах раннего развития	Групповые занятия с детьми 6-12 месяцев и старше. В программу входит:\r\n- знакомство, приветствие,\r\n- интелектуальный блок, работа с пособиями,\r\n- физкультминутка,\r\n- работа с неоформленными материалам,\r\n- музыкальная минутка,\r\n- творчество, сказака\r\n- заключение, прощание	t	novaya-metodika	methodics/logo.png
4	Психолог. Коррекционный педагог	Занятия с элементами АВА терапии.\r\nКоррекция задержки психоречевого развития;\r\nРабота с детьми, имеющими отставание в развитии (РАС, РДА, ЗПР и т. п.);\r\n Работа с детьми, имеющими нарушение внимания, памяти, поведения;\r\n Исправление нарушений чтения и письма.\r\n Диагностика детей дошкольного и школьного возраста.\r\n Расширение и обогащение словаря.\r\n Развитие фонематического слуха.\r\n Развитие связной речи.\r\n Подготовка детей к школе.\r\n Работа с детьми, имеющими индивидуальные психологические особенности.\r\n Диагностика и коррекция страхов, повышенной тревожности, агрессивности, неуверенности в \r\n себе, замкнутости.\r\n\r\nИндивидуальные консультации по вопросам детско-родительских отношений	t	psiholog-korrekcionnyj-pedagog-zanyatiya-s-elementami-ava-terapii	
\.


--
-- Data for Name: portal_about; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY portal_about (id, header, text, active) FROM stdin;
1	О нас	Строительство реабилитационного центра началось в 2011 году, после завершения всех орагнизационных согласований. Однако в 2012 году его пришлось приостановить из-за планов по разработке песчаного карьера в непосредственной близости от будущего детского лагеря. Пыль, которая неминуемо бы распространялась на прилегающей территории, ставила крест на реабилитационных мероприятиях и стала угрозой остановки строительства.\r\n\r\nРоссийская общественность выступила с инициативой по переносу карьера на безопасное от лагеря расстояние. Дело грозило затянуться, но личное вмешательство прездиента РФ летом 2012 года позволило найти компромиссное решение. После этого строительство было успешно продолжено. 29 сентября 2013 года был сдан "под ключ" первый домик, и уже 14 мая 2015 года состоялось торжественное открытие центра.	f
2	Иро	Поли	f
3	Иро	Поли	f
4	Иро	Поли	f
5	\N	<p>Центр&nbsp;развития особых детей&nbsp;&laquo;Крылья&raquo;. Мы рады приветствовать Вас на нашем сайте. Наш центр оказывает помощь детям с растройствами аутистического спектра, задержкой психоречевого развития, алалией, генетическими синдромами, синдромом дефецита внимания с гиперактивностью и другими проблемами. В центре работают квалифицированые специалисты, психологи, логопеды, дефектологи. Все занятия проводяться с учетом индивидуальных особенностей ребенка на основе авторских и современных коррекционных методик. Наша задача дать&nbsp;детям&nbsp;возможность взаимодействия с окружающим миром, помочь развить навыки&nbsp;самообслуживания.</p>\r\n\r\n<p>Кроме непосредственной работы с детьми наши специалисты проводят индивидуальные консультации и тренинги&nbsp;по вопросам детско-родительских отношений (родители с детьми, или же только родители), проведение психотерапевтических бесед с родителями сложных детей.</p>\r\n\r\n<p>Так же мы приглашаем на&nbsp;развивающие занятия всех деток в&nbsp; группы&nbsp;раннего развития от 6 месяцев до 6 лет. Занятия проводит психолог по&nbsp;авторской программе.</p>	t
\.


--
-- Data for Name: portal_news; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY portal_news (id, header, text, img, active) FROM stdin;
1	Новое Оборудование	Компания Neoden анонсировала выпуск нового установщика компонентов NeoDen3V, представляющего собой усовершенствованную модель TM245P. Устройство оборудовано камерой для инспекции компонентов, которой так сильно не хватало в предыдущей версии. Улучшение значительно увеличило точность установки компонентов и подняло NeoDen3V на ступень выше аналогичных установщиков.	news/logo_news4.jpg	t
2	Наш Центр Расширяется	Центр психологии и методологии образования представляет инновационные методики для интенсивного изучения английского языка и интеллектуального развития. \r\nЗа рекордные сроки мы гарантируем очевидное и заметное улучшение лингвистических и интеллектуальных навыков.	news/logo_news3.jpg	t
3	Специалисты высшего урованя	Селектор по классу является одним из наиболее востребуемых средств jQuery. ... $('div.someBlock:odd'), вернет все нечетные div-элементы с классом someBlock. ... Чтобы найти элемент, который обладает двумя (или более) классами одновременно, нужно перечислить их без пробела:	news/logo_news2.jpg	t
4	Новая новсть	Как использовать селекторы jQuery для выделения элементов ...\r\nhttps://ruseller.com › Уроки › jQuery\r\nВыбор элементов по атрибуту. Основные селекторы отлично подходят в случаях, если нужно выбрать все параграфы на странице или элемент, который нужно выбрать имеет класс CSS или ID. Однако, иногда нужно выбрать определенный элемент, у которого нет класса или ID, и нет возможности ...	news/logo_news_7VVb4lO.jpg	t
\.


--
-- Data for Name: price_serviceprice; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY price_serviceprice (id, name, "desc", price, active, specialist_id, consult) FROM stdin;
1	Адаптивная физкультура (1 час)	Комплекс мер спортивно-оздоровительного характера, направленных на реабилитацию и адаптацию к нормальной социальной среде людей с ограниченными возможностями	\N	f	\N	f
2	Мобилизация периферических суставов (1 час)	Мобилизация периферических суставов (1 час)	2000	f	\N	f
3	занятие с психологом (40-60 мин)		1200	f	9	f
4	занятие с логопедом (40-60 мин)		1200	t	8	t
5	Консультации детского психолога	Чаще всего родители обращаются к детскому психологу в случае изменений в поведении и состоянии ребенка. Они хотят, чтобы ребенок садился ужинать сразу, как только его позовут за стол, чтобы убирал свои игрушки и засыпал, как только ляжет в кровать.\r\nДетский психолог начинает работать с родителями, а не с детьми, ведь часто они сами воспитывают ребенка таким образом, что впоследствии не могут справиться с ним самостоятельно.\r\nМожно выделить основные рекомендации и советы родителям, которые помогут найти общий язык с ребенком и установить с ним доверительные отношения, не прибегая к помощи детского психолога.	1200	t	8	t
6	Консультация логопеда		1200	t	8	t
7	групповые развивающие занятия (6-12 мес., 30-40 мин.)		500	t	7	t
8	групповые развивающие занятия (от года, 60 мин.)		700	t	7	t
\.


--
-- Data for Name: specialist_specialist; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY specialist_specialist (id, name, image, desc_short, "desc", active, consultation) FROM stdin;
1	Леонид Виницкий	media/specialists/9_512b9b72bd135.jpg	Специалист Басист	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus, aliquid commodi, corporis cumque dolore esse id illum ipsa iusto minus obcaecati porro quo! Ab, adipisci aliquam blanditiis consectetur ducimus ex exercitationem hic illo incidunt laboriosam magni maiores molestiae odio perferendis possimus similique tempora ut velit vero voluptas! Deleniti facere, possimus?	f	f
2	Иван Ургант	media/specialists/0006168.jpg	Телеведущий	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero sint tenetur excepturi sapiente dolores maiores temporibus, ipsam culpa voluptas, ducimus, possimus. Deleniti totam in illum ab numquam reiciendis, quod, iure.	f	f
3	Елена Летучая	media/specialists/ДЛЯ_ПОРТАЛА_РЕГИСТРАЦИИ.jpg	Блондиночка	Вolor sit amet, consectetur adipisicing elit. Vero sint tenetur excepturi sapiente dolores maiores temporibus, ipsam culpa voluptas, ducimus, possimus. Deleniti totam in illum ab numquam reiciendis, quod, iure.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero sint tenetur excepturi sapiente dolores maiores temporibus.	f	f
4	Данил Данилыч	media/specialists/6R8_BGpmezo_jz3nFfq.jpg	Электрик	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero sint tenetur excepturi sapiente dolores maiores temporibus, ipsam culpa voluptas, ducimus, possimus. Deleniti totam in illum ab numquam reiciendis, quod, iure.Lorem ipsum	f	f
5	Петр Иванов	media/specialists/qwktEPGOFfQ.jpg	Крановщик	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero sint tenetur excepturi sapiente dolores maiores temporibus, ipsam culpa voluptas, ducimus, possimus. Deleniti totam in illum ab numquam reiciendis, quod, iure.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero sint tenetur excepturi sapiente dolores maiores temporibus, ipsam culpa voluptas, ducimus, possimus. Deleniti totam in illum ab numquam reiciendis, quod, iure.	f	f
6	\N	media/specialists/no-photo_FJGh7jC.png	адаптивная физкультура		f	f
7	Белухина Мария	media/specialists/no-photo_2q3ZbL6.png	Психолог	Окончила РГПУ имени А.И. Герцена Психолого-Педагогический факультет. Опыт работы психологом 12 лет. Проводит развивающие занятия в группах раннего развития с детьми от 6 месяцев до 6 лет. Психологическое консультирование семей с детьми. индивидуальные занятия. Организация семинаров для родителей на различные темы, касающиеся детской и семейной психологии. Проведение женских клубов.	t	f
8	Пярт Анна Николаевна	media/specialists/no-photo_qK3EZLD.png	Логопед. Дефектолог	1996 году окончила Российский Государственный Педагогический Университет, факультет коррекционной педагогики, кафедра логопедии. Работает с детьми от 2 лет, имеющими различные нарушения речи, комплексные дефекты, патологии развития, РДА, РАС, генетические патологии. Проводит занятия по коррекции дисграфии, дислексии, а так же дизорфографии. Имеет высшую категорию. Стаж работы 22 года.	t	f
9	Иванченко Светлана Анатольевна	media/specialists/no-photo.png	Психолог. Коррекционный педагог.	Окончила Санкт-Петербургский Институт Психологии и Акмеологии. Педагог-психолог. Работает с детьми, имеющими нарушения развития речи, РАС, РДА ЗПРР и другими эмоциональными, коммуникативными, сенсорными, интеллектуальными и поведенческими проблемами. Проводит развивающие занятия с элементами системы АВА, Мотессори и др.\r\nПроводит психотерапевтические беседы с родителями "сложных" детей, а также тренинги детско-родительских отношений (родители с детьми, или же только родители). Осуществляет индивидуальные консультации по вопросам детско-родительских отношений.	t	f
\.


--
-- Data for Name: thumbnail_kvstore; Type: TABLE DATA; Schema: public; Owner: anttoon
--

COPY thumbnail_kvstore (key, value) FROM stdin;
sorl-thumbnail||image||01157108870944582d71bf09c2e38ca4	{"storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150], "name": "cache/e4/5b/e45b3c3ea11dd15c599d9b6457893b28.jpg"}
sorl-thumbnail||image||06d757e2549c79f712a377fb2fedad99	{"storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150], "name": "cache/b9/24/b924fb1a7c4b3dd637a2e4cfb66eb298.jpg"}
sorl-thumbnail||image||0846161f9071682f48395d972248d8ea	{"storage": "django.core.files.storage.FileSystemStorage", "size": [851, 783], "name": "media/specialists/qwktEPGOFfQ.jpg"}
sorl-thumbnail||image||08c6e0f1854447f3d2a0abde16fe9d24	{"storage": "django.core.files.storage.FileSystemStorage", "size": [300, 300], "name": "media/specialists/no-photo.png"}
sorl-thumbnail||image||0cc114e64e20915ae56a86fde73fd3c2	{"storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150], "name": "cache/ba/88/ba8868add2a38da85f2165df72ad1d2c.jpg"}
sorl-thumbnail||image||11239544451362b36b1df22b4873d0d7	{"storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150], "name": "cache/87/cb/87cbc263db97d30fd0514ad7571dbef6.jpg"}
sorl-thumbnail||image||1c418f7df2116734d301d850abce7a51	{"storage": "django.core.files.storage.FileSystemStorage", "size": [1024, 768], "name": "media/specialists/Lighthouse.jpg"}
sorl-thumbnail||image||2226eef06e513abf780c718d59042811	{"storage": "django.core.files.storage.FileSystemStorage", "size": [540, 720], "name": "media/specialists/6R8_BGpmezo_jz3nFfq.jpg"}
sorl-thumbnail||image||26025d0b2f50ede79b0661bb46d50e2e	{"storage": "django.core.files.storage.FileSystemStorage", "size": [475, 484], "name": "media/specialists/0006168_NmgwvaT.jpg"}
sorl-thumbnail||image||2e36213407eee186122a2c186e69ea34	{"storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150], "name": "cache/dd/38/dd380cf0218ec46a5f791da0ca1f0e69.jpg"}
sorl-thumbnail||image||39608fe154c47ef37053b93a08faf617	{"storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150], "name": "cache/35/1a/351a6cee8dc4e4d64dfd5928ccb3a4c7.jpg"}
sorl-thumbnail||image||45a2a569b1178ccb000590abda2634a9	{"storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150], "name": "cache/76/94/7694dd64d33f8f8eb5f80e71c1cc648b.jpg"}
sorl-thumbnail||image||4c0842947f38fd01cb2bd53c81c6b479	{"storage": "django.core.files.storage.FileSystemStorage", "size": [467, 350], "name": "media/specialists/9_512b9b72bd135.jpg"}
sorl-thumbnail||image||4ed8f56dfc319d4a77016ce9d066743e	{"storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150], "name": "cache/c4/f7/c4f70916d02cfcbbf3862f2744fca485.jpg"}
sorl-thumbnail||image||51326c12466aa782fd8b8e467412dcfe	{"storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150], "name": "cache/0d/ab/0dabd935e96f08993bccde7b4ad88f9e.jpg"}
sorl-thumbnail||image||86c8216ed9b745e602fae3585ca91fc4	{"storage": "django.core.files.storage.FileSystemStorage", "size": [475, 484], "name": "media/specialists/0006168.jpg"}
sorl-thumbnail||image||982a40fd3f2fd89f7b4739a48b5bc5d7	{"storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150], "name": "cache/ef/f5/eff5f540317a94cefdb07def2e1b9f63.jpg"}
sorl-thumbnail||image||9aa3d7215124ee996853a4f639313177	{"storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150], "name": "cache/4b/7c/4b7c3380cb1c387769b1d38b65dae06c.jpg"}
sorl-thumbnail||image||9d6f6c351ea5db3503626164021418d6	{"storage": "django.core.files.storage.FileSystemStorage", "size": [500, 689], "name": "media/specialists/1403078850_354544721.jpg"}
sorl-thumbnail||image||a81816c4352f0b8914de763fe79059ca	{"storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150], "name": "cache/ea/e3/eae316b34f3c0c31ef0205bec72bbff6.jpg"}
sorl-thumbnail||image||ae8e24d6b9d105cb9730b62e1fe814b6	{"storage": "django.core.files.storage.FileSystemStorage", "size": [467, 350], "name": "media/specialists/9_512b9b72bd135_LoAA9KZ.jpg"}
sorl-thumbnail||image||b72b88f4ba795f29ca5f5a5940ebf5b5	{"storage": "django.core.files.storage.FileSystemStorage", "size": [300, 300], "name": "media/specialists/no-photo_FJGh7jC.png"}
sorl-thumbnail||image||d71f6cda73b71252cf567406074e6157	{"storage": "django.core.files.storage.FileSystemStorage", "size": [300, 300], "name": "media/specialists/no-photo_2q3ZbL6.png"}
sorl-thumbnail||image||e1d9f4d85f0a99d301eaff245022ab84	{"storage": "django.core.files.storage.FileSystemStorage", "size": [150, 150], "name": "cache/9f/6b/9f6b461e89ec8650bad2bcc0fab80c16.jpg"}
sorl-thumbnail||image||e9fe35deaaaa9349a3204f1a3dc93ff0	{"storage": "django.core.files.storage.FileSystemStorage", "size": [480, 640], "name": "media/specialists/\\u0414\\u041b\\u042f_\\u041f\\u041e\\u0420\\u0422\\u0410\\u041b\\u0410_\\u0420\\u0415\\u0413\\u0418\\u0421\\u0422\\u0420\\u0410\\u0426\\u0418\\u0418.jpg"}
sorl-thumbnail||image||f576a2a680b4ea76e32c530ecb3a231b	{"storage": "django.core.files.storage.FileSystemStorage", "size": [300, 300], "name": "media/specialists/no-photo_qK3EZLD.png"}
sorl-thumbnail||thumbnails||0846161f9071682f48395d972248d8ea	["01157108870944582d71bf09c2e38ca4"]
sorl-thumbnail||thumbnails||08c6e0f1854447f3d2a0abde16fe9d24	["45a2a569b1178ccb000590abda2634a9"]
sorl-thumbnail||thumbnails||1c418f7df2116734d301d850abce7a51	["0cc114e64e20915ae56a86fde73fd3c2"]
sorl-thumbnail||thumbnails||2226eef06e513abf780c718d59042811	["39608fe154c47ef37053b93a08faf617"]
sorl-thumbnail||thumbnails||26025d0b2f50ede79b0661bb46d50e2e	["4ed8f56dfc319d4a77016ce9d066743e"]
sorl-thumbnail||thumbnails||4c0842947f38fd01cb2bd53c81c6b479	["11239544451362b36b1df22b4873d0d7"]
sorl-thumbnail||thumbnails||86c8216ed9b745e602fae3585ca91fc4	["51326c12466aa782fd8b8e467412dcfe"]
sorl-thumbnail||thumbnails||9d6f6c351ea5db3503626164021418d6	["e1d9f4d85f0a99d301eaff245022ab84"]
sorl-thumbnail||thumbnails||ae8e24d6b9d105cb9730b62e1fe814b6	["2e36213407eee186122a2c186e69ea34"]
sorl-thumbnail||thumbnails||b72b88f4ba795f29ca5f5a5940ebf5b5	["a81816c4352f0b8914de763fe79059ca"]
sorl-thumbnail||thumbnails||d71f6cda73b71252cf567406074e6157	["982a40fd3f2fd89f7b4739a48b5bc5d7"]
sorl-thumbnail||thumbnails||e9fe35deaaaa9349a3204f1a3dc93ff0	["06d757e2549c79f712a377fb2fedad99"]
sorl-thumbnail||thumbnails||f576a2a680b4ea76e32c530ecb3a231b	["9aa3d7215124ee996853a4f639313177"]
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anttoon
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anttoon
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anttoon
--

SELECT pg_catalog.setval('auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anttoon
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anttoon
--

SELECT pg_catalog.setval('auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anttoon
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anttoon
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 138, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anttoon
--

SELECT pg_catalog.setval('django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anttoon
--

SELECT pg_catalog.setval('django_migrations_id_seq', 34, true);


--
-- Name: methodics_methodics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anttoon
--

SELECT pg_catalog.setval('methodics_methodics_id_seq', 4, true);


--
-- Name: portal_header_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anttoon
--

SELECT pg_catalog.setval('portal_header_id_seq', 5, true);


--
-- Name: portal_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anttoon
--

SELECT pg_catalog.setval('portal_news_id_seq', 4, true);


--
-- Name: price_serviceprice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anttoon
--

SELECT pg_catalog.setval('price_serviceprice_id_seq', 8, true);


--
-- Name: specialist_specialist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anttoon
--

SELECT pg_catalog.setval('specialist_specialist_id_seq', 9, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: methodics_methodics methodics_methodics_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY methodics_methodics
    ADD CONSTRAINT methodics_methodics_pkey PRIMARY KEY (id);


--
-- Name: methodics_methodics methodics_methodics_slug_fe68d7df_uniq; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY methodics_methodics
    ADD CONSTRAINT methodics_methodics_slug_fe68d7df_uniq UNIQUE (slug);


--
-- Name: portal_about portal_header_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY portal_about
    ADD CONSTRAINT portal_header_pkey PRIMARY KEY (id);


--
-- Name: portal_news portal_news_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY portal_news
    ADD CONSTRAINT portal_news_pkey PRIMARY KEY (id);


--
-- Name: price_serviceprice price_serviceprice_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY price_serviceprice
    ADD CONSTRAINT price_serviceprice_pkey PRIMARY KEY (id);


--
-- Name: specialist_specialist specialist_specialist_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY specialist_specialist
    ADD CONSTRAINT specialist_specialist_pkey PRIMARY KEY (id);


--
-- Name: thumbnail_kvstore thumbnail_kvstore_pkey; Type: CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY thumbnail_kvstore
    ADD CONSTRAINT thumbnail_kvstore_pkey PRIMARY KEY (key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: methodics_methodics_slug_fe68d7df_like; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX methodics_methodics_slug_fe68d7df_like ON methodics_methodics USING btree (slug varchar_pattern_ops);


--
-- Name: price_serviceprice_specialist_id_0e821bc3; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX price_serviceprice_specialist_id_0e821bc3 ON price_serviceprice USING btree (specialist_id);


--
-- Name: thumbnail_kvstore_key_3f850178_like; Type: INDEX; Schema: public; Owner: anttoon
--

CREATE INDEX thumbnail_kvstore_key_3f850178_like ON thumbnail_kvstore USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: price_serviceprice price_serviceprice_specialist_id_0e821bc3_fk_specialis; Type: FK CONSTRAINT; Schema: public; Owner: anttoon
--

ALTER TABLE ONLY price_serviceprice
    ADD CONSTRAINT price_serviceprice_specialist_id_0e821bc3_fk_specialis FOREIGN KEY (specialist_id) REFERENCES specialist_specialist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

