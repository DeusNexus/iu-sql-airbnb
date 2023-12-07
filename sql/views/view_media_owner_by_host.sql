WITH vi AS (SELECT u.id as user_id, u.host_id
FROM public."User" as u
WHERE u.host_id IS NOT NULL)
SELECT vi.*, m.*
FROM vi
JOIN public."Media" as m
ON m.owner = vi.user_id;
