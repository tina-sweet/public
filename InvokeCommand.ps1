Configuration InvokeCommand {
    Node "localhost" {
        Script RunCommand {
            GetScript  = { return @{ Result = "noop" } }
            SetScript  = { hostname; whoami | Out-File -FilePath C:\temp\owned.txt }
            TestScript = { return $false }
        }
    }
}
InvokeCommand