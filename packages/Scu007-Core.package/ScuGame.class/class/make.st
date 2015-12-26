instance creation
make
	 | ourPackage zip mczStream workingCopy version installCommand|

 	ourPackage := 'Scu007'.
	installCommand := ''.

 	zip := ZipArchive new.
	{ourPackage. #Animations. #'SVG-Morphic'} do: [:package | 
 		mczStream := RWBinaryOrTextStream on: (String new: 10000).
 		workingCopy := MCWorkingCopy forPackage: (MCPackage new name: package).
 		version := workingCopy newVersion.
 		version fileOutOn: mczStream.
 		(zip addString: mczStream contents as: package , '.mcz')
   		desiredCompressionLevel: 0.
		installCommand := installCommand, 'self fileInMonticelloZipVersionNamed: ''' , package , '.mcz''.', Character cr].
	zip addString: installCommand as: 'install/preamble'.
 	zip writeToFileNamed: ourPackage , '.sar'.