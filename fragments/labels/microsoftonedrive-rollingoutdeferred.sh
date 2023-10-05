microsoftonedrive-rollingoutdeferred)
    # This version is the Rolling out Deferred version of OneDrive. Not sure what channel in OneDrive update it matches.
    # https://support.microsoft.com/en-us/office/onedrive-release-notes-845dcf18-f921-435e-bf28-4e24b95e5fc0#OSVersion=Mac
    name="OneDrive"
    type="pkg"
    downloadURL="https://go.microsoft.com/fwlink/?linkid=861010"
    appNewVersion=$(curl -fsIL "${downloadURL}" | grep -i location: | grep -o "/Installers/.*pkg" | sed -r 's/(.*)\.pkg/\1/g' | sed 's/[^0-9\.]//g')
    expectedTeamID="UBF8T346G9"
    #if [[ -x "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/msupdate" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
    #    printlog "Running msupdate --list"
    #    "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/msupdate" --list
    #fi
    #updateTool="/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/msupdate"
    #updateToolArguments=( --install --apps ONDR18 )
    ;;
