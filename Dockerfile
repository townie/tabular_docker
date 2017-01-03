FROM java:7

RUN wget https://github.com/tabulapdf/tabula/releases/download/v1.1.0/tabula-jar-1.1.0c.zip \
    && unzip tabula-jar-1.1.0c.zip

EXPOSE 8080

WORKDIR tabula

CMD java -Dfile.encoding=utf-8 -Xms256M -Xmx1024M -jar tabula.jar
