-- Documents
create table documents (
  id uuid primary key default gen_random_uuid(),
  title text,
  content text,
  owner text,
  created_at timestamp default now()
);

-- Sharing
create table shares (
  id uuid primary key default gen_random_uuid(),
  document_id uuid references documents(id) on delete cascade,
  user_email text,
  created_at timestamp default now()
);