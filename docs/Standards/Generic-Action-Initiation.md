# Generic Action Initiation

**EXPERIMENTAL**

*Current Version:* **0.0.1**

This standard contains variations and extensions to the information security
profile and high level standards in the binding consumer data standards to
facilitate the addition of action initiation.

## Abstract

Legislation has been introduced to the Australian parliament to extend the Consumer Data Right from data sharing to also include the initiation of action.

There are currently no obligations on any industry sector to implement actions under the Consumer Data Right but it is expected that obligations will be introduced by 2025.

The introduction of action initiation into the Consumer Data Right will require uplift to the binding consumer data standards before implementation of any specific action type can occur.

This standard has been developed by the Data Standards Body as a strawman solution of how this uplift could occur to act as an aid to consultation and as a catalyst for community feedback.

It is intended that the feedback obtained from the publication of this standard will inform the eventual development of a draft data standard of the consumer data standards.

## Glossary

| Term | Definition |
|-|-|
| Accredited Action Initiator (AAI) | A software product that is accredited to initiate actions under CDR.  The equivalent of an Accredited Data Recipient under the current CDR regime |
| Action Service Provider (ASP) | A server implementation that supports the receipt of an action instruction from an AAI.  The equivalent of a Data Holder under the current CDR regime |

## Standard

### Design Assumptions

#### General

- This standard builds upon **[[CDS](#normative-cds)]**
- There will need to be support for customer authorised actions
- There will need to be support for public actions where an existing customer relationship does not yet exist
- Support for a variety of API patterns will be required

#### Endpoint Authentication

- Consumer authorised actions endpoints will be authenticated according to Open ID Connect as outlined in the **[[CDS](#normative-cds)]** information security profile
- Public action endpoints will not be unsecured and will require and ASP to limit access only to AAIs
- Public action endpoints will be client authenticated according to the 'Private Key JWT Client Authentication' section of the **[[CDS](#normative-cds)]** information security profile
- Public action endpoints will be exposed via a new base path as described in the *Register Standards Changes* section below


#### Action Endpoint Patterns

-	The HTTP POST method will be used for action instruction creation
-	The HTTP PATCH method will be used for action instruction amendment (where supported)
-	Action instruction creation and amendment endpoints will be idempotent
-	Error codes for indicating failure with possible resubmission will be defined
- Standard statuses for action instruction submission will be defined
- An event based mechanism for notification of status change for asynchronous instructions will be defined
-	Meta data to support risk decisioning by ASPs will be defined per action type
-	The ASP will provide a unique ID for all submitted action instructions in accordance with existing ID Permanence rules
-	Where applicable an action instruction will include an 'intent' that will dictate how the ASP processes the instriction.  These intents will be:
  - Validate - To determine if the instruction is syntactically and semantically valid before submission
  - Stage - To stage, but not yet submit, an instruction
  - Submit - To submit the instruction, including previously staged data, for processing
-	A Challenge/Response pattern for step up authentication will be defined for interactive action initiation

#### Rich Authorisation

- The request object submitted using PAR (as defined in **[[CDS](#normative-cds)]**) will be extended to include detailed permissions according to **[[CDRRA](#normative-cdrra)]**
- This rich authorisation will constrain action instructions that can be initiated but will not, itself, constitute an action instruction

#### Register Standard Changes

- The Register Standards will be minimally extended to include the ability to represent AAIs and ASPs
-	The Register Standards will allow for a URI to a capability discovery document for both AAIs and ASPs
- AAI and ASP capability discovery documents will be constructed according to **[[CAPDISC](#normative-capdisc)]**
-	Real time read of the AAI and ASP capability discovery documents is NOT assumed
-	AAI and ASP capability discovery documents will be publicly accessible
- The ASP capability discovery document will contain the base path for public action endpoints

## Normative References

The following table contains references to normative standards that this standard relies upon:
| Reference | Description |
|-|-|
| CDS <a id="normative-cds"/> | The latest version of the binding consumer data standards at https://consumerdatastandardsaustralia.github.io/standards/ |
| CDRRA <a id="normative-cdrra"/> | The experimental [CDR Rich Authorisation](./CDR-Rich-Authorisation.html) standard |
| CAPDISC <a id="normative-capdisc"/> | The experimental [Capability Discovery](./Capability-Discovery.html) standard |
