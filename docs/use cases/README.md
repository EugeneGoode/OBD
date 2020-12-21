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
