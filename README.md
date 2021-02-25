# microsoft_bicep

DSL

1. Why Project Bicep
    * Deployment experience in Declarative way
    * Declarative language infrastructure on Azure
    Transpiles to ARM Templates
    * Landscape of configuration is complex
    * Bicep is a Domain Specific Language (DSL) for deploying Azure resources declaratively. 
    * It aims to drastically simplify the authoring experience with a cleaner syntax and better support for modularity and code re-use. 
    * Bicep is a transparent abstraction over ARM and ARM templates, which means anything that can be done in an ARM Template can be done in bicep (outside of          temporary known limitations). 
    * All resource types, apiVersions, and properties that are valid in an ARM template are equally valid in Bicep on day one.

    Bicep compiles down to standard ARM Template JSON files, which means the ARM JSON is effectively being treated as an Intermediate Language (IL).

Bicep
    Pros 
        * Readiability
        * Simplicity
        * Compatible with ARM
        * Code samples simpliar

    Cons
        * Re-inventing some language constructs
        * Highest tooling costs
        * No "native" way of doing common high-level language tasks (maths/advanced logic)"

Known limitations
    * No support for the copy property (#185).
    * Single line object and arrays (i.e. ['a', 'b', 'c']) are not yet supported (#146).
    * You still need to deploy the compiled template yourself, though we plan to build native support for bicep into the powershell Az deployment cmdlets and az cli deployment commands (#858).
    * Bicep is currently not covered by Azure support plans as it is still in early development stages. Expect Bicep to be covered by all support plans starting on the 0.3 version.

Release 
    * Azure Bicep v0.1
        Project launch
    * Bicep v0.2
        VS Code intellisense support
        Add Module support for code reuse
    * Bicep v0.3 - January 2021
        Features for ARM, Loops / Conditionals
        Decomplier that can convert ARM to Bicep code files
        Encourage Production

Install Bicep CLU
VSCode

2. Demo

3. Compare to Terraform / Pulumi


https://github.com/Azure/bicep


--Azure Connect
Connect-AzAccount -UseDeviceAuthentication 
az login

--Deployment
New-AzResourceGroup -Name trialbicep-rg -Location australiaeast
New-AzResourceGroupDeployment -TemplateFile ./main.json -ResourceGroupName trialbicep-rg

--Expressions
-- string interpolation ${}
-- tenary operator ? :
-- symbolic
--automatically get dependson, reference to symbolic name

Bicep Modules
    -- Modules

