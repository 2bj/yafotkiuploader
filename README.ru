Это скрипт предназначен для закачивания фотографий на сервис
Яндекс Фотки (http://fotki.yandex.ru). Программа неофициальная,
и Яндекс не занимается ее поддержкой и распространением.

Для работы скрипта вам понадобится библиотека BeautifulSoup.
Если же вы хотите, чтобы теги, название и описание фотографии
брались из Exif и Iptc тегов, то вам так же понадобится
библиотека python-pyexiv2.

В Linux системах, основанных на Debian, эти пакеты устанавливаются
очень просто:

    apt-get install python-beautifulsoup python-pyexiv2

Вот один из возможных вариантов использования:

Получаем список альбомов:

    ./YaFotkiUploader.py -u username -p password --albums

Загружаем все снимки из текущей директории в альбом 1234:

    ./YaFotkiUploader.py -u username -p password --album 1234 --upload *.jpg


Список изменений:

Версия 0.2.2

  * Исправлена ошибка, возникающая при отсутствующем pyexiv2.
  * Скрипт больше не создает временных файлов на диске.

