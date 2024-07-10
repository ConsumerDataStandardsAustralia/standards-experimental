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

