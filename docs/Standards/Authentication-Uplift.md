# Authentication Uplift

**EXPERIMENTAL**

*Current Version:* **0.0.1**

This standard contains enhancements to the Security Profile for strong customer authentication. This standard also incoproates new authentication flows including Redirect To App and Decoupled Authentication.

## Abstract

Authentication of consumers, or their nominated representatives forms a critical security control for the disclosure of consumer data by Data Holders. In [Decision Proposal 327](https://github.com/ConsumerDataStandardsAustralia/standards/issues/327), several enhancements were proposed by the Data Standards Body to uplift authentication controls to provide consumers with more secure authentication methods that provided a better consumer experience. These controls incorporated recommendations from the 2022 [Independent Security Health Check](https://github.com/ConsumerDataStandardsAustralia/standards/issues/258). The purpose was a modernisation of the authentication controls to replace the existing single-factor OTP authentication prescriptions and "redirect to web" flow with standards that enable Data Holders to employ strong customer authentication in line with their existing digital channels. These standards also proposed new interaction flows including Redirect To App (sometimes referred to as App2App) and decoupled authentication which provide more intuitive interaction flows that provide a better experience for different use cases.

The Data Standards Body has established an [Information Security Consultative Group](https://consumerdatastandards.gov.au/information-security-consultative-group) to progress the uplift of authentication and the further drafting of standards.

This standard has been developed by the Data Standards Body as a strawman solution of how this uplift could occur to act as an aid to consultation within the Consultative Group and as a catalyst for community feedback.

It is intended that the publication of this standard will be used by the Consultative Group to raise issues and track feedback from the group. This is in turn intended to inform the eventual development of a draft data standard of the consumer data standards to be consulted on with all CDR conmmunity participants.

## Introduction

<Introduction>

### Requirements Language

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in BCP 14 [[RFC2119](#normative-rfc2119)] [[RFC8174](#normative-rfc8174)].

## Specification

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
| <span class="new">**Authentication:**<br>Redirection (pre auth messaging)</span> | <span class="new">ADRs **SHOULD** inform the consumer of the redirection to the Data Holder (both pre and post authorisation), along with the status of the transaction.</span> | 
 
 
 
 
 
 
 
