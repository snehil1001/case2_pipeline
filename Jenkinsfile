pipeline {
	agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                checkout scm 
                rm -r /var/lib/jenkins/workspace/case2_docker_master-*
                echo 'running dockerfile'
                sh 'make check || true' 
                junit 'python_tests_xml/*.xml'
            }
        }
    }
}
