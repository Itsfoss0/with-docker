## Scaling exercise application ##

This application is used in https://devopswithdocker.com. The purpose is to use scaling to see a a meaningful difference in the application itself. 

The "calculator" service has a user interface to send calculations to the "compute" service.

The "compute" service calculates a solution to a problem. (Actually is just 3-4 second wait)

The docker-compose includes load-balancer so everything works together. You just need to scale the compute service so that a large number of calculations gets distributed between a large number of compute services.


## Scaling solution

To scale out the app, docker-composes ```--scale``` option  is used

```docker-compose up --scale compute=4```

![scaling command ](../../assets/scaling-cmd.png)


After scaling the application, the test turns green


![Green test on the browser](../../assets/scaling.png)