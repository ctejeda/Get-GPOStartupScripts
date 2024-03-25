function Get-GPOStartupScripts {
    param (
        [string]$Domain
    )

    $ErrorActionPreference = "SilentlyContinue"

    # Initialize an array to store the results
    $startupScripts = @()

    $gpoPath = "\\$Domain\SYSVOL\$Domain\Policies\"
    Get-ChildItem -Path $gpoPath -Directory | ForEach-Object {
        $startupScriptsPath = Join-Path $_.FullName "Machine\Scripts\Startup"
        try {
            if (Test-Path $startupScriptsPath) {
                $scripts = Get-ChildItem -Path $startupScriptsPath | Select-Object *
                # Store the results in the array
                $startupScripts += $scripts
            } else {
                # Optionally handle the case where no startup scripts are found
            }
        } catch {
            # Optionally handle errors, such as logging or displaying them
        }
    }

    # Resetting $ErrorActionPreference to its default value
    $ErrorActionPreference = "Continue"

    # Display the results
    $startupScripts
}

# Example usage:
# Get-GPOStartupScripts -Domain "domain.local"
