# COVID19_DataIntegration-DataVisualization

,,Zestawienie różnych danych statystycznych w czasie trwania pandemii COVID-19, prezentacja zmian wartości w wybranym okresie.”

Użyte technologie: kod: Python(framework: Flask), Wizualizacja danych: https://www.metabase.com/ oraz React.js, BD: PostgreSQL, Testy backend: Postman
Kod operuje na wybranych typach plików: .CSV, .XML, .JSON

Dołączony jest film pokazujący wybrane funkcjonalności aplikacji.

Źródła wykorzystanych danych: 
- plik "events" zawiera wybrane przeze mnie ważne wydarzenia historyczne z pandemii COVID-19 oraz źródła, skąd zaczerpnięte są informacje
- covidowe api do Pythona: https://covid19datahub.io/articles/docs.html#epidemiological-variables
- kursy walut: USD/PLN, EUR/PLN, EUR/USD: https://pl.investing.com/currencies/usd-pln-historical-data

W pliku cilent znajdują się kody do interface użytkownika, w folderze brak jednak plików node_modules.
Wykres napisany w React.js pobiera dane z endpointa wystawionego we Flasku(Python). 

W celu uruchomienia kodu Python wymagany jest pakiet Pandas w wersji najwyżej 1.5.2!
W pliku ,,api" znajdują się funkcje do umieszczania i pobierania danych z bazy. Architektura REST przy użyciu "Flask".

W folderze zawarta jest również kolekcja testów z narzędzia Postman.

Link do pobrania Metabase lokalnie: https://www.metabase.com/start/oss/

Należy pobrać plik .jar, po pobraniu przenieść go na np. pulpit - w tym samym miejscu musi znajdować się
plik starter(załączony w projekcie), plik ,,metabase"(.jar) oraz folder "plugins"! 
Aplikacja pracuje na porcie 3000(localhost).

Do zalogowania się do aplikacji konieczne jest stworzenie konta na lokalnym metabase.
