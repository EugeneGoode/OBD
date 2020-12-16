# Statt_. Запити зацікавлених осіб

## Вступ

У цьому документі зазначені всі основні принципи та мету системи Statt_. 

Розглянули короткий огляд та характеристику ділових процесів даної системи

Створили список вимог стосовно: функціональності, практичністі, надійності, продуктивності та експлуатації придатності системи.

-------------

## Мета 

Метою документу є визначити головні вимоги до функціональності, продуктивності, надійності, зручності, доступності, а також визначити бізнес-правила та технологічні обмеження, що накладаються на предмет розробки.

-------------

## Контекст

Перелік вимог, зазначених у данному документі, є основою технічного завдання для розробки веб-сервісу, який допоможе користувачам виконувати пошук зображення за рейтингом.

-------------

## Посилання
 - ["Основні визначення та скорочення"](../requirements/state-of-the-art.md)
------------

## Короткий зміст

- [Вступ](#вступ)
- [Мета](#мета)
- [Контекст](#контекст)
- [Посилання](#посилання)
- [Характеристика ділових процесів](#характеристика-ділових-процесів)
- [Ролі](#ролі)
- [Сценарії](#сценарії)
- [Короткий огляд продукту](#короткий-огляд-продукту)
- [Функціональність](#функціональність)
- [Практичність](#практичність)
- [Надійність](#надійність)
- [Продуктивність](#продуктивність)
- [Експлуатаційна придатність](#експлуатаційна-придатність)

-----------

## Характеристика ділових процесів

### Ролі

- Адміністратор - особа, що контролює роботу системи та модераторів.
- Модератор - призначена адміністратором особа, що контролює роботу системи з користувачем
- Користувач - особа, що створює запит для обробки системою

### Сценарії

***ID:*** Mn.pr1

***Назва:*** Основний сценарій

***Учасники:*** Користувач, система, модератор

***Передумови:*** Відсутні

***Результат:*** Створення результату і його вивід на екран користувача

***Основний сценарій:*** 
1. Користувач заходить у створений особистий кабінет
2. Система підготовлює форму з наступними полями:
    1. Головне ключове слово та його варіації (обов’язкове)
    2. Додаткові ключові слова
    3. Період часу (обов’язкове)
    4. Регіон пошуку (обов’язкове)
    5. Ресурси пошуку (обов’язкове)
3. Користувач заповнює форму
4. Система перевіряє запит на наявність заборонених слів
5. Система відправляє повідомлення модератору
6. Модератор приймає міри в разі наявнсті заборонених слів
6. Система проводить пошук по базам даних заданих ресурсів
7. Система фільтрує дані за заповненою користувачем формою
8. Система виконує розрахунок статистики
9. Система виводить результат на екран користувача

***Виключні ситуації:***
- Система тимчасово недоступна
- Незаповнені обов’язкові поля

!["Діаграма"](http://www.plantuml.com/plantuml/png/XPJBRjDG48RtvocEn89DDsn0IZOLQru2r7AHoaKqtNdXn8Img1g9XIiXBaBY0KwIMdOT-_GL_daZPdwvJaE2kehFNFxvvg8SdewUVnoTlJrn2RuXIefAnZAH34i4cIMEVZV0LvbAZYilcRS0B1bSe4M5QwUFCI8MOBQPF6e4B3IdHI6JeKiUF7lpwlNewSdPSOBVNM211Y5H-LycZXMY6gEAhodTojpB9rPgK3cKNesX0xnXRRLx_OnOozmU0uUVM9Z6GpMKgErJyZv6_IlxChEXAQUQBsH6Gw7DTRxe52LuN2DQXkT0KiKCybbokJnmAbdG4cqkCu9b1uvZMT7SignyKThwrcL1cZL6jULq-A5fyHxqAwkbXIORPu_FPuyVXl_Rw02N2DJa07R6R8cx-q5Xy5P3VsiRJ4cLogIThOMxaRcfIiwIvuv12oh7hbWbKr9AZkMGXsMRlz68eAbK9XlD4Stc51o-itqbuGXKLJ8xh9UFNZn-SfJikackJxr74r2aYRQAnfhGXJeMBIM_Wuv8zFn-zBrNd89df1WTzFQIxU5LDL2zyRPCK9ZrDaz_zrHkH_L7FzPohdXfTuNpVnMubgtbHhbm-mx1gFkjMnINWGer-mqTFZigMN2ggItRC1tEc8hCgRhqxUxPXgPdv6PEVos5IgLMn-_5qmC-7Rt_u0wFtntf_zDV)

-------------

***ID:*** AD.0b1

***Назва:*** Додавання об’єкту

***Учасники:*** Модератор, система

***Передумови:*** Користувач авторизований, користувач належить до групи «модератори», чи груп, що наслідують групу «модератори»

***Результат:*** Створення і заповнення строки у БД об’єктів

***Основний сценарій:*** 
1. Модератор відправляє запит на додавання об’єкту
2. Система підготовлює форму з наступними полями:
    1. Назва об’єкту (обов’язкове)
     2. Прапорець «Видимість об’єкту» (by default = true)
     3. Тип об’єкту (обов’язкове)
     4. Теги (обов’язкове)
     5. Координати (обов’язкове)
     6. Фото
     7. Коментар
3. Модератор заповнює форму 
4. Система зберігає данні у БД
5. Система виводить повідомлення про успішне додавання об’єкту
    
***Виключні ситуації:***
- Система тимчасово не доступна
- Незаповнені обов’язкові поля
   
!["Діаграма 1"](http://www.plantuml.com/plantuml/png/VL9DJi9W4DtFARxW0atg1UY6kFOI9DIV17-2xQuB43KkI8Y6m4PDk46fe5_uALTuSoFVYBAgBfhCp9jvy-Rrgz_4ZNQSNBGanGiAp33N3ZAzHQ6TLBvHIVUEpq_FugDM4gMOm6kN-1mhPAdKC66IMpjBQwnruFJEKk9Uy8Of2kHL7U0J2mjrvB1XiDH1JJYH4SYH1QpQQiECIn-qBnKY7ZD-AntPMkqxZawhEiI2MQ_YzflHIIDfnUxGnUqaEWY4UZmsWJEHU8SFd2qsLcEoZTOXU2LS_2_FBZ4lVYXMTYBpJ3jXkM4rZBSd8CUwn91GIXmSOseiB7piHaYSCVHwxxJdy8HXoCvdUEIO4zprRRQYMJ9zorz0O6uM7DOkmv4-ihgpSCPm7Fxrpw-kfHvTDlaglW00)

-------------
    
***ID:*** ED.Ob1

***Назва:*** Редагування об’єкту

***Учасники:*** Модератор, система

***Передумови:*** Користувач авторизований, користувач належить до групи «модератори», чи груп, що наслідують групу «модератори»

***Результат:*** Заміна даних у БД об’єктів

***Основний сценарій:*** 
1. Модератор відправляє запит на редагування об’єкту
2. Система підготовлює форму з наступними полями:
    1. Назва об’єкту (обов’язкове)
    2. Прапорець «Видимість об’єкту»
    3. Тип об’єкту (обов’язкове)
    4. Теги (обов’язкове)
    5. Координати (обов’язкове)
    6. Фото
    7. Коментар
3. Система заповнює форму з БД
4. Модератор редагує данні у формі
5. Система замінює данні у БД
6. Система виводить повідомлення про успішну заміну даних у БД

***Виключні ситуації:***
- Система тимчасово не доступна
- Незаповнені обов’язкові поля
    
!["Діаграма 2"](http://www.plantuml.com/plantuml/png/VLBDJi9W4Bn_J_453sXINu1UY6TVWeJwa-1FiBtr0AB60mdH4BYe2MzGiCG6-CehpBwHyssq7aGFJNOxExCpcwzv4xUwSNBHCIbUK2B7Kdh8v1Qbz5AZg4dtZizFp-AZJXAbcA6GFl4bDiXIqy2CpSAFyvU3av6LEzyIBmpUCAVieYuZV63bIvbOR5ciPTGmP6G45iW2_lMhYQcMFCZGr8WKoFbjPEBNoj2IEg_B62jsWvhTRqSdhQGJsqCRTvFe833qKs0RM3NvZYAmkfYggkGq7gsz4Yx_jwT9U8ilYOsFo3wJNiZaKtLB3joExE7kapRmxCUbNr6ucUdWh0mgkWn8_tLhtQYpo2noDeuJzvw89un35I_ePqcmabUB9EMQOFqD6BrtIRBqMKxa4Uxdo3dBQVZNgxYwDiteiirtyma0)    

-------------
        
***ID:*** AD.M1

***Назва:*** Призначення модератора

***Учасники:*** Адміністратор, система

***Передумови:*** Користувач авторизований, користувач належить до групи «адміністратори», чи груп, що наслідують групу «адміністратори»

***Результат:*** Перенесення користувача з групи «користувачі» в групу «модератори»

***Основний сценарій:*** 
1. Адміністратор вибирає модератора, клацає на кнопку «призначити модератором»
2. Система переносить користувача з групи «користувачі» до групи «модератори»
3. Система виводить повідомлення про успішне перенесення користувача у групу «модератори»

***Виключні ситуації:*** 
- Система тимчасово не доступна

!["Діаграма 3"](http://www.plantuml.com/plantuml/png/XP5DIlH0443tTOgGxnQJpV2jlOJWeCBuWsPsMIGJK1U2uYA26_46RUn0cAGxLtXr8zjsT3QAgwgcNh_ggfvVvliN-UfaAGNtM4PjSDfefMijCRh6Qrb8f6J60pslsqAVCEAnT3iI8pmnXECLJkjFoc4IDZWy4nkj9OqUYs6W_zMKPbByspi-FCh_BrUBWXVwZsVHCM8AcV4S-GuNOXMZqxlGALwFhDQq6Bt621QVyAQbraoXO_eJfqsQRQTiwR0xwOIdrGQBPsJuAWYJba4SHgr2skZDz_Pk4sn87xE_DdjsBlF5wK7uWtS0)
    
-------------

***ID:*** RM.M1

***Назва:*** Видалення модератора

***Учасники:*** Адміністратор, система

***Передумови:*** Користувач авторизований, користувач належить до групи «адміністратори», чи груп, що наслідують групу «адміністратори»

***Результат:*** Перенесення користувача з групи «модератори» в групу «користувачі»

***Основний сценарій:***
1. Адміністратор вибирає модератора, клацає на кнопку «видалити модератора»
2. Система переносить користувача з групи «модератори» до групи «користувачі»
3. Система виводить повідомлення про успішне перенесення модератора у групу «користувачі»

***Виключні ситуації:***
- Система тимчасово не доступна
    
!["Діаграма 4"](http://www.plantuml.com/plantuml/png/XP4zJiD048NxEOLbRa6QY9fB8141KlWHEDqMTYm11HA8maWq4JTOZ2rMYNVt2czknDC6S0DADMlFDz_Rd-bDSNHTBCxdOl243eCsyDfefKijONM9eAMHHCa-dk7m_jrm6GO4plGZ2IjunOQVjzJKMyh3PbYp14IijPOSAw8Eds1Bx-3-imKC-KJCtk7PoMbnC5_C3Dv8StFeYLl3BQtIH0_FMgNgzP5vIP1OhT6c72lqXmmVMl9VP6R-HwXZvFQaBNNTg8n4Msr01ySsFmr1r99Q7hVYij7xtnjyoD1n-JBPTRkNLpATNHpp7Ru0)
    
-------------

    
***ID:*** AD.Qr1

***Назва:*** Створення запиту

***Учасники:*** Користувач, система

***Передумови:*** Користувач авторизований

***Результат:*** Створення результату і його вивід на екран користувача

***Основний сценарій:*** 
1. Користувач відправляє запит
2. Система підготовлює форму з наступними полями:
    1. Головне ключове слово та його варіації (обов’язкове)
    2. Додаткові ключові слова
    3. Період часу (обов’язкове)
    4. Регіон пошуку (обов’язкове)
    5. Ресурси пошуку (обов’язкове)
3. Користувач заповнює форму
4.  Система проводить пошук по базам даних заданих ресурсів
5. Система фільтрує дані за заповненою користувачем формою
6. Система виконує розрахунок статистики
7. Система виводить результат на екран користувача

***Виключні ситуації:***
- Система тимчасово недоступна
- Незаповнені обов’язкові поля

!["Діаграма 5"](http://www.plantuml.com/plantuml/png/XPBDJi9G48Ntzobkui8DJm0RujgNC96e2Vv4oguBIaLS69guA8c9FoG-mAL0g0NgAyoyaMT6o4rer0sPcTCvzviJcftWv3ReNhPDICzKSezoZhZFCMNaU1WQrKruS7nnTXuSjRkja2O_tz22rkH2KwS9caoMCThGXXFBTz92pmszqfHAoWuveIKLKd9gwGl5YfEwePbKCiRkmbA1yOY7Ca3BqLOh3HvnbZxHOSCgNuzJ_DvpokEQWUL29oNDBGmS8EEQLQgPZZVwB3_Wke9ZGozGod_evc87hxuNFI5QJ-WQlsLOfp4vzTGRAnbXiHhgsuxK0cpAgTwG6R6nO7QOEbfRWODXpWCZ4z_guH81CebajG7J3nGhVWHSRnjSik-0v_PWInvvM3HYz0vzgIO3CE8RS2e_ajfUaYEet73a3zijFq7BC9ZxBC0AlrZXr4IFXUeib08w615zDTu_Sky4rpUcsRewnV_x6m00)
    
-------------
    

***ID:*** AD.Rv1

***Назва:*** Додавання відгуку

***Учасники:*** Користувач, система

***Передумови:*** Користувач авторизований

***Результат:*** Створення і заповнення строки у БД відгуків

***Основний сценарій:***
1. Користувач відправляє запит на додавання відгуку про сервіс
2. Система підготовлює форму з наступними полями:
    1. Оцінка 1-10 (обов’язкове)
    2. Коментар 
    3. Фото
3. Користувач заповнює форму
4. Система зберігає данні у БД відгуків
5. Система виводить повідомлення про успішне додавання відгуку

***Виключні ситуації:*** 
- Система тимчасово не доступна

- Незаповнені обов’язкові поля

!["Діаграма 6"](http://www.plantuml.com/plantuml/png/VP7DIiDG48NtynGNNBXHiDjcKrpx4e95XVg3fhiisiOV5q9G9051eMzmUsqqf6dw2cVUoCE0tPIwEtDdldlECBtR-FWc7buC9C4xMXsXqh5ED4M0ryT4h2_9pj7vwLbyE1Zs4qnXCoZHm2VInPH5CBZ44alDdDvPsQ0IV6A65c5NC_oW1gNc3YkAXMPTuU23vkHgUDVPxnm8Fb2Y_PyoWmdQFMVD1dHcxNKKRTkaYmBUVWXqsqnAS7Er0ZEKjjZt6i4SdhBIUz7KuGLl3ap7vo-wrLGX8lgA2e7GV0sQkKrQvCLVGx2YHUiqrJ5bhazypItzCzqeYsZxVQwkfTU_FE4DVm40)

!["Адміністратор"](http://www.plantuml.com/plantuml/png/jPD1IiD068NtFSM_j8la046aLn5QLD1QQe8kctQX2q5n4PVY3M98SQX9UuNttyZtfn8BhJekkabcUEzzUVcPwLt5n-CukJZlH7X4YKepr9ffgbET8DSfbZg994X6mP4Su1KhE4snn4AmCCsszCvGq7tBTD7z0zM_l1vkmog-Iio_dMkKvoVbC1YVdPp63VS93czV8BSpWvnaFv-43JWqy8lfU4VTQCvYEufpNtKZ6Tp4Ws6_u_MRlzJVJbXvBzTcTTgfv_Y0-pdGblRqIvYCMdf1CLrxL_GMcg6qKH0nHurQ7oZOT4HdcdAPwLrxFku59PVFcnN-CMq9xL3jgqgF3zwGJm00)

!["Модератор"](http://www.plantuml.com/plantuml/png/lLH1Ji9G4Dt_KynEMS01kZ1SnKXL4cI19N5Ph0iNHX9282Okz0OViDe8_Rt2p1KyYM-gXAGDYPZ2eit_C_FUcvc-j7aTdFQ2_bN7UFpCZjyubf2jtBAJqADwhtrn6THFw9X7Ca4sGtRE2V89yGTRplH2dB8bf9N0ei0YaCgG49WToPW_0R2rBHeT_xmeORUA81dd8Wk92a9VuTEFb4GrOohfc1eDRUmLa042CQyKbUN42tOw0h1BUPGnoPtEmok9e9FpAmPTPZWdG48_OuVgeLvg7latWTzjcKe7FqZ7Pay2L5SVb4soNeOofmNcYZ_rb6UvSiplU4g5qFEetJthz5k-sRNJVqZinHmlnUBgfznLnFnbBR_C8qx06AkLrWQQvpjoCD5oWzMLEP981cfFkKTqeY1vW1jmd6uCNMxtiFfDlF0J_WO0)


!["Користувач"](http://www.plantuml.com/plantuml/png/lLDFJl907DtFANwxxtC11s1Xk8gHgYI51PR49HQDBeWcXcZYpXkKWGO2TBZ2-zt8UI5DgAdHfeOD6TBtlzFsTNGsY8QzqBJm3gSZhFHMOnt38j67bZG6tSkhg74g__6YhrXWvp49hCV5M0cMIB3Z7q66HFpPwQEdhmKEitywnPfo9z_gXy75x-N9XQKEKcJ8z5bWoSESdlGnDODAiyaq7_kWIB45qNiJpudXOB7H9vsAtZ4AjfxMak0c2leTOwfpfS41olR9OvEMVQMPofIyt1jcIBaXvXodi66XoT-yaxgJLkzPxkWmqn5_iK5w01UDsOEFbgogzrJLCK4ijVJ7ZKw8qlYWVo5ZZLjttC3T_daux0Jc66wbjRWEB1mM86fIR-GQ5_A7po0VgksjXxtm4m00)

-------------

## Короткий огляд продукту

Данна система має можливість брати зображення з інтернет ресурсів та аналізувати статистику їх публікацій за різними критеріями. Система не націлена на конкретну категорії людей.

------------

## Функціональність

- Система повинна обробляти та виводити статистичні данні, у відповідності до запиту користувача
- Система повинна надавати зразки даних, над якими проводився аналіз
- Система повинна запропонувати користувачу зберегти данні у файл, за вказаним користувачем форматом
- Система повинна мати вхід в особистий кабінет 
- Система повинна надсилати користувачам сповіщення з категорій, які вони обрали
- Відправлення сповіщень месенджерами повинно бути інтегроване у систему
!["Діаграма"](http://www.plantuml.com/plantuml/png/fP8zJiD058HxJl4weCWDKkGgI8GVAL24fQCWYn1qGGYvi90GDrZMjcICRQumxqRCsiLAi395EllDpFT6prvScQErkRvOxI57hxUeTQDMx-3Xz47cDxEPu1KzIbHKdThWcZ8_qTfgXawpGOsX0pphFPLIu8MJ3R4V8mCrFWKDN1YWuovxA7FYKei8UcV43qh5HLi20nS5BGsV_6JuZTF7u1HIdE0RrG0gyANRq8wrzlM59FilAm_PyHtTMANzVIrABMfY9i-JXiKgaPBw8kbqyxTpnAoM9oPHQ1Va-lpqp2JhBPQNn_pBVW00)
-----------

## Практичність

- Веб-сайт повинен бути оптимізованим для роботи не тільки із комп'ютера, а також із мобільних пристроїв.
- Інтерфейс повинен бути зручним та зрозумілим
- Сервіс повинен давати демо-доступ до системи
- Веб-сайт повинен бути оптимізованим під різні мови

-----------

## Надійність

- Система повинна бути добре захищена від різних зловмисних атак, мета яких є заволодіти інформацією.

- Система повинна обслуговувати велику кількість користувачів і витримувати велике навантаження.

- Система повинна виконувати резервне копіювання баз данних 

-----------

## Продуктивність

- Для більш продуктивної роботи системи, вона повинна бути розміщена, на кращих DNS-серверах 
- Інтерфейс не повинен впливати на швидкість роботи сервісу

----------

## Експлуатаційна придатність

- Система повинна підтримуватись усіма ОС платформи та повинна бути оптимізована під усі інтернет браузери
- Система повинна мати інтегровану або дискретну службу підтримки
- Веб-сайт повинен мати FAQ розділ
