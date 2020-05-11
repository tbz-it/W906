# Modul 906 DevOps

## Installierte Software

* [Planung - Kanboard](http://${ADDR}:32200)
* [Versionverwaltung - Gogs](http://${ADDR}:32300)
* [Online Editor - Theia](http://${ADDR}:32400)
* [CI/CD - Jenkins](http://${ADDR}:32100)

## Aufgabe 

Spielen Sie das Beispiel [Aufbau einer Continous Integration / Delivery Pipeline mit Docker/Kubernetes](https://github.com/mc-b/devday#aufbau-einer-continous-integration--delivery-pipeline-mit-dockerkubernetes) durch.

Die Services sind bereits Installiert und statt `kubectl` ist die nachfolgende Konfiguration, als erstes, auszuführen.

## Konfiguration 

### Planung - Kanboard

![](https://kanboard.org/assets/img/board.png)

- - -

Kanboard ist eine Open-Source Kanban-Projektmanagement-Software.

Es erlaubt Aufgaben in Projekten und Sprints (Swimlanes) zu managen. Die Columns können frei angepasst werden.

Web Oberfläche mittels [http://${ADDR}:32200](http://${ADDR}:32200) anwählen. Username/Password ist `admin`.

**Links**

* [Website](https://kanboard.org/)
* [Docker Image](https://hub.docker.com/r/kanboard/kanboard/)

### Versionsverwaltung - Gogs

![](https://gogs.io/img/screenshots/4.png)

- - -

Ein einfacher Git Server mit Weboberfläche. Erinnert stark an github.

Web Oberfläche mittels [http://${ADDR}:32300](http://${ADDR}:32300) anwählen.	

Werte bei **Installationsschritte für den ersten Start** wie folgt anpassen:
* Datenbanktyp: SQLite3
* Pfad: /data/gogs.db
* Anwendungs-URL: IP-Adresse und Port Cluster, http://${ADDR}:32300/

Einstellungen, wenn es sich um einen nicht frei zugänglichen Server handelt:
* Server und sonstige Einstellungen 
    * Registrierung deaktivieren: true
    * Captcha aktivieren: false 
* Administrator Einstellungen: Admin User inkl. Password einrichten.

Ansonsten erhält der erste User wo sich registriert, Adminstrator Rechte.

### Online Editor - Theia

![](https://theia-ide.org/static/theia-screenshot-5da315784b70a935f8196407284cbe1e.jpg)

- - -

[Eclipse Theia](https://theia-ide.org/) ist eine erweiterbare Plattform zur Entwicklung mehrsprachiger Cloud- und Desktop-IDEs mit modernsten Webtechnologien.

Es ist die Full Version, mit Unterstützung für die meisten Programmiersprachen, installiert. Diese Version benötigt keine Konfiguration.

### CI/CD - Jenkins mit Blueocean

![](https://jenkins.io/images/blueocean/blueocean-successful-pipeline.png)

- - -

Jenkins ist ein Continuous Integration- und Delivery-Server. 

Web Oberfläche mittels [http://${ADDR}:32100](http://${ADDR}:32100) anwählen. Username/Password ist `admin`.

Oberfläche Blue Ocean anwählen und neue Pipeline mittels `git` und Repository-URL, z.B. [https://github.com/mc-b/scs-esi](https://github.com/mc-b/scs-esi) anlegen. 

