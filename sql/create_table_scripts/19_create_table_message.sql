--
-- TOC entry 231 (class 1259 OID 16469)
-- Name: Message; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Message" (
    id integer NOT NULL,
    sender_id integer NOT NULL,
    receiver_id integer NOT NULL,
    chat_id integer NOT NULL,
    message text DEFAULT ''::text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    ready_by_receiver boolean DEFAULT false NOT NULL
);


ALTER TABLE public."Message" OWNER TO iu;

--
-- TOC entry 3756 (class 0 OID 0)
-- Dependencies: 231
-- Name: TABLE "Message"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Message" IS 'Messages send in chats';


--
-- TOC entry 3757 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN "Message".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Message".id IS 'PK';


--
-- TOC entry 3758 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN "Message".sender_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Message".sender_id IS 'User who send the message';


--
-- TOC entry 3759 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN "Message".receiver_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Message".receiver_id IS 'User who receives the message';


--
-- TOC entry 3760 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN "Message".chat_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Message".chat_id IS 'Chat session id between Host and Guest';


--
-- TOC entry 3761 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN "Message".message; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Message".message IS 'Text message';


--
-- TOC entry 3762 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN "Message".created_on; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Message".created_on IS 'Timestamp when message was created';


--
-- TOC entry 3763 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN "Message".ready_by_receiver; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Message".ready_by_receiver IS 'Bool whether receiver has seen message';


--
-- TOC entry 230 (class 1259 OID 16468)
-- Name: Message_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Message" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Message_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
