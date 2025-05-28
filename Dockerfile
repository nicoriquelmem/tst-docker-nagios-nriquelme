FROM manios/nagios:latest

# Actualizamos e instalamos dependencias adicionales si se requieren
RUN apt-get update && apt-get install -y \
    vim \
    curl \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Exponemos el puerto 80 para acceso web
EXPOSE 80

# Entrypoint para iniciar Nagios automáticamente
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
