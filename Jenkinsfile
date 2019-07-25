node('zxp_node1'){
        stage('Build') {
  
                sh 'mvn package';
                //sh 'mvn -version'
                //sh 'java -version'
            
            //hhhh
            //test
        }
        
        stage('Build Docker'){

                echo 'build docker'
                /*构建镜像*/
                sh 'whoami'
                //sh '/etc/init.d/docker start'
                sh 'docker images'
                sh 'docker build -t zxp_test_docker .'
                /*推送镜像*/
                sh 'docker tag zxp_test_docker zxpwin/zxp_test_docker_1'
                sh 'docker login -u zxpwin -p yNJL4CcAa42yM72'
                sh 'docker push zxpwin/zxp_test_docker_1'
        }
}

node('zxp_node2'){
        stage('Deploy'){
                echo 'Deploy'
                sh 'docker pull zxpwin/jenskin-slave-zxp'
                sh 'docker run -d -i -t  zxpwin/jenskin-slave-zxp  /bin/bash'
        }
}
