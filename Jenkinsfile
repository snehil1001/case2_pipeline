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
                 }
        }
        stage('ansible'){
                    agent any
                    steps {
                         sshagent (credentials: ['Git_cred']) {
                         /home/ubuntu/anaconda3/bin/ansiblePlaybook(
                         credentialsId: 44dd5241-a26e-40b7-a129-0a70b522e372',
                         inventory: '/etc/ansible/hosts',
                         installation: 'ansible',
                         limit: 'localhost',
                         playbook: '/home/ubuntu/case2/my_new_docker_build/deploy.yml',
                )
            }
                          }
               }
}
    }

