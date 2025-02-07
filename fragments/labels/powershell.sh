powershell)
    name="PowerShell"
    type="pkg"
    appNewVersion="$(versionFromGit PowerShell PowerShell)"
    if [[ $(arch) = "arm64" ]]; then
        archiveName="powershell-${appNewVersion}-osx-arm64.pkg"
    else
        archiveName="powershell-${appNewVersion}-osx-x64.pkg"
    fi
    downloadURL="$(downloadURLFromGit PowerShell PowerShell)"
    expectedTeamID="UBF8T346G9"
    ;;
