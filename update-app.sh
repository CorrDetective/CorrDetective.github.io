set -e

PROJECT_DIR="$1"

echo "Updating webapp from $PROJECT_DIR"
(cd "$PROJECT_DIR" && mvn clean package)

cp -v "$PROJECT_DIR"/target/CorrelationDetective-*/* app
