<div>

  <h1>Health E-Connect</h1>

  <p>This is a Java web application built using Servlets and JSP, packaged using Maven, and deployed on Apache Tomcat 9. It connects to a relational database and performs standard web operations.</p>

  <h2>🛠️ Technologies Used</h2>
  <ul>
    <li>Java (Servlets & JSP)</li>
    <li>Apache Maven</li>
    <li>Apache Tomcat 9.x</li>
    <li>MySQL</li>
    <li>HTML/CSS (for frontend)</li>
    <li>JDBC</li>
  </ul>

  <h2>📁 Project Structure</h2>
  <pre>/project-root
│
├── src/main/java          # Java source files (Servlets, utils, etc.)
├── src/main/webapp        # JSP files and web resources
├── pom.xml                # Maven configuration file
└── Database.sql           # SQL file to initialize the database</pre>

  <h2>📥 1. Clone the Repository</h2>
  <pre>
git clone https://github.com/gunavardhanlomada/HealthE-Connect
cd HealthE-Connect
  </pre>

  <h2>🗃️ 2. Set Up the Database</h2>
  <ol>
    <li>Make sure MySQL or your preferred RDBMS is running.</li>
    <li>Create a database (e.g., <code>health</code>).</li>
    <li>Execute the SQL script:</li>
  </ol>
  <pre>
-- Using MySQL CLI
SOURCE database.sql;
  </pre>
  <p><strong>🔍 Note:</strong> Update the database connection details (DB name, user, password) in your Java code or a configuration file (like <code>DBConnection.java</code>).</p>

  <h2>🔧 3. Install Prerequisites</h2>
  <ul>
    <li><a href="https://maven.apache.org/install.html" target="_blank">Maven</a></li>
    <li><a href="https://tomcat.apache.org/download-90.cgi" target="_blank">Tomcat 9.x</a></li>
  </ul>
  <p>Make sure to set environment variables like <code>MAVEN_HOME</code> and <code>CATALINA_HOME</code>.</p>

  <h2>🏗️ 4. Build the Project</h2>
  <pre>
mvn clean install
# or
mvn clean package
# or
mvn clean build
  </pre>
  <p>This will generate a <code>.war</code> file inside the <code>target/</code> directory.</p>

  <h2>🚀 5. Deploy on Tomcat</h2>
  <ol>
    <li>Copy the generated <code>.war</code> file (e.g., <code>myapp.war</code>) to <code>$TOMCAT_HOME/webapps/</code>.</li>
    <li>Start Tomcat:</li>
  </ol>
  <pre>
cd $CATALINA_HOME/bin
./startup.sh  # Linux/macOS
startup.bat   # Windows
  </pre>
  <p>Open your browser and visit: <a href="http://localhost:8080/Health-E-Connect" target="_blank">http://localhost:8080/Health-E-Connect</a></p>

  <h2>🧪 Testing the Application</h2>
  <p>Once deployed, you can interact with the application via its web interface. Make sure your DB server is running and the configuration matches your DB settings.</p>

</div>
