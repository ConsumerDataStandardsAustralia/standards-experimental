# Simple Payments

**EXPERIMENTAL**

*Current Version:* **0.0.1**

Additional endpoints, and extensions to existing endpoints, to facilitate simple, bank account to bank account payments.

## Abstract

This standard defines a set of extensions to the existing Consumer Data Standards.  It defines mechanisms for a bank, or non-bank lender, acting as an Action Service Provider (ASP), to receive payment instructions from an Accredited Action Initiator (AAI) for simple bank account to bank account payments.

The standard defines the following:

- Extensions to the account endpoints to optionally describe the outbound payment types supported by a specific account
- Additional endpoint for the submission of payment instruction on behalf of a customer
- Additional scope to be used to provide access to the payment instruction endpoint

Note that this standard does not seek to cover extensions to the CDR information security profile to allow for additional controls, transactional step-up authentication or rich authorisation.

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

- Extensions to allow for the supported payment methods to be declared for bank accounts
- Additional scope to be used to provide access to the payment instruction endpoint
- Additional endpoint for the submission of payment instruction on behalf of a customer

### Addition to get account endpoints

An additional field **SHALL** be added to Get Account Details defined in [**[CDS]**](#normative-cds).

This field **SHALL** be named `DSB-supportedPaymentTypes` and will appear in the root of the `BankingAccountV2` schema in each of the endpoints that it appears in.

The field `DSB-supportedPaymentTypes` will be an object.  The schema of this defined by the following JSON schema:
```
{
    "$schema": "http://json-schema.org/draft-07/schema",
    "type": "object",
    "properties": {
        "DSB-supportedPaymentTypes": {
            "type": "object",
            "description": "Payment types supported for this account",
            "properties": {
                "outbound": {
                    "type": "array",
                    "description": "Array of outbound payment types supported by this account.  If empty then no payment types included in the enumeration list are supported. If the field is absent then the supported payment types are unknown",
                    "items": {
                        "type": "string",
                        "enum": [
                            "TRANSFER"
                        ]
                    }
                }
            }
        }
    }
}
```

Note that the enumeration values for outbound payments types are to be interpreted as follows:

* TRANSFER - Account to account transfer between the customers own accounts

In the future additional enumeration values can be added to support additional payment types.


### Additional payments scope

The additional scope `bank:payments:write` **SHALL** be supported.

Access to the `Post Payment Instruction` **MUST** be restricted to authorised consents containing the `bank:payments:write` scope.


### Post Payment Instruction endpoint

An additional endpoint **SHALL** be provided by the ASP called `Post Payment Instruction` that will be used to submit a payment instruction for execution.

The resource path for this endpoint **SHALL** be: `DSB/banking/payments`

Where:
* The endpoint **SHALL** be accessed using the HTTP POST method
* The endpoint **SHALL** be accessed via the `ExtensionBaseUri` base path defined for the ASP in the CDR Register
* The endpoint **SHALL** implement the security requirements defined in [**[CDS]**](#normative-cds) for authenticated resource endpoints

More details on the operation of the `Post Payment Instruction` appear later in the *Detailed specifications* section.


### Detailed specifications

#### OpenAPI Specification

The OpenAPI specification for this standard can be found at the links below:

* [OpenAPI Specification in JSON format](../Support_Files/Simple-Payments.json)
* [OpenAPI Specification in HTML format](../Support_Files/Simple-Payments-OAS.html)

These specifications contain the details of the `Post Payment Instruction` endpoint.

## TODO

* Add CX Data Language for the `bank:payments:write` scope
* Consider extension to additional payment types
* Consider mechanisms for assessing the progress, or status, of an initiated payment
* Consider an endpoint to list payment instructions previously initiated
* Consider extension to allow for the creation of scheduled payments
* Consider rich authorisation extensions to provide more detailed consumer control of payments that can be initiated by an AAI

## Normative References

| Reference | Description |
|-|-|
| RFC2119 <a id="normative-rfc2119"/> | Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, DOI 10.17487/RFC2119, March 1997, https://www.rfc-editor.org/info/rfc2119. |
| RFC8174 <a id="normative-rfc8174"/> | Leiba, B., "Ambiguity of Uppercase vs Lowercase in RFC 2119 Key Words", BCP 14, RFC 8174, DOI 10.17487/RFC8174, May 2017, https://www.rfc-editor.org/info/rfc8174. |
| CDS <a id="normative-cds"/> | The latest version of the Consumer Data Standards as they are updated from time to time, https://consumerdatastandardsaustralia.github.io/standards. |


## Informative References

| Label | Reference |
|-------|-----------|
|[JSONSchema]|Wright, A., Andrews, H., Hutton, B., and G. Dennis, "JSON Schema: A Media Type for Describing JSON Documents", draft-bhutton-json-schema-00 (work in progress), December 2020.|