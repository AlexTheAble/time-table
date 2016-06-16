node ('Mac01'){

  stage 'Checkout'
  checkout scm

  stage 'Build and Test'
  sh 'xcodebuild -version'
  sh '/usr/bin/agvtool mvers -terse1'
  //sh '/usr/bin/agvtool vers -terse'
  sh '/usr/bin/security find-identity -p codesigning -v'
  sh '/usr/bin/xcodebuild -list'
  sh 'xcodebuild -scheme TimeTable -configuration Debug build test -destination "platform=iOS Simulator,id=7F9C4722-89E4-43A9-983B-EB09585FAD2E,OS=9.0"'


  stage 'Archive Test Results'
  sh 'touch test-reports/*'
  archiveUnitTestResults()

  stage 'Commit and Push'
  sh 'git add ./ '
  sh 'git commit -m "Test results"'
  sh 'git push origin HEAD:master'

}

def archiveUnitTestResults() {
    step([$class: "JUnitResultArchiver", testResults: "test-reports/TEST-*.xml", fingerprint: true])
}
