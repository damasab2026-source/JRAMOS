create extension if not exists pgcrypto;
create table public.products(id uuid primary key default gen_random_uuid(),name text not null,brand text,category text not null check(category in('Hombre','Mujer','Unisex')),ml integer not null default 100,retail numeric(10,2) not null,wholesale numeric(10,2) not null,stock integer not null default 0,image_url text,active boolean not null default true,created_at timestamptz not null default now());
alter table public.products enable row level security;
create policy "Public read active products" on public.products for select using(active=true);
-- Configura una política INSERT/UPDATE/DELETE limitada al usuario administrador.
-- No habilites escritura para todos los usuarios autenticados.
insert into storage.buckets(id,name,public) values('product-images','product-images',true) on conflict(id) do nothing;
create policy "Public view product images" on storage.objects for select using(bucket_id='product-images');
-- Crea políticas INSERT/UPDATE/DELETE para product-images solo para el administrador.
