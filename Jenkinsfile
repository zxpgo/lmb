pipeline {
    agent {
        label 'zxp_node1'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn package';
            }
            //hhhh
            //test
        }
        
        stage('Build Docker'){
            steps{
                def customImage = docker.build('test_image')
                docker.withRegistry('https://index.docker.io/v1/','docker-registry'){
                    customImage.push()
                    customImage.push(latest)
                }
            }
        }
    }
}
