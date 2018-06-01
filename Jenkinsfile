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
                ansiblePlaybook credentialsId: 'private_key', inventory: 'inventories/a/hosts', playbook: 'my_playbook.yml' 

                 }
        }
    }
}

