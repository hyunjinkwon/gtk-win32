 * In `json-c.vcxproj`:
	*  add `<Import Project="..\..\..\..\stack.props" />`



* How to make json-c.props?

	1. copy from cairo.props to project folder.

	2. replace 'Cairo' to 'Prj'

	3. change 'cairo-rel' to 'json-c-rel'

	4. remove 'VS10' suffix. ex)JsonCSeparateVS10DllPrefix -> JsonCSeparateDllPrefix

	5. change 'PreBuildCfgStd' to 'PreBuildCfg'
	
	6. remove 'PreBuildCfgXXXXX' except 'PreBuildCfg'

	7. Pre-Build Event On VS Solution set up $(PreBuildCfg)

	8. All vcxproj add 
		<Import Project="json-c.props" />
		<Import Project="..\..\..\..\stack.props" />

	9. Project Setting set up  $(OutDir)$(JsonCDllPrefix)$(ProjectName)$(JsonCDllSuffix).lib

	10. make empty vc project.

	11. Pre-Build Event On VS Solution set up $(PrjDoInstall)

	12.edit proper well...
