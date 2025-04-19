# 🕵️ Recon Scripts para Bug Bounty

Este repositorio contiene tres scripts bash para automatizar tareas de reconocimiento en programas de bug bounty.

## Archivos

- `recon-starter.sh`: Inicia el proceso de reconocimiento para un dominio objetivo.
- `recon-cleaner.sh`: Limpia resultados anteriores y permite reiniciar el proceso.
- `recon-finalizer.sh`: Organiza y comprime los resultados obtenidos.

## Uso rápido

```bash
chmod +x recon-*.sh
./recon-starter.sh ejemplo.com
```

## Requisitos

- `assetfinder`
- `amass`
- `httpx`
- `gau`
- `waybackurls`
- `nuclei`

> Asegurate de tener todas las herramientas instaladas y en tu PATH.

## Autor

Scripts creados para automatizar recon en entornos de bug bounty de forma rápida y estructurada.
