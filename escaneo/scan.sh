#!/bin/bash

echo "🚀 Iniciando escaneo SBOM + vulnerabilidades..."

start=$(date +%s)

mkdir -p datos/sboms
mkdir -p datos/vulns

for repo in repos/*; do
  name=$(basename "$repo")

  echo "📦 Procesando $name..."

  syft "$repo" -o json > "datos/sboms/$name.json"

  grype "sbom:datos/sboms/$name.json" -o json > "datos/vulns/$name.json"

done

end=$(date +%s)

echo "✅ Escaneo terminado"
echo "⏱ Tiempo total: $((end - start)) segundos"