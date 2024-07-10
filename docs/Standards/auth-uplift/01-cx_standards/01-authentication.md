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
| <span class="new">**Authentication:**<br>App Redirect</span> | <span class="new">If the consumer has the Data Holder app installed on the same device, the Data Holder **MUST** redirect to the Data Holder app for authentication unless otherwise specified in the data standards. <br/>Following authentication, the Data Holder **MUST** redirect the consumer back to the Data Recipient on the same device.</span> |
| <span class="new">**Authentication:**<br>Automatic logout</span> | <span class="new">Before redirecting the consumer back to the Data Recipient, the Data Holder **SHOULD** inform the consumer if their session with the Data Holder is closed or when it will be closed. <br/>The exact phrasing of this message is at the discretion of the Data Holders.</span> | 
| <span class="new">**Authentication:**<br>Fallback</span> | <span class="new">If the consumer does not have the Data Holder app installed on the same device, the Data Holder **MUST** use the redirect with One Time Password flow for the purposes of authentication.</span> |
| <span class="new">**Authentication:**<br>Friction | <span class="new">The authentication method **SHOULD NOT** involve more steps than the number of steps than the consumer would experience when directly accessing the Data Holder app unless otherwise required by the Data Standards.</span> |
| <span class="new">**Authentication:**<br>Redirection messaging</span> | <span class="new">Data Holders **SHOULD** inform the consumer that they will be automatically taken back to the Data Recipient. Data Recipients **SHOULD** inform the consumer that they will be redirected to the Data Holder app/web page for authentication.</span> |