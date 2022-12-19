# Eclipse AntRunner Docker Container

Docker container used to [generate EMF code from Ecore metamodels](https://download.eclipse.org/modeling/emf/emf/javadoc/2.9.0/org/eclipse/emf/importer/ecore/taskdefs/EcoreGeneratorTask.html) in a headless way.

- Build container
  - `docker image build -t eclipse-antrunner-docker:latest .`
- Generate code from `workspace/psl/psl.ecore` 
  - `docker run -v $PWD/workspace:/workspace -v $PWD/buildfiles:/buildfiles -e buildfile='/buildfiles/build.xml' eclipse-antrunner-docker:latest`
