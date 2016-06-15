node ('Mac01'){
   stage 'Build and Test'
   checkout scm
   sh 'xcodebuild -version'
   sh 'xcodebuild -scheme TimeTable -configuration Debug build test -destination "platform=iOS Simulator,id=7F9C4722-89E4-43A9-983B-EB09585FAD2E,OS=9.0"'

   step([$class: 'JUnitResultArchiver', testResults: 'test-reports/*.xml'])
}
