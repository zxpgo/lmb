pipeline {
    agent {
        label 'slave'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn package';
                //sh 'mvn -version'
                //sh 'java -version'
            }
            //hhhh
            //test
        }
        
        stage('Build Docker'){
            steps{
                echo 'build docker'
                /*构建镜像*/
                sh 'su'
                sh '/etc/init.d/docker start'
                sh 'docker buid -t zxp_test_docker .'
                /*推送镜像*/
                sh 'docker tag zxp_test_docker zxpwin/zxp_test_docker'
                sh 'docker login -u zxpwin -p yNJL4CcAa42yM72'
                sh 'docker push zxpwin/zxp_test_docker'
                /*
                script{
                    docker.withRegistry('https://index.docker.io/v1/', 'docker-registry'){
                        def customImage = docker.build('test_image')
                        customImage.push()
                        customImage.push(latest)
                    }
                }*/
               
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
