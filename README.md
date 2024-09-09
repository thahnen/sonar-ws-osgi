# SonarQube Web Service OSGi bundle

This creates an OSGi bundle for the artifact produced for the SonarQube Web Service. The project
version is equivalent to the SonarQube version and therefore also to the artifact that is uploaded
to Maven Central. Due to it containing a *major*, *minor*, *patch*, and *build version* part it is
also directly OSGi version compliant.

It currently includes the artifacts `sonar-plugin-api`, `protobuf-json`, `gson`, `okhttp`, and
`okio-jvm` as they are dependencies. This is done via OSGi and not via Maven shading in order not
to unpack the files into the shaded artifact and pollute it.

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

- create possible Eclipse Update Site
- create different modules for different versions of the ´sonar-ws´ artifact
