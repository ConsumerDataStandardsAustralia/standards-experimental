# Consumer Experience
<h2 class="schema-heading" id="consumer-experience_authentication-standards">Authentication Standards</h2>

```diff
Changed title of Authentication Standards to Redirect With OTP
```
<h3 class="schema-toc" data-cds-menu="h3" id="consumer-experience_authentication-standards_redriect-with-otp"><span class="changed">Authentication Standards: Redirect With OTP</span></h3>

The standards in this section outline requirements that apply to Data Holders where the 'Redirect with OTP' authentication flow is supported.

|Area|CX Standard|
|-------------------|------------------------------|
|**Authentication:**<br>'One Time Password' (OTP)|<p>Data Holders and Data Recipients **MUST** clearly refer to a "One Time Password" in consumer-facing interactions and communications.</p><p>The use of the term "One Time Password" **MAY** be presented alongside an existing term used by a data holder (e.g. Netcode, one time pin etc.).</p>|
|**Authentication:**<br>Passwords|Data Holders and Data Recipients **MUST** state in consumer-facing interactions and communications that services utilising the CDR do not need access to consumer passwords for the purposes of sharing data. The exact phrasing of this is at the discretion of the Data Holder and Data Recipient.|
|**Authentication:**<br>Password link | Data Holders **MUST NOT** include forgotten details links in redirect screens. The inclusion of such links is considered to increase the likelihood of phishing attacks.|
|**Authentication:**<br>OTP expiry|Data Holders **MUST** communicate the expiry period of the OTP to the consumer in the authentication flow.|


<h3 class="schema-toc" data-cds-menu="h3" id="consumer-experience_authentication-standards_redriect-to-app"><span class="new">Authentication Standards: Redirect To App</span></h3>

```diff
+ Added new section for Redirect To App (Web2App and App2App) CX standards
```

<span class="new">The standards in this section outline requirements that apply to Data Holders where redirection to the Data Holder app is supported.</span>

|Area|CX Standard|
|-------------------|------------------------------|
| <span class="new">**Authentication:**<br>Accidental Login</span> | <span class="new">Data Holders **MUST NOT** automatically conduct facial biometric authentication. Data Holders **SHOULD** request confirmation (such as ‘continue’ or ‘proceed’) to prevent accidental/unintended authentication.</span> |
| <span class="new">**Authentication:**<br>App Redirect</span> | <span class="new">If a Data Holders app is installed on the same device a user is accessing an ADR, the redirection **MUST** invoke the Data Holder app for authentication.</span> |
| <span class="new">**Authentication:**<br>Automatic logout</span> | <span class="new">Before redirecting back to an ADR, Data Holders **SHOULD** inform the user that they will be automatically logged out of their session after authorisation.</span> | 
| <span class="new">**Authentication:**<br>Fallback</span> | <span class="new">If the consumer does not have the Data Holder’s app installed on their device, they **SHOULD** be redirected to the Data Holder's website in browser for authentication without additional steps.</span> |
| <span class="new">**Authentication:**<br>Friction | <span class="new">The authentication method **SHOULD NOT** involve more steps than the number of steps than the consumer would experience when directly accessing the Data Holder app.</span> |
| <span class="new">**Authentication:**<br>Login method | <span class="new">Data Holders **SHOULD** offer the same authentication method(s) available to the consumer when authenticating in their direct channels.</span> |
| <span class="new">**Authentication:**<br>Redirection (pre auth messaging)</span> | <span class="new">ADRs **SHOULD** inform the consumer of the redirection to the Data Holder (both pre and post authorisation), along with the status of the transaction.</span> |<h2 class="schema-heading" id="consumer-experience_consent-standards">Consent Standards</h2>


|Area|CX Standard|
|-------------------|------------------------------|
|**Consent:**<br/>Redirection|Data recipients **MUST** notify consumers of redirection prior to authentication.|
|**Business consumer statement:** Method|When seeking a business consumer statement, data recipients **MUST** invite the business consumer to give the business consumer statement in a manner that is explicit, express, and through an active selection or declaration.<br><br>The giving of a business consumer statement **MUST** be clearly separated from any other interaction or information provided to the consumer and **MUST NOT** be implied or bundled with any other permission.|
|**Business consumer statement:** Content|Data recipients **MUST** use plain and concise language when inviting a consumer to give a business consumer statement.|
|**Disclosure consent:**<br/>Collection source|In the course of seeking a consumer’s consent to disclose data as part of a disclosure consent:<ol><li>Data Recipients **MUST** specify which CDR Participant(s) they collected the associated CDR data from</li><li>Data Recipients **SHOULD** specify the sector(s) the data was collected from or associated with</li></ol>**Note:**<ul><li>Point (1) only requires the Data Recipient to refer to the CDR Participant(s) immediately preceding them in the disclosure chain, which may not always include a consumer’s Data Holder(s)</li><li>This standard is proposed to apply to all data to be disclosed by a Data Recipient, including unmodified, aggregated, derived, and transformed CDR data</li><li>Where applicable, the existing data language standards apply to descriptions of CDR data that have not been modified</li></ul>|
|**Disclosure Consent:** Descriptions of Data to be Collected and Disclosed|If:<ol><li>An accredited person is seeking a collection consent to collect CDR data from a particular accredited data recipient; or</li><li>An accredited data recipient is seeking a disclosure consent from a consumer to disclose CDR data;</li></ol>and the data subject to the disclosure or collection is not within the data language standards as it does not relate to a relevant data cluster, then that data **MUST** be described in language that is as easy to understand as practicable.|

<h3 class="schema-toc" data-cds-menu="h3" id="consumer-experience_consent-standards_disclosure-consent-insight-descriptions">Disclosure Consent: Insight Descriptions</h3>

The standards in this section outline insight description requirements that apply where an insight disclosure consent is being sought and may also feature in CDR Receipts and Dashboards. These standards do not alter any existing rules obligations for CDR receipts or dashboards.

**Note:** The use of the term ‘data recipients’ to refer to accredited data recipients is consistent with the data standards nomenclature. Where these standards refer to ‘data recipient’, this should not be taken to mean a non-accredited person or trusted adviser.

|Area|CX Standard|
|-------------------|------------------------------|
|**Insight disclosure:** <br>Insight comprehension|Data recipients **MUST** use plain and concise language to describe what an insight would reveal or describe.<br><br>Where possible and practical, the actual insight **SHOULD** be displayed to the consumer prior to the insight being disclosed. <br><br>Where it is not possible to display the actual insight, accredited data recipients **SHOULD** include an example of the insight that demonstrates what the insight may reveal or describe. Accredited data recipients **SHOULD** make clear that any such examples are hypothetical.|
|**Insight disclosure:** <br>Insight timing|Data recipients **MUST** specify the period the insight will refer to and **MAY** note when the insight will be or is expected to be generated.|
|**Insight disclosure:** <br>Purpose of insight |Data recipients **SHOULD** explain the purpose of generating the insight.|
|**Insight disclosure:** <br>Insight generation|Data recipients **MAY** explain how the insight will be generated using plain and concise language, which **MAY** include: <ul><li>what method(s) would be used to generate the insight(s);<li>who would be involved in generating the insight(s), such as the specific actor(s); and</li><li>what information sources would be used to generate the insight, such as the specific dataset(s)</li></ul></ol>|

<h3 class="schema-toc" data-cds-menu="h3" id="consumer-experience_consent-standards_disclosure-consent-non-accredited-person-disclosure-notification">Disclosure Consent: Non-Accredited Person Disclosure Notification</h3>

The standards in this section outline requirements that apply when a disclosure consent is being sought to disclose data to a non-accredited person, which includes insight disclosure consents, business consumer disclosure consents, and trusted adviser disclosure consents.

These standards will feature where such a disclosure consent is being sought and may, as stated in any accompanying notes, also feature in CDR Receipts and Dashboards.

**Note:** The use of the term ‘data recipients’ to refer to accredited data recipients is consistent with the data standards nomenclature. Where these standards refer to ‘data recipient’, this should not be taken to mean a non-accredited person or trusted adviser.

|Area|CX Standard|
|-------------------|------------------------------|
|**Disclosure consent:** <br> CDR protections|Data recipients **MUST** state that data disclosed to a non-accredited person will not be regulated as part of the Consumer Data Right.<br><br>This information **SHOULD** be immediately viewable by the consumer without further interaction.<br><br>Data recipients **MAY** include a plain and concise explanation of what this means, which **MAY** include information on the Consumer Data Right, and **MAY** include a link to the [Office of the Australian Information Commissioner guidance on the Consumer Data Right.](https://www.oaic.gov.au/consumer-data-right)|
|**Disclosure consent:** <br> Review|Data recipients **MUST** advise the consumer to review how the non-accredited person will handle their data.|
|**Disclosure consent:** <br> Data handling|If available, data recipients **MAY** include a link to any relevant data handling policies of the non-accredited person, such as their Privacy Policy.|
|**Disclosure consent:** <br> Complaints |Data recipients **MUST** provide plain and concise information on dispute resolution and making a complaint. This **SHOULD** reflect the process and information contained in the data recipient’s CDR policy related to complaints. This **MAY** also include a link to the accredited data recipient’s CDR policy.|
|**Disclosure consent:** <br> Insight records |When seeking an insight disclosure consent, data recipients **MUST** provide instructions for how the consumer can access further records, including the actual insights (as per Rules 1.14 and 9.5).|
|**Disclosure consent:** <br>  Notification record |Data recipients **MUST** provide the information contained in the disclosure notification otherwise than in the  consent flow. This **SHOULD** be contained in the consumer’s CDR Receipt. This **SHOULD** also be accessible in the consumer dashboard as part of the data sharing arrangement details. <br><br>**Note 1:** The information to be included is limited to the following standards: CDR Protections; Review; Data Handling; Complaints; and Insight Records. The scope of information to include will depend on the accredited person’s specific implementation.<br><br>**Note 2:** This standard does not alter any existing rules obligations for CDR receipts or dashboards.|
## Authorisation Standards

|Area|CX Standard|
|-------------------|------------------------------|
|**Authorisation:**<br/> Account selection |Data holders **MUST** allow the consumer to select which of their accounts to share data from if the data request includes account-specific data and if there are multiple accounts available. The Data holder **MAY** omit this step if none of the data being requested is specific to an account (e.g. Saved Payees).|
|**Authorisation:**<br/> Account selection functionality |<p>Data holders **MAY** include additional functionality to support account discovery and selection where further navigation or interaction is required to view all accounts. This may, for example, include search, sort, filter, scroll, grouping, and pagination, or other controls in line with existing consumer experiences. Any such functionality **MUST NOT** introduce unwarranted friction.</p><p>**Note:** Unwarranted friction should have regard to CDR Rule 4.24 and is considered to include the addition of any requirements beyond normal data holder practices for an equivalent account selection process.</p>|
|**Authorisation:**<br/>Profile selection |<p>Data holders **MAY** add a 'profile selection' step or equivalent prior to the account selection step if a single identifier provides access to different customer accounts. For example, one customer ID may give access to business customer and individual customer accounts.</p><p>The 'profile selection' step **SHOULD** only be considered if it is an existing customer experience, and **SHOULD** be as minimal as possible to avoid introducing unwarranted friction (having regard to CDR Rule 4.24).</p>|
|**Authorisation:**<br>Account confirm|Data holders **MUST** show which accounts the data is being shared from prior to confirming authorisation if the data request includes account-specific data. The data holder **MAY** omit this information if none of the data being requested is specific to an account (e.g. Saved Payees).|
|**Authorisation:**<br>Pending status|<p>Where an account requires further actions or approvals before data can be disclosed, data holders **MUST** indicate this to the user visually and **MUST** provide an explanation of what is required or expected.</p><p>This **MAY**, for example, be achieved with a visual icon to indicate that the account is 'pending'. This indication **MUST** be accompanied by an in-context explanation to describe what the status means. This explanation **SHOULD** include any required actions and any specified time frames.</p>|
|**Unavailable Accounts:**<br/>Displaying accounts|<p>If certain accounts are unavailable to share, data holders **SHOULD** show these unavailable accounts in the account-selection step. </p><p>Data holders **SHOULD** communicate why these accounts cannot be selected, and this **SHOULD** be communicated as in-line help or as a modal to reduce on-screen content.</p><p>Data holders **MAY** provide instructions on how to make these accounts available to share, and this **SHOULD** be communicated as in-line help or as a modal to reduce on-screen content.</p><p>**Note:** Unavailable accounts are to be interpreted in accordance with the rules on eligible consumers and required consumer data.</p>|
|**Unavailable Accounts:**<br/>No accounts can be shown|If unavailable accounts cannot be shown in the account selection step, data holders **MAY** display a generic explanation and instructions.|
|**Unavailable Accounts:**<br/>Authorisation not permitted|If a successfully authenticated user cannot proceed to establish an authorisation in accordance with the rules on eligible consumers and required consumer data, data holders **MAY** provide the option of concluding the authorisation process.|
|**Unavailable Accounts:**<br/>Request sharing rights|If a user does not have sharing rights for a particular account or set of accounts, data holders **MAY** invite the user to request sharing rights from the authorisation flow. The presentation of this mechanism **MUST NOT** introduce unwarranted friction as defined in rule 4.24 on restrictions.|
## Amending Authorisation Standards
|Area|CX Standard|
|-------------------|------------------------------|
|**Authorisation:**<br/>Amending consent | The following standards apply when a Data Holder invites a CDR consumer to amend a current authorisation as per rule 4.22A and the ADR has supplied a *cdr_arrangement_id*:|
|Customer Profile|Where customer profile selection applies, Data Holders **SHOULD** omit the profile selection step and assume the customer profile associated with the existing authorisation. Data Holders **MAY** indicate which profile the authorisation relates to during the authorisation process.|
|Account Selection|Where account selection applies, Data Holders **MUST** pre-select accounts that were associated with the previous authorisation provided these accounts remain eligible and available to share. Data Holders **MAY** allow these accounts to be amended, and **MAY** provide information regarding the pre-selection of accounts.|
|Changing Attributes| Data Holders **MUST** indicate where a dataset is being added to an authorisation or a disclosure duration is being amended. Data Holders **MAY** apply this standard to other changing attributes, but this **MUST ONLY** apply where the attribute in the new authorisation differs to that of the previous authorisation. How a changed attributed is signified is at the Data Holder’s discretion.|

<br>Refer also to [Future Dated obligations](#future-dated-obligations)<br>
<br/>
# Security Profile
## <span class="new-1">Terminology</span>

<span class="new-1">**Authentication Provider**</span>  

<span class="new-1">A system entity that provides authentication of a Customer in order to access data or a service provided by that entity.</span> 

<span class="new-1">**Consumption Device**</span>

<span class="new-1">The device the consumer uses to interact with the Data Recipient Software Product. This is the device that initiates the consent flow.</span>  

<span class="new-1">**Authentication Device**</span> 

<span class="new-1">The device the consumer uses for authentication and the authorisation grant.</span>

<span class="new">**Authenticator**</span> 

<span class="new">Something the user possesses and controls that is used to authenticate the user's identity.</span><br/>
This profile supports the authentication flows specified by [OpenID Connect](https://openid.net/specs/openid-connect-core-1_0.html) **[[OIDC]](#nref-OIDC)** as constrained further by **[[FAPI]](#iref-FAPI)**.


Specifically:

- OIDC Hybrid Flow outlined at [section 3.3](https://openid.net/specs/openid-connect-core-1_0.html#HybridFlowAuth) of **[[OIDC]](#nref-OIDC)**, and  
- Authorization Code Flow outlined at [section 3.1](https://openid.net/specs/openid-connect-core-1_0.html#CodeFlowAuth) of **[[OIDC]](#nref-OIDC)** are supported.

No other flows are currently supported.

### <span class="changed-1">Baseline Security Provisions</span>

```diff
- Removed OTP requirements from the Baseline Security Provisions
- Removed redundant authorization_code reuse requirement
```

#### Data Holders

- Data Holders **MUST** support FAPI 1.0 Advanced Profile (**[[FAPI-1.0-Advanced]](#nref-FAPI-1-0-Advanced)**).
- Data Holders **MUST** support Authorization Code Flow.  
- Data Holders **MAY** support the OIDC Hybrid Flow.
- The `request_uri` parameter is only supported if the Data Holder supports PAR.

#### Data Recipient Software Products

- Data Recipient Software Products **MUST** support FAPI 1.0 Advanced Profile (**[[FAPI-1.0-Advanced]](#nref-FAPI-1-0-Advanced)**).
- Data Recipient Software Products **MUST** use **[[RFC9126]](#nref-RFC9126)** (PAR) with **[[PKCE]](#nref-PKCE)** (**[[RFC7636]](#nref-RFC7636)**) and, if supported, **MUST** use `S256` as the code challenge method.
- Data Recipient Software Products **SHOULD** use Authorization Code Flow.
- Data Recipient Software Products **SHOULD** record the following information each time an authorisation flow is executed: username (consumer’s ID at the Data Recipient Software Product), timestamp, IP, consent scopes and duration.
- Data Recipient Software Products **MAY** send requests with a "x-fapi-customer-ip-address" header containing a valid IPv4 or IPv6 address.  

<br/>
<h3 class="schema-toc" data-cds-menu="h3" id="security-profile_authentication-flows_oidc-hybrid-flow">OIDC Hybrid Flow</h3>

The **[[OIDC]](#nref-OIDC)** Hybrid Flow is a type of redirection flow where the consumer's user
agent is redirected from a Data Recipient Software Product’s (Relying Party) web site to a Data
Holder’s Authorisation end point in the context of an **[[OIDC]](#nref-OIDC)** authentication
request. The OIDC Hybrid Flow incorporates aspects of the both the implicit flow and
authorisation code flow detailed under **[[OIDC]](#nref-OIDC)**.


Only a `response_type` (see [section 3.3](https://openid.net/specs/openid-connect-core-1_0.html#HybridFlowAuth) of **[[OIDC]](#nref-OIDC)**) of `code id_token` **SHALL** be allowed.<br/>
<h3 class="schema-toc" data-cds-menu="h3" id="security-profile_authentication-flows_authorization-code-flow">Authorization Code Flow</h3>

The following statements are applicable for this flow:

* Only a `response_type` (see [section 3.1](https://openid.net/specs/openid-connect-core-1_0.html#CodeFlowAuth) of **[[OIDC]](#nref-OIDC)**) of `code` **SHALL** be allowed.
* Data Holders **MUST** also support **[[JARM]](#nref-JARM)** and **[[PKCE]](#nref-PKCE)**

#### Data Holders
Data Holders **MUST** support **[[JARM]](#nref-JARM)** in accordance with **[[FAPI-1.0-Advanced]](#nref-FAPI-1-0-Advanced)** [section 5.2.2.2](https://openid.net/specs/openid-financial-api-part-2-1_0.html#jarm).

> **JWT Secured Authorization Response Mode for OAuth 2.0 (JARM)**
> Data Holders **MAY** support Authorisation Response encryption.
>
> However, at present, there is no confidential information in the authorization response, hence encryption of the authorization response is not required for the purposes of security or confidentiality. In addition, whilst response encryption **MAY** be used, to achieve greater interoperability, it is not recommended to use encryption in this case at this time.

In addition,

* Data Holders **MAY** advertise they do not support authorisation response encryption: either by omitting these values from their OpenID Provider Metadata, or by presenting an empty array for the supported parameters.
* If the Data Holder supports authorisation response encryption and the `authorization_encrypted_response_alg` is omitted from the registration request, the Data Holder **MAY** require response encryption by returning a client registration response with the chosen `authorization_encrypted_response_alg` value.

#### Data Recipient Software Products
Data Recipients **MUST** support **[[JARM]](#nref-JARM)** in accordance with **[[FAPI-1.0-Advanced]](#nref-FAPI-1-0-Advanced)** [section 5.2.3.2](https://openid.net/specs/openid-financial-api-part-2-1_0.html#jarm-1).

In addition,

* Data Recipients **MUST** request authorisation response signing using one of the `authorization_signing_alg_values_supported` values offered by the Data Holder.
* Data Recipients **MAY** request response encryption using one of the advertised encryption sets.
* Data Recipients **MAY** request no response encryption by omitting the values in their client registration.
* If `authorization_signed_response_alg` is omitted, the default algorithm is `PS256`.


Additional requirements and guidelines for the authentication flows are contained in the [Consumer Experience](#consumer-experience) section.
<br/>
<h3 class="schema-toc" data-cds-menu="h3" id="security-profile_authentication-flows_redirect-to-app"><span class="new-1">Redirect To App</span></h3>

<span class="new-1">Redirect to App flows provide consumers with a streamlined authentication experience when the consumer has a Data Holder app installed on their Consumption Device. Redirect To App is a faster, safer, and more convenient way for consumers to connect their Data Holder accounts to third-party Data Recipient apps and services.</span>

<span class="new-1">Data Holders **MAY** support browser-to-app and app-to-app redirection in accordance with the Consumer Experience [Authentication Standards: Redirect To App](#consumer-experience_authentication-standards_redriect-to-app). In addition, the following provisions apply:</span>

- <span class="new-1">Data Holders **MUST** only support Authorization Code Flow for Redirect To App authentication</span>
- <span class="new-1">Data Holders **MUST** support Claimed “https” Scheme URI redirection in accordance with section 7.2 and section 8 of [RFC8252](#nref-RFC8252)</span>
- <span class="new-1">The redirection **MUST** invoke the Data Holder app for the purposes of authentication.</span>
- <span class="new-1">The Data Holder app **SHOULD** have no more than the number of steps that the Consumer would experience when directly accessing the Data Holder mobile app and offer the same authentication method(s) available to the Consumer when authenticating in their Data Holder's direct channels.</span>
- <span class="new-1">After authentication the Consumer must be deep linked within the Data Holder app to continue the authorisation process.</span>
- <span class="new-1">Data Holders **SHOULD** implement additional controls to minimise the risk of enumeration attacks via the redirect page.</span>
- <span class="new-1">Data Holders **MAY** omit the Customer Profile selection step where the Customer context is known to the Data Holder app.</span>
- <span class="new-1">Data Holders **MAY** invoke redirection to the Data Holder app via an intermediary webpage controlled by the Data Holder for the purposes of identifying the appropriate Customer or Data Holder app context to launch.</span><br/>
<h3 class="schema-toc" data-cds-menu="h3" id="security-profile_authentication-flows_ciba"><span class="new">Client Initiated Backchannel Authentication (CIBA)</span></h3>

<span class="new">The [**[FAPI-CIBA]**](#nref-FAPI-CIBA) flow is a decoupled authentication flow that allows the consumer to authenticate on a different device to their Consumption Device. This decoupling of authentication allows the consumer to authenticate on a trusted device like a smartphone that is independent to the device and channel the consent flow was initiated from, such as a desktop web browser. It also allows a Data Recipient Software Product to initiate a streamlined authentication request by providing a previous login hint or token.</span>

<span class="new">The following constraints apply to [**[FAPI-CIBA]**](#nref-FAPI-CIBA):</span>

- <span class="new">SHALL only support `sub` claim as a `login_hint`
- <span class="new">SHALL only support a CDR Arrangement JWT in accordance with [**[JWT]**](#nref-JWT) as a `login_hint_token`
- <span class="new">SHALL only support an ID Token signed by the Data Holder as an `id_token_hint`
- <span class="new">Any other login hints **SHALL NOT** be supported
<br/>
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
**Personal Data (PD)** <br/>Information held which is related to a consumer, but does not itself directly or indirectly identify the consumer. | <ul><li>**Banking:**<ul><li>bank:accounts.basic:read</li><li>bank:payees:read</li></ul></li><li>**Energy:**<ul><li>energy:accounts.concessions:read</li><li>energy:accounts.paymentschedule:read</li><li>energy:billing:read</li><li>energy:electricity.der:read</li><li>energy:electricity.usage:read</li><li>energy:accounts.basic:read</li><li>energy:accounts.detail:read</li></ul></li></ul> | LoA2/LoA3/LoA4;<br/>CL1/CL2/CL3 |
**Personal Information (PI)** <br/>Information that directly identifies a consumer, or may reasonably identify a consumer through inference. | <ul><li>**Common:**<ul><li>profile</li><li>common:customer.basic:read</li><li>common:customer.detail:read</li></ul></li><li>**Banking:**<ul><li>bank:accounts.detail:read</li><li>bank:transactions:read</li><li>bank:regular_payments:read</li></ul></li><li>**Energy:**<br/><ul><li class="changed">energy:electricity.servicepoints.detail:read</li></ul></li></ul> |  LoA3/LoA4;<br/>CL2/CL3 |
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
<br/>
<h2 class="schema-heading" id="security-profile_credential-requirements"><span class="new">Credential Requirements</span></h2>
<h3 class="schema-toc" data-cds-menu="h3" id="security-profile_credential-requirements_baseline"><span class="new">Baseline Credential Requirements</span></h3>

```diff
+ Added a new "Credential Requirements" section to contain all credential related standards
+ Added allowance for any authentication factor supported by the designated TDIF Credential Level
Moved OTP requirements into their own standalone section titled "OTP Credential Requirements"
- Removed rules consideration being only related to OTP
Changed to be relevant to any authentication challenge
Previously:
- the addition of any requirements beyond normal data holder practices for verification code delivery
- providing or requesting additional information beyond normal data holder practices for verification code delivery
```

Data Holders and Data Recipients:

- <span class="new">**MAY** support authenticator types as permitted by the LoA in accordance with the supported Credential Level requirements defined by **[[TDIF]](#nref-TDIF)** unless otherwise excluded by the [Restricted Credentials](#security-profile_credential-requirements_restricted-credentials) requirements.</span> 

<span class="changed">In line with CDR Rule 4.24 on restrictions when asking CDR consumers to authorise disclosure of CDR data, unwarranted friction for authenication challenges is considered to include:</span>  

- the addition of any requirements beyond normal data holder practices for <span class="changed">authenticating the customer, including, but not limited to, OTP</span> verification code delivery
- providing or requesting additional information beyond normal data holder practices for <span class="changed">authenticating the customer, including, but not limited to, OTP</span> verification code delivery
- offering additional or alternative services
- reference or inclusion of other documents

<h3 class="schema-toc" data-cds-menu="h3" id="security-profile_credential-requirements_user-identifiers"><span class="new">User Identifiers</span></h3>

<span class="new">If a Data Holder requests a user identifier for the purposes of identifying the customer during authentication, then the Data Holder:</span>

- <span class="changed">**MUST** request a user identifier that can uniquely identify the customer</span>
- <span class="changed">**MUST** request a user identifier that is already known by the customer in the redirected page</span>

<h3 class="schema-toc" data-cds-menu="h3" id="security-profile_credential-requirements_otp-authentication-requirements"><span class="new">OTP Credential Requirements</span></h3>

<span class="new">The following provisions apply where the Data Holder supports the 'Redirect with OTP' authentication flow:</span>

- <span class="changed">Data Holders **MUST** request a user identifier in accordance with [User Identifiers](#security-profile_credential-requirements_user-identifiers)</span>
- Data Holders **MUST** provide a one-time password (OTP) to the customer through an existing channel or mechanism that the customer can then enter into the redirected page
- The delivery mechanism for the OTP is at the discretion of the Data Holder but **MUST** align to existing and preferred channels for the customer and **MUST NOT** introduce unwarranted friction into the authentication process
- Data Holders **SHOULD** implement additional controls to minimise the risk of interception of the OTP through the selected delivery mechanism
- The provided OTP **MUST** be used only for authentication for CDR based sharing and **MUST NOT** be usable for the authorisation of other transactions or actions
- The provided OTP **MUST** be invalidated after a period of time at the discretion of the Data Holder.  This expiry period **SHOULD** facilitate enough time for the customer to reasonably complete the authorisation process
- The provided OTP **MUST** be numeric digits and be between 4 and 6 digits in length
- The algorithm for the creation of the OTP is at the discretion of the Data Holder but **SHOULD** incorporate a level of pseudorandomness appropriate for the use case
- Data Holders **SHOULD** implement additional controls to minimise the risk of enumeration attacks via the redirect page

<h3 class="schema-toc" data-cds-menu="h3" id="security-profile_credential-requirements_restricted-credentials"><span class="new">Restricted Credentials</span></h3>

```diff
+ Added a Restricted Credential section
```

<span class="new">The following credential constraints apply such that Authenticators:</span>

- <span class="new">**SHALL NOT** permit Memorised Secrets defined by [**[TDIF]**](#nref-TDIF), as a single factor of authentication</span>
- <span class="new">**SHOULD NOT** support Email for out-of-band authentication</span> 
- <span class="new">**SHOULD NOT** support SMS for out-of-band authentication</span> 

