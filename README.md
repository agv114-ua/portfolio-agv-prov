# Portfolio — Ángel Gonjar Verdejo

Portfolio estático con una experiencia de *scrollytelling*: escenas fijadas a pantalla, parallax, recorrido por etapas, proyectos que cambian con el scroll y una banda de tecnologías ligada al desplazamiento. Está hecho con HTML, CSS y JavaScript sin dependencias de frontend ni backend.

## Ejecutarlo con Docker

Requisitos: Docker Desktop (con Docker Compose).

```bash
docker compose up --build -d
```

Abre **http://localhost:8080**. En Windows también puedes hacer doble clic en `start.bat` para levantarlo y abrir el navegador, y en `stop.bat` para pararlo. Para parar desde terminal:

```bash
docker compose down
```

Cada vez que edites `index.html` o sustituyas un recurso, vuelve a ejecutar `docker compose up --build -d` para que la imagen del contenedor incluya los cambios.

## Publicarlo y mantenerlo actualizado en Vercel

Este proyecto está preparado como sitio estático para Vercel. No requiere comando de build ni variables de entorno.

1. Crea un repositorio nuevo en tu GitHub llamado, por ejemplo, `portfolio-agv`.
2. Sube el contenido de esta carpeta a la raíz del repositorio (`index.html`, `assets/`, `Dockerfile`, `docker-compose.yml`, `nginx.conf`, `vercel.json` y este README).
3. En Vercel elige **Add New → Project**, importa `portfolio-agv` desde GitHub y deja Framework Preset en **Other**. No configures build command; usa `.` como output/public directory si te lo pregunta.
4. Pulsa Deploy. Vercel te dará una URL pública `*.vercel.app` con HTTPS.
5. A partir de ahí, los cambios que hagas en `main` y subas con `git push` generarán un nuevo despliegue automático en Vercel.

Comandos una vez creado el repositorio vacío en GitHub (sustituye la URL por la de tu repo real):

```bash
git init
git add .
git commit -m "Create cinematic portfolio"
git branch -M main
git remote add origin https://github.com/agv114-ua/portfolio-agv.git
git push -u origin main
```

Para actualizaciones futuras:

```bash
git add .
git commit -m "Update portfolio content"
git push
```

No subas contraseñas, tokens ni credenciales. El sitio no necesita secretos ni servicios backend.

## Cómo editar contenido

Los textos de cada proyecto se encuentran en el array `projectData` al final de `index.html`. Actualiza `title`, `summary`, `tags`, `actions` y `note` en el objeto del proyecto correspondiente. Las imágenes están en `assets/`.

## Proyectos incluidos

- **Skagos**: proyecto propio y Trabajo Fin de Grado, con enlace al juego en itch.io.
- **Chaos Crew**: proyecto colaborativo. La ficha resume mi aportación a los entregables, el diseño y la arquitectura del videojuego. Incluye un enlace al portfolio del equipo.
- **Hackatón de Aguas**: participación en equipo, con una breve mención a mi contribución en la arquitectura de la aplicación.

Los repositorios que son forks o cuya contribución personal no está clara no se muestran como proyectos propios. Así el portfolio se centra en los trabajos que sí quieres presentar, sin atribuirte autoría individual de los proyectos compartidos.
