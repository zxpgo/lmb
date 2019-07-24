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
                /*构建镜像*/
                /*推送镜像*/
                /*docker.withRegistry('https://index.docker.io/v1/', 'docker-registry'){
                    def customImage = docker.build('test_image')
                    customImage.push()
                    customImage.push(latest)
            }*/
                 echo 'build docker'
               
            }
        }
        
        stage('Deploy'){
            steps{
                /*部署镜像*/
                /*
                if (currentBuild.result == null || currentBuild.result == 'SUCCESS') {
                
                }
                */
                echo 'deploy'
            }
        }
    }
}
