# Treinão Pitanga em Movimento

Página de inscrição do treinão da Maria Pitanga (domingo, 25/10, saída às 6h).

- `index.html`: página estática. Envia a inscrição direto para a tabela `inscricoes_treinao` no Supabase usando a chave pública (publishable). O RLS só deixa o público **inserir**: ninguém de fora consegue ler a lista de inscritos.
- O limite de vagas (200) é garantido pelo gatilho `limitar_inscricoes_treinao` no banco. O contador da página usa a função `vagas_restantes()`. Se mudar o limite no banco, mude também `TOTAL_VAGAS` no `index.html`.

## Publicar no GitHub Pages

Settings → Pages → *Deploy from a branch* → escolha a branch com o `index.html` e a pasta `/ (root)`.
