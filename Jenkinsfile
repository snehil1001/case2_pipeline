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
                junit 'python_tests_xml/*.xml'
                sh 'find . -maxdepth 1  -name "*.py" |xargs pycodestyle | tee pycodestyle.log'
                args '-u root:root -v /var/lib/jenkins/workspace/myworkspace:/tmp/' +
                        ' -v /var/lib/jenkins/.ssh:/root/.ssh'
                sh 'ansible-playbook deploy.yml -u jenkins' 
                 }
        }
}
    }

