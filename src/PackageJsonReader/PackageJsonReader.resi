type library = {
    currentVersion: string,
    latestVersion: option<string>
};

let getLibraries: () => array<library>;
