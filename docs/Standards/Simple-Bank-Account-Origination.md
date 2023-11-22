# Simple Bank Account Origination

**EXPERIMENTAL**

*Current Version:* **0.0.6**

Additional endpoints, and extensions to existing endpoints, to facilitate the receipt of an account opening instruction to begin the process of a customer opening a new bank account.

## Abstract

This standard defines a set of extensions to the existing Consumer Data Standards.  It defines mechanisms for a bank or non-bank lender to receive an account application for a new, or existing, customer facilitated by an external entity.

The standard defines the following:

- Extensions to the product reference data endpoints to allow forthe communication of supported origination capabilities and application requirements
- Additional endpoint for the submission of an account application for a new customer


## Introduction

### Requirements Language

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in BCP 14 [[RFC2119](#normative-rfc2119)] [[RFC8174](#normative-rfc8174)].

### Terminology

| Term | Definition |
|-|-|
| Accredited Action Initiator (AAI) | A software product that is operated by an entity accredited to initiate actions under CDR.  The equivalent of an Accredited Data Recipient under the current CDR regime |
| Action Service Provider (ASP) | A server implementation that supports the receipt of an action instruction from an AAI.  The equivalent of a Data Holder under the current CDR regime |

## Specification

### Foundational Standards

This specification is an extension to the Consumer Data Standards ([**[CDS]**](#normative-cds)))

### Extension to the Consumer Data Standards

This standard adheres to the extensibility guidelines outlined in the `Extensibility` section of [**[CDS]**](#normative-cds).

The Holder Identifier (`HID`) as described in [**[CDS]**](#normative-cds) will be defined as **DSB** indicating that this is an extension defined in a DSB curated standard.

### Addition to Get Product Details

An additional field **SHALL** be added to Get Product Details defined in [**[CDS]**](#normative-cds).

The definition of this field **SHALL** be as follows:

* Named `DSB-originationSchemes`
* The field will contain an array of scheme IDs referencing schemes defined via the Get Origination Scheme endpoint
* The type of each element in the array will be `ASCIIString` as defined in [**[CDS]**](#normative-cds)

### Get Origination Scheme endpoint

An additional endpoint **SHALL** be provided by the ASP called `Get Origination Scheme` that will be used to obtain the meta data describing how to make an application for a family of products.

The resource path for this endpoint **SHALL** be: `DSB/banking/origination/schemes/{schemeId}`

Where:
* The schemeId is a unique identifier of a specific scheme.  This identifier is **NOT REQUIRED** to adhere to ID permanence rules defined in [**[CDS]**](#normative-cds)
* The endpoint **SHALL** be accessed using the HTTP GET method
* The endpoint **SHALL** be accessed via the `ExtensionBaseUri` base path defined for the ASP in the CDR Register
* The endpoint **SHALL** implement the security requirements defined in [**[CDS]**](#normative-cds) for unauthenticated endpoints

More details on the operation of the `Get Origination Scheme` appear later in this standard.

### Apply For Product endpoint

An additional endpoint **SHALL** be provided by the ASP called `Apply For Product` that will be used to apply for a product.

The resource path for this endpoint **SHALL** be: `DSB/banking/accounts`

Where:
* The endpoint **SHALL** be accessed using the HTTP POST method
* The endpoint **SHALL** be accessed via the `ExtensionBaseUri` base path defined for the ASP in the CDR Register
* The endpoint **SHALL** implement the security requirements defined in [**[CDS]**](#normative-cds) for `Private Key JWT Client Authentication`
* A scope claim or Access Token is **NOT REQUIRED** to invoke the endpoint

More details on the operation of the `Apply For Product Scheme` appear later in this standard.

### Detailed specifications

#### CDR Extension Specifications

The following JSON Schema snippet defines the extension fields to be added to the standard payload of the `Get Product Detail` endpoint defined in [**[CDS]**](#normative-cds).

This JSON Schema is to be understood as representing an addition to root object of the `Get Product Detail` response payload and therefore includes intermediate fields that are already defined in [**[CDS]**](#normative-cds).

```
{
   "$schema": "http://json-schema.org/draft-07/schema",
   "type": "object",
   "required": [
      "data",
   ],
   "properties": {
      "data": {
         "type": "object",
         "properties": {
            "DSB-originationSchemes": {
               "type": "array",
               "description": "Array of IDs to origination schemes that
                               can be obtained from the `Get Origination
                               Scheme` endpoint",
                "items": {
                    "type": "string"
                }
            }
         }
      }
   }
}
```

#### OpenAPI Specification

The OpenAPI specification for this standard can be found at the links below:

* [OpenAPI Specification in JSON format](../Support_Files/Simple-Bank-Account-Origination.json)
* [OpenAPI Specification in HTML format](../Support_Files/Simple-Bank-Account-Origination-OAS.html)

These specifications contain the details of the `Get Origination Scheme` endpoint and the `Apply For Product` endpoint.

## TODO

* Complete the OAS specification for the `Get Origination Scheme` endpoint
* Complete the OAS specification for the `Apply For Product` endpoint


## Normative References

| Reference | Description |
|-|-|
| RFC2119 <a id="normative-rfc2119"/> | Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, DOI 10.17487/RFC2119, March 1997, https://www.rfc-editor.org/info/rfc2119. |
| RFC8174 <a id="normative-rfc8174"/> | Leiba, B., "Ambiguity of Uppercase vs Lowercase in RFC 2119 Key Words", BCP 14, RFC 8174, DOI 10.17487/RFC8174, May 2017, https://www.rfc-editor.org/info/rfc8174. |
| CDS <a id="normative-cds"/> | The latest version of the Consumer Data Standards as they are updated from time to time, https://consumerdatastandardsaustralia.github.io/standards. |


## Informative References

None