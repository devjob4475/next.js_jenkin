pipeline {
    
    agent any  
 
    stages {
 
        stage('Init'){
            steps {
                echo 'Init'
                echo '******************************'
            }
        }
 
        stage('Yarn Install') {
            steps {
                echo 'Yarn Install'
                sh 'npm install'
                echo '******************************'
            }
        }
 
        stage('Yarn Build') {
            steps {
                echo 'Yarn Build'
                sh 'npm build'
                echo '******************************'
            }
        }
 
        ...
 
        stage('Deploy') {
            steps{
                echo 'Deploy'
                echo '******************************'
            }
        }
    }
}
