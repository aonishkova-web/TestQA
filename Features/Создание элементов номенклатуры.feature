#language: ru

@tree

Функционал: создание номенклатуры

Как Тестировщик я хочу
я хочу проверить создание элементов номенклатуры
чтобы провести нагрузочное тестирование

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: создание элементов справочника номенклатура
	И я запоминаю значение выражения '1' в переменную "Шаг"		
	И я делаю 10 раз
		И я запоминаю значение выражения '$Шаг$+1'	в переменную "Шаг"		
		И я запоминаю значение выражения '"Кот-воркот "+$Шаг$'	в переменную "НаименованиеНоменклатуры"
		И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor' | 'ItemID' | 'PackageUnit' | 'Description_en' | 'Description_hash' | 'Description_ru'             | 'Description_tr' |
		| '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        |        | 'e1cib/data/Catalog.ItemTypes?ref=a6b718c04d8703fc11eebeba20afc72b' | 'e1cib/data/Catalog.Units?ref=a6b718c04d8703fc11eebeba20afc72c' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | ''       | ''       | ''            | ''               | ''                 | '$НаименованиеНоменклатуры$' | ''               |
	

