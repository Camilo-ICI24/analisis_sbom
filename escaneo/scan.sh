#!/bin/bash

echo "Iniciando proceso de clonación y análisis!!!..."

start=$(date +%s)

mkdir -p repos
mkdir -p datos/sboms
mkdir -p datos/vulns

while read repo_url; do
  name=$(basename "$repo_url" .git)

  if [ ! -d "repos/$name" ]; then
    echo "Clonando $name, espere...."
    git clone "$repo_url" "repos/$name"
  else
    echo "✔ $name ya existe, continuando con el próximo...."
  fi
done < repos.txt

for repo in repos/*; do
  name=$(basename "$repo")

  echo "Analizando y procesando $name..."

  syft "$repo" -o json > "datos/sboms/$name.json"

  grype "sbom:datos/sboms/$name.json" -o json > "datos/vulns/$name.json"
done

end=$(date +%s)

echo "✅ Proceso terminado"
echo "⏱ Tiempo total: $((end - start)) segundos"