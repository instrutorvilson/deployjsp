# Etapa base: Tomcat com Java 17 
FROM tomcat:10.1-jdk17 
 
# Remove aplicações padrão 
RUN rm -rf /usr/local/tomcat/webapps/* 
 
# Copia seu WAR gerado pelo Eclipse para a pasta do Tomcat 
COPY DeployJSP.war /usr/local/tomcat/webapps/ROOT.war 
 
# Porta padrão do Tomcat 
EXPOSE 8080 
 
CMD ["catalina.sh", "run"] 