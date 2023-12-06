--
-- TOC entry 249 (class 1259 OID 16549)
-- Name: User; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."User" (
    id integer NOT NULL,
    guest_id integer,
    host_id integer,
    admin_id integer,
    user_type_id integer NOT NULL,
    profile_img integer,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    phone character varying(100) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    last_updated timestamp with time zone NOT NULL,
    social_link character varying(255),
    about_me text
);


ALTER TABLE public."User" OWNER TO iu;

--
-- TOC entry 3851 (class 0 OID 0)
-- Dependencies: 249
-- Name: TABLE "User"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."User" IS 'Generic User';


--
-- TOC entry 3852 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN "User".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User".id IS 'PK';


--
-- TOC entry 3853 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN "User".guest_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User".guest_id IS 'FK - Guest ID';


--
-- TOC entry 3854 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN "User".host_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User".host_id IS 'FK - Host ID';


--
-- TOC entry 3855 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN "User".admin_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User".admin_id IS 'FK - Admin ID';


--
-- TOC entry 3856 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN "User".user_type_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User".user_type_id IS 'FK - User Type';


--
-- TOC entry 3857 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN "User".profile_img; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User".profile_img IS 'Profile image location';


--
-- TOC entry 3858 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN "User".first_name; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User".first_name IS 'First name of user';


--
-- TOC entry 3859 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN "User".last_name; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User".last_name IS 'Last name of User';


--
-- TOC entry 3860 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN "User".phone; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User".phone IS 'Phone number of User';


--
-- TOC entry 3861 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN "User".email; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User".email IS 'Email of User';


--
-- TOC entry 3862 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN "User".password; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User".password IS 'Password hash of User';


--
-- TOC entry 3863 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN "User".last_updated; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User".last_updated IS 'Timestamp updated';


--
-- TOC entry 3864 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN "User".social_link; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User".social_link IS 'Link to User''s social media';


--
-- TOC entry 3865 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN "User".about_me; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User".about_me IS 'User description about himself';

--
-- TOC entry 266 (class 1259 OID 16909)
-- Name: User_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."User" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."User_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
