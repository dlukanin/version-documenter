type library = {
    name: string,
    currentVersion: string,
    latestVersion: string
};

let getPackageInfo: () => (string, array<library>);
