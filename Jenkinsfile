node ('Mac01'){

  stage 'Checkout'
  git checkout scm
  
  stage 'Build and Test'
  sh 'xcodebuild -version'
  sh 'xcodebuild -scheme TimeTable -configuration Debug build test -destination "platform=iOS Simulator,id=7F9C4722-89E4-43A9-983B-EB09585FAD2E,OS=9.0"'

  stage 'Archive Test Results'
  archiveUnitTestResults()
}

def archiveUnitTestResults() {
    step([$class: "JUnitResultArchiver", testResults: "test-reports/TEST-*.xml"])
}
