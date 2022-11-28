SELECT név FROM éttermek.termék term
JOIN éttermek.van van ON van.termékID = term.termékID
JOIN éttermek.étterem ét ON ét.étteremID = van.étteremID
WHERE ét.elérhetőség LIKE '%borcsaetterem.hu%';