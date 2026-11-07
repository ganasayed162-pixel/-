-- شغّل هذا الملف كاملاً في Supabase > SQL Editor
create table if not exists products(
  id uuid primary key default gen_random_uuid(),
  name text not null, category text default 'ريسيفر',
  price numeric default 0, image_url text,
  in_stock boolean default true, created_at timestamptz default now());
create table if not exists requests(
  id uuid primary key default gen_random_uuid(),
  name text not null, phone text not null, service text,
  address text, notes text, status text default 'جديد',
  created_at timestamptz default now());
create table if not exists sales(
  id uuid primary key default gen_random_uuid(),
  customer text, item text not null, amount numeric not null,
  created_at timestamptz default now());
alter table products enable row level security;
alter table requests enable row level security;
alter table sales enable row level security;
-- الزوار: يشوفوا المنتجات ويبعتوا طلب فقط
create policy "pub read products" on products for select using (true);
create policy "pub insert requests" on requests for insert with check (true);
-- الأدمن (مسجّل دخول): كل الصلاحيات
create policy "admin products" on products for all to authenticated using (true) with check (true);
create policy "admin requests" on requests for all to authenticated using (true) with check (true);
create policy "admin sales" on sales for all to authenticated using (true) with check (true);
