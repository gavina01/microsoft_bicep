Since Bicep is a transparent abstraction of ARM templates, any resource that can be deployed via an ARM template can be authored in Bicep. However, not all ARM template capabilities are supported in Bicep in the 0.2 release. The following statements must be true in order for the template to be convertible:

Template does not use the copy function for creating multiple resources, multiple variables, or multiple outputs
Template does not conditionally deploy resources with the condition property

credit: https://github.com/Azure/bicep/blob/main/docs/tutorial/06-convert-arm-template.md