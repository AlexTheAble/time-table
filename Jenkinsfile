node{

  stage 'Checkout' //This step may not do anything productive now
  //checkout scm


  stage 'Build and Test'
  parallel iPhone6: {
    build job: 'time-table-iPhone6', propagate: false
  },
  iPhone6s: {
    build job :'time-table-iPhone6s', propagate: false
  },
  failFast: false

}
