-- Código do vale-açaí: 4 caracteres sem 0/O e 1/I/L. A página gera o código e
-- o envia junto com a inscrição; o default cobre inscrições feitas sem ele.
create or replace function public.gerar_codigo_treinao()
returns text language sql volatile set search_path = public as $$
  select string_agg(substr('ABCDEFGHJKMNPQRSTUVWXYZ23456789', 1 + floor(random()*31)::int, 1), '')
  from generate_series(1,4);
$$;

alter table public.inscricoes_treinao
  add column if not exists codigo text not null default public.gerar_codigo_treinao();

alter table public.inscricoes_treinao
  add constraint inscricoes_treinao_codigo_key unique (codigo),
  add constraint inscricoes_treinao_codigo_formato check (codigo ~ '^[A-Z2-9]{4}$');
