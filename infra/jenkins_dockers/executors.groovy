/*
You can specify and set the number of executors of your Jenkins master instance using a groovy script.
By default its set to 2 executors, but you can extend the image and change it to your desired number of executors
*/
import jenkins.model.*
Jenkins.instance.setNumExecutors(5)
