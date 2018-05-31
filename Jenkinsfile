pipeline {
        agent { dockerfile true }
    stages {
        stage('Checkout'){
	    steps{
	        checkout scm 
	       	}
	    }
		     
        stage('Test') {
            steps {
                echo 'running dockerfile'
                sh 'make check || true'
                junit 'python_tests_xml/*.xml'
            }
        }
    }
}
