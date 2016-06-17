node ('Mac01'){

  stage 'Checkout'
  checkout scm


  stage 'Build and Test'

  sh '/usr/bin/agvtool mvers -terse1'
  sh 'xcodebuild -scheme TimeTable -configuration Debug build test -destination "platform=iOS Simulator,id=7F9C4722-89E4-43A9-983B-EB09585FAD2E,OS=9.0"'

  sh '/usr/bin/agvtool mvers -terse1'
  sh 'xcodebuild -scheme TimeTable -configuration Debug build test -destination "platform=iOS Simulator,id=66C70574-0277-4667-9A56-072706AAB2C7,OS=9.0"'

  sh '/usr/bin/agvtool mvers -terse1'
  sh 'xcodebuild -scheme TimeTable -configuration Debug build test -destination "platform=iOS Simulator,id=77AA5875-C618-4BBF-BDAB-BC44F9610A28,OS=9.0"'
    /*
    parallel build6:{
      sh '/usr/bin/agvtool mvers -terse1'
      sh 'xcodebuild -scheme TimeTable -configuration Debug build test -destination "platform=iOS Simulator,id=7F9C4722-89E4-43A9-983B-EB09585FAD2E,OS=9.0"'
    } ,
    build6s:{
      sh '/usr/bin/agvtool mvers -terse1'
      sh 'xcodebuild -scheme TimeTable -configuration Debug build test -destination "platform=iOS Simulator,id=66C70574-0277-4667-9A56-072706AAB2C7,OS=9.0"'
    },
    build6sPlus:{
      sh '/usr/bin/agvtool mvers -terse1'
      sh 'xcodebuild -scheme TimeTable -configuration Debug build test -destination "platform=iOS Simulator,id=77AA5875-C618-4BBF-BDAB-BC44F9610A28,OS=9.0"'
    },
    failFast: true
    */

  stage 'Archive Test Results'
  sh 'touch test-reports/*' //this is a cheat until i find a better solution
  archiveUnitTestResults()

}

def archiveUnitTestResults() {
    step([$class: "JUnitResultArchiver", testResults: "test-reports/TEST-*.xml", fingerprint: true])
}
