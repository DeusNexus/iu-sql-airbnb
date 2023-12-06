-- TOC entry 214 (class 1259 OID 16395)
-- Name: Activity Log; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Activity Log" (
    id integer NOT NULL,
    user_id integer NOT NULL,
    operation character varying(50) NOT NULL,
    query text NOT NULL,
    exec_on timestamp with time zone NOT NULL
);


ALTER TABLE public."Activity Log" OWNER TO iu;

--
-- TOC entry 3703 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN "Activity Log".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Activity Log".id IS 'PK';


--
-- TOC entry 3704 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN "Activity Log".user_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Activity Log".user_id IS 'Admins User ID';


--
-- TOC entry 3705 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN "Activity Log".operation; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Activity Log".operation IS 'type of operation';


--
-- TOC entry 3706 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN "Activity Log".query; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Activity Log".query IS 'SQL Query Executed';


--
-- TOC entry 3707 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN "Activity Log".exec_on; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Activity Log".exec_on IS 'Timestamp of execution';


--
-- TOC entry 213 (class 1259 OID 16394)
-- Name: Activity Log_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Activity Log" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Activity Log_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
