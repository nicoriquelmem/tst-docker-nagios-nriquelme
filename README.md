#  PRUEBA 2 TECNOLOGIAS DE VIRTUALIZACIÓN\nNagios Core en Docker + ECS - Nicolas Riquelme

Este proyecto contiene una imagen Docker personalizada de Nagios Core basada en `manios/nagios`. 
Se incluye un `entrypoint.sh` para iniciar automáticamente Nagios y Apache.

## 🚀 Construcción de la Imagen

```bash
docker build -t custom-nagios .
```

## 🚀 Ejecución Local

```bash
docker run -d -p 8080:80 --name nagios custom-nagios
```
