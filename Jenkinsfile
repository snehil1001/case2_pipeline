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
                sh 'pylint $(find . -maxdepth 1  -name "*.py") --msg-template="{path}:{line}: [{msg_id}({symbol}), {obj}] {msg}"> pylint.log'
                sh 'pep8 $(find . -maxdepth 1  -name "*.py") --msg-template="{path}:{line}: [{msg_id}({symbol}), {obj}] {msg}" > pep8.xml'
                
                 }
        }
    }
}

