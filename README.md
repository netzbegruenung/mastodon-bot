# mastodon-bot

Diese Bot-Software von Dmitri Sotnikov erlaubt das Cross-Posten von Beiträgen aus einem Twitter Feed oder einem RSS Feed auf Mastodon.

Original: https://github.com/yogthos/mastodon-bot

In diesem Repository bieten wir eine angepasste Version mit vereinfachter Dokumentation und Konfiguration.

#### Ausführung

Mit Docker und der Konfigurationsdatei `my_config.edn` im aktuellen Verzeichnis kann der Bot so ausgeführt werden:

    docker run --rm -ti \
        -v $(pwd):/config \
        --env MASTODON_BOT_CONFIG=/config/my_config.edn \
        quay.io/netzbegruenung/mastodon-bot

#### Vorbereitung und Konfiguration

- Erstelle einen Mastodon API key wie [hier](https://tinysubversions.com/notes/mastodon-bot/) beschrieben. Geht dazu auf https://gruene.social/settings/applications und ersttellt einen Key mit der Berechtigung `read:statuses` und `write:statuses`.
* Erzeuge einen Twitter Developer account und eine App wie [hier](https://developer.twitter.com/en/docs/basics/authentication/guides/access-tokens) beschrieben.
* Kopiere `config.edn.example` und trage alle API keys und weitere Daten ein, wie darin beschrieben.


## License

Copyright © 2018 Dmitri Sotnikov

Distributed under the [MIT License](http://opensource.org/licenses/MIT).
