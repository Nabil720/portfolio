# Istiaque Faroque Nabil — DevOps & DevSecOps Portfolio

A single-page portfolio with a terminal / CI-CD pipeline theme. Static HTML, CSS and JS, with no build step.

## Run with Docker

```bash
docker build -t portfolio .
docker run -d -p 8080:8080 --name portfolio portfolio
# open http://localhost:8080
```

The image is based on `nginx-unprivileged` (non-root). It ships security headers, gzip and a healthcheck.

## Run locally without Docker

```bash
python3 -m http.server 8000
```

## Contact

- LinkedIn: https://www.linkedin.com/in/istiaque-nabil/
- GitHub: https://github.com/Nabil720
