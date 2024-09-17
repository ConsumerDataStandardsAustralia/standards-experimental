## Levels of Assurance (LoAs)
Levels Of Assurance (LoAs), returned after a successful authentication **MUST** be represented in Single Ordinal form where a single LoA value is represented.

<a id="ordinal-loa"></a>
### Single Ordinal

```diff
+ Added LoA of 4 which is represented by the URI: `urn:cds.au:cdr:4`
```

A Single LoA value is carried in the `acr` claim which is described in [section 2](https://openid.net/specs/openid-connect-core-1_0.html#IDToken) of **[[OIDC]](#nref-OIDC)**.

  - An LoA of 2 is represented by the URI: `urn:cds.au:cdr:2`
    - The authenticator used to attain this level **MUST** conform with the Credential Level `CL1` rules specified under the [Trusted Digital Identity Framework](https://www.digitalidentity.gov.au/tdif) **[[TDIF]](#nref-TDIF)** Authentication Credential Requirements specification.


  - An LoA of 3 is represented by the URI: `urn:cds.au:cdr:3`
    - The authenticators used to attain this level **MUST** conform with the Credential Level `CL2` rules specified under the [Trusted Digital Identity Framework](https://www.digitalidentity.gov.au/tdif) **[[TDIF]](#nref-TDIF)** Authentication Credential Requirements specification.

  - An LoA of 4 is represented by the URI: `urn:cds.au:cdr:4`
    - The authenticators used to attain this level **MUST** conform with the Credential Level `CL3` rules specified under the [Trusted Digital Identity Framework](https://www.digitalidentity.gov.au/tdif) **[[TDIF]](#nref-TDIF)** Authentication Credential Requirements specification.


<h3 class="schema-toc" data-cds-menu="h3" id="security-profile_loas_data-sensitivity-classification">Data Sensitivity Classification</h3>

```diff
+ Added data classification to Credential Level Mapping Table
```

**Data Classification** | **Authorisation Scopes** | **Approved LoA and Credential Level bindings** |
-- | --  | -- |
**Personal Data (PD)** <br/>Information held which is related to a consumer, but does not itself directly or indirectly identify the consumer. | <ul><li>**Banking:**<ul><li>bank:accounts.basic:read</li><li>bank:payees:read</li></ul></li><li>**Energy:**<ul><li>energy:electricity.der:read</li><li>energy:electricity.usage:read</li><li>energy:accounts.basic:read</li></ul></li></ul> | LoA2/LoA3/LoA4;<br/>CL1/CL2/CL3 |
**Personal Information (PI)** <br/>Information that directly identifies a consumer, or may reasonably identify a consumer through inference. | <ul><li>**Common:**<ul><li>profile</li><li>common:customer.basic:read</li><li>common:customer.detail:read</li></ul></li><li>**Banking:**<ul><li>bank:accounts.detail:read</li><li>bank:transactions:read</li><li>bank:regular_payments:read</li></ul></li><li>**Energy:**<br/><ul><li class="changed">energy:electricity.servicepoints.detail:read</li><li>energy:accounts.concessions:read</li><li>energy:accounts.paymentschedule:read</li><li>energy:billing:read</li><li>energy:accounts.detail:read</li></ul></li></ul> |  LoA3/LoA4;<br/>CL2/CL3 |
**Modifiable Personal Information (MPI)** <br/>Information that can be modified through action under a consumer-direction instruction. Specifically, the acceptance of an instruction to act. | <ul><li>All _WRITE_ operations</li></ul> | LoA3/LoA4;<br/>CL2/CL3 | 


**Data Holders:**  

- *READ* operations:

  - If Personal Information (PI) is shared, *READ* operations **SHALL** only be allowed where:  

     - **At least** an LoA of 3 has been achieved during the establishment of consent, or
     - **At least** an LoA of 2 has been achieved during the establishment of consent and a subsequent challenge/response has resulted in an LoA of 3 being achieved within the lifespan of the current Access Token.

  - Otherwise if no PI is shared, *READ* operations **SHALL** only be allowed where:  
     -  **at least** an LoA of 2 has been achieved during the establishment of consent.<br/><br/>

- *WRITE* operations **SHALL** only be allowed where:

  - **At least** an LoA of 3 has been achieved during the establishment of consent, or  
  - **At least** an LoA of 2 has been achieved during the establishment of consent and a subsequent challenge/response has resulted in an LoA of 3 being achieved within the lifespan of the current Access Token.
