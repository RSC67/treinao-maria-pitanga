# Treinão Maria Pitanga Capistrano

Página de inscrição do treinão de reinauguração da Maria Pitanga Capistrano (quinta, 22/10, concentração às 19h, largada às 19h30, 3 km).

- `index.html`: página estática. Envia a inscrição direto para a tabela `inscricoes_treinao` no Supabase usando a chave pública (publishable). O RLS só deixa o público **inserir**: ninguém de fora consegue ler a lista de inscritos.
- O limite de vagas (200) é garantido pelo gatilho `limitar_inscricoes_treinao` no banco. O contador da página usa a função `vagas_restantes()`. Se mudar o limite no banco, mude também `TOTAL_VAGAS` no `index.html`.

## Publicar no GitHub Pages

Settings → Pages → *Deploy from a branch* → escolha a branch com o `index.html` e a pasta `/ (root)`.

## Painel do balcão

`painel.html` (publicado em `/painel.html`): login da equipe, contadores, busca por código do vale, nome, WhatsApp ou equipe, e o botão de entregar o açaí. Só os e-mails da tabela `staff_treinao` com login criado em Supabase → Authentication → Users conseguem ver as inscrições.
