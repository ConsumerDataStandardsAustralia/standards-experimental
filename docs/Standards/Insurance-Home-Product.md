# Home Insurance Product API's
**EXPERIMENTAL**

*Current Version:* **0.0.1**
Insurance sector experimental product API's to describe **Home Insurance** products.

## Abstract
This standards provides a product API set for publicly available home insurance products. It aligns to the product API interface used in the [banking](https://consumerdatastandardsaustralia.github.io/standards/#get-products) and [energy](https://consumerdatastandardsaustralia.github.io/standards/#energy-apis) sectors.


## Introduction

<Introduction>

The API covers retail home insurance products. Product data includes:

* Insurer
* Product Name & Details
* Types
* Costs
* Excess'
* Links - PDS, Product and Insurer details

The product API contains two API's

| API | Method | Path |  Description | 
|-|-|-|-|
|Get Products | GET | {ProviderURI} **/insurance/home/products/**| Returns a list of Home Insurance products offered to the market |
|Get Product Detail | GET | {ProviderURI} **/insurance/home/products/{productId}**| Returns a specific home insurance product details offered to the market |


## Specification

The experimental standards are published below:

| Reference | Link |
|-|-|
|Home Insurance Product API|[html](./cds_insurance_home_product.html)|
|Home Insurance Product API|[json](./cds_insurance_hoome_product.json)|


### Requirements Language


The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in BCP 14 [[RFC2119](#normative-rfc2119)] [[RFC8174](#normative-rfc8174)].

### Terminology

| Term | Definition |
|-|-|
| <term> | <definition> 


## Normative References

| Reference | Description |
|-|-|
| RFC2119 <a id="normative-rfc2119"/> | Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, DOI 10.17487/RFC2119, March 1997, https://www.rfc-editor.org/info/rfc2119. |
| RFC8174 <a id="normative-rfc8174"/> | Leiba, B., "Ambiguity of Uppercase vs Lowercase in RFC 2119 Key Words", BCP 14, RFC 8174, DOI 10.17487/RFC8174, May 2017, https://www.rfc-editor.org/info/rfc8174. |

## Informative References

| Reference | Description |
|-|-|
| | |
