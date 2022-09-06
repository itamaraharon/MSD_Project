pipeline{

	agent {label 'linux'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://https://github.com/itamaraharon/MSD_Project.git'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t itamara/App:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push itamara/App:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}
