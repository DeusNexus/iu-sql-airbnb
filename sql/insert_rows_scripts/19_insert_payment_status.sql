--
-- TOC entry 3661 (class 0 OID 16494)
-- Dependencies: 237
-- Data for Name: Payment Status; Type: TABLE DATA; Schema: public; Owner: iu
--

INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (1, 'Processed', 'Payment has been successfully processed and completed.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (2, 'Successful', 'Payment was successful, and the transaction is complete.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (3, 'Failed', 'Payment processing failed for some reason.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (4, 'Declined', 'Payment was declined or not authorized by the financial institution.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (5, 'Pending', 'Payment is pending and has not been processed yet.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (6, 'Processing Error', 'An error occurred during payment processing.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (7, 'Verification', 'Payment is under verification for security purposes.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (8, 'Approved', 'Payment has been approved and is awaiting final processing.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (9, 'Rejected', 'Payment has been rejected or not accepted.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (10, 'Refunded', 'Payment was refunded to the customer.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (11, 'Canceled', 'Payment transaction was canceled by the customer or system.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (12, 'Timed Out', 'Payment processing timed out before completion.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (13, 'Authorization Expired', 'Payment authorization has expired.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (14, 'Expired', 'Payment processing has expired without completion.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (15, 'In Progress', 'Payment is currently in progress.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (16, 'Awaiting Confirmation', 'Payment is awaiting confirmation from the customer.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (17, 'Awaiting Authorization', 'Payment is awaiting authorization from the financial institution.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (18, 'Awaiting Verification', 'Payment is awaiting additional verification.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (19, 'Awaiting Review', 'Payment is under review before final processing.');
INSERT INTO public."Payment Status" (id, status, info) OVERRIDING SYSTEM VALUE VALUES (20, 'Completed', 'Payment transaction has been successfully completed.');


