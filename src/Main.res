let (packageName, deps) = PackageJsonReader.getPackageInfo();

Js.log(DocGenerator.generateDoc(packageName, deps));