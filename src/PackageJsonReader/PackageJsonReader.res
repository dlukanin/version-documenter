open Js;

type library = {
    currentVersion: string,
    latestVersion: string | null
};

type packageJson = {
    dependencies: array<Dict.t>,
    devDependencies: array<Dict.t>,
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
                dependencies: [],
                devDependencies: [],
                keywords: []
            };
        }
    };

    result;
}

let getLibraries = (): array<library> => {
    let packageJson = getPackageJson();
};