param(
    $templatepath
)

$template = Get-Content $templatepath | ConvertFrom-Json

Describe 'NSG Validation'{
    Context 'Check NSG Rules'{
    it "Verify SSH is not open to internet"{
        $nsg = $template | Where-Object type -eq 'Microsoft.Network/networkSecurityGroups'
        $nsg.properties.networkSecurityRules.properties.destinationPortRange |Should Not Be 22
    }
    it "Verify SSH is not open to internet"{
        $nsg = $template | Where-Object type -eq 'Microsoft.Network/networkSecurityGroups'
        $nsg.properties.networkSecurityRules.properties.destinationPortRange |Should Not Be 22
    }
 }
}