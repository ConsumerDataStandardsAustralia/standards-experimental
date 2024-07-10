<h3 class="schema-toc" data-cds-menu="h3" id="security-profile_authentication-flows_oidc-hybrid-flow">OIDC Hybrid Flow</h3>

The **[[OIDC]](#nref-OIDC)** Hybrid Flow is a type of redirection flow where the consumer's user
agent is redirected from a Data Recipient Software Product’s (Relying Party) web site to a Data
Holder’s Authorisation end point in the context of an **[[OIDC]](#nref-OIDC)** authentication
request. The OIDC Hybrid Flow incorporates aspects of the both the implicit flow and
authorisation code flow detailed under **[[OIDC]](#nref-OIDC)**.


Only a `response_type` (see [section 3.3](https://openid.net/specs/openid-connect-core-1_0.html#HybridFlowAuth) of **[[OIDC]](#nref-OIDC)**) of `code id_token` **SHALL** be allowed.