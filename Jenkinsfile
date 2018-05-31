pipeline {
        agent { dockerfile true }
    stages {
        stage('Checkout'){
	    steps{
                sh 'rm -r /var/lib/jenkins/workspace/case2_docker_master*' 
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
