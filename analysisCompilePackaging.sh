echo "Analisis de codigo estático mediante PMD"
echo "Analizando fragmentos repetidos y generando informe"
/home/alumno/pmd-bin-7.0.0-rc2/bin/pmd cpd $PWD/Android-NFC/app/src --language java --minimum-tokens 100  > pmdReportRepeatedCode.txt 2>/dev/nul
echo "Analizando mejoras en el codigo"
echo "Generando informe"
/home/alumno/pmd-bin-7.0.0-rc2/bin/pmd check -d $PWD/Android-NFC/app/src -f html -R rulesets/java/basic.xml,rulesets/java/design.xml,rulesets/java/unusedcode.xml> pmdReport.html 2>/dev/null
echo "Analisis finalizado"
cd Android-NFC
echo "Generando apk"
./gradlew assembleDebug

echo "RUTAS DE INFORMES: "
mv app/build/outputs/apk/debug/app-debug.apk ../ENTREGABLES
echo file://$PWD/pmdReportRepeatedCode.txt
echo file://$PWD/pmdReport.html

