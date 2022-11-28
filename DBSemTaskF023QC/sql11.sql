SELECT cím FROM éttermek.étterem ét
JOIN éttermek.futár fut ON fut.étteremID = ét.étteremID
WHERE fut.elérhető = false
GROUP BY cím;