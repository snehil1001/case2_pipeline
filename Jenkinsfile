pipeline {
        agent none
    stages {
        stage('Build'){
            agent any
	    steps{
	        checkout scm 
	       	}
	    }
		     
        stage('Docker') {
		    agent  { dockerfile true }
            steps {
                echo 'running dockerfile'
                sh 'make check || true'
                junit 'python_tests_xml/*.xml'
                sh 'pylint --rcfile=pylint.cfg $(find . -maxdepth 4 -name "*.py") --msg-template="{path}:{line}: [{msg_id}({symbol}), {obj}] {msg}"> pylint.log'
                sh  'cat pylint.log'
            }
        }
    }
}

