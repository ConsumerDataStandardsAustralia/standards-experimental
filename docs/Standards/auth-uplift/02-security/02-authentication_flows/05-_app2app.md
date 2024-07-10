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
- <span class="new-1">Data Holders **MAY** invoke redirection to the Data Holder app via an intermediary webpage controlled by the Data Holder for the purposes of identifying the appropriate Customer or Data Holder app context to launch.</span>