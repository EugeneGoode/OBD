# Statt_. Аналіз предметної області

## Вступ

  В цьому документі розглядаються основи створення системи аналізу медіа-контенту. Проаналізовані основні визначення, такі як: система, вебслужба, вебсервіс, інтелектуальний аналіз даних. Проведений аналіз методів вивчення змісту медіа-комунікацій, які будуть слугувати базою для виконання проекту. Зроблена характеристика систем-аналогів та аналіз їх недоліків.

--------------

## Основні визначення

- **Система** — множина взаємопов'язаних елементів, що утворюють єдине ціле, взаємодіють із середовищем та між собою, і мають мету.

- **Вебслужба, вебсервіс (англ. web service)** — програмна система, що ідентифікується URI, і публічні інтерфейси та прив'язки якої визначені та описані мовою XML. Опис цієї програмної системи може бути знайдено іншими програмними системами, які можуть взаємодіяти з нею відповідно до цього опису з використанням повідомлень, що базуються на XML та передаються за допомогою інтернет-протоколів.

- **Інтелектуальний аналіз даних (Data Mining)** - це сучасна концепція аналізу даних, яка припускає, що дані можуть бути неточними, неповними (містити пропуски), суперечливими, різнорідними, непрямими, і при цьому мати гігантські обсяги. Тому розуміння даних в конкретних програмах вимагає значних інтелектуальних зусиль. В інтелектуальному аналізі даних застосовується математичний апарат для виявлення закономірностей і тенденцій, що існують в даних.

- **Традиційними методами аналізу** є сукупність операцій, яка дозволяє інтерпретувати документ згідно з метою дослідника. Інтерпретація тексту в таких умовах дозволяє дослідити сутність документу, мотивацію та наміри комунікатора, особливості створення документу, очікуваний ефект та вплив повідомлення тощо. Традиційні методи відрізняються від формалізованих тим, що вони є суб'єктивними та залежать від установок дослідника по відношенню до опрацювання матеріалу та інтерпретації тексту. Висновки щодо одного і того ж документу, який проінтерпретований різними дослідниками, можуть різнитись.
   Що стосується переваг традиційних методів аналізу, то вони можуть бути використані на базі одного чи кількох документів, тоді як контент-аналіз потребує великої кількості матеріалу. При традиційних методах аналізу документ не втрачає оригінальність та інші особливі риси. Вдале використання цих методів є тоді, коли документ є унікальним.
   Виділяють зовнішній та внутрішній аналізи. Зовнішній аналіз допомагає перевірити надійність та достовірність документа, дає зрозуміти його мотиви і те, у яких історичних обставинах документ створено. Внутрішній аналіз полягає у аналізі змісту, а саме сприяє вивченню співвідношень різних елементів тексту, модальності, ставлення автора до тема та інше.
   Поширеними традиційними методами аналізу документів є журналістський, біографічний, історичний, літературний та багато інших.
   
- **Феноменологічний аналіз** ідентифікує базові структури суб'єктивного досвіду, а саме духовних намірів та особистісних смислів, дозволяє вивчити емоційно-ціннісний арсенал переживань особистісних смислів.
   
- **Дискурс** — система пов'язаних між собою символів, які є посиланням на досвід; вираження суспільних практик через символи.
   Виділяють два підходи до визначення поняття «дискурс». Згідно з першим підходом, дискурс — це форма вираження, в яку може бути вкладено потрібний зміст. Цей підхід використовується при вивченні дискурсу як інструменту маніпуляції словом.
   Другий підхід орієнтується на внутрішню організацію елементів тексту. Тоді дискурс постає як повноцінний текст; діалог; група висловлювань, які пов'язані одним смислом; одиниця висловлювання в глобальному сенсі. Цей підхід є ефективним для опису методики проведення дискурс-аналізу, проведення дискурсивного аналізу та, в першу чергу, виділення одиниці аналізу. Одиницею аналізу може слугувати висловлювання, яке має інтригу, незалежно від того, чи є воно послідовністю слів чи речень.
   Особливість дискурс-аналізу полягає в тому, що він описує текст у термінах теорій, які розроблені для деяких рівнів дискурсу. Класична лінгвістична семіотика орієнтується на форму і значення як складову знаку, а згідно з дискурс-аналізом текст представлений як складне утворення, яке потребує окремого дослідження фонетичних, графічних, морфологічних, синтаксичних, мікро- і макросемантичних, стилістичних, риторичних, прагматичних, інтеракціоністських та інших структур та стратегій.

- **Аналіз природної мови** охоплює методики обчислюваної лінгвістики та теорії штучного інтелекту.
   Аналіз природної мови є набір комп'ютеризованих технік та методик для аналізу текстів. Згідно з дослідницею Елізабет Лідді, текст може бути написаний будь-якою мовою, в будь-якому жанрі, він може бути усний чи письмовий. Важливо, щоб текст був мовою, яка використовується індивідами для спілкування. Основне завдання полягає у взаємодії людських комунікативних актів (вербальних та невербальних) та комп'ютерних систем. Прикладами інших задач є класифікація, кластеризація колекцій документів, глибинний аналіз текстів, переклад документів з однієї мови на іншу та інші.
   Базою для аналізу природної мови є формальні теорії мови. Об'єктом аналізу є не лише писемний текст, а також звуки, відео-файли та інші засоби, що передають інформацію (жести, дотики).
   
- **Текст-майнінг** — міждисциплінарний напрямок досліджень; налічує набір технік, які можуть виявити в тексті нетривіальні тенденції; охоплює методики обробки інформації, машинного навчання, статистичної класифікації, роботи з базами даних, які можна застосувати до тексту.
   Текст майнінг передбачає два етапи:
-Зміна тексту (text refining) у проміжну форму.
-Виокремлення знання (knowledge distillation), що означає визначення патернів у проміжній формі
   Проміжні форми — структуровані чи напівструктуровані. Одиниці аналізу — документи чи концепти. Базою для текст-майнінгу є теорії обчислюваної лінгвістики та галузі інформатики. Об'єктом аналізу є текстові дані, які містять змістовну інформацію. Текст-майнінг та аналіз природної мови широко використовуються у контент-аналізі.
   Завданнями є категоризація документів, пошук інформації, внесення змін до колекції текстів, створення засобів для представлення інформації.
   
- **Контент-аналіз** є найпопулярнішим методом дослідження. Існує велика кількість визначень цього поняття. Класичне визначення Барельсона наступне: «Контент-аналіз — це дослідницька техніка для об'єктивного, системного й кількісного опису наявного змісту комунікації, яка відповідає цілям дослідника».
   Визначення, яке передає усю сутність цього методу звучить таким чином «контент-аналіз є вимірюванням тексту чи іншого символьного матеріалу, що має методологічне підґрунтя і відповідає завданням соціальних наук». У контент-аналізі можливо робити загальні висновки, які стосуватимуться усього джерела. Ця ознака є відмінною рисою контент-аналізу від традиційного аналізу документів.

- ***Прецедент (англ. Use Case)*** – список етапів, що послідовно описує взаємодію
системи з користувачем та використовується для досягнення певної мети,
визначеної дійовою особою (англ. Actor).

Прецеденти слугують для документування функціональних вимог до програмних
систем. Описуючи деякий цілісний фрагмент поведінки системи, прецедент не
вдається в особливості внутрішньої структури суб’єкта. Визначення прецеденту
містить всі властиві йому види поведінки: основну послідовність, різноманітні
варіанти стандартної поведінки та різні виключні ситуації із зазначенням
відповідної реакції на них.

На діаграмах прецедентів в UML Use Case зображується у вигляді еліпса, всередині
якого (або під ним) вказується ім’я елемента.

До прецедентів в UML застосовні наступні види відношень:

- ***Асоціація (англ. Association)*** – вказує на те, що Actor ініціює відповідний
варіант використання.

- ***Розширення (англ. Extend)*** – різновид відношення залежності між базовим
варіантом використання та його частковим випадком.

- ***Включення (англ. Include)*** – визначає зв'язок базового варіанта використання
з іншим, функціональна поведінка якого завжди задіюється базовим варіантом.

- ***Узагальнення (англ. Generalization, наслідування)*** – моделює відповідну
спільність ролей.

***Actor*** – діюча особа (користувач, система, програма), спроможна приймати
рішення та взаємодіяти з розроблюваною системою.

***Діаграма Use Case*** – абстраговане представлення компонентів бази даних, дій та
зв’язків між ними.

***Специфікация*** - це формалізований опис властивостей, характеристик і функцій
об'єктів.

--------------

## Підходи та способи вирішення завдання
 
### Існують такі підходи та способи вирішення поставленного завдання:
 
 - ***Data mining*** - процес напівавтоматичного аналізу великих баз даних з метою пошуку корисних фактів. Зазвичай поділяють на задачі класифікації, моделювання та прогнозування. Застосовується зазвичай для обробки природної мови та реферування. Методи data mining можуть бути застосовані як для роботи з великими даними, так і для обробки порівняно малих обсягів даних. Знання, що видобуваються методами data mining, прийнято представляти у вигляді закономірностей (патернів). Серед таких виступають: асоціативні правила, дерева рішень, кластери, математичні функції.

 - ***Text mining*** -  напрям інтелектуального аналізу даних (англ. Data Mining) та штучного інтелекту, метою якого є отримання інформації з колекцій текстових документів, ґрунтуючись на застосуванні ефективних, у практичному плані, методів машинного навчання та обробки природної мови. Інтелектуальний аналіз тексту використовує всі ті ж підходи до перероблювання інформації, що й інтелектуальний аналіз даних, однак різниця між цими напрямками проявляється лише в кінцевих методах, а також у тому, що інтелектуальний аналіз даних має справу зі сховищами та базами даних, а не електронними бібліотеками та корпусами текстів.
 
 - ***Natural Language Processing*** - загальний напрямок штучного інтелекту і математичної лінгвістики. Воно вивчає проблеми комп'ютерного аналізу і синтезу природних мов. Стосовно до штучного інтелекту аналіз означає розуміння мови, а синтез - генерацію грамотного тексту. Вирішення цих проблем буде означати створення більш зручної форми взаємодії комп'ютера і людини.
 
 - ***Tokenization*** - процес заміни конфіденційного елемента даних на неконфіденційну еквівалент, званий токеном, який не має самостійного сенсу / значення для зовнішнього або внутрішнього використання. Токен - це посилання (тобто ідентифікатор), яка зіставляється з конфіденційними даними через систему токенізаціі. Зіставлення вихідних даних з токеном використовує методи, які унеможливлюють зворотне перетворення токенов в вихідні дані поза системою токенізаціі, наприклад, з використанням токенов, створених за допомогою випадкових чисел.
 
 - ***Named-entity recognition*** - є підзадачею на вилучення інформації, яка спрямована на пошук та класифікацію названих осіб, згаданих у неструктурованому тексті, за заздалегідь визначеними категоріями, такими як імена осіб, організації, місцезнаходження, медичні коди, вирази часу, кількості, грошові значення, відсотки тощо.
 
 - ***Emotions Detection*** - це процес ідентифікації людських емоцій. Точність розпізнавання емоцій інших людей різниться. Використання технологій для допомоги людям з розпізнаванням емоцій є відносно новим напрямком досліджень. Як правило, технологія найкраще працює, якщо вона використовує різні умови в контексті. На сьогоднішній день найбільше роботи проведено щодо автоматизації розпізнавання міміки з відео, розмовних виразів з аудіо, письмових виразів з тексту та фізіології, виміряних носіями.
 
 - ***Rule Based AI*** - це спосіб, який використовується для зберігання та маніпулювання знаннями для корисної інтерпретації інформації. Він часто використовується в програмах штучного інтелекту та дослідженнях.
Зазвичай термін "Rule Based" застосовується до систем, що включають створені людиною або куровані набори правил. Системи, засновані на правилах, побудовані з використанням автоматичного виведення правил, такі як машинне навчання на основі правил, зазвичай виключаються з цього типу системи.

 - ***Word2vec*** - це техніка для обробки природної мови. Алгоритм word2vec використовує модель нейронної мережі для вивчення асоціацій слів із великого корпусу тексту. Після навчання така модель може виявляти слова-синоніми або пропонувати додаткові слова для часткового речення. Як випливає з назви, word2vec представляє кожне окреме слово з певним списком чисел, який називається вектором.
 
 - ***Deep learning*** - сукупність методів машинного навчання (з учителем, з частковим залученням вчителя, без учителя, з підкріпленням), заснованих на навчанні уявленням, а не спеціалізованим алгоритмам під конкретні завдання. Метод допомогає створювати складні технологічні архітектури нейронних мереж, що володіють достатньою продуктивністю і дозволяють вирішувати широкий спектр завдань, які не піддавалися ефективному вирішенню раніше, наприклад, в комп'ютерному зорі, машинний переклад, розпізнаванні мови, причому якість рішення в багатьох випадках тепер можна порівняти, а в деяких випадках перевершує ефективність людини
 
 - ***Full text search*** - це більш вдосконалений спосіб пошуку в базі даних. Full text search швидко знаходить усі екземпляри терміна (слова) у таблиці, не потребуючи сканування рядків і не знаючи, в якому стовпці зберігається термін. Full text search працює за допомогою текстових індексів.
 
### Існують два методи вивчення змісту медіа-комунікацій:
- Якісні методи
- Кількісні методи

### Виділяють наступні якісні методи:
- Традиційні методи аналізу
- Феноменологічний аналіз
- Дискурс-аналіз

### Виділяють наступні кількісні методи:
- аналіз природної мови
- текст-майнінг
- контент-аналіз

--------------

## Порівняльна характеристика існуючих засобів вирішення завдання

### Існуючі програми:

- [Semantrum](https://promo.semantrum.net/uk/golovna/) - це онлайн-сервіс для моніторингу традиційних та Інтернет-ЗМІ з автоматичною обробкою публікацій (тональність, персони, бренди, гео, мова). 

Аналітика: кодифікація публікацій, PR-метрики, експертні оцінки. 

Аналітичні дешборди з оновлюваними діаграмами, графіками, віджетами. 

Експорт даних у різних форматах та e-mail розсилки з гнучким налаштуванням. 

Використовуються технології обробки великих масивів даних (Big Data). 
Semantrum використовують: державні установи, політичні партії, компанії, публічні персони, бренди, громадські організації, посольства і міжнароді організації, PR-агентства, журналісти


- [Neticle Media Intelligence](https://neticle.com/mediaintelligence/ru/) - розумний моніторинг ЗМІ, медіа аналіз і соціальне прослуховування. 
Аналіз в режимі реального часу - відслідковує інтернет в режимі реального часу, щоб найти всі згадування про бренд, продукт, компанію чи конкурентів.
Автоматизований аналіз текстів - аналізує кожне згадування на рівні людської точності. Система розпізнає позитивний чи негативний тон тексту і ключові теми, лиця, бренди, атрибути чи місця, згадані в них. 
Вивід інформації в формі допомогою діаграм.


- [YouScan](https://youscan.io/) - відстежує понад 500 мільйонів публікацій у соціальних мережах щодня, і більше половини з них - це зображення. 
Візуальна інформація YouScan видає картину онлайн-розмов про ваш бренд.
Розпізнавання логотипів, виявлення об’єктів та сцен.
YouScan визначає всіх авторитетів, які згадують ваш бренд. 
Visual Insights
Аналіз випадків використання
Аналізо зображень.


- [SemanticForce](https://www.semanticforce.net) - SemanticForce - платформа для моніторингу та аналізу інтернет ЗМІ, соціальних мереж, відео, форумів, блогів, вакансій та інших видів онлайн-медіа. Унікальність системи полягає в наявності ряду інноваційних пошукових і семантичних технологій, а також інтеграції з різними зовнішніми системами, наприклад, KLOUT, Copiny або Google Analytics.
Архітектура платформи і її аналітичні можливості спеціально розроблені для моніторингу та аналізу високочастотних об'єктів в режимі реального часу.


- [IQBuzz](https://iqbuzz.pro/) - це сервіс для моніторингу соціальних медіа та онлайн ЗМІ. Цей інструмент допомагає детально аналізувати і управляти репутацією в Мережі. При цьому інструмент здатний оптимізувати роботу відділів з маркетингу та PR, скорочуючи час і розширюючи можливості при пошуку інформації. Система IQBuzz здатна обробляти дані з понад 10 тисяч джерел онлайн-ЗМІ, захоплюючи повідомлення з Facebook, Twitter, ВКонтакте, Мій Світ, Instagram, 4sq, LiveJournal, LiveInternet, Google+, YouTube, RuTube і безлічі інших.
Компанія розуміє під своїми перевагами величезну видачу по соцмедіа, визначення тональності повідомлень, хорошу підтримку користувачів і роботу сервісу на мобільних пристроях.


- [StarComment](https://starcomment.io/) -  інструмент для моніторингу соцмереж і тематичних сайтів. Підходить для пошуку лідов, відстеження коментарів і відгуків, аналізу конкурентів. Особливістю є моніторинг за окремим завданням на кожну соцмережу. Основні функції :
  - Моніторинг коментарів і згадок ВКонтакте, Instagram, Facebook, Однокласники, YouTube, Google Play, Flamp, TripAdvisor, TrustPilot.
  - Фільтри за ключовими словами, стоп-словами, країні, підлозі, наявності посилань.
  - Моніторинг коментарів і записів в спільнотах і профілях конкурентів.
  - Вивантаження ID користувачів, щоб зорієнтувати рекламу на людей, які цікавляться товаром.
  - Відповіді на коментарі та повідомлення в Instagram з інтерфейсу сервісу.


### Порівняльна характеристика властивостей FURPS:

- 🟢 - Добре
- 🟡 - Задовільно
- 🔴 - Незадовільно
- ⚪️ - Немає інформації

|Вимоги| Критерії | Semantrum | Neticle Media Intelligence | YouScan | SemanticForce | IQBuzz | StarComment |
|:----:| :--------------: | :-------------: | :----: |  :----:  |:-----:| :-----: | :-----: | 
| **Функціональність** | Особистий кабінет | 🟢 | 🟢 | 🟢 | 🟢 | 🟢 | 🟢 |
|  | Візуальний вивід даних | 🟢 | 🟢 | 🟢 | 🟢 | 🟢 | 🟢 |
|  | Моніторинг ЗМІ | 🟢 | 🟢 | 🟢 | 🟢 | 🟢 | 🔴 |
|  | Сповіщення | 🟢 | 🟢 | 🟢 | 🟢 | 🟢 | 🟢 |
|  | Інтеграція з месенджерами | 🟢 | 🟡 | 🟢 | 🟡 | 🟡 | 🟢 |
| **Зручність** | Наявність демо-доступу | 🟢 | 🟢 | 🟢 | 🟢 | 🟢 | 🟢 |
|  | Зручність інтерфейсу | 🟡 | 🟡 | 🟢 | 🟡 | 🟢 | 🟢 |
|  | Оптимізація під різні мови | 🟢 | 🟡 | 🟢 | 🟡 | 🔴 | 🟡 |
|  | Зручність користування з телефону | 🟡 | 🟢 | 🟢 | 🔴 | 🟢 | 🟢 |
| **Надійність** | Крупні бренди в ролі клієнтів | ⚪️ | 🟢 | 🟢 | 🟢 | ⚪️ | 🟡 |
|  | Захист даних | ⚪️ | 🟢 | 🟢 | 🟢 | ⚪️ | ⚪️ |
| **Продуктивність** | Швидкість роботи сервісу | 🟡 | 🟢 | 🟢 | 🔴 | 🟢 | 🟢 |
|  | Оптимізация інтерфейсу | 🟡 | 🟢 | 🟡 | 🟢 | 🟢 | 🟡 |
| **Підтримка** | Служба підтримки | 🟢 | 🟢 | 🟢 | 🟢 | 🟢 | 🟢 |
|  | FAQ | 🟢 | 🟢 | 🟢 | 🟢 | 🟢 | 🟢 |

### Недоліки:
- Semantrum: мала кількість можливих запитів;
- Neticle Media Intelligence: погана локалізація сайту українською та російською мовами;
- YouScan: інтерфейс працює повільно;
- SemanticForce: повільно працює, особливо це проявляється при розмітці тональності, визначивши тональність на сторінці потрібно хвилин 15 чекати поки все збережеться;
- IQBuzz: не відстежує персональні сторінки Facebook, відсутній пошук по зображенням;
- StarComment: розрахований на соцмережі, мало джерел; моніторить за завданнями, треба створювати завдання на кожну соцмережу окремо;

## Висновки

Проаналізувавши предметну область, можна зробити висновки щодо доцільності розробки нової інформаційної системи, а саме системи аналізу медіа-даних "Statt_".

--------------

## Посилання

- [Методи вивчення змісту медіа-комунікацій](https://uk.wikipedia.org/wiki/%D0%9C%D0%B5%D1%82%D0%BE%D0%B4%D0%B8_%D0%B2%D0%B8%D0%B2%D1%87%D0%B5%D0%BD%D0%BD%D1%8F_%D0%B7%D0%BC%D1%96%D1%81%D1%82%D1%83_%D0%BC%D0%B5%D0%B4%D1%96%D0%B0-%D0%BA%D0%BE%D0%BC%D1%83%D0%BD%D1%96%D0%BA%D0%B0%D1%86%D1%96%D0%B9)
- [Semantrum](https://promo.semantrum.net/uk/golovna/)
- [Neticle Media Intelligence](https://neticle.com/mediaintelligence/ru/)
- [YouScan](https://youscan.io/)
- [SemanticForce](https://www.semanticforce.net)
- [IQBuzz](https://iqbuzz.pro/)
- [StarComment](https://starcomment.io/)
