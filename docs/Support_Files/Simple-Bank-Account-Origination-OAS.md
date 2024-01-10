<!-- Generator: Widdershins v4.0.1 -->

<h1 id="cdr-experimantal-simple-bank-account-origination-api">CDR Experimantal Simple Bank Account Origination API v1.0.0</h1>

> Scroll down for example requests and responses.

Specification of endpoints defined in the Simple Bank Account Origination experimental standard.  This is an experimental standard created by the Data Standards Body (DSB) as part of the Consumer Data Standards

Base URLs:

* <a href="https://data.holder.com.au/cds-au/v1">https://data.holder.com.au/cds-au/v1</a>

Email: <a href="mailto:contact@consumerdatastandards.gov.au">Consumer Data Standards</a> Web: <a href="https://consumerdatastandards.gov.au">Consumer Data Standards</a> 
License: <a href="https://opensource.org/licenses/MIT">MIT License</a>

<h1 id="cdr-experimantal-simple-bank-account-origination-api-banking">Banking</h1>

## getOriginationScheme

<a id="opIdgetOriginationScheme"></a>

> Code samples

`GET /DSB/banking/origination/schemes/{schemeId}`

Obtain the meta data describing how to make an application for a family of products.

<h3 id="getoriginationscheme-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|schemeId|path|string|true|Obtain the details of a specific origination scheme.|
|x-v|header|string|true|Version of the API end point requested by the client. Must be set to a positive integer. The data holder should respond with the highest supported version between [x-min-v](#request-headers) and [x-v](#request-headers). If the value of [x-min-v](#request-headers) is equal to or higher than the value of [x-v](#request-headers) then the [x-min-v](#request-headers) header should be treated as absent. If all versions requested are not supported then the data holder must respond with a 406 Not Acceptable. See [HTTP Headers](#request-headers)|
|x-min-v|header|string|false|Minimum version of the API end point requested by the client. Must be set to a positive integer if provided. The data holder should respond with the highest supported version between [x-min-v](#request-headers) and [x-v](#request-headers). If all versions requested are not supported then the data holder must respond with a 406 Not Acceptable.|

> Example responses

> 200 Response

```json
{
  "data": {
    "schemeUType": "lixi",
    "lixi": {
      "submissionUri": "string",
      "schemaUri": "string",
      "lixiCode": "string",
      "lixiVersion": "string",
      "lixiCustomVersion": "string",
      "productCodeMappings": [
        {
          "productId": "string",
          "productCode": "string"
        }
      ],
      "schematronUri": "string",
      "apiSpecificationUri": "string",
      "additionalInfoUri": "string"
    },
    "cdrApplyForBankAccountV1": {
      "version": "string",
      "minVersion": "string",
      "dataRequirements": {
        "v1": {
          "referrer": {
            "requirement": "REQUIRED",
            "confirmNeedsAnalysisConducted": {
              "requirement": "REQUIRED"
            },
            "confirmTargetMarketAssessed": {
              "requirement": "REQUIRED"
            },
            "confirmTerms": {
              "requirement": "REQUIRED",
              "terms": [
                {
                  "displayName": "string",
                  "termId": "string",
                  "uri": "string",
                  "mimeType": "string"
                }
              ]
            }
          },
          "applicants": {
            "requirement": "REQUIRED"
          },
          "products": {
            "requirement": "REQUIRED"
          },
          "income": {
            "requirement": "REQUIRED"
          },
          "expenses": {
            "requirement": "REQUIRED"
          },
          "assets": {
            "requirement": "REQUIRED"
          },
          "liabilities": {
            "requirement": "REQUIRED"
          },
          "cdrData": {
            "requirement": "REQUIRED",
            "cdrAccounts": {
              "requirement": "REQUIRED"
            },
            "cdrAccountDetails": {
              "requirement": "REQUIRED"
            },
            "cdrBalances": {
              "requirement": "REQUIRED"
            },
            "cdrTransactions": {
              "requirement": "REQUIRED"
            },
            "cdrCustomerDetails": {
              "requirement": "REQUIRED"
            }
          }
        }
      }
    }
  },
  "links": {
    "self": "string"
  },
  "meta": {}
}
```

<h3 id="getoriginationscheme-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful response|[OriginationSchemeResponseV1](#schemaoriginationschemeresponsev1)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|The following error codes MUST be supported:<br/><ul class="error-code-list"><li>[400 - Invalid Field](#error-400-field-invalid)</li><li>[400 - Missing Field](#error-400-field-missing)</li><li>[400 - Invalid Page Size](#error-400-field-invalid-page-size)</li><li>[400 - Invalid Version](#error-400-header-invalid-version)</li></ul>|[ResponseErrorListV2](#schemaresponseerrorlistv2)|
|406|[Not Acceptable](https://tools.ietf.org/html/rfc7231#section-6.5.6)|The following error codes MUST be supported:<br/><ul class="error-code-list"><li>[406 - Unsupported Version](#error-406-header-unsupported-version)</li></ul>|[ResponseErrorListV2](#schemaresponseerrorlistv2)|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|The following error codes MUST be supported:<br/><ul class="error-code-list"><li>[422 - Invalid Page](#error-422-field-invalid-page)</li></ul>|[ResponseErrorListV2](#schemaresponseerrorlistv2)|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|200|x-v|string||none|

<aside class="success">
This operation does not require authentication
</aside>

## applyForAccount

<a id="opIdapplyForAccount"></a>

> Code samples

`POST /DSB/banking/accounts`

Submit an application, on behalf of a consumer, to apply for an account to be originated.

> Body parameter

```json
{
  "data": {
    "referrer": {
      "agent": {
        "name": "string",
        "phoneNumber": "string",
        "email": "string"
      },
      "accreditation": null,
      "holderSpecificDetails": {},
      "assertions": {
        "confirmNeedsAnalysisConducted": true,
        "confirmTargetMarketAssessed": true,
        "confirmTerms": {
          "confirmed": true,
          "termId": "string"
        }
      }
    },
    "applicants": {
      "primary": {
        "applicantId": "string",
        "name": "string",
        "email": "string",
        "phone": "string",
        "address": "string",
        "livingArrangements": "OWNER",
        "employment": "FULL_TIME",
        "taxRegistration": {
          "australia": null,
          "otherCountries": [
            {
              "country": "string",
              "tin": "string",
              "reasonForNoTin": "UNABLE_TO_OBTAIN"
            }
          ]
        },
        "proof": {
          "auDriversLicense": {
            "licenseNumber": "string",
            "stateOfIssue": "ACT",
            "cardNumber": "string"
          },
          "medicareCard": {
            "colour": "GREEN",
            "cardNumber": "string",
            "referenceNumber": "string"
          },
          "auPassport": {
            "documentNumber": "string",
            "expiryDate": "string"
          },
          "internationalPassport": {
            "documentNumber": "string",
            "country": "string"
          },
          "visa": {
            "trn": "string",
            "evidenceNumber": "string",
            "grantNumber": "string"
          }
        }
      },
      "secondary": [
        {
          "applicantId": "string",
          "name": "string",
          "email": "string",
          "phone": "string",
          "address": "string",
          "livingArrangements": "OWNER",
          "employment": "FULL_TIME",
          "taxRegistration": {
            "australia": null,
            "otherCountries": [
              {
                "country": "string",
                "tin": "string",
                "reasonForNoTin": "UNABLE_TO_OBTAIN"
              }
            ]
          },
          "proof": {
            "auDriversLicense": {
              "licenseNumber": "string",
              "stateOfIssue": "ACT",
              "cardNumber": "string"
            },
            "medicareCard": {
              "colour": "GREEN",
              "cardNumber": "string",
              "referenceNumber": "string"
            },
            "auPassport": {
              "documentNumber": "string",
              "expiryDate": "string"
            },
            "internationalPassport": {
              "documentNumber": "string",
              "country": "string"
            },
            "visa": {
              "trn": "string",
              "evidenceNumber": "string",
              "grantNumber": "string"
            }
          }
        }
      ]
    },
    "products": [
      {
        "productId": "string",
        "homeLoan": {
          "repaymentType": "INTEREST_ONLY",
          "loanPurpose": "INVESTMENT",
          "term": 0,
          "amount": 0,
          "propertyValue": 0,
          "propertyAddress": "string"
        },
        "termDeposit": {
          "term": 0,
          "amount": 0
        },
        "personalLoan": {
          "repaymentType": "INTEREST_ONLY",
          "loanPurpose": "string",
          "term": 0,
          "amount": 0
        },
        "creditCard": {
          "limit": "string",
          "balanceTransfer": 0
        }
      }
    ],
    "income": [
      {
        "properties": null
      }
    ],
    "expenses": [
      {
        "properties": null
      }
    ],
    "assets": [
      {
        "applicantIds": [
          "string"
        ],
        "assets": {
          "properties": [
            {
              "address": "string",
              "estimatedValue": 0
            }
          ],
          "savings": {
            "valueHeldHere": 0,
            "estimatedValue": 0
          },
          "other": [
            {
              "description": "string",
              "estimatedValue": 0
            }
          ]
        }
      }
    ],
    "liabilities": [
      {
        "applicantIds": [
          "string"
        ],
        "liabilities": {
          "mortgages": {
            "balanceHere": 0,
            "balanceElsewhere": 0
          },
          "creditCards": {
            "balanceHere": 0,
            "balanceElsewhere": 0
          },
          "personalLoans": {
            "balanceHere": 0,
            "balanceElsewhere": 0
          },
          "linesOfCredit": {
            "balanceHere": 0,
            "balanceElsewhere": 0
          },
          "other": {
            "balanceHere": 0,
            "balanceElsewhere": 0
          }
        }
      }
    ],
    "cdrData": {
      "cdrAccounts": [
        {
          "applicantId": "string",
          "v": "string",
          "dataHolderBrandId": "string",
          "data": {}
        }
      ],
      "cdrAccountDetails": [
        {
          "applicantId": "string",
          "v": "string",
          "dataHolderBrandId": "string",
          "data": {}
        }
      ],
      "cdrBalances": [
        {
          "applicantId": "string",
          "v": "string",
          "dataHolderBrandId": "string",
          "data": {}
        }
      ],
      "cdrTransactions": [
        {
          "applicantId": "string",
          "v": "string",
          "dataHolderBrandId": "string",
          "data": {}
        }
      ],
      "cdrCustomerDetails": [
        {
          "applicantId": "string",
          "v": "string",
          "dataHolderBrandId": "string",
          "data": {}
        }
      ]
    }
  },
  "meta": {}
}
```

<h3 id="applyforaccount-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|x-v|header|string|true|Version of the API end point requested by the client. Must be set to a positive integer. The data holder should respond with the highest supported version between [x-min-v](#request-headers) and [x-v](#request-headers). If the value of [x-min-v](#request-headers) is equal to or higher than the value of [x-v](#request-headers) then the [x-min-v](#request-headers) header should be treated as absent. If all versions requested are not supported then the data holder must respond with a 406 Not Acceptable. See [HTTP Headers](#request-headers)|
|x-min-v|header|string|false|Minimum version of the API end point requested by the client. Must be set to a positive integer if provided. The data holder should respond with the highest supported version between [x-min-v](#request-headers) and [x-v](#request-headers). If all versions requested are not supported then the data holder must respond with a 406 Not Acceptable.|
|body|body|[ApplyForBankAccountRequestV1](#schemaapplyforbankaccountrequestv1)|true|Application data provided in accordance to a defined origination scheme|

> Example responses

> 200 Response

```json
{
  "data": {
    "applicationStatus": "REJECTED",
    "applicationId": "string",
    "nextStep": "NONE",
    "rejectionReasons": [
      {
        "code": "REFERRER_UNKNOWN",
        "message": "string",
        "detail": {
          "property1": "string",
          "property2": "string"
        },
        "mimeType": "string"
      }
    ],
    "redirectUri": "string",
    "applicantMessage": "string"
  },
  "links": {
    "self": "string"
  },
  "meta": {}
}
```

<h3 id="applyforaccount-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful response|[ApplyForBankAccountResponseV1](#schemaapplyforbankaccountresponsev1)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|The following error codes MUST be supported:<br/><ul class="error-code-list"><li>[400 - Invalid Field](#error-400-field-invalid)</li><li>[400 - Missing Field](#error-400-field-missing)</li><li>[400 - Invalid Page Size](#error-400-field-invalid-page-size)</li><li>[400 - Invalid Version](#error-400-header-invalid-version)</li></ul>|[ResponseErrorListV2](#schemaresponseerrorlistv2)|
|406|[Not Acceptable](https://tools.ietf.org/html/rfc7231#section-6.5.6)|The following error codes MUST be supported:<br/><ul class="error-code-list"><li>[406 - Unsupported Version](#error-406-header-unsupported-version)</li></ul>|[ResponseErrorListV2](#schemaresponseerrorlistv2)|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|The following error codes MUST be supported:<br/><ul class="error-code-list"><li>[422 - Invalid Page](#error-422-field-invalid-page)</li></ul>|[ResponseErrorListV2](#schemaresponseerrorlistv2)|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|200|x-v|string||none|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocS_ApplyForBankAccountRequestV1">ApplyForBankAccountRequestV1</h2>
<!-- backwards compatibility -->
<a id="schemaapplyforbankaccountrequestv1"></a>
<a id="schema_ApplyForBankAccountRequestV1"></a>
<a id="tocSapplyforbankaccountrequestv1"></a>
<a id="tocsapplyforbankaccountrequestv1"></a>

```json
{
  "data": {
    "referrer": {
      "agent": {
        "name": "string",
        "phoneNumber": "string",
        "email": "string"
      },
      "accreditation": null,
      "holderSpecificDetails": {},
      "assertions": {
        "confirmNeedsAnalysisConducted": true,
        "confirmTargetMarketAssessed": true,
        "confirmTerms": {
          "confirmed": true,
          "termId": "string"
        }
      }
    },
    "applicants": {
      "primary": {
        "applicantId": "string",
        "name": "string",
        "email": "string",
        "phone": "string",
        "address": "string",
        "livingArrangements": "OWNER",
        "employment": "FULL_TIME",
        "taxRegistration": {
          "australia": null,
          "otherCountries": [
            {
              "country": "string",
              "tin": "string",
              "reasonForNoTin": "UNABLE_TO_OBTAIN"
            }
          ]
        },
        "proof": {
          "auDriversLicense": {
            "licenseNumber": "string",
            "stateOfIssue": "ACT",
            "cardNumber": "string"
          },
          "medicareCard": {
            "colour": "GREEN",
            "cardNumber": "string",
            "referenceNumber": "string"
          },
          "auPassport": {
            "documentNumber": "string",
            "expiryDate": "string"
          },
          "internationalPassport": {
            "documentNumber": "string",
            "country": "string"
          },
          "visa": {
            "trn": "string",
            "evidenceNumber": "string",
            "grantNumber": "string"
          }
        }
      },
      "secondary": [
        {
          "applicantId": "string",
          "name": "string",
          "email": "string",
          "phone": "string",
          "address": "string",
          "livingArrangements": "OWNER",
          "employment": "FULL_TIME",
          "taxRegistration": {
            "australia": null,
            "otherCountries": [
              {
                "country": "string",
                "tin": "string",
                "reasonForNoTin": "UNABLE_TO_OBTAIN"
              }
            ]
          },
          "proof": {
            "auDriversLicense": {
              "licenseNumber": "string",
              "stateOfIssue": "ACT",
              "cardNumber": "string"
            },
            "medicareCard": {
              "colour": "GREEN",
              "cardNumber": "string",
              "referenceNumber": "string"
            },
            "auPassport": {
              "documentNumber": "string",
              "expiryDate": "string"
            },
            "internationalPassport": {
              "documentNumber": "string",
              "country": "string"
            },
            "visa": {
              "trn": "string",
              "evidenceNumber": "string",
              "grantNumber": "string"
            }
          }
        }
      ]
    },
    "products": [
      {
        "productId": "string",
        "homeLoan": {
          "repaymentType": "INTEREST_ONLY",
          "loanPurpose": "INVESTMENT",
          "term": 0,
          "amount": 0,
          "propertyValue": 0,
          "propertyAddress": "string"
        },
        "termDeposit": {
          "term": 0,
          "amount": 0
        },
        "personalLoan": {
          "repaymentType": "INTEREST_ONLY",
          "loanPurpose": "string",
          "term": 0,
          "amount": 0
        },
        "creditCard": {
          "limit": "string",
          "balanceTransfer": 0
        }
      }
    ],
    "income": [
      {
        "properties": null
      }
    ],
    "expenses": [
      {
        "properties": null
      }
    ],
    "assets": [
      {
        "applicantIds": [
          "string"
        ],
        "assets": {
          "properties": [
            {
              "address": "string",
              "estimatedValue": 0
            }
          ],
          "savings": {
            "valueHeldHere": 0,
            "estimatedValue": 0
          },
          "other": [
            {
              "description": "string",
              "estimatedValue": 0
            }
          ]
        }
      }
    ],
    "liabilities": [
      {
        "applicantIds": [
          "string"
        ],
        "liabilities": {
          "mortgages": {
            "balanceHere": 0,
            "balanceElsewhere": 0
          },
          "creditCards": {
            "balanceHere": 0,
            "balanceElsewhere": 0
          },
          "personalLoans": {
            "balanceHere": 0,
            "balanceElsewhere": 0
          },
          "linesOfCredit": {
            "balanceHere": 0,
            "balanceElsewhere": 0
          },
          "other": {
            "balanceHere": 0,
            "balanceElsewhere": 0
          }
        }
      }
    ],
    "cdrData": {
      "cdrAccounts": [
        {
          "applicantId": "string",
          "v": "string",
          "dataHolderBrandId": "string",
          "data": {}
        }
      ],
      "cdrAccountDetails": [
        {
          "applicantId": "string",
          "v": "string",
          "dataHolderBrandId": "string",
          "data": {}
        }
      ],
      "cdrBalances": [
        {
          "applicantId": "string",
          "v": "string",
          "dataHolderBrandId": "string",
          "data": {}
        }
      ],
      "cdrTransactions": [
        {
          "applicantId": "string",
          "v": "string",
          "dataHolderBrandId": "string",
          "data": {}
        }
      ],
      "cdrCustomerDetails": [
        {
          "applicantId": "string",
          "v": "string",
          "dataHolderBrandId": "string",
          "data": {}
        }
      ]
    }
  },
  "meta": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|data|object|true|none|none|
|» referrer|[ReferrerModelV1](#schemareferrermodelv1)|false|none|Details of the application referrer|
|» applicants|[ApplicantsModelV1](#schemaapplicantsmodelv1)|false|none|The primary applicant for this application|
|» products|[ProductsModelV1](#schemaproductsmodelv1)|false|none|The details of the products being applied for|
|» income|[IncomeModelV1](#schemaincomemodelv1)|false|none|Array of income for one or more applicants|
|» expenses|[ExpensesModelV1](#schemaexpensesmodelv1)|false|none|Array of expenses for one or more applicants|
|» assets|[AssetsModelV1](#schemaassetsmodelv1)|false|none|Array of assets for one or more applicants|
|» liabilities|[LiabilitiesModelV1](#schemaliabilitiesmodelv1)|false|none|Array of liabilities for one or more applicants|
|» cdrData|object|false|none|none|
|»» cdrAccounts|[[CdrPayloadModelV1](#schemacdrpayloadmodelv1)]|false|none|Array of summary account data for an applicant obtained from the CDR|
|»» cdrAccountDetails|[[CdrPayloadModelV1](#schemacdrpayloadmodelv1)]|false|none|Array of detailed account data for an applicant obtained from the CDR|
|»» cdrBalances|[[CdrPayloadModelV1](#schemacdrpayloadmodelv1)]|false|none|Array of account balance data for an applicant obtained from the CDR|
|»» cdrTransactions|[[CdrPayloadModelV1](#schemacdrpayloadmodelv1)]|false|none|Array of transaction data for an applicant obtained from the CDR|
|»» cdrCustomerDetails|[[CdrPayloadModelV1](#schemacdrpayloadmodelv1)]|false|none|Array of customer detail data for an applicant obtained from the CDR|
|meta|[Meta](#schemameta)|true|none|none|

<h2 id="tocS_OriginationSchemeResponseV1">OriginationSchemeResponseV1</h2>
<!-- backwards compatibility -->
<a id="schemaoriginationschemeresponsev1"></a>
<a id="schema_OriginationSchemeResponseV1"></a>
<a id="tocSoriginationschemeresponsev1"></a>
<a id="tocsoriginationschemeresponsev1"></a>

```json
{
  "data": {
    "schemeUType": "lixi",
    "lixi": {
      "submissionUri": "string",
      "schemaUri": "string",
      "lixiCode": "string",
      "lixiVersion": "string",
      "lixiCustomVersion": "string",
      "productCodeMappings": [
        {
          "productId": "string",
          "productCode": "string"
        }
      ],
      "schematronUri": "string",
      "apiSpecificationUri": "string",
      "additionalInfoUri": "string"
    },
    "cdrApplyForBankAccountV1": {
      "version": "string",
      "minVersion": "string",
      "dataRequirements": {
        "v1": {
          "referrer": {
            "requirement": "REQUIRED",
            "confirmNeedsAnalysisConducted": {
              "requirement": "REQUIRED"
            },
            "confirmTargetMarketAssessed": {
              "requirement": "REQUIRED"
            },
            "confirmTerms": {
              "requirement": "REQUIRED",
              "terms": [
                {
                  "displayName": "string",
                  "termId": "string",
                  "uri": "string",
                  "mimeType": "string"
                }
              ]
            }
          },
          "applicants": {
            "requirement": "REQUIRED"
          },
          "products": {
            "requirement": "REQUIRED"
          },
          "income": {
            "requirement": "REQUIRED"
          },
          "expenses": {
            "requirement": "REQUIRED"
          },
          "assets": {
            "requirement": "REQUIRED"
          },
          "liabilities": {
            "requirement": "REQUIRED"
          },
          "cdrData": {
            "requirement": "REQUIRED",
            "cdrAccounts": {
              "requirement": "REQUIRED"
            },
            "cdrAccountDetails": {
              "requirement": "REQUIRED"
            },
            "cdrBalances": {
              "requirement": "REQUIRED"
            },
            "cdrTransactions": {
              "requirement": "REQUIRED"
            },
            "cdrCustomerDetails": {
              "requirement": "REQUIRED"
            }
          }
        }
      }
    }
  },
  "links": {
    "self": "string"
  },
  "meta": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|data|object|true|none|none|
|» schemeUType|string|true|none|The type of origination scheme represented|
|» lixi|[LixiOriginationSchemeModelV1](#schemalixioriginationschememodelv1)|false|none|Provides the metadata for making an application using a LIXI gateway. Mandatory if schemeUType is set to 'lixi'|
|» cdrApplyForBankAccountV1|[CdrOriginationSchemeModelV1](#schemacdroriginationschememodelv1)|false|none|Provides the metadata for making an application using version 1 of the CDR 'Apply For Bank Account' endpoint. Mandatory if schemeUType is set to 'cdrApplyForBankAccountV1'|
|links|[Links](#schemalinks)|true|none|none|
|meta|[Meta](#schemameta)|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|schemeUType|lixi|
|schemeUType|cdrApplyForBankAccountV1|

<h2 id="tocS_ApplyForBankAccountResponseV1">ApplyForBankAccountResponseV1</h2>
<!-- backwards compatibility -->
<a id="schemaapplyforbankaccountresponsev1"></a>
<a id="schema_ApplyForBankAccountResponseV1"></a>
<a id="tocSapplyforbankaccountresponsev1"></a>
<a id="tocsapplyforbankaccountresponsev1"></a>

```json
{
  "data": {
    "applicationStatus": "REJECTED",
    "applicationId": "string",
    "nextStep": "NONE",
    "rejectionReasons": [
      {
        "code": "REFERRER_UNKNOWN",
        "message": "string",
        "detail": {
          "property1": "string",
          "property2": "string"
        },
        "mimeType": "string"
      }
    ],
    "redirectUri": "string",
    "applicantMessage": "string"
  },
  "links": {
    "self": "string"
  },
  "meta": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|data|object|true|none|none|
|» applicationStatus|string|true|none|The status of the application|
|» applicationId|string|true|none|Unique reference for this application|
|» nextStep|string|false|none|The next step that will be taken for this applicagtion|
|» rejectionReasons|[[RejectionReasonModelV1](#schemarejectionreasonmodelv1)]|false|none|Array of reasons that the application was rejected that need to be rectified before the application will be accepted|
|» redirectUri|string|false|none|A web page that the customer should be directed to so that the application can be continued|
|» applicantMessage|string|false|none|An optional message that can be displayed to the applicant to describe the next steps|
|links|[Links](#schemalinks)|true|none|none|
|meta|[Meta](#schemameta)|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|applicationStatus|REJECTED|
|applicationStatus|ACCEPTED_COMPLETE|
|applicationStatus|ACCEPTED_INCOMPLETE|
|applicationStatus|PENDING_REVIEW|
|applicationStatus|ACCOUNT_CREATED|
|nextStep|NONE|
|nextStep|APPLICANT_CONTACT|
|nextStep|REDIRECT|

<h2 id="tocS_ResponseErrorListV2">ResponseErrorListV2</h2>
<!-- backwards compatibility -->
<a id="schemaresponseerrorlistv2"></a>
<a id="schema_ResponseErrorListV2"></a>
<a id="tocSresponseerrorlistv2"></a>
<a id="tocsresponseerrorlistv2"></a>

```json
{
  "errors": [
    {
      "code": "string",
      "title": "string",
      "detail": "string",
      "meta": {
        "urn": "string"
      }
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|errors|[object]|true|none|none|
|» code|string|true|none|The code of the error encountered. Where the error is specific to the respondent, an application-specific error code, expressed as a string value. If the error is application-specific, the URN code that the specific error extends must be provided in the meta object. Otherwise, the value is the error code URN.|
|» title|string|true|none|A short, human-readable summary of the problem that MUST NOT change from occurrence to occurrence of the problem represented by the error code.|
|» detail|string|true|none|A human-readable explanation specific to this occurrence of the problem.|
|» meta|[MetaError](#schemametaerror)|false|none|Additional data for customised error codes|

<h2 id="tocS_LixiOriginationSchemeModelV1">LixiOriginationSchemeModelV1</h2>
<!-- backwards compatibility -->
<a id="schemalixioriginationschememodelv1"></a>
<a id="schema_LixiOriginationSchemeModelV1"></a>
<a id="tocSlixioriginationschememodelv1"></a>
<a id="tocslixioriginationschememodelv1"></a>

```json
{
  "submissionUri": "string",
  "schemaUri": "string",
  "lixiCode": "string",
  "lixiVersion": "string",
  "lixiCustomVersion": "string",
  "productCodeMappings": [
    {
      "productId": "string",
      "productCode": "string"
    }
  ],
  "schematronUri": "string",
  "apiSpecificationUri": "string",
  "additionalInfoUri": "string"
}

```

Provides the metadata for making an application using a LIXI gateway. Mandatory if schemeUType is set to 'lixi'

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|submissionUri|string|true|none|Base path used to access the LIXI gateway|
|schemaUri|string|false|none|Location of file describing the supported LIXI schema.  Must be a file ending in .xsd (representing an XSD file) or .json (representing a JSON Schema file)|
|lixiCode|string|true|none|The LIXI participant code, assigned by LIXI, for the receiving organisation|
|lixiVersion|string|true|none|The supported version of the LIXI schema|
|lixiCustomVersion|string|false|none|Optional identifier of a custom version of the LIXI payloads that are accepted if the receiving organisation has made custom extensions or modifications to the LIXI schema|
|productCodeMappings|[object]|false|none|Optional mapping of CDR product IDs to product codes used in LIXI applications via this origination scheme.  If absent, or if a mapping is not included, then the CDR product ID is expected to be used as the LIXI product code|
|» productId|string|true|none|The CDR product ID to map from|
|» productCode|string|true|none|The LIXI product code to map to|
|schematronUri|string|false|none|Optional reference to a Schematron file indicating the valid use of this LIXI gateway|
|apiSpecificationUri|string|false|none|Optional reference to an Open API Specification file describing the submission API|
|additionalInfoUri|string|false|none|Optional reference to a web page with additional documention describing the use of the LIXI gateway|

<h2 id="tocS_CdrOriginationSchemeModelV1">CdrOriginationSchemeModelV1</h2>
<!-- backwards compatibility -->
<a id="schemacdroriginationschememodelv1"></a>
<a id="schema_CdrOriginationSchemeModelV1"></a>
<a id="tocScdroriginationschememodelv1"></a>
<a id="tocscdroriginationschememodelv1"></a>

```json
{
  "version": "string",
  "minVersion": "string",
  "dataRequirements": {
    "v1": {
      "referrer": {
        "requirement": "REQUIRED",
        "confirmNeedsAnalysisConducted": {
          "requirement": "REQUIRED"
        },
        "confirmTargetMarketAssessed": {
          "requirement": "REQUIRED"
        },
        "confirmTerms": {
          "requirement": "REQUIRED",
          "terms": [
            {
              "displayName": "string",
              "termId": "string",
              "uri": "string",
              "mimeType": "string"
            }
          ]
        }
      },
      "applicants": {
        "requirement": "REQUIRED"
      },
      "products": {
        "requirement": "REQUIRED"
      },
      "income": {
        "requirement": "REQUIRED"
      },
      "expenses": {
        "requirement": "REQUIRED"
      },
      "assets": {
        "requirement": "REQUIRED"
      },
      "liabilities": {
        "requirement": "REQUIRED"
      },
      "cdrData": {
        "requirement": "REQUIRED",
        "cdrAccounts": {
          "requirement": "REQUIRED"
        },
        "cdrAccountDetails": {
          "requirement": "REQUIRED"
        },
        "cdrBalances": {
          "requirement": "REQUIRED"
        },
        "cdrTransactions": {
          "requirement": "REQUIRED"
        },
        "cdrCustomerDetails": {
          "requirement": "REQUIRED"
        }
      }
    }
  }
}

```

Provides the metadata for making an application using version 1 of the CDR 'Apply For Bank Account' endpoint. Mandatory if schemeUType is set to 'cdrApplyForBankAccountV1'

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|version|string|true|none|none|
|minVersion|string|false|none|The lowest version of the `Apply For Bank Account` endpoint currently supported if different from `version`|
|dataRequirements|object|true|none|The data objects supported by the `Apply For Bank Account` that are expected to be populated for this origination scheme, specified according to endpoint version.  An entry for each version between `version` and `minVersion` (inclusive) is expected to be included|
|» v1|object|false|none|Data requirements when calling v1 of the `Apply For Bank Account` endpoint|
|»» referrer|any|false|none|none|

allOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|

and

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» confirmNeedsAnalysisConducted|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|
|»»»» confirmTargetMarketAssessed|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|
|»»»» confirmTerms|any|false|none|none|

allOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»»»» *anonymous*|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|

and

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»»»» *anonymous*|object|false|none|none|
|»»»»»» terms|[TermsModelV1](#schematermsmodelv1)|false|none|One or more statements that the customer must agree to for the origination process to be completed|

continued

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» applicants|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|
|»» products|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|
|»» income|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|
|»» expenses|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|
|»» assets|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|
|»» liabilities|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|
|»» cdrData|any|false|none|none|

allOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|

and

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» cdrAccounts|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|
|»»»» cdrAccountDetails|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|
|»»»» cdrBalances|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|
|»»»» cdrTransactions|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|
|»»»» cdrCustomerDetails|[DataRequirementModelV1](#schemadatarequirementmodelv1)|false|none|none|

<h2 id="tocS_DataRequirementModelV1">DataRequirementModelV1</h2>
<!-- backwards compatibility -->
<a id="schemadatarequirementmodelv1"></a>
<a id="schema_DataRequirementModelV1"></a>
<a id="tocSdatarequirementmodelv1"></a>
<a id="tocsdatarequirementmodelv1"></a>

```json
{
  "requirement": "REQUIRED"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|requirement|string|true|none|Indicate whether the specific data set or field is required or not for the application.  Valid options are:<br>* REQUIRED - This data set is required for an application to be accepted<br>* PREFERRED - This data is needed for completion of the origination process but an application will be accepted without it<br>* OPTIONAL - This data can be accepted but and will assist in the origination process<br>* NOT_SUPPORTED - This data should not be sent as it will not be used|

#### Enumerated Values

|Property|Value|
|---|---|
|requirement|REQUIRED|
|requirement|PREFERRED|
|requirement|OPTIONAL|
|requirement|NOT_SUPPORTED|

<h2 id="tocS_TermsModelV1">TermsModelV1</h2>
<!-- backwards compatibility -->
<a id="schematermsmodelv1"></a>
<a id="schema_TermsModelV1"></a>
<a id="tocStermsmodelv1"></a>
<a id="tocstermsmodelv1"></a>

```json
[
  {
    "displayName": "string",
    "termId": "string",
    "uri": "string",
    "mimeType": "string"
  }
]

```

One or more statements that the customer must agree to for the origination process to be completed

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|displayName|string|true|none|The display name of the terms to be presented to the customer|
|termId|string|true|none|Unique identifier of the terms to be used to report acceptance|
|uri|string|true|none|Path to the contact for the terms and conditions to present to the customer|
|mimeType|string|true|none|Mime type that the terms will be provided in so that the client can determine how best to display the content to the customer|

<h2 id="tocS_RejectionReasonModelV1">RejectionReasonModelV1</h2>
<!-- backwards compatibility -->
<a id="schemarejectionreasonmodelv1"></a>
<a id="schema_RejectionReasonModelV1"></a>
<a id="tocSrejectionreasonmodelv1"></a>
<a id="tocsrejectionreasonmodelv1"></a>

```json
{
  "code": "REFERRER_UNKNOWN",
  "message": "string",
  "detail": {
    "property1": "string",
    "property2": "string"
  },
  "mimeType": "string"
}

```

A single reason given to explain the rejection of an application

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|code|string|true|none|The reason for the rejection|
|message|string|true|none|A message describing the rejection|
|detail|object|true|none|Additional information that is reason type dependent that gives more detail|
|» **additionalProperties**|string|false|none|none|
|mimeType|string|false|none|Mime type that the terms will be provided in so that the client can determine how best to display the content to the customer|

#### Enumerated Values

|Property|Value|
|---|---|
|code|REFERRER_UNKNOWN|
|code|MISSING_DATA|
|code|NOT_ELIGIBLE|

<h2 id="tocS_ReferrerModelV1">ReferrerModelV1</h2>
<!-- backwards compatibility -->
<a id="schemareferrermodelv1"></a>
<a id="schema_ReferrerModelV1"></a>
<a id="tocSreferrermodelv1"></a>
<a id="tocsreferrermodelv1"></a>

```json
{
  "agent": {
    "name": "string",
    "phoneNumber": "string",
    "email": "string"
  },
  "accreditation": null,
  "holderSpecificDetails": {},
  "assertions": {
    "confirmNeedsAnalysisConducted": true,
    "confirmTargetMarketAssessed": true,
    "confirmTerms": {
      "confirmed": true,
      "termId": "string"
    }
  }
}

```

Details of the application referrer

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|agent|object|false|none|Details of the specific agent providing the application|
|» name|string|false|none|Name of the referring agent|
|» phoneNumber|string|false|none|Contact phone number for the referring agent|
|» email|string|false|none|Contact email address of the referring agent|
|accreditation|any|false|none|none|
|holderSpecificDetails|object|false|none|Identifying details specific to, and known by, the data holder receiving the application|
|assertions|object|false|none|Assertions of compliance steps already undertaken|
|» confirmNeedsAnalysisConducted|boolean|false|none|Assertion that the referrer has, or has not, conducted appropriate nedds analysis|
|» confirmTargetMarketAssessed|boolean|false|none|Assertion that the referrer has, or has not, determined that the applicants are included in the target market determinations for the products being applied for|
|» confirmTerms|object|false|none|Confirm that terms and conditions have been shown to, and have been approved by, the primary applicant|
|»» confirmed|boolean|true|none|Assertion that the terms and conditions have been shown to, and have been approved by, the primary applicant|
|»» termId|string|true|none|The specific ID of the terms that have been approved by the applicant (obtained from the origination scheme)|

<h2 id="tocS_ApplicantsModelV1">ApplicantsModelV1</h2>
<!-- backwards compatibility -->
<a id="schemaapplicantsmodelv1"></a>
<a id="schema_ApplicantsModelV1"></a>
<a id="tocSapplicantsmodelv1"></a>
<a id="tocsapplicantsmodelv1"></a>

```json
{
  "primary": {
    "applicantId": "string",
    "name": "string",
    "email": "string",
    "phone": "string",
    "address": "string",
    "livingArrangements": "OWNER",
    "employment": "FULL_TIME",
    "taxRegistration": {
      "australia": null,
      "otherCountries": [
        {
          "country": "string",
          "tin": "string",
          "reasonForNoTin": "UNABLE_TO_OBTAIN"
        }
      ]
    },
    "proof": {
      "auDriversLicense": {
        "licenseNumber": "string",
        "stateOfIssue": "ACT",
        "cardNumber": "string"
      },
      "medicareCard": {
        "colour": "GREEN",
        "cardNumber": "string",
        "referenceNumber": "string"
      },
      "auPassport": {
        "documentNumber": "string",
        "expiryDate": "string"
      },
      "internationalPassport": {
        "documentNumber": "string",
        "country": "string"
      },
      "visa": {
        "trn": "string",
        "evidenceNumber": "string",
        "grantNumber": "string"
      }
    }
  },
  "secondary": [
    {
      "applicantId": "string",
      "name": "string",
      "email": "string",
      "phone": "string",
      "address": "string",
      "livingArrangements": "OWNER",
      "employment": "FULL_TIME",
      "taxRegistration": {
        "australia": null,
        "otherCountries": [
          {
            "country": "string",
            "tin": "string",
            "reasonForNoTin": "UNABLE_TO_OBTAIN"
          }
        ]
      },
      "proof": {
        "auDriversLicense": {
          "licenseNumber": "string",
          "stateOfIssue": "ACT",
          "cardNumber": "string"
        },
        "medicareCard": {
          "colour": "GREEN",
          "cardNumber": "string",
          "referenceNumber": "string"
        },
        "auPassport": {
          "documentNumber": "string",
          "expiryDate": "string"
        },
        "internationalPassport": {
          "documentNumber": "string",
          "country": "string"
        },
        "visa": {
          "trn": "string",
          "evidenceNumber": "string",
          "grantNumber": "string"
        }
      }
    }
  ]
}

```

The primary applicant for this application

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|primary|[ApplicantModelV1](#schemaapplicantmodelv1)|true|none|none|
|secondary|[[ApplicantModelV1](#schemaapplicantmodelv1)]|false|none|Array of one or more secondary applicants|

<h2 id="tocS_ApplicantModelV1">ApplicantModelV1</h2>
<!-- backwards compatibility -->
<a id="schemaapplicantmodelv1"></a>
<a id="schema_ApplicantModelV1"></a>
<a id="tocSapplicantmodelv1"></a>
<a id="tocsapplicantmodelv1"></a>

```json
{
  "applicantId": "string",
  "name": "string",
  "email": "string",
  "phone": "string",
  "address": "string",
  "livingArrangements": "OWNER",
  "employment": "FULL_TIME",
  "taxRegistration": {
    "australia": null,
    "otherCountries": [
      {
        "country": "string",
        "tin": "string",
        "reasonForNoTin": "UNABLE_TO_OBTAIN"
      }
    ]
  },
  "proof": {
    "auDriversLicense": {
      "licenseNumber": "string",
      "stateOfIssue": "ACT",
      "cardNumber": "string"
    },
    "medicareCard": {
      "colour": "GREEN",
      "cardNumber": "string",
      "referenceNumber": "string"
    },
    "auPassport": {
      "documentNumber": "string",
      "expiryDate": "string"
    },
    "internationalPassport": {
      "documentNumber": "string",
      "country": "string"
    },
    "visa": {
      "trn": "string",
      "evidenceNumber": "string",
      "grantNumber": "string"
    }
  }
}

```

### Properties

allOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|object|false|none|A single applicant|
|» applicantId|string|true|none|The ID of this applicant.  This ID must be uniuqe in the context of this application but does not need to be globally unique|

and

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|any|false|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[IndividualApplicantModelV1](#schemaindividualapplicantmodelv1)|false|none|A single applicant who is an individual|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[OrganisationApplicantModelV1](#schemaorganisationapplicantmodelv1)|false|none|Applicant details for an organisation|

<h2 id="tocS_IndividualApplicantModelV1">IndividualApplicantModelV1</h2>
<!-- backwards compatibility -->
<a id="schemaindividualapplicantmodelv1"></a>
<a id="schema_IndividualApplicantModelV1"></a>
<a id="tocSindividualapplicantmodelv1"></a>
<a id="tocsindividualapplicantmodelv1"></a>

```json
{
  "name": "string",
  "email": "string",
  "phone": "string",
  "address": "string",
  "livingArrangements": "OWNER",
  "employment": "FULL_TIME",
  "taxRegistration": {
    "australia": null,
    "otherCountries": [
      {
        "country": "string",
        "tin": "string",
        "reasonForNoTin": "UNABLE_TO_OBTAIN"
      }
    ]
  },
  "proof": {
    "auDriversLicense": {
      "licenseNumber": "string",
      "stateOfIssue": "ACT",
      "cardNumber": "string"
    },
    "medicareCard": {
      "colour": "GREEN",
      "cardNumber": "string",
      "referenceNumber": "string"
    },
    "auPassport": {
      "documentNumber": "string",
      "expiryDate": "string"
    },
    "internationalPassport": {
      "documentNumber": "string",
      "country": "string"
    },
    "visa": {
      "trn": "string",
      "evidenceNumber": "string",
      "grantNumber": "string"
    }
  }
}

```

A single applicant who is an individual

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|The name of the applicant|
|email|string|false|none|Email address of the applicant|
|phone|string|false|none|Contact phone number of the applicant|
|address|string|true|none|Address of the applicant|
|livingArrangements|string|false|none|Living arrangements of the applicant|
|employment|string|true|none|Employment status of the applicant|
|taxRegistration|object|true|none|Tax registration of the applicant|
|» australia|any|false|none|none|
|» otherCountries|[object]|false|none|Array of other countries where the applicant is registered for tax|
|»» country|string|true|none|Country of tax regisration defined using three character ISO country code|
|»» tin|string|false|none|Tax identification number for the registration|
|»» reasonForNoTin|string|false|none|Reason for no TIN, if none is provided|
|proof|object|false|none|Forms of identity proofs provided by the applicant|
|» auDriversLicense|object|false|none|Details of an Australian drivers license|
|»» licenseNumber|string|true|none|License number|
|»» stateOfIssue|string|true|none|Australian state that the license was issued by|
|»» cardNumber|string|false|none|Additional card number, if available|
|» medicareCard|object|false|none|Details of a Medicare card|
|»» colour|string|true|none|Colour of the Medicare card|
|»» cardNumber|string|true|none|Medicare card number|
|»» referenceNumber|string|true|none|Reference number next to the name of the applicant|
|» auPassport|object|false|none|Details of an Australian passport|
|»» documentNumber|string|true|none|The identifying number of the passport|
|»» expiryDate|string|true|none|Date of expiry in RFC3339 full-date format|
|» internationalPassport|object|false|none|Details of an international (non-Australian) passport|
|»» documentNumber|string|true|none|The identifying number of the passport|
|»» country|string|true|none|Country of issue in 3 character ISO format|
|» visa|object|false|none|Details of a visa for entering Australia|
|»» trn|string|false|none|The transaction reference number for the Visa|
|»» evidenceNumber|string|false|none|The evidence number for the Visa|
|»» grantNumber|string|false|none|The grant number for the Visa|

#### Enumerated Values

|Property|Value|
|---|---|
|livingArrangements|OWNER|
|livingArrangements|OWNER_WITH_MORTGAGE|
|livingArrangements|RENTING|
|livingArrangements|OTHER|
|employment|FULL_TIME|
|employment|PART_TIME|
|employment|CONTRACT|
|employment|CASUAL|
|employment|TEMP|
|employment|SELF_EMPLOYED|
|employment|NOT_EMPLOYED|
|reasonForNoTin|UNABLE_TO_OBTAIN|
|reasonForNoTin|APPLICATION_IN_PROGRESS|
|reasonForNoTin|NOT_AVAILABLE|
|stateOfIssue|ACT|
|stateOfIssue|NSW|
|stateOfIssue|NT|
|stateOfIssue|QLD|
|stateOfIssue|SA|
|stateOfIssue|TAS|
|stateOfIssue|VIC|
|stateOfIssue|WA|
|colour|GREEN|
|colour|BLUE|
|colour|YELLOW|

<h2 id="tocS_OrganisationApplicantModelV1">OrganisationApplicantModelV1</h2>
<!-- backwards compatibility -->
<a id="schemaorganisationapplicantmodelv1"></a>
<a id="schema_OrganisationApplicantModelV1"></a>
<a id="tocSorganisationapplicantmodelv1"></a>
<a id="tocsorganisationapplicantmodelv1"></a>

```json
{}

```

Applicant details for an organisation

### Properties

*None*

<h2 id="tocS_ProductsModelV1">ProductsModelV1</h2>
<!-- backwards compatibility -->
<a id="schemaproductsmodelv1"></a>
<a id="schema_ProductsModelV1"></a>
<a id="tocSproductsmodelv1"></a>
<a id="tocsproductsmodelv1"></a>

```json
[
  {
    "productId": "string",
    "homeLoan": {
      "repaymentType": "INTEREST_ONLY",
      "loanPurpose": "INVESTMENT",
      "term": 0,
      "amount": 0,
      "propertyValue": 0,
      "propertyAddress": "string"
    },
    "termDeposit": {
      "term": 0,
      "amount": 0
    },
    "personalLoan": {
      "repaymentType": "INTEREST_ONLY",
      "loanPurpose": "string",
      "term": 0,
      "amount": 0
    },
    "creditCard": {
      "limit": "string",
      "balanceTransfer": 0
    }
  }
]

```

The details of the products being applied for

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|productId|string|true|none|The ID of the product being applied for as defined in the bank PRD endpoints|
|homeLoan|object|false|none|Additional details if the product is a home loan|
|» repaymentType|string|true|none|Option requested for repayments|
|» loanPurpose|string|true|none|The reason for taking out the loan|
|» term|number|true|none|The length of the loan in months|
|» amount|number|true|none|The amount requested for the loan in AUD|
|» propertyValue|number|true|none|The estimated value of the property to be purchased in AUD|
|» propertyAddress|string|false|none|The address of the property to be purchased, if known|
|termDeposit|object|false|none|Additional details if the product is a term deposit|
|» term|number|true|none|The length of time for the term deposit to be established in months|
|» amount|number|true|none|The amount of savings in AUD|
|personalLoan|object|false|none|Additional details if the product is a personal loan|
|» repaymentType|string|true|none|Option requested for repayments|
|» loanPurpose|string|true|none|The reason for taking out the loan|
|» term|number|true|none|The length of the loan in months|
|» amount|number|true|none|The amount requested for the loan in AUD|
|creditCard|object|false|none|Additional details if the product is a credit card|
|» limit|string|true|none|The limit requested for card|
|» balanceTransfer|number|false|none|The estimated balance, in AUD, to be transferred to the new card once established|

#### Enumerated Values

|Property|Value|
|---|---|
|repaymentType|INTEREST_ONLY|
|repaymentType|PRINCIPAL_AND_INTEREST|
|loanPurpose|INVESTMENT|
|loanPurpose|OWNER_OCCUPIED|
|repaymentType|INTEREST_ONLY|
|repaymentType|PRINCIPAL_AND_INTEREST|

<h2 id="tocS_IncomeModelV1">IncomeModelV1</h2>
<!-- backwards compatibility -->
<a id="schemaincomemodelv1"></a>
<a id="schema_IncomeModelV1"></a>
<a id="tocSincomemodelv1"></a>
<a id="tocsincomemodelv1"></a>

```json
[
  {
    "properties": null
  }
]

```

Array of income for one or more applicants

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|properties|any|false|none|none|

<h2 id="tocS_ExpensesModelV1">ExpensesModelV1</h2>
<!-- backwards compatibility -->
<a id="schemaexpensesmodelv1"></a>
<a id="schema_ExpensesModelV1"></a>
<a id="tocSexpensesmodelv1"></a>
<a id="tocsexpensesmodelv1"></a>

```json
[
  {
    "properties": null
  }
]

```

Array of expenses for one or more applicants

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|properties|any|false|none|none|

<h2 id="tocS_AssetsModelV1">AssetsModelV1</h2>
<!-- backwards compatibility -->
<a id="schemaassetsmodelv1"></a>
<a id="schema_AssetsModelV1"></a>
<a id="tocSassetsmodelv1"></a>
<a id="tocsassetsmodelv1"></a>

```json
[
  {
    "applicantIds": [
      "string"
    ],
    "assets": {
      "properties": [
        {
          "address": "string",
          "estimatedValue": 0
        }
      ],
      "savings": {
        "valueHeldHere": 0,
        "estimatedValue": 0
      },
      "other": [
        {
          "description": "string",
          "estimatedValue": 0
        }
      ]
    }
  }
]

```

Array of assets for one or more applicants

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|applicantIds|[string]|true|none|The IDs of the applicants that these assets are associated with|
|assets|object|true|none|The assets associated with the specified applicants|
|» properties|[object]|false|none|Array of properties in this asset set|
|»» address|string|true|none|Address of the property|
|»» estimatedValue|number|true|none|Estimated value of the property in AUD|
|» savings|object|false|none|Cash savings held with bank|
|»» valueHeldHere|number|true|none|Cash savings held with the bank the application is being submitted to|
|»» estimatedValue|number|false|none|Cash savings held with other banks|
|» other|[object]|false|none|Array of other assets|
|»» description|string|true|none|Description of the asset|
|»» estimatedValue|number|true|none|Estimated value of the asset in AUD|

<h2 id="tocS_LiabilitiesModelV1">LiabilitiesModelV1</h2>
<!-- backwards compatibility -->
<a id="schemaliabilitiesmodelv1"></a>
<a id="schema_LiabilitiesModelV1"></a>
<a id="tocSliabilitiesmodelv1"></a>
<a id="tocsliabilitiesmodelv1"></a>

```json
[
  {
    "applicantIds": [
      "string"
    ],
    "liabilities": {
      "mortgages": {
        "balanceHere": 0,
        "balanceElsewhere": 0
      },
      "creditCards": {
        "balanceHere": 0,
        "balanceElsewhere": 0
      },
      "personalLoans": {
        "balanceHere": 0,
        "balanceElsewhere": 0
      },
      "linesOfCredit": {
        "balanceHere": 0,
        "balanceElsewhere": 0
      },
      "other": {
        "balanceHere": 0,
        "balanceElsewhere": 0
      }
    }
  }
]

```

Array of liabilities for one or more applicants

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|applicantIds|[string]|true|none|The IDs of the applicants that these liabilities are associated with|
|liabilities|object|true|none|The liabilities associated with the specified applicants|
|» mortgages|object|false|none|Mortgage balances|
|»» balanceHere|number|true|none|Liability balance with the bank the application is being submitted to|
|»» balanceElsewhere|number|true|none|Liability balance held with other banks|
|» creditCards|object|false|none|Credit card balances|
|»» balanceHere|number|true|none|Liability balance with the bank the application is being submitted to|
|»» balanceElsewhere|number|true|none|Liability balance held with other banks|
|» personalLoans|object|false|none|Personal loan balances|
|»» balanceHere|number|true|none|Liability balance with the bank the application is being submitted to|
|»» balanceElsewhere|number|true|none|Liability balance held with other banks|
|» linesOfCredit|object|false|none|Overdraft or lines of credit balances|
|»» balanceHere|number|true|none|Liability balance with the bank the application is being submitted to|
|»» balanceElsewhere|number|true|none|Liability balance held with other banks|
|» other|object|false|none|Balance of other liabilities|
|»» balanceHere|number|true|none|Liability balance with the bank the application is being submitted to|
|»» balanceElsewhere|number|true|none|Liability balance held with other banks|

<h2 id="tocS_PeriodModelV1">PeriodModelV1</h2>
<!-- backwards compatibility -->
<a id="schemaperiodmodelv1"></a>
<a id="schema_PeriodModelV1"></a>
<a id="tocSperiodmodelv1"></a>
<a id="tocsperiodmodelv1"></a>

```json
"WEEKLY"

```

The period for income or expense

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|string|false|none|The period for income or expense|

#### Enumerated Values

|Property|Value|
|---|---|
|*anonymous*|WEEKLY|
|*anonymous*|FORTIGHTLY|
|*anonymous*|MONTHLY|
|*anonymous*|QUARTERLY|
|*anonymous*|ANNUALLY|

<h2 id="tocS_CdrPayloadModelV1">CdrPayloadModelV1</h2>
<!-- backwards compatibility -->
<a id="schemacdrpayloadmodelv1"></a>
<a id="schema_CdrPayloadModelV1"></a>
<a id="tocScdrpayloadmodelv1"></a>
<a id="tocscdrpayloadmodelv1"></a>

```json
{
  "applicantId": "string",
  "v": "string",
  "dataHolderBrandId": "string",
  "data": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|applicantId|string|true|none|ID of the applicant in the applicants array that this data relates to|
|v|string|true|none|The x-v value of the response payload obtained via the CDR|
|dataHolderBrandId|string|true|none|The data holder brand ID on the CDR Register for the data holder the data was obtained from|
|data|object|true|none|The actual data obtained via the CDR|

<h2 id="tocS_Links">Links</h2>
<!-- backwards compatibility -->
<a id="schemalinks"></a>
<a id="schema_Links"></a>
<a id="tocSlinks"></a>
<a id="tocslinks"></a>

```json
{
  "self": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|self|string|true|none|Fully qualified link that generated the current response document|

<h2 id="tocS_Meta">Meta</h2>
<!-- backwards compatibility -->
<a id="schemameta"></a>
<a id="schema_Meta"></a>
<a id="tocSmeta"></a>
<a id="tocsmeta"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocS_LinksPaginated">LinksPaginated</h2>
<!-- backwards compatibility -->
<a id="schemalinkspaginated"></a>
<a id="schema_LinksPaginated"></a>
<a id="tocSlinkspaginated"></a>
<a id="tocslinkspaginated"></a>

```json
{
  "self": "string",
  "first": "string",
  "prev": "string",
  "next": "string",
  "last": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|self|string|true|none|Fully qualified link that generated the current response document|
|first|string|false|none|URI to the first page of this set. Mandatory if this response is not the first page|
|prev|string|false|none|URI to the previous page of this set. Mandatory if this response is not the first page|
|next|string|false|none|URI to the next page of this set. Mandatory if this response is not the last page|
|last|string|false|none|URI to the last page of this set. Mandatory if this response is not the last page|

<h2 id="tocS_MetaPaginated">MetaPaginated</h2>
<!-- backwards compatibility -->
<a id="schemametapaginated"></a>
<a id="schema_MetaPaginated"></a>
<a id="tocSmetapaginated"></a>
<a id="tocsmetapaginated"></a>

```json
{
  "totalRecords": 0,
  "totalPages": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|totalRecords|integer|true|none|The total number of records in the full set. See [pagination](#pagination).|
|totalPages|integer|true|none|The total number of pages in the full set. See [pagination](#pagination).|

<h2 id="tocS_MetaError">MetaError</h2>
<!-- backwards compatibility -->
<a id="schemametaerror"></a>
<a id="schema_MetaError"></a>
<a id="tocSmetaerror"></a>
<a id="tocsmetaerror"></a>

```json
{
  "urn": "string"
}

```

Additional data for customised error codes

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|urn|string|false|none|The CDR error code URN which the application-specific error code extends. Mandatory if the error `code` is an application-specific error rather than a standardised error code.|

