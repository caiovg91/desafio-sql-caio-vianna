# 3. Liste a equipe de cada vendedor.

SELECT v.nome_vendedor, e.nome_equipe
FROM vendedor v
JOIN equipe e ON v.id_equipe = e.id_equipe
ORDER BY e.nome_equipe, v.nome_vendedor;