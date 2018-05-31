pipeline {
        agent {label 'none'}
    stages {
        stage('Checkout'){
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
            }
        }
    }
}

