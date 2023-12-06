--
-- TOC entry 256 (class 1259 OID 16585)
-- Name: Preferences Country; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Preferences Country" (
    country_id integer NOT NULL,
    preferences_id integer NOT NULL
);


ALTER TABLE public."Preferences Country" OWNER TO iu;

--
-- TOC entry 3796 (class 0 OID 0)
-- Dependencies: 256
-- Name: TABLE "Preferences Country"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Preferences Country" IS 'Many-to-many between Preferences and Country';


--
-- TOC entry 3797 (class 0 OID 0)
-- Dependencies: 256
-- Name: COLUMN "Preferences Country".country_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Preferences Country".country_id IS 'FK - Country ID';


--
-- TOC entry 3798 (class 0 OID 0)
-- Dependencies: 256
-- Name: COLUMN "Preferences Country".preferences_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Preferences Country".preferences_id IS 'FK - Preferences ID';
