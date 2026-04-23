# Análisis SBOM

## Descripción

Proyecto orientado al análisis de dependencias (SBOM) e identificación de vulnerabilidades en librerías utilizadas por distintos repositorios de una organización.

---

## Objetivos

* Generar SBOMs para cada repositorio analizado.
* Realizar análisis cuantitativos y comparativos en base a los resultados obtenidos.

---

## Tecnologías utilizadas

* Bash
* Python
* Jupyter Notebook
* Syft
* Grype

---

## Estructura del proyecto

```
analisis_sbom/
│
├── repos.txt
├── escaneo/
│   ├── scan.sh
├── datos/
│   ├── sboms/
│   └── vulns/
├── jupyter/
│   ├── notebook.ipynb
└── README.md
```

---

## Requisitos

* Sistema operativo (Linux recomendado)
* Python 3.x
* Jupyter Notebook
* Syft instalado
* Grype instalado

---

## Ejecución

### 1. Clonar el repositorio
```bash
git clone https://github.com/Camilo-ICI24/analisis_sbom.git
cd analisis_sbom
```
Clonar el proyecto de forma local. Contendrá el archivo de texto con todos los repositorios a analizar y el script automatizado para almacenar los SBOMs generados. Para los siguientes pasos se cambia a la carpeta del proyecto.

### 2. Clonar repositorios y escanear

```bash
bash escaneo/scan.sh
```
Este archivo clonará cada repositorio registrado para posteriormente realizar un SBOM para cada uno, identificando sus vulnerabilidades y librerías afectadas.

### 3. Ejecutar el análisis

```bash
jupyter notebook
```

Abrir el notebook y ejecutar todas las celdas que contienen la lógica del análisis realizado.

---

## Análisis realizados

### Análisis 1

Las cinco dependencias utilizadas con mayor frecuencia en los proyectos de la organización.

### Análisis 2

Vulnerabilidad crítica que se encuentre con mayor presencia en los repositorios de la organización.

### Análisis 3

Proyecto que contenga la mayor cantidad de vulnerabilidades críticas.

### Análisis 4

Los 10 repositorios con más vulnerabilidades en general.

### Análisis 5

Análisis de relación entre la cantidad de dependencias utilizadas y el número de vulnerabilidades identificadas.

---

## Resultados

Se identificaron dependencias compartidas entre repositorios, así como vulnerabilidades críticas recurrentes y proyectos con un alto número de vulnerabilidades, lo que permite priorizar acciones de mitigación y actualización de las librerías utilizadas con el objetivo de reducir el riesgo de ataques externos.

---

## Conclusiones

El análisis realizado permitió identificar patrones relevantes en el uso de dependencias y la presencia de vulnerabilidades dentro de los repositorios estudiados, así como también establecer relaciones entre librerías utilizadas y las vulnerabilidades encontradas. Se observó la existencia de dependencias compartidas entre múltiples proyectos, lo que puede facilitar la propagación de vulnerabilidades cuando estas no son gestionadas adecuadamente y, por tanto, aumentar el riesgo de ataques externos que puedan compromenter la integridad del ecosistema de la organización.

---

## Consideraciones de seguridad

Las vulnerabilidades identificadas, sobretodo aquellas catalogadas como críticas, suponen un gran riesgo para la seguridad del software, y su presencia en múltiples repositorios sugiere la existencia de dependencias compartidas afectadas, lo que puede amplificar el impacto de posibles ataques.

Debido a esta razón, resulta fundamental mantener un control constante sobre las librerías utilizadas, aplicando actualizaciones periódicas y monitoreando nuevas vulnerabilidades reportadas. Asimismo, se recomienda incorporar prácticas de análisis automatizado dentro del ciclo de desarrollo para detectar y tratar riesgos de manera temprana para evitar vulnerabilidades críticas que puedan comprometer el ecosistema del software.

---

## Autor

Camilo Cifuentes
