SELECT 
	c.id, c.host_id, c.guest_id,
	h.id as host_user_id,
	g.id as guest_user_id
FROM public."Chat" as c
JOIN public."User" as h
ON c.host_id = h.host_id
JOIN public."User" as g
ON c.guest_id = g.guest_id;
