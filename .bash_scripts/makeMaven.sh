#!/bin/bash

# Prompt the user for inputs
read -p "Enter the groupId (e.g., com.example): " groupId
read -p "Enter the artifactId (e.g., my-app): " artifactId

# Run the Maven command with the user inputs
mvn archetype:generate \
  -DgroupId="$groupId" \
  -DartifactId="$artifactId" \
  -DarchetypeGroupId=org.apache.maven.archetypes \
  -DarchetypeArtifactId=maven-archetype-quickstart \
  -DarchetypeVersion=1.5 \
  -DinteractiveMode=false

echo "Maven project created with groupId=$groupId and artifactId=$artifactId"

# Change directory to the newly created project
cd "./$artifactId/" || { echo "Failed to enter the directory $artifactId"; exit 1; }

# Create the run file and make it executable
touch run
chmod +x run

# Write commands to the run file
cat <<EOF > run
#!/bin/bash
mvn package -Dmaven.test.skip=true
mvn exec:java -Dexec.mainClass="${groupId}.App"
mvn clean
EOF

echo "Run file created successfully. You can execute it using ./run."
