-- شغّله مرة واحدة في Supabase > SQL Editor (يضيف خانة وصف المنتج)
alter table products add column if not exists description text;
