echo "Ejecutando tests"
cd Android-NFC
./gradlew test 
cd ..
echo "ruta de informe"
echo "file://$PWD/Android-NFC/app/build/reports/tests/testDebugUnitTest/index.html"
