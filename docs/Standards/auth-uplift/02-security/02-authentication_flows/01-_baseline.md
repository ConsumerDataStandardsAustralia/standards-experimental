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

