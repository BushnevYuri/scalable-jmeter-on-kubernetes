FROM bushnevyuri/jmeter-base
MAINTAINER ybushnev
		
EXPOSE 1099 50000
	
ENTRYPOINT $JMETER_HOME/bin/jmeter-server \
-Dserver.rmi.ssl.disable=true \
-Dserver.rmi.localport=50000 \
-Dserver_port=1099	
