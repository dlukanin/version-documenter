let (packageName, deps) = PackageJsonReader.getPackageInfo();

let doc = DocGenerator.generateDoc(packageName, deps);

Fs.writeSync("generated.md", doc);

Js.log("generated.md created");