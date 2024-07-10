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
