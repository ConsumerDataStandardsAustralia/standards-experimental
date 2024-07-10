<h3 class="schema-toc" data-cds-menu="h3" id="security-profile_authentication-flows_ciba"><span class="new">Client Initiated Backchannel Authentication (CIBA)</span></h3>

<span class="new">The [**[FAPI-CIBA]**](#nref-FAPI-CIBA) flow is a decoupled authentication flow that allows the consumer to authenticate on a different device to their Consumption Device. This decoupling of authentication allows the consumer to authenticate on a trusted device like a smartphone that is independent to the device and channel the consent flow was initiated from, such as a desktop web browser. It also allows a Data Recipient Software Product to initiate a streamlined authentication request by providing a previous login hint or token.</span>

<span class="new">The following constraints apply to [**[FAPI-CIBA]**](#nref-FAPI-CIBA):</span>

- <span class="new">SHALL only support `sub` claim as a `login_hint`
- <span class="new">SHALL only support a CDR Arrangement JWT in accordance with [**[JWT]**](#nref-JWT) as a `login_hint_token`
- <span class="new">SHALL only support an ID Token signed by the Data Holder as an `id_token_hint`
- <span class="new">Any other login hints **SHALL NOT** be supported
