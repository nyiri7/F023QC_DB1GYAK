SELECT név, AVG(ár) AS Átlagnál_nagyobb_ár FROM éttermek.termék
GROUP BY név
HAVING AVG(ár) > (SELECT AVG(ár) FROM éttermek.termék);