node ('Mac01'){

  stage 'Checkout' //This step may not do anything productive now
  checkout scm


  stage 'Build and Test'
  parallel iPhone6: {
    build 'time-table-iPhone6'
  },
  iPhone6s: {
    build 'time-table-iPhone6s'
  },
  failFast: false,
  propagate: false 

}
