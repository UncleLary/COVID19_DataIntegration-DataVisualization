Kowalski Łukasz	  IO 6.5 									Lublin, 2023

Projekt zaliczeniowy z przedmiotu Integracja Systemów

,,Zestawienie różnych danych statystycznych w czasie trwania pandemii COVID-19, prezentacja zmian wartości w wybranym okresie.”

Użyte technologie: Python, Wizualizacja danych: https://www.metabase.com/, BD: PostgreSQL

Źródła wykorzystanych danych: 
- covidowe api do Pythona: https://covid19datahub.io/articles/docs.html#epidemiological-variables
- kursy walut: USD/PLN, EUR/PLN, EUR/USD: https://pl.investing.com/currencies/usd-pln-historical-data

W pliku cilent znajdują się kody do interface użytkownika, w folderze brak jednak plików node_modules
Wykres pobiera dane z endpointa wystawionego w Pythonie. 

W celu uruchomienia kodu Python wymagany jest pakiet Pandas w wersji najwyżej 1.5.2!
W pliku ,,api" znajdują się funkcje do umieszczania i pobierania danych z bazy. REST przy użyciu "Flask".

W folderze zawarta jest również kolekcja testów z narzędzia Postman.

Link do pobrania Metabase lokalnie: https://www.metabase.com/start/oss/

Należy pobrać plik .jar, po pobraniu przenieść go na np. pulpit - w tym samym miejscu musi znajdować się
plik starter(załączony w projekcie), plik ,,metabase"(.jar) oraz folder "plugins"! 
Aplikacja pracuje na porcie 3000(localhost).

Do zalogowania się do aplikacji konieczne jest stworzenie konta