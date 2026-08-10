DO $$
DECLARE
  la_jurisdiction_id UUID;
BEGIN
  SELECT j.id
  INTO la_jurisdiction_id
  FROM jurisdictions j
  WHERE j.name = 'Los Angeles'
  ORDER BY j.created_at ASC
  LIMIT 1;

  IF la_jurisdiction_id IS NULL THEN
    RETURN;
  END IF;

  UPDATE jurisdictions
  SET
    duplicate_listing_permissions = ARRAY['admin']::"user_role_enum"[],
    updated_at = now()
  WHERE id = la_jurisdiction_id;
END $$;
