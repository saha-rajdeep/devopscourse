pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'python:2-alpine'
                }
            }
            steps {
                sh 'python -m py_compile pythoncode/add2vals.py pythoncode/calc.py'
                stash(name: 'compiled-results', includes: 'pythoncode/*.py*')
                sh 'ls -l pythoncode'
            }
        }
        stage('Test') { 
            agent {
                docker {
                    image 'qnib/pytest' 
                }
            }
            steps {
                sh 'py.test --junit-xml test-reports/results.xml pythoncode/test_calc.py' 
                sh 'cat test-reports/results.xml'
            }
            post {
                always {
                    junit 'test-reports/results.xml' 
                }
            }
        }
    }
}
