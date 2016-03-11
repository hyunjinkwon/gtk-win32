 * Download [Json-glib 1.1.2](http://ftp.acc.umu.se/pub/GNOME/sources/json-glib/1.1/json-glib-1.1.2.tar.xz)
 * In `build\win32\vs12\atk-version-paths.props`, replace:
	* `<GlibEtcInstallRoot>$(SolutionDir)\..\..\..\..\vs$(VSVer)\$(Platform)</GlibEtcInstallRoot>` with
`<GlibEtcInstallRoot>$(SolutionDir)\..\..\..\..\..\..\gtk\$(Platform)</GlibEtcInstallRoot>`
	* `<CopyDir>$(GLibEtcInstallRoot)</CopyDir>` with
`<CopyDir>..\..\..\..\atk-rel</CopyDir>`
	* `<AtkSeparateVSDllSuffix>-1-vs$(VSVer)</AtkSeparateVSDllSuffix>` with
`<AtkSeparateVSDllSuffix>--$(ApiVersion)</AtkSeparateVSDllSuffix>`

* replace <ApiVersion>1.2</ApiVersion> to <ApiVersion>1.0</ApiVersion>

 * In `build\win32\vs12\atk.vcxproj`:
	*  add `<Import Project="..\..\..\..\stack.props" />`

	* Remove all `<Optimization>` lines
 * In `build\win32\vs12\install.vcxproj`:
	* replace `AtkEtcInstallRoot` with `GlibEtcInstallRoot`

 * In `build/win32/vs12/json-glib-install.props`:
	* insert command for "json-utils.h copy"