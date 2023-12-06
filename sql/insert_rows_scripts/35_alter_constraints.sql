--
-- TOC entry 3440 (class 2606 OID 16862)
-- Name: Access Level Access Level_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Access Level"
    ADD CONSTRAINT "Access Level_pkey" PRIMARY KEY (id);


--
-- TOC entry 3442 (class 2606 OID 16864)
-- Name: Access Level Access Level_role_key; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Access Level"
    ADD CONSTRAINT "Access Level_role_key" UNIQUE (role);


--
-- TOC entry 3386 (class 2606 OID 16401)
-- Name: Activity Log Activity Log_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Activity Log"
    ADD CONSTRAINT "Activity Log_pkey" PRIMARY KEY (id);


--
-- TOC entry 3388 (class 2606 OID 16414)
-- Name: Allowed Operations Allowed Operations_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Allowed Operations"
    ADD CONSTRAINT "Allowed Operations_pkey" PRIMARY KEY (id);


--
-- TOC entry 3390 (class 2606 OID 16421)
-- Name: Amenity Amenities_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Amenity"
    ADD CONSTRAINT "Amenities_pkey" PRIMARY KEY (id);


--
-- TOC entry 3392 (class 2606 OID 16427)
-- Name: Amenity Categories Amenity Categories_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Amenity Categories"
    ADD CONSTRAINT "Amenity Categories_pkey" PRIMARY KEY (id);


--
-- TOC entry 3394 (class 2606 OID 16437)
-- Name: Booking Booking_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Booking"
    ADD CONSTRAINT "Booking_pkey" PRIMARY KEY (id);


--
-- TOC entry 3448 (class 2606 OID 16996)
-- Name: Chat Chat_pkey1; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Chat"
    ADD CONSTRAINT "Chat_pkey1" PRIMARY KEY (id);


--
-- TOC entry 3432 (class 2606 OID 17042)
-- Name: Property Review Composite Key; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Property Review"
    ADD CONSTRAINT "Composite Key" PRIMARY KEY (property_id, review_id);


--
-- TOC entry 3396 (class 2606 OID 16449)
-- Name: Country Country_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT "Country_pkey" PRIMARY KEY (id);


--
-- TOC entry 3398 (class 2606 OID 16455)
-- Name: Guest Guest_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Guest"
    ADD CONSTRAINT "Guest_pkey" PRIMARY KEY (id);


--
-- TOC entry 3400 (class 2606 OID 16461)
-- Name: Host Host_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Host"
    ADD CONSTRAINT "Host_pkey" PRIMARY KEY (id);


--
-- TOC entry 3402 (class 2606 OID 16467)
-- Name: Language Language_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Language"
    ADD CONSTRAINT "Language_pkey" PRIMARY KEY (id);


--
-- TOC entry 3428 (class 2606 OID 16569)
-- Name: Media Media_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Media"
    ADD CONSTRAINT "Media_pkey" PRIMARY KEY (id);


--
-- TOC entry 3404 (class 2606 OID 16477)
-- Name: Message Message_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Message"
    ADD CONSTRAINT "Message_pkey" PRIMARY KEY (id);


--
-- TOC entry 3450 (class 2606 OID 17022)
-- Name: Payment Method Name Payment Method Name_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Payment Method Name"
    ADD CONSTRAINT "Payment Method Name_pkey" PRIMARY KEY (id);


--
-- TOC entry 3408 (class 2606 OID 16492)
-- Name: Payment Method Payment Method_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Payment Method"
    ADD CONSTRAINT "Payment Method_pkey" PRIMARY KEY (id);


--
-- TOC entry 3410 (class 2606 OID 16500)
-- Name: Payment Status Payment Status_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Payment Status"
    ADD CONSTRAINT "Payment Status_pkey" PRIMARY KEY (id);


--
-- TOC entry 3406 (class 2606 OID 16485)
-- Name: Payment Payment_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Payment"
    ADD CONSTRAINT "Payment_pkey" PRIMARY KEY (id);


--
-- TOC entry 3434 (class 2606 OID 16589)
-- Name: Preferences Country Prefences Country_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Preferences Country"
    ADD CONSTRAINT "Prefences Country_pkey" PRIMARY KEY (country_id, preferences_id);


--
-- TOC entry 3436 (class 2606 OID 16594)
-- Name: Preferences Amenity Preferences Amenity_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Preferences Amenity"
    ADD CONSTRAINT "Preferences Amenity_pkey" PRIMARY KEY (preferences_id, amenity_id);


--
-- TOC entry 3438 (class 2606 OID 16599)
-- Name: Preferences Property Type Preferences Property Type_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Preferences Property Type"
    ADD CONSTRAINT "Preferences Property Type_pkey" PRIMARY KEY (preferences_id, property_type_id);


--
-- TOC entry 3412 (class 2606 OID 16508)
-- Name: Preferences Preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Preferences"
    ADD CONSTRAINT "Preferences_pkey" PRIMARY KEY (id);


--
-- TOC entry 3414 (class 2606 OID 16516)
-- Name: Promo Promo_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Promo"
    ADD CONSTRAINT "Promo_pkey" PRIMARY KEY (id);


--
-- TOC entry 3430 (class 2606 OID 16579)
-- Name: Property Amenity Property Amenity_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Property Amenity"
    ADD CONSTRAINT "Property Amenity_pkey" PRIMARY KEY (property_id, amenity_id);


--
-- TOC entry 3418 (class 2606 OID 16533)
-- Name: Property Type Property Type_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Property Type"
    ADD CONSTRAINT "Property Type_pkey" PRIMARY KEY (id);


--
-- TOC entry 3416 (class 2606 OID 16526)
-- Name: Property Property_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Property"
    ADD CONSTRAINT "Property_pkey" PRIMARY KEY (id);


--
-- TOC entry 3422 (class 2606 OID 16548)
-- Name: Review Type Review Type_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Review Type"
    ADD CONSTRAINT "Review Type_pkey" PRIMARY KEY (id);


--
-- TOC entry 3420 (class 2606 OID 16542)
-- Name: Review Reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "Reviews_pkey" PRIMARY KEY (id);


--
-- TOC entry 3426 (class 2606 OID 16561)
-- Name: User Type User Type_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."User Type"
    ADD CONSTRAINT "User Type_pkey" PRIMARY KEY (id);


--
-- TOC entry 3424 (class 2606 OID 16555)
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- TOC entry 3446 (class 2606 OID 16888)
-- Name: AccessLevelAllowedOperations accesslevelallowedoperations_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."AccessLevelAllowedOperations"
    ADD CONSTRAINT accesslevelallowedoperations_pkey PRIMARY KEY (access_level_id, allowed_operation_id);


--
-- TOC entry 3444 (class 2606 OID 16878)
-- Name: Admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);


--
-- TOC entry 3491 (class 2606 OID 16889)
-- Name: AccessLevelAllowedOperations accesslevelallowedoperations_access_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."AccessLevelAllowedOperations"
    ADD CONSTRAINT accesslevelallowedoperations_access_level_id_fkey FOREIGN KEY (access_level_id) REFERENCES public."Access Level"(id);


--
-- TOC entry 3492 (class 2606 OID 16894)
-- Name: AccessLevelAllowedOperations accesslevelallowedoperations_allowed_operation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."AccessLevelAllowedOperations"
    ADD CONSTRAINT accesslevelallowedoperations_allowed_operation_id_fkey FOREIGN KEY (allowed_operation_id) REFERENCES public."Allowed Operations"(id);


--
-- TOC entry 3490 (class 2606 OID 16879)
-- Name: Admin admin_access_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT admin_access_level_id_fkey FOREIGN KEY (access_level_id) REFERENCES public."Access Level"(id);


--
-- TOC entry 3478 (class 2606 OID 16899)
-- Name: User admin_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT admin_id FOREIGN KEY (admin_id) REFERENCES public."Admin"(admin_id) NOT VALID;


--
-- TOC entry 3895 (class 0 OID 0)
-- Dependencies: 3478
-- Name: CONSTRAINT admin_id ON "User"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT admin_id ON public."User" IS 'FK - Admin';


--
-- TOC entry 3481 (class 2606 OID 16800)
-- Name: Property Amenity amenity_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Property Amenity"
    ADD CONSTRAINT amenity_id FOREIGN KEY (amenity_id) REFERENCES public."Amenity"(id) NOT VALID;


--
-- TOC entry 3896 (class 0 OID 0)
-- Dependencies: 3481
-- Name: CONSTRAINT amenity_id ON "Property Amenity"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT amenity_id ON public."Property Amenity" IS 'FK - Amenity ID';


--
-- TOC entry 3487 (class 2606 OID 16830)
-- Name: Preferences Amenity amenity_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Preferences Amenity"
    ADD CONSTRAINT amenity_id FOREIGN KEY (amenity_id) REFERENCES public."Amenity"(id) NOT VALID;


--
-- TOC entry 3897 (class 0 OID 0)
-- Dependencies: 3487
-- Name: CONSTRAINT amenity_id ON "Preferences Amenity"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT amenity_id ON public."Preferences Amenity" IS 'FK - Amenity ID';


--
-- TOC entry 3464 (class 2606 OID 16685)
-- Name: Payment booking_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Payment"
    ADD CONSTRAINT booking_id FOREIGN KEY (booking_id) REFERENCES public."Booking"(id) NOT VALID;


--
-- TOC entry 3898 (class 0 OID 0)
-- Dependencies: 3464
-- Name: CONSTRAINT booking_id ON "Payment"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT booking_id ON public."Payment" IS 'FK - Booking ID';


--
-- TOC entry 3452 (class 2606 OID 16615)
-- Name: Amenity category_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Amenity"
    ADD CONSTRAINT category_id FOREIGN KEY (category_id) REFERENCES public."Amenity Categories"(id) NOT VALID;


--
-- TOC entry 3899 (class 0 OID 0)
-- Dependencies: 3452
-- Name: CONSTRAINT category_id ON "Amenity"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT category_id ON public."Amenity" IS 'FK - Category ID';


--
-- TOC entry 3459 (class 2606 OID 17007)
-- Name: Booking chat_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Booking"
    ADD CONSTRAINT chat_id FOREIGN KEY (chat_id) REFERENCES public."Chat"(id) NOT VALID;


--
-- TOC entry 3900 (class 0 OID 0)
-- Dependencies: 3459
-- Name: CONSTRAINT chat_id ON "Booking"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT chat_id ON public."Booking" IS 'FK - Chat ID';


--
-- TOC entry 3463 (class 2606 OID 17012)
-- Name: Message chat_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Message"
    ADD CONSTRAINT chat_id FOREIGN KEY (chat_id) REFERENCES public."Chat"(id) NOT VALID;


--
-- TOC entry 3901 (class 0 OID 0)
-- Dependencies: 3463
-- Name: CONSTRAINT chat_id ON "Message"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT chat_id ON public."Message" IS 'FK - Chat ID';


--
-- TOC entry 3469 (class 2606 OID 16720)
-- Name: Property country_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Property"
    ADD CONSTRAINT country_id FOREIGN KEY (country_id) REFERENCES public."Country"(id) NOT VALID;


--
-- TOC entry 3902 (class 0 OID 0)
-- Dependencies: 3469
-- Name: CONSTRAINT country_id ON "Property"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT country_id ON public."Property" IS 'FK - Country ID';


--
-- TOC entry 3484 (class 2606 OID 16815)
-- Name: Preferences Country country_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Preferences Country"
    ADD CONSTRAINT country_id FOREIGN KEY (country_id) REFERENCES public."Country"(id) NOT VALID;


--
-- TOC entry 3903 (class 0 OID 0)
-- Dependencies: 3484
-- Name: CONSTRAINT country_id ON "Preferences Country"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT country_id ON public."Preferences Country" IS 'FK - Country ID';


--
-- TOC entry 3453 (class 2606 OID 16620)
-- Name: Booking guest_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Booking"
    ADD CONSTRAINT guest_id FOREIGN KEY (guest_id) REFERENCES public."Guest"(id) NOT VALID;


--
-- TOC entry 3904 (class 0 OID 0)
-- Dependencies: 3453
-- Name: CONSTRAINT guest_id ON "Booking"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT guest_id ON public."Booking" IS 'FK - Guest ID';


--
-- TOC entry 3475 (class 2606 OID 16760)
-- Name: User guest_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT guest_id FOREIGN KEY (guest_id) REFERENCES public."Guest"(id) NOT VALID;


--
-- TOC entry 3495 (class 2606 OID 17002)
-- Name: Chat guest_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Chat"
    ADD CONSTRAINT guest_id FOREIGN KEY (guest_id) REFERENCES public."Guest"(id);


--
-- TOC entry 3905 (class 0 OID 0)
-- Dependencies: 3495
-- Name: CONSTRAINT guest_id ON "Chat"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT guest_id ON public."Chat" IS 'FK - Guest ID';


--
-- TOC entry 3455 (class 2606 OID 16630)
-- Name: Booking host_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Booking"
    ADD CONSTRAINT host_id FOREIGN KEY (host_id) REFERENCES public."Host"(id) NOT VALID;


--
-- TOC entry 3906 (class 0 OID 0)
-- Dependencies: 3455
-- Name: CONSTRAINT host_id ON "Booking"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT host_id ON public."Booking" IS 'FK - Host ID';


--
-- TOC entry 3476 (class 2606 OID 16765)
-- Name: User host_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT host_id FOREIGN KEY (host_id) REFERENCES public."Host"(id) NOT VALID;


--
-- TOC entry 3907 (class 0 OID 0)
-- Dependencies: 3476
-- Name: CONSTRAINT host_id ON "User"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT host_id ON public."User" IS 'FK - Host ID';


--
-- TOC entry 3471 (class 2606 OID 16904)
-- Name: Property host_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Property"
    ADD CONSTRAINT host_id FOREIGN KEY (host_id) REFERENCES public."Host"(id) NOT VALID;


--
-- TOC entry 3908 (class 0 OID 0)
-- Dependencies: 3471
-- Name: CONSTRAINT host_id ON "Property"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT host_id ON public."Property" IS 'FK - Host ID: Owner of property';


--
-- TOC entry 3496 (class 2606 OID 16997)
-- Name: Chat host_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Chat"
    ADD CONSTRAINT host_id FOREIGN KEY (host_id) REFERENCES public."Host"(id);


--
-- TOC entry 3909 (class 0 OID 0)
-- Dependencies: 3496
-- Name: CONSTRAINT host_id ON "Chat"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT host_id ON public."Chat" IS 'FK - Host ID';


--
-- TOC entry 3468 (class 2606 OID 16710)
-- Name: Preferences language; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Preferences"
    ADD CONSTRAINT language FOREIGN KEY (language) REFERENCES public."Language"(id) NOT VALID;


--
-- TOC entry 3910 (class 0 OID 0)
-- Dependencies: 3468
-- Name: CONSTRAINT language ON "Preferences"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT language ON public."Preferences" IS 'FK - Language';


--
-- TOC entry 3493 (class 2606 OID 16980)
-- Name: Property Images media_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Property Images"
    ADD CONSTRAINT media_id FOREIGN KEY (media_id) REFERENCES public."Media"(id);


--
-- TOC entry 3911 (class 0 OID 0)
-- Dependencies: 3493
-- Name: CONSTRAINT media_id ON "Property Images"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT media_id ON public."Property Images" IS 'FK Media ID';


--
-- TOC entry 3467 (class 2606 OID 17023)
-- Name: Payment Method name_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Payment Method"
    ADD CONSTRAINT name_id FOREIGN KEY (name_id) REFERENCES public."Payment Method Name"(id) NOT VALID;


--
-- TOC entry 3912 (class 0 OID 0)
-- Dependencies: 3467
-- Name: CONSTRAINT name_id ON "Payment Method"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT name_id ON public."Payment Method" IS 'Payment Method Name ID';


--
-- TOC entry 3479 (class 2606 OID 16780)
-- Name: Media owner; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Media"
    ADD CONSTRAINT owner FOREIGN KEY (owner) REFERENCES public."User"(id) NOT VALID;


--
-- TOC entry 3913 (class 0 OID 0)
-- Dependencies: 3479
-- Name: CONSTRAINT owner ON "Media"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT owner ON public."Media" IS 'FK - User';


--
-- TOC entry 3457 (class 2606 OID 16645)
-- Name: Booking payment_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Booking"
    ADD CONSTRAINT payment_id FOREIGN KEY (payment_id) REFERENCES public."Payment"(id) NOT VALID;


--
-- TOC entry 3914 (class 0 OID 0)
-- Dependencies: 3457
-- Name: CONSTRAINT payment_id ON "Booking"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT payment_id ON public."Booking" IS 'FK - Payment ID';


--
-- TOC entry 3466 (class 2606 OID 16695)
-- Name: Payment payment_method_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Payment"
    ADD CONSTRAINT payment_method_id FOREIGN KEY (payment_method_id) REFERENCES public."Payment Method"(id) NOT VALID;


--
-- TOC entry 3915 (class 0 OID 0)
-- Dependencies: 3466
-- Name: CONSTRAINT payment_method_id ON "Payment"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT payment_method_id ON public."Payment" IS 'FK - Payment Method ID';


--
-- TOC entry 3465 (class 2606 OID 16690)
-- Name: Payment payment_status_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Payment"
    ADD CONSTRAINT payment_status_id FOREIGN KEY (payment_status_id) REFERENCES public."Payment Status"(id) NOT VALID;


--
-- TOC entry 3916 (class 0 OID 0)
-- Dependencies: 3465
-- Name: CONSTRAINT payment_status_id ON "Payment"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT payment_status_id ON public."Payment" IS 'FK - Payment Status ID';


--
-- TOC entry 3460 (class 2606 OID 16665)
-- Name: Guest preference_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Guest"
    ADD CONSTRAINT preference_id FOREIGN KEY (preference_id) REFERENCES public."Preferences"(id) NOT VALID;


--
-- TOC entry 3917 (class 0 OID 0)
-- Dependencies: 3460
-- Name: CONSTRAINT preference_id ON "Guest"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT preference_id ON public."Guest" IS 'FK - Preferences';


--
-- TOC entry 3485 (class 2606 OID 16820)
-- Name: Preferences Country preferences_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Preferences Country"
    ADD CONSTRAINT preferences_id FOREIGN KEY (preferences_id) REFERENCES public."Preferences"(id) NOT VALID;


--
-- TOC entry 3918 (class 0 OID 0)
-- Dependencies: 3485
-- Name: CONSTRAINT preferences_id ON "Preferences Country"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT preferences_id ON public."Preferences Country" IS 'FK - Preferences ID';


--
-- TOC entry 3486 (class 2606 OID 16825)
-- Name: Preferences Amenity preferences_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Preferences Amenity"
    ADD CONSTRAINT preferences_id FOREIGN KEY (preferences_id) REFERENCES public."Preferences"(id) NOT VALID;


--
-- TOC entry 3919 (class 0 OID 0)
-- Dependencies: 3486
-- Name: CONSTRAINT preferences_id ON "Preferences Amenity"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT preferences_id ON public."Preferences Amenity" IS 'FK - Preferences ID';


--
-- TOC entry 3488 (class 2606 OID 16835)
-- Name: Preferences Property Type preferences_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Preferences Property Type"
    ADD CONSTRAINT preferences_id FOREIGN KEY (preferences_id) REFERENCES public."Preferences"(id) NOT VALID;


--
-- TOC entry 3920 (class 0 OID 0)
-- Dependencies: 3488
-- Name: CONSTRAINT preferences_id ON "Preferences Property Type"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT preferences_id ON public."Preferences Property Type" IS 'FK - Preferences ID';


--
-- TOC entry 3477 (class 2606 OID 16775)
-- Name: User profile_img; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT profile_img FOREIGN KEY (profile_img) REFERENCES public."Media"(id) NOT VALID;


--
-- TOC entry 3921 (class 0 OID 0)
-- Dependencies: 3477
-- Name: CONSTRAINT profile_img ON "User"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT profile_img ON public."User" IS 'FK - Media';


--
-- TOC entry 3458 (class 2606 OID 16650)
-- Name: Booking promo_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Booking"
    ADD CONSTRAINT promo_id FOREIGN KEY (promo_id) REFERENCES public."Promo"(id) NOT VALID;


--
-- TOC entry 3922 (class 0 OID 0)
-- Dependencies: 3458
-- Name: CONSTRAINT promo_id ON "Booking"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT promo_id ON public."Booking" IS 'FK - Promo ID';


--
-- TOC entry 3456 (class 2606 OID 16635)
-- Name: Booking property_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Booking"
    ADD CONSTRAINT property_id FOREIGN KEY (property_id) REFERENCES public."Property"(id) NOT VALID;


--
-- TOC entry 3923 (class 0 OID 0)
-- Dependencies: 3456
-- Name: CONSTRAINT property_id ON "Booking"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT property_id ON public."Booking" IS 'FK - Property ID';


--
-- TOC entry 3480 (class 2606 OID 16795)
-- Name: Property Amenity property_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Property Amenity"
    ADD CONSTRAINT property_id FOREIGN KEY (property_id) REFERENCES public."Property"(id) NOT VALID;


--
-- TOC entry 3924 (class 0 OID 0)
-- Dependencies: 3480
-- Name: CONSTRAINT property_id ON "Property Amenity"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT property_id ON public."Property Amenity" IS 'FK - Property ID';


--
-- TOC entry 3482 (class 2606 OID 16805)
-- Name: Property Review property_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Property Review"
    ADD CONSTRAINT property_id FOREIGN KEY (property_id) REFERENCES public."Property"(id) NOT VALID;


--
-- TOC entry 3925 (class 0 OID 0)
-- Dependencies: 3482
-- Name: CONSTRAINT property_id ON "Property Review"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT property_id ON public."Property Review" IS 'FK - Property ID';


--
-- TOC entry 3494 (class 2606 OID 16975)
-- Name: Property Images property_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Property Images"
    ADD CONSTRAINT property_id FOREIGN KEY (property_id) REFERENCES public."Property"(id);


--
-- TOC entry 3926 (class 0 OID 0)
-- Dependencies: 3494
-- Name: CONSTRAINT property_id ON "Property Images"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT property_id ON public."Property Images" IS 'FK Property ID';


--
-- TOC entry 3470 (class 2606 OID 16725)
-- Name: Property property_type_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Property"
    ADD CONSTRAINT property_type_id FOREIGN KEY (property_type_id) REFERENCES public."Property Type"(id) NOT VALID;


--
-- TOC entry 3927 (class 0 OID 0)
-- Dependencies: 3470
-- Name: CONSTRAINT property_type_id ON "Property"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT property_type_id ON public."Property" IS 'FK - Property Type ID';


--
-- TOC entry 3489 (class 2606 OID 16840)
-- Name: Preferences Property Type property_type_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Preferences Property Type"
    ADD CONSTRAINT property_type_id FOREIGN KEY (property_type_id) REFERENCES public."Property Type"(id) NOT VALID;


--
-- TOC entry 3928 (class 0 OID 0)
-- Dependencies: 3489
-- Name: CONSTRAINT property_type_id ON "Preferences Property Type"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT property_type_id ON public."Preferences Property Type" IS 'FK - Property Type ID';


--
-- TOC entry 3462 (class 2606 OID 16680)
-- Name: Message receiver_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Message"
    ADD CONSTRAINT receiver_id FOREIGN KEY (receiver_id) REFERENCES public."User"(id) NOT VALID;


--
-- TOC entry 3929 (class 0 OID 0)
-- Dependencies: 3462
-- Name: CONSTRAINT receiver_id ON "Message"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT receiver_id ON public."Message" IS 'FK - Receiver ID';


--
-- TOC entry 3473 (class 2606 OID 16750)
-- Name: Review review_by_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT review_by_id FOREIGN KEY (review_by_id) REFERENCES public."User"(id) NOT VALID;


--
-- TOC entry 3930 (class 0 OID 0)
-- Dependencies: 3473
-- Name: CONSTRAINT review_by_id ON "Review"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT review_by_id ON public."Review" IS 'FK - Reviewed By ID';


--
-- TOC entry 3454 (class 2606 OID 16625)
-- Name: Booking review_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Booking"
    ADD CONSTRAINT review_id FOREIGN KEY (review_id) REFERENCES public."Review"(id) NOT VALID;


--
-- TOC entry 3931 (class 0 OID 0)
-- Dependencies: 3454
-- Name: CONSTRAINT review_id ON "Booking"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT review_id ON public."Booking" IS 'FK - Review ID';


--
-- TOC entry 3483 (class 2606 OID 16810)
-- Name: Property Review review_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Property Review"
    ADD CONSTRAINT review_id FOREIGN KEY (review_id) REFERENCES public."Review"(id) NOT VALID;


--
-- TOC entry 3932 (class 0 OID 0)
-- Dependencies: 3483
-- Name: CONSTRAINT review_id ON "Property Review"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT review_id ON public."Property Review" IS 'FK - Review ID';


--
-- TOC entry 3472 (class 2606 OID 16745)
-- Name: Review review_type_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT review_type_id FOREIGN KEY (review_type_id) REFERENCES public."Review Type"(id) NOT VALID;


--
-- TOC entry 3933 (class 0 OID 0)
-- Dependencies: 3472
-- Name: CONSTRAINT review_type_id ON "Review"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT review_type_id ON public."Review" IS 'FK - Review Type ID';


--
-- TOC entry 3461 (class 2606 OID 16675)
-- Name: Message sender_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Message"
    ADD CONSTRAINT sender_id FOREIGN KEY (sender_id) REFERENCES public."User"(id) NOT VALID;


--
-- TOC entry 3934 (class 0 OID 0)
-- Dependencies: 3461
-- Name: CONSTRAINT sender_id ON "Message"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT sender_id ON public."Message" IS 'FK - Sender ID';


--
-- TOC entry 3451 (class 2606 OID 16605)
-- Name: Activity Log user_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Activity Log"
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public."User"(id) NOT VALID;


--
-- TOC entry 3935 (class 0 OID 0)
-- Dependencies: 3451
-- Name: CONSTRAINT user_id ON "Activity Log"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT user_id ON public."Activity Log" IS 'FK - User ID';


--
-- TOC entry 3474 (class 2606 OID 16755)
-- Name: User user_type_id; Type: FK CONSTRAINT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT user_type_id FOREIGN KEY (user_type_id) REFERENCES public."User Type"(id) NOT VALID;


--
-- TOC entry 3936 (class 0 OID 0)
-- Dependencies: 3474
-- Name: CONSTRAINT user_type_id ON "User"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON CONSTRAINT user_type_id ON public."User" IS 'FK - User Type ID';


-- Completed on 2023-12-03 22:10:59 CET

--
-- PostgreSQL database dump complete
--

