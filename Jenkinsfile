pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    environment {
    //Use Pipeline Utility Steps plugin to read information from pom.xml into env variables
    ARTIFACTID = readMavenPom().getArtifactId()
    VERSION = readMavenPom().getVersion()
    DOCKERID = '25795'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Run') {
            agent {
                dockerfile true
            }
            steps {
                echo "running container"
            }
        } 
    }
}
