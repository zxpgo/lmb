pipeline {
    agent {
        label 'slave'
    }
    stages {
        stage('Build') {
            steps {
                /*sh 'sudo rm -rf /var/lib/dpkg/lock'
                sh 'sudo rm -rf /var/cache/apt/archives/lock'
                sh 'sudo apt-get update'
                sh 'sudo dpkg --configure -a'
                //sh 'echo 'root:zxcvfdsa321' | chpasswd '
                //sh 'su -i < "zxcvfdsa321"'
                //sh 'sudo dpkg --configure -a'*/
                sh 'sudo apt-get install -y maven'
                //sh 'apt-get install -y java'
                //sh 'mvn package';
                sh 'mvn -version'
                sh 'java -version'
            }
            //hhhh
            //test
        }
        
        stage('Build Docker'){
            steps{
                echo 'build docker'
                /*构建镜像*/
                /*推送镜像*/
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
