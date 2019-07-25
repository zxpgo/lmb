node('zxp_node1'){
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
                sh 'whoami'
                //sh '/etc/init.d/docker start'
                sh 'docker images'
                sh 'docker build -t zxp_test_docker .'
                /*推送镜像*/
                sh 'docker tag zxp_test_docker zxpwin/zxp_test_docker'
                sh 'docker login -u zxpwin -p yNJL4CcAa42yM72'
                sh 'docker push zxpwin/zxp_test_docker'
            }
        }
}

    
