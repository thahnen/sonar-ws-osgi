# SonarQube Web Service OSGi bundle

This creates an OSGi bundle for the artifact produced for the SonarQube Web Service. The project
version is equivalent to the SonarQube version and therefore also to the artifact that is uploaded
to Maven Central. Due to it containing a *major*, *minor*, *patch*, and *build version* part it is
also directly OSGi version compliant.

For now it does not shade necessary transitive dependencies, but this is an option for the future.
This includes `protobuf-java`, `okhttp`, `gson` and `sonar-plugin-api`, as the other ones should
only be compile dependencies. But, this needs to be checked.

## Building

The project is build using Maven and the integration to [Bnd](https://bnd.bndtools.org) which is
the bridge to the OSGi world. In order to create the normal and its "sources" bundle, run the
following command inside the project directory:

```shell
mvn clean verify
```

To install it locally, run the following command instead:

```shell
mvn clean verify install
```

## TODOs

- shade actual runtime dependencies as well
- create possible Eclipse Update Site
- create different modules for different versions of the ´sonar-ws´ artifact
