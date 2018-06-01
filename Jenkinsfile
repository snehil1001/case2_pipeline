pipeline {
        agent none
    stages {
        stage('Build'){
            agent any
	    steps{
                deleteDir()
	        checkout scm 
	       	}
	    }
		     
        stage('Docker') {
		    agent  {dockerfile true}
            steps {
                echo 'running dockerfile'
                sh 'make check || true'
                junit 'python_tests_xml/*.xml'
                sh 'pycodestyle  $(find . -maxdepth 1  -name "*.py") > pycodestyle.xml'
                 }
        }
    }
}

