##Setting up the base image and copying jar file 

FROM anapsix/alpine-java 
LABEL maintainer="naina123@yahoo.com" 
COPY /target/spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar /home/spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar 
CMD ["java","-jar","/home/spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar"
