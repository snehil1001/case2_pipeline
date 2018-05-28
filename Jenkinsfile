pipeline {
    agent any
    stages { 
        stage('dev') {
            steps {
                echo 'Hello World'
                withEnv(['PYTHONPATH=/home/ubuntu/python']) {
                sh  'pip install xmlrunner --user'
                sh  'python ./randomgen.py'
} 
            }
        }
	    stage('test') {
            steps {
                echo 'Hello World'
                withEnv(['PYTHONPATH=/home/ubuntu/python']) {
                sh  'pip install xmlrunner --user'
                sh  'python ./test.py'
} 
            }
        }
    }
	agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                
                echo 'running dockerfile'
            }
        }
    }
}
