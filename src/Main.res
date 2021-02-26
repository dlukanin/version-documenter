type packageJson = {keywords: array<string>};
@bs.val external require: (string) => packageJson = "require"

Js.log(require("./package.json").keywords);