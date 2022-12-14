INSERT INTO éttermek.étterem VALUES( 1, '3531 Miskolc, Győri kapu 45-47', 'Telefon: +3646428114, tokajkifozde.hu' );
INSERT INTO éttermek.étterem VALUES( 2, '3433 Nyékládháza, Vasút utca 13', 'Telefon: +36203423888, etnapizza.hu' );
INSERT INTO éttermek.étterem VALUES( 3, '3910 Tokaj, Hősök tere 1', 'Telefon: +36702960530, tokajtaverna.hu' );
INSERT INTO éttermek.étterem VALUES( 4, '1203 Budapest, Lajtha László utca 2', 'Telefon: +36207770001, artpub.hu' );
INSERT INTO éttermek.étterem VALUES( 5, '3860 Encs, Petőfi Sándor út 57', 'Telefon: +3646587340, anyukammondta.hu' );
INSERT INTO éttermek.étterem VALUES( 6, '8230 Balatonfüred, Tagore sétány 1', 'Telefon: +3687580070, borcsaetterem.hu' );
SELECT * FROM éttermek.étterem;

INSERT INTO éttermek.étterem_nyitvatartás VALUES( '11.45-22.30', 6 );
INSERT INTO éttermek.étterem_nyitvatartás VALUES( '11.00-16.00', 1 );
INSERT INTO éttermek.étterem_nyitvatartás VALUES( '11.00-17.00', 3 );
INSERT INTO éttermek.étterem_nyitvatartás VALUES( '11.00-22.00', 2 );
INSERT INTO éttermek.étterem_nyitvatartás VALUES( '12.00-24.00', 4 );
INSERT INTO éttermek.étterem_nyitvatartás VALUES( '12.00-22.00', 5 );
SELECT * FROM éttermek.étterem_nyitvatartás;

INSERT INTO éttermek.futár VALUES( 1, false, 'Kovács István', '+3670444888', 'Wolt', 2 );
INSERT INTO éttermek.futár VALUES( 2, true, 'Kis László', NULL, 'Foodpanda', 3 );
INSERT INTO éttermek.futár VALUES( 3, true, 'Medgyes György', '+3687565433', 'Wolt', 6 );
INSERT INTO éttermek.futár VALUES( 4, false, 'Gulyás Szabolcs', '+361321111', 'Teletál', 4 );
INSERT INTO éttermek.futár VALUES( 5, false, 'Gulyás György', '+361999888', 'FoodExpress', 4 );
INSERT INTO éttermek.futár VALUES( 6, false, 'Kiss Bálint', '+3620456423', 'Cantain', 1 );
INSERT INTO éttermek.futár VALUES( 7, true, 'Széplaki Eszter', '+3630321123', 'Wolt', 3 );
INSERT INTO éttermek.futár VALUES( 8, true, 'Virág Zsolt', '+3687126765', 'Jófalat', 5 );
INSERT INTO éttermek.futár VALUES( 9, false, 'Kerényi Zsófia', NULL, 'Foodpanda', 1 );
INSERT INTO éttermek.futár VALUES( 10, false, 'Ökrös Marianna', NULL, 'Jófalat', 5 );
SELECT * FROM éttermek.futár;

INSERT INTO éttermek.vevő VALUES( 1, 'Gonda György', NULL, 3526, 'Mohostó', 'utca', 12, NULL );
INSERT INTO éttermek.vevő VALUES( 2, 'Kiss János', '+3620321999', 3911, 'Jánosik', 'tér', 32, '3/2' );
INSERT INTO éttermek.vevő VALUES( 3, 'Kerekes László', '+3670242998', 2533, 'Szabadság', 'útja', 55, NULL );
INSERT INTO éttermek.vevő VALUES( 4, 'Kékes Zsolt', NULL, 1230, 'Nagy Sándor József', 'utca', 21, 'Fsz/2' );
INSERT INTO éttermek.vevő VALUES( 5, 'György István', '+36467550203', 3534, 'Jósika', 'utca', 33, '1/3' );
INSERT INTO éttermek.vevő VALUES( 6, 'Bók Mária', '+3687953345', 2619, 'Örökösök', 'útja', 63, NULL );
INSERT INTO éttermek.vevő VALUES( 7, 'Szerencsés Veronika', NULL, 1133, 'Lakosok', 'kertje', 55, NULL );
INSERT INTO éttermek.vevő VALUES( 8, 'Virág László', '+361555666', 1345, 'Rózsadomb', 'utca', 63, NULL );
SELECT * FROM éttermek.vevő;

INSERT INTO éttermek.bankkártya VALUES( '1983-2345-2112-4433', '2022-11-11', 325, 'Kiss János', 'MasterCard', 2 );
INSERT INTO éttermek.bankkártya VALUES( '1983-1343-2212-1234', '2024-12-12', 555, 'Bók Mária', 'MasterCard', 6 );
INSERT INTO éttermek.bankkártya VALUES( '9877-1333-2213-4241', '2023-03-05', 423, 'Virág László', 'VisaCard', 8 );
INSERT INTO éttermek.bankkártya VALUES( '9877-4555-2333-1231', '2025-01-13', 455, 'Szerencsés Veronika', 'VisaCard', 7 );
INSERT INTO éttermek.bankkártya VALUES( '3112-1343-4556-2123', '2022-12-31', 566, 'Gonda György', 'PayPal', 1 );
INSERT INTO éttermek.bankkártya VALUES( '1983-1445-5233-1212', '2023-03-12', 666, 'Szerencsés Veronika', 'MasterCard', 7 );
INSERT INTO éttermek.bankkártya VALUES( '9877-1342-1234-4231', '2024-05-23', 121, 'György István', 'VisaCard', 5 );
INSERT INTO éttermek.bankkártya VALUES( '3112-4422-3124-2425', '2025-02-28', 142, 'Bók Mária', 'PayPal', 6 );
INSERT INTO éttermek.bankkártya VALUES( '1983-5323-2356-4231', '2022-12-02', 975, 'Kékes Zsolt', 'MasterCard', 4 );
SELECT * FROM éttermek.bankkártya;

INSERT INTO éttermek.rendelés VALUES( 1, NULL, '12.03', 1, 5 );
INSERT INTO éttermek.rendelés VALUES( 2, 'Laktózmentes tejjel kérném a kávét', '13.55', 6, 7 );
INSERT INTO éttermek.rendelés VALUES( 3, 'Kizárólag szójával kérném az ételek elkészítését', '15.06', 4, 8 );
INSERT INTO éttermek.rendelés VALUES( 4, NULL, '15.45', 1, 1 );
INSERT INTO éttermek.rendelés VALUES( 5, NULL, '11.02', 2, 1 );
INSERT INTO éttermek.rendelés VALUES( 6, NULL, '20.00', 5, 3 );
INSERT INTO éttermek.rendelés VALUES( 7, 'Tofuval kérem helyettesíteni a köretet', '15.50', 3, 4 );
INSERT INTO éttermek.rendelés VALUES( 8, 'Rukkola salátát kérem mellőzzék a többi közül', '22.00', 6, 6 );
INSERT INTO éttermek.rendelés VALUES( 9, NULL, '13.29', 6, 2 );
INSERT INTO éttermek.rendelés VALUES( 10, NULL, '21.00', 2, 5 );
SELECT * FROM éttermek.rendelés;

INSERT INTO éttermek.termék VALUES( 1, 'Konfitált kacsacomb párolt káposztával', 6000, '30 perc' );
INSERT INTO éttermek.termék VALUES( 2, 'Rákóczi fatányéros', 12500, '60 perc' );
INSERT INTO éttermek.termék VALUES( 3, 'Dubarri csirkemell édes kávéval', 2599, '20 perc' );
INSERT INTO éttermek.termék VALUES( 4, 'Pisztráng roston', 3250, '30 perc' );
INSERT INTO éttermek.termék VALUES( 5, 'Libacomb vöröskáposztával', 5540, '40 perc' );
INSERT INTO éttermek.termék VALUES( 6, 'Paprikás krumpli, ahogy mi szeretjük', 3999, '15 perc' );
SELECT * FROM éttermek.termék;

INSERT INTO éttermek.termék_összetevők VALUES( 'Burgonya', 6 );
INSERT INTO éttermek.termék_összetevők VALUES( 'Rántott csirkemell', 2 );
INSERT INTO éttermek.termék_összetevők VALUES( 'Vöröskáposzta', 5 );
INSERT INTO éttermek.termék_összetevők VALUES( 'Fehérbor', 5 );
INSERT INTO éttermek.termék_összetevők VALUES( 'Karfiol', 3 );
INSERT INTO éttermek.termék_összetevők VALUES( 'Kacsazsír', 1 );
INSERT INTO éttermek.termék_összetevők VALUES( 'Kacsacomb', 1 );
INSERT INTO éttermek.termék_összetevők VALUES( 'Pisztráng', 4 );
INSERT INTO éttermek.termék_összetevők VALUES( 'Hal fűszerek', 4 );
INSERT INTO éttermek.termék_összetevők VALUES( 'Kolbász', 6 );
SELECT * FROM éttermek.termék_összetevők;

INSERT INTO éttermek.RT VALUES( 1, 4, '1 adag' );
INSERT INTO éttermek.RT VALUES( 2, 3, '1 adag' );
INSERT INTO éttermek.RT VALUES( 3, 1, '2 adag' );
INSERT INTO éttermek.RT VALUES( 4, 6, '1/2 adag' );
INSERT INTO éttermek.RT VALUES( 5, 2, '1/2 adag' );
INSERT INTO éttermek.RT VALUES( 6, 5, '2 adag' );
INSERT INTO éttermek.RT VALUES( 7, 2, '1 adag' );
INSERT INTO éttermek.RT VALUES( 8, 2, '1/2 adag' );
INSERT INTO éttermek.RT VALUES( 9, 1, '1 adag' );
INSERT INTO éttermek.RT VALUES( 10, 3, '1 adag' );
SELECT * FROM éttermek.RT;

INSERT INTO éttermek.van VALUES( 1, 6, '1 nap' );
INSERT INTO éttermek.van VALUES( 2, 4, '2 nap' );
INSERT INTO éttermek.van VALUES( 3, 5, '1 nap' );
INSERT INTO éttermek.van VALUES( 4, 2, '2 nap' );
INSERT INTO éttermek.van VALUES( 5, 3, '3 nap' );
INSERT INTO éttermek.van VALUES( 6, 1, '1 nap' );
SELECT * FROM éttermek.van;