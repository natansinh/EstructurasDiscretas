# Práctica 01: Haskell, Git y GitHub

## 1. Objetivo de la Práctica
Configurar el entorno de desarrollo necesario para el curso de Estructuras Discretas mediante la instalación de Haskell (GHC) e instalaciones de control de versiones con Git y GitHub, además de crear la estructura de carpetas de trabajo para el semestre.

## 2. Tiempo Requerido
Instalación y configuración del entorno: ~1 hora (incluyendo solución de los problemas).
Estructuración de archivos y respuestas teóricas: ~45 minutos.
Tiempo total: ~2 horas.

## 3. Comentarios y Problemas Enfrentados

### Problema 1: Falta de compilador de C al instalar GHCup
Descripción: Al ejecutar `ghcup install ghc recommended`, la instalación falló con el error `configure: error: no acceptable C compiler found` debido a que el sistema no contaba con `gcc` ni `clang`.
Solución: Se instalaron los paquetes esenciales de compilación en Ubuntu mediante un comando proporsionado por Gemini, pues no lograba seguir los tutoriales que había encontrado:
  ```bash
  sudo apt update && sudo apt install -y build-essential libgmp-dev libffi-dev libncurses-dev libtinfo6

### Problema 2: paquete 'libtinfo5' no disponible
Descripción: El comando de instalación sugerido buscaba la librería legada 'libtinfo5', la cual no se encuentra en mi versión de Debian/Ubuntu.
Solución: Se reemplazó el paquete en la orden de instalación por su versión actualizada ´libtinfo'