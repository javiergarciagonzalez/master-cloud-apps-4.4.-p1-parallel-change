-- REMOVE THE COLUMN
ALTER TABLE book DROP price;

-- ADD CONSTRAINTS
-- No need for adding constraints since the field could be null before.