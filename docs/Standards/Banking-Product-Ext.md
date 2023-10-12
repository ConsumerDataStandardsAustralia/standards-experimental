# Banking Product API Extension
**EXPERIMENTAL**

*Current Version:* **0.0.2**
Superannuation sector experimental product API's to describe superannuation products.

## Abstract
This standards provides a product API set for publicly available banking products. It extends the product API interface used in the [banking](https://consumerdatastandardsaustralia.github.io/standards/#get-products).


## Introduction

<Introduction>

The extensions covers 

* Mortgage Insureance products. 
* Buy Now Pay Later Products 


The *generic* product API contains two API's

| API | Method | Path |  Description | 
|-|-|-|-|
|Get Products | GET | {ProviderURI} **/banking/products**| Returns a list of Super Funds offered to the market |
|Get ProductDetail | GET | {ProviderURI} **/banking/products{productId}**| Returns a specific Fund details offered to the market |


## Specification

The experimental standards are published below:

| Reference | Link |
|-|-|
|Banking Product Extension|[html](./cds_banking_product_ext.html)|
|Banking Product Extension|[json](./cds_banking_product_ext.json)|

## Buy Now Pay Later 

This is a specific product interface for Buy Now Pay Later Pruducts

## Specification

The experimental standards are published below:

| Reference | Link |
|-|-|
|Banking Product Extension BNPL|[html](./cds_banking_product_ext_bnpl.html)|
|Banking Product Extension BNPL|[json](./cds_banking_product_ext_bnpl.json)|

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
