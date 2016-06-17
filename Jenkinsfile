node ('Mac01'){

  stage 'Checkout'
  checkout scm

  stage 'Test'
  sh 'xcodebuild -scheme TimeTable -configuration Debug test -destination "platform=iOS Simulator,id=7F9C4722-89E4-43A9-983B-EB09585FAD2E,OS=9.0"'

  stage 'Build'
  sh '/usr/bin/agvtool mvers -terse1'
  sh 'xcodebuild -scheme TimeTable -configuration Debug build -destination "platform=iOS Simulator,id=7F9C4722-89E4-43A9-983B-EB09585FAD2E,OS=9.0"'

  stage 'Archive Test Results'
  sh 'touch test-reports/*' //this is a cheat until i find a better solution
  archiveUnitTestResults()

}

def archiveUnitTestResults() {
    step([$class: "JUnitResultArchiver", testResults: "test-reports/TEST-*.xml", fingerprint: true])
}
