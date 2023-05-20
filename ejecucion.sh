#Creamos un alias para poder usar pmd
alias pmd="$HOME/pmd-bin-7.0.0-rc2/bin/pmd"
echo "Analisis de codigo estático mediante PMD"
echo "Analizando fragmentos repetidos y generando informe"
$HOME/pmd-bin-7.0.0-rc2/bin/pmd cpd $PWD/Android-NFC/app/src --language java --minimum-tokens 100 --format xml > pmdReportRepeatedCode.xml 2>/dev/null
echo "Analizando mejoras en el codigo"
echo "Generando informe"
$HOME/pmd-bin-7.0.0-rc2/bin/pmd check -d $PWD/Android-NFC/app/src -f html -R rulesets/java/basic.xml,rulesets/java/design.xml,rulesets/java/unusedcode.xml> pmdReport.html 2>/dev/null
echo "Analisis finalizado"
echo "Ejecutando tests"
cd Android-NFC
./gradlew test #nos permite ver las tareas
echo "Generando apk"
./gradlew assembleDebug
echo "LA APK GENERADA SE ENCUENTRA EN :  $PWD/app/build/outputs/apk/debug/"
echo "Abriendo informes con el navegador"
cd ..
firefox $PWD/Android-NFC/app/build/reports/tests/testDebugUnitTest/index.html $PWD/pmdReport.html $PWD/pmdReportRepeatedCode.xml 2>/dev/null
