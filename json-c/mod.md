 * Download [clutter 1.22.0](http://ftp.acc.umu.se/pub/GNOME/sources/clutter/1.24/clutter-1.24.2.tar.xz)
 * In `build\win32\vs12\clutter-glib-version-paths.props`, replace:
	* `<GlibEtcInstallRoot>$(SolutionDir)\..\..\..\..\vs$(VSVer)\$(Platform)</GlibEtcInstallRoot>` with
`<GlibEtcInstallRoot>$(SolutionDir)\..\..\..\..\..\..\gtk\$(Platform)</GlibEtcInstallRoot>`
	* `<CopyDir>$(GLibEtcInstallRoot)</CopyDir>` with
`<CopyDir>..\..\..\..\clutter-rel</CopyDir>`
	* `<AtkSeparateVSDllSuffix>-$(ApiVersion))</AtkSeparateVSDllSuffix>` with
`<JsonGlibSeparateVSDllSuffix>-$(ApiVersion)</JsonGlibSeparateVSDllSuffix>`

`<ClutterSeparateVSDllSuffix>-1-vs$(VSVer)</ClutterSeparateVSDllSuffix>` with
	`<ClutterSeparateVSDllSuffix>-$(ApiVersion)</ClutterSeparateVSDllSuffix>`

 * In `build\win32\vs12\cogl.vcxproj`:
	*  add `<Import Project="..\..\..\..\stack.props" />`
	* Remove all `<Optimization>` lines
	


