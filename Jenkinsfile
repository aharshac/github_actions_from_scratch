pipeline {
    agent {
        label 'linux'
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Configure CMake') {
            steps {
                sh 'cmake -B build -S .'
            }
        }
        
        stage('Build') {
            steps {
                sh 'cmake --build build'
            }
        }
        
        stage('Run Application') {
            steps {
                sh './build/hello_world'
            }
        }
    }
    
    post {
        success {
            echo 'Build and run completed successfully!'
        }
        failure {
            echo 'Build or run failed!'
        }
    }
}
