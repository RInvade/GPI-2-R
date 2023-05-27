pipeline {
    agent any
    stages {
        stage('AnalisisCompilePackaging'){
            parallel{
                stage('AnalisisCompilePackagingANFC') {
                    steps {
                    sh'''
                    cd /home/alumno/Escritorio/GPI-2-R
                     sudo  ./analysisCompilePackaging.sh  
                    '''
                    }
                }
        
                stage('AnalisisCompilePaclaginEB'){
                    steps{
                    sh'''
                    cd /home/alumno/Escritorio/GPI-2-R
                    sudo ./ebanalysisCompilePackaging.sh 
                    '''
                    }
                }
            }
        }
        stage('Tests'){
            parallel{
                stage('TestNFC'){
                    steps{
                    sh'''
                    cd /home/alumno/Escritorio/GPI-2-R/Android-NFC
                    sudo rm -f /home/alumno/Escritorio/GPI-2-R/Android-NFC/app/build/reports/tests/testDebugUnitTest/index.html
                    sudo ./gradlew test
                    echo "file:///home/alumno/Escritorio/GPI-2-R/Android-NFC/app/build/reports/tests/testDebugUnitTest/index.html"
                    '''
                    }
                }
            
                stage('TEST EB'){
                    steps{
                    sh'''
                    cd /home/alumno/Escritorio/GPI-2-R/easybuggy
                    sudo mvn test 
                    '''
                    }
                }
            }
        }
    }
}
