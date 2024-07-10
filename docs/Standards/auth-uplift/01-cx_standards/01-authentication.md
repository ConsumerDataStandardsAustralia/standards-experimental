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