#!/usr/bin/env bash
#JMeter test should be in the same folder as script runner
JMX_TEST=$1

if [ ! -f "$JMX_TEST" ];
then
    echo "$JMX_TEST test is not found. Ensure that it is located in the same folder with test runner"
    exit
fi

master=`kubectl get po -n performance | grep jmeter-master | awk '{print $1}'`
kubectl cp $JMX_TEST -n performance $master:$JMX_TEST
kubectl exec -ti -n performance $master -- sh run_test $JMX_TEST
