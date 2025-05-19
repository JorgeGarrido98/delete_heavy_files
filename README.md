# 🗑️ Script Delete Heavy Files
Este script Bash permite eliminar archivos grandes en el directorio actual, facilitando la gestión del espacio en el sistema. Es especialmente útil para limpiar carpetas donde se acumulan archivos pesados.

## 🚀 Características
- El script identifica y elimina archivos que ocupen más de 1MB (1,000,000 bytes).

- Muestra el tamaño de cada archivo encontrado.

- Elimina automáticamente los archivos que superen el límite de tamaño especificado.

- Imprime mensajes informativos para cada archivo procesado.

## 💻 Requisitos
- El script debe ejecutarse en un entorno Bash.

- El usuario debe contar con permisos para eliminar los archivos en el directorio actual.

## 📝 Instalación
### Clona el repositorio en tu máquina local:
git clone https://github.com/usuario/script-delete-heavy-files.git

### Otorga permisos de ejecución al script:
chmod +x delete_heavy_files.sh

## 💡 Uso
Ejecuta el script en el directorio donde deseas limpiar archivos pesados:
- ./delete_heavy_files.sh

El script mostrará:

- El tamaño de cada archivo en bytes.

- Un mensaje indicando si el archivo será eliminado (si es mayor a 1MB).

## ⚠️ Advertencia
¡Usa con precaución! El script elimina archivos permanentemente.

Si deseas cambiar el límite de tamaño (1MB), edita esta línea en el script:

- if [ "$espacio" -gt 1000000 ]; then
- Sustituye 1000000 por el valor en bytes que prefieras.
