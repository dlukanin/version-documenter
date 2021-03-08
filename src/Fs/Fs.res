type fsType = {
    writeFileSync: (. string, string) => unit
}

@bs.val external require: (string) => fsType = "require";

let fs = require("fs");

let writeSync = (path, content) => {
    Js.log("Writing " ++ path ++ " with content " ++ content);
    fs.writeFileSync(. path, content);
    ();
}