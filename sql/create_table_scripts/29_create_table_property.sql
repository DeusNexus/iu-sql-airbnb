--
-- TOC entry 243 (class 1259 OID 16518)
-- Name: Property; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Property" (
    id integer NOT NULL,
    country_id integer NOT NULL,
    property_type_id integer NOT NULL,
    guest_capacity integer NOT NULL,
    name character varying(100) NOT NULL,
    adress character varying(255) NOT NULL,
    description_long text NOT NULL,
    description_short character varying(255),
    units_available integer NOT NULL,
    units_total integer NOT NULL,
    dates_available daterange,
    visibile boolean DEFAULT false NOT NULL,
    longitude character varying(50) NOT NULL,
    latitude character varying(50) NOT NULL,
    beds integer NOT NULL,
    baths integer NOT NULL,
    smoke_allowed boolean DEFAULT false NOT NULL,
    rooms integer NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    host_id integer NOT NULL,
    daily_rate double precision
);


ALTER TABLE public."Property" OWNER TO iu;

--
-- TOC entry 3808 (class 0 OID 0)
-- Dependencies: 243
-- Name: TABLE "Property"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Property" IS 'Property is available for bookings owned by a host';


--
-- TOC entry 3809 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".id IS 'PK';


--
-- TOC entry 3810 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".country_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".country_id IS 'Country where property resides';


--
-- TOC entry 3811 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".property_type_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".property_type_id IS 'Type of the Property';


--
-- TOC entry 3812 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".guest_capacity; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".guest_capacity IS 'Maximum amount of guests that can be hosted in the property';


--
-- TOC entry 3813 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".name; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".name IS 'Name of the property';


--
-- TOC entry 3814 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".adress; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".adress IS 'Address of the Property';


--
-- TOC entry 3815 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".description_long; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".description_long IS 'Long description of property';


--
-- TOC entry 3816 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".description_short; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".description_short IS 'Short description of the property max 255 chars';


--
-- TOC entry 3817 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".units_available; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".units_available IS 'Number of available units for booking';


--
-- TOC entry 3818 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".units_total; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".units_total IS 'Number of total units available for booking';


--
-- TOC entry 3819 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".dates_available; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".dates_available IS 'Dates when the property is available for booking';


--
-- TOC entry 3820 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".visibile; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".visibile IS 'Toggle visibility of the Property';


--
-- TOC entry 3821 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".longitude; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".longitude IS 'Longitude of Property location';


--
-- TOC entry 3822 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".latitude; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".latitude IS 'Latitude of Property location';


--
-- TOC entry 3823 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".beds; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".beds IS 'Number of Beds in Property';


--
-- TOC entry 3824 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".baths; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".baths IS 'Number of Baths in Property';


--
-- TOC entry 3825 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".smoke_allowed; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".smoke_allowed IS 'Smoking allowed Bool';


--
-- TOC entry 3826 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".rooms; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".rooms IS 'Number of Rooms in Property';


--
-- TOC entry 3827 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".updated_on; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".updated_on IS 'Last updated on';


--
-- TOC entry 3828 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN "Property".host_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property".host_id IS 'Owner of property';

--
-- TOC entry 242 (class 1259 OID 16517)
-- Name: Property_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Property" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Property_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
