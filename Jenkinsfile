node('slave'){
        /*stage('Environment'){
                sh 'echo "FROM jenkins/ssh-slave \n RUN apt-get update && apt-get install -y sudo && apt-get install -y maven " > Dockerfile'
                sh 'docker build -t environment .'
                sh 'rm -rf Dockerfile'
                sh 'docker run --privileged=true -itd  environment:latest /bin/bash'
                
        }*/
        stage('Pull from git'){
                /*拉取代码*/
                checkout ([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [],
                    submoduleCfg: [], userRemoteConfigs: [[credentialsId:  '2d68d4f8-a24c-44d4-a381-3894235b8b54', 
                                                           url: 'https://github.com/zxpgo/lmb.git']]])
        }
        
        stage('Build') {
               
                sh 'mvn package';
                //sh 'mvn -version'
                sh 'java -version'
                
                sh 'cp target/*.war /home/jenkins/'
            //hhhh
            //test
        }
}
node('zxp_node3'){ 
        stage('Build Docker'){
                //sh 'exit'
                echo 'build docker'
                /*构建镜像*/
                sh 'whoami'
                //sh 'rm -rf Dockerfile'
                sh 'docker build -t zxp_test_docker_1 .'
                /*推送镜像*/
                sh 'docker tag zxp_test_docker_1 zxpwin/zxp_test_docker_1'
                sh 'docker login -u zxpwin -p yNJL4CcAa42yM72'
                sh 'docker push zxpwin/zxp_test_docker_1'
        }
}

node('zxp_node2'){
        stage('Deploy'){
                echo 'Deploy'
                //sh 'mkdir /usr/share/tomcat'
                sh 'docker pull zxpwin/zxp_test_docker_1'
                sh 'docker run --privileged=true -itd -p 8080:8080 zxpwin/zxp_test_docker_1:latest /usr/sbin/init'
                sh '/bin/bash'
                ///usr/sbin/init -v /var/run/docker.sock:/var/run/docker.sock   -v /usr/share/tomcat:/usr/share/tomcat
                /*sh 'systemctl enable tomcat'
                sh 'systemctl start tomcat'
                sh 'systemctl status tomcat'*/
        }
}
