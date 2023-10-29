import json
import os

class Events:
    @staticmethod
    def get_events():
        events = [
            {"id": 1, "date": "05.03.2020", "description": "Wybuch pandemii", "source": "www.gov.pl"},
            {"id": 2, "date": "31.03.2020", "description": "Wprowadzenie pierwszej tarczy antykryzysowej",
             "source": "https://www.gov.pl/web/tarczaantykryzysowa"},
            {"id": 3, "date": "01.04.2020", "description": "Pierwszy lockdown",
             "source": "https://www.gov.pl/web/koronawirus/wprowadzamy-stan-epidemii-w-polsce"},
            {"id": 4, "date": "18.04.2020", "description": "Wprowadzenie rozszerzenia 1 tarczy antykryzysowej",
             "source": "https://pl.wikipedia.org/wiki/Tarcza_Antykryzysowa"},
            {"id": 5, "date": "16.05.2020",
             "description": "Wprowadzenie drugiego rozszerzenia do 1 tarczy antykryzysowej",
             "source": "https://pl.wikipedia.org/wiki/Tarcza_Antykryzysowa"},
            {"id": 6, "date": "01.03.2021", "description": "Drugi lockdown",
             "source": "https://zpp.net.pl/wp-content/uploads/2021/01/25.01.2021-Business-Paper-Podsumowanie-lockdownu-w-Polsce.pdf"},
            {"id": 7, "date": "31.03.2021", "description": "Wprowadzenie drugiej tarczy antykryzysowej",
             "source": "www.gov.pl"},
            {"id": 8, "date": "27.03.2021", "description": "Zamknięcie przedszkoli i salonów fryzjerskich",
             "source": "https://businessinsider.com.pl/firmy/zarzadzanie/zamkniecie-zakladow-fryzjerskich-i-salonow-kosmetycznych-polacy-sa-przeciw/e7ret34"},
            {"id": 9, "date": "03.04.2021", "description": "Zamknięcie lasów",
             "source": "https://bip.brpo.gov.pl/pl/content/koronawirus-rpo-brak-podstawy-prawnej-zakazu-wchodzenia-do-lasu"},
            {"id": 10, "date": "01.09.2021", "description": "Wprowadzenie Tarczy Finansowej PFR 2.0",
             "source": "https://pfrsa.pl/tarcza-finansowa-pfr/tarcza-finansowa-pfr-20.html"},
            {"id": 11, "date": "01.12.2021", "description": "Wprowadzenie tarczy antyinflacyjnej 1.0",
             "source": "https://www.gov.pl/web/premier/tarcza-antyinflacyjna-i-obnizka-podatkow--rzad-przeciwdziala-skutkom-inflacji"},
            {"id": 12, "date": "01.01.2022", "description": "Wprowadzenie tarczy antyinflacyjnej 2.0",
             "source": "https://www.gov.pl/web/finanse/tarcza-antyinflacyjna-20-zlagodzi-skutki-inflacji-i-zmniejszy-jej-koszty-dla-polakow"},
            {"id": 13, "date": "01.01.2023", "description": "Koniec tarczy antyinflacyjnej 2.0",
             "source": "https://www.prawo.pl/podatki/tarcza-antyinflacyjna-sie-konczy,519046.html"}
        ]


        directory = "JSON_files"
        if not os.path.exists(directory):
            os.makedirs(directory)

        result = os.path.join(directory, "EventsJSON.json")
        with open(result, "w") as file:
            json.dump(events, file)

        return result

