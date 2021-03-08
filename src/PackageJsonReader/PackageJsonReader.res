open Js;

type library = {
    name: string,
    currentVersion: string,
    latestVersion: string
};

type packageJson = {
    dependencies: Dict.t<string>,
    devDependencies: Dict.t<string>,
    keywords: array<string>
};

@bs.val external require: (string) => packageJson = "require";

let getPackageJson = () => {
    let result = try {
        require("./package.json");
    } catch {
        | Js.Exn.Error(obj) => {
            Js.log("No package.json found");
            {
                dependencies: Js.Dict.empty(),
                devDependencies: Js.Dict.empty(),
                keywords: []
            };
        }
    };

    result;
}

let getVersionsFromDeps = (data) => Array2.map(Dict.entries(data), (entry) => {
    let (name, version) = entry;
    {
        name,
        currentVersion: version,
        latestVersion: version // TODO
    }
})

let getLibraries = () => {
    let packageJson = getPackageJson();
    getVersionsFromDeps(packageJson.devDependencies);
};