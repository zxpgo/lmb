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
                /*docker.withRegistry('https://index.docker.io/v1/', 'docker-registry'){
                    def customImage = docker.build('test_image')
                    customImage.push()
                    customImage.push(latest)*/
                    echo 'hello world'
                }
            }
        }
    }
}
