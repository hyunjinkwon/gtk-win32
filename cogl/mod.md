 * Download [cogl 1.22.0](http://ftp.acc.umu.se/pub/GNOME/sources/cogl/1.22/cogl-1.22.0.tar.xz)
 * In `build\win32\vs12\json-glib-version-paths.props`, replace:
	* `<GlibEtcInstallRoot>$(SolutionDir)\..\..\..\..\vs$(VSVer)\$(Platform)</GlibEtcInstallRoot>` with
`<GlibEtcInstallRoot>$(SolutionDir)\..\..\..\..\..\..\gtk\$(Platform)</GlibEtcInstallRoot>`
	* `<CopyDir>$(GLibEtcInstallRoot)</CopyDir>` with
`<CopyDir>..\..\..\..\cogl-rel</CopyDir>`
	* `<AtkSeparateVSDllSuffix>-$(ApiVersion))</AtkSeparateVSDllSuffix>` with
`<JsonGlibSeparateVSDllSuffix>-$(ApiVersion)</JsonGlibSeparateVSDllSuffix>`

 * In `build\win32\vs12\cogl.vcxproj`:
	*  add `<Import Project="..\..\..\..\stack.props" />`
	* Remove all `<Optimization>` lines
	* replace <ApiVersion>1.0</ApiVersion> to <ApiVersion>1.2</ApiVersion>

*Add GL header file


