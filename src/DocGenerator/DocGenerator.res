let generateDoc = (packageName: string, libs: array<PackageJsonReader.library>) => {
    let template = MarkdownTemplate.template;

    Js.String2.replace(template, "{header}", packageName);
}