WITH vi AS (
    SELECT r.*, u.id AS user_id
    FROM public."Review" AS r
    JOIN public."User" AS u ON u.guest_id = r.review_by_id
    WHERE review_type_id = 3
)
SELECT vi.user_id, b.property_id
FROM vi
JOIN public."Booking" as b
ON b.guest_id = vi.review_by_id;
