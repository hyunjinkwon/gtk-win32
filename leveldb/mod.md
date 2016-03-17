 * In `json-c.vcxproj`:
	*  add `<Import Project="..\..\..\..\stack.props" />`

* property.props
	leveldb-rel
	<PrjDoInstall>
	      mkdir $(CopyDir)
	      mkdir $(CopyDir)\bin
	      copy $(BinDir)\*.exe $(CopyDir)\bin
	      copy $(BinDir)\*.dll $(CopyDir)\bin
	      copy $(BinDir)\*.pdb $(CopyDir)\bin
	      mkdir $(CopyDir)\lib
	      copy $(BinDir)\*.lib $(CopyDir)\lib      
	      mkdir $(CopyDir)\include\leveldb-$(ApiVersion)\leveldb
	      copy $(SolDir)\include\leveldb\*.h $(CopyDir)\include\leveldb-$(ApiVersion)\leveldb
	</PrjDoInstall>

* solution project
	Pre-Build Event => $(PreBuildCfg)

	Output Directory
	$(SolutionDir)$(Configuration)\$(PlatformName)\bin\

	Intermediate Directory
	$(SolutionDir)$(Configuration)\$(PlatformName)\obj\$(ProjectName)\

	Output File
	$(OutDir)$(PrjDllPrefix)$(ProjectName)$(PrjDllSuffix).dll

	Import Library
	$(OutDir)$(PrjDllPrefix)$(ProjectName)$(PrjDllSuffix).lib


* install project
	Pre-Build Event => $(PrjDoInstall)