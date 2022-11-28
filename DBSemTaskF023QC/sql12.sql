SELECT DISTINCT MAX(ár) AS Maximum_ár, név FROM éttermek.termék term
JOIN éttermek.RT rt ON rt.termékID = term.termékID
WHERE rt.mennyiség = '1/2 adag';