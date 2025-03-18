--Count ile where sutununde belirledigim sartlari saglayan butun verileri saydim
--where sarti icinde birden fazla olan sartim oldugu icin AND ile bagladim
--elde ettigim sonuc 0
--row sayisi 1
SELECT COUNT(*)
FROM invoice
WHERE invoice_id IS NULL
AND customer_id IS NULL
AND invoice_date IS NULL
AND billing_address IS NULL
AND billing_address IS NULL
AND billing_city IS NULL
AND billing_country IS NULL
AND billingpostal_code IS NULL
AND billing_state IS NULL
AND total IS NULL;


--istenilen sutun total sutunu ve karsilastirmak istedigim yeni sutunu ise new_total olarak adlandirdim
--total sutunu 2 ile carpip as ile yeni isim verdim
--Order by ile iki sutunu de desc yaptim ve sonucta 412 sutun karsilastirmali olarak sonuc verdi.
SELECT total,
total * 2 AS new_total
FROM invoice
ORDER BY total DESC, new_total DESC;



--Gostermek istedigim satirlari belirledim, date kismini da karsilastirma yapmak ve filtre isleminin dogru calisip calismadigini gormek icin ekledim
--sagdan 4 soldan 3 harf almak icin concat yaptim
--where icinde yil ve ay sartini sagladim 
--7 satir sonuc elde ettim
SELECT billing_address,invoice_date,
CONCAT(LEFT(billing_address, 3), RIGHT(billing_address, 4)) AS acik_adres
FROM invoice
WHERE EXTRACT(YEAR FROM invoice_date) = 2013
  AND EXTRACT(MONTH FROM invoice_date) = 8;















