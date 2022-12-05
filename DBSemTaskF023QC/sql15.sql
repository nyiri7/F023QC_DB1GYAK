SELECT név
FROM éttermek.termék
WHERE termékID = ANY (SELECT termékID FROM éttermek.termék WHERE ár > 6000);


