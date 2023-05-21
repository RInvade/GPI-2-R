echo "Analisis de codigo estático mediante PMD"
echo "Analizando fragmentos repetidos y generando informe"
/home/alumno/pmd-bin-7.0.0-rc2/bin/pmd cpd $PWD/easybuggy/src --language java --minimum-tokens 100  > ebpmdReportRepeatedCode.txt 2>/dev/nul
echo "Analizando mejoras en el codigo"
echo "Generando informe"
/home/alumno/pmd-bin-7.0.0-rc2/bin/pmd check -d $PWD/easybuggy/src -f html -R rulesets/java/basic.xml,rulesets/java/design.xml,rulesets/java/unusedcode.xml> ebpmdReport.html 2>/dev/null
echo "Analisis finalizado"
cd easybuggy
echo "Compilando"
mvn compile
echo "Generando .war"
mvn clean package
cd ..
echo "RUTAS DE INFORMES: "
echo file://$PWD/ebpmdReportRepeatedCode.txt
echo file://$PWD/ebpmdReport.html
