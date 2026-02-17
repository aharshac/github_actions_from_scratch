pipeline {
    agent {
        label 'linux'
    }
    
    parameters {
        string(name: 'NUMBER_TO_SQUARE', defaultValue: '5', description: 'Enter a number to square')
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
        
        stage('Square Number') {
            steps {
                script {
                    def result = sh(script: "./square.sh ${params.NUMBER_TO_SQUARE}", returnStdout: true).trim()
                    echo "Input: ${params.NUMBER_TO_SQUARE}"
                    echo "Square: ${result}"
                }
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
