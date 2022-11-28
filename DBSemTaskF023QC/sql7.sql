SELECT elérhetőség FROM éttermek.étterem ét
JOIN éttermek.van van ON van.étteremID = ét.étteremID
ORDER BY van.beszállítási_idő DESC
LIMIT 1;