-- 1. Написать SELECT, который покажет Записи в таблице Table1, которые есть в таблице Table2. Таблицы имеют связь по полю EntityID.

-- Решение:
select t1.*
    from Table1 t1
    join Table2 t2 
    on t1.EntityID = t2.EntityID
;

/* 2.таблица Table1 содержит данные по закупке позиций по заявкам.
 Структура:
 -RequestID – номер заявки
 -PositionID-Номер позиции
 -CatalogID-ссылка на каталог, которому принадлежит позиция.(ID каталога)
 -PositionQuantity-количество закупаемых позиций
 -PositionPrice- цена за 1 штуку
 Написать запрос (SELECT), который по каталогу № 1300 посчитает сумму закупки, по каждой заявке.
 Структура ожидаемого ответа(2 колонки):
 - RequestID
 -сумма закупки.
*/

-- Решение:
select  t1.RequestID,
        sum(t1.PositionQuantity * t1.PositionPrice) as PurchaseSUM
    from Table1 t1
    group by t1.RequestID
    having t1.CatalogID = 1300
;

/* 3.Сделать доп. условие в задаче п.2 - показать только те заявки каталога №1300, где количество строк (PositionID) в заявке по каталогу более 10 штук. Условие – только 1 команда SELECT и без использования вложенных SELECT.
 Структура ожидаемого ответа такая же как и в п.2 (2 колонки):
 - RequestID
 -сумма закупки.
*/

-- Решение:
select  t1.RequestID,
        sum(t1.PositionQuantity * t1.PositionPrice) as purchaseSUM
    from Table1 t1
	group by t1.RequestID
	having t1.CatalogID = 1300 and count(t1.PositionID) > 10
;
