Health E-Connect

This is a Java web application built using Servlets and JSP, packaged using Maven, and deployed on Apache Tomcat 9. It connects to a relational database and performs standard web operations.
#
🛠️ Technologies Used

Java (Servlets & JSP)

Apache Maven

Apache Tomcat 9.x

MySQL

HTML/CSS (for frontend)

JDBC

Project Structure

/project-root
│
├── src/main/java          # Java source files (Servlets, utils, etc.)
├── src/main/webapp        # JSP files and web resources
├── pom.xml                # Maven configuration file
└── Database.sql           # SQL file to initialize the database


1. Clone the Repository

git clone https://github.com/gunavardhanlomada/HealthE-Connect
cd HealthE-Connect
#
2. Set Up the Database

Make sure MySQL or your preferred RDBMS is running.

Create a database (e.g., health).

Execute the SQL script:

-- Using MySQL CLI
SOURCE database.sql;

🔍 Note: Update the database connection details (DB name, user, password) in your Java code or a configuration file (like DBConnection.java).
#
3. Install Prerequisites

Maven: https://maven.apache.org/install.html

Tomcat 9.x: https://tomcat.apache.org/download-90.cgiMake sure to set environment variables like MAVEN_HOME and CATALINA_HOME.
#
4. Build the Project

mvn clean install
or
mvn clean package
and 
mvn clean build


This will generate a .war file inside the target/ directory.
#
5. Deploy on Tomcat

Copy the generated .war file (e.g., myapp.war) to TOMCAT_HOME/webapps/.

Start Tomcat:

cd $CATALINA_HOME/bin
./startup.sh  # Linux/macOS
startup.bat   # Windows

Open your browser and visit:http://localhost:8080/Health-E-Connect
#
🔪 Testing the Application

Once deployed, you can interact with the application via its web interface. Make sure your DB server is running and the configuration matches your DB settings.

