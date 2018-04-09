UPDATE delivery_partner
SET is_deleted = false
WHERE
 is_deleted IS true;