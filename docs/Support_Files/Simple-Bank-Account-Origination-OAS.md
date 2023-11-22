<!-- Generator: Widdershins v4.0.1 -->

<h1 id="cdr-experimantal-simple-bank-account-origination-api">CDR Experimantal Simple Bank Account Origination API v0.0.5</h1>

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
    "schemeUType": "lixi2",
    "lixi2": {
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
null
```

<h3 id="applyforaccount-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|x-v|header|string|true|Version of the API end point requested by the client. Must be set to a positive integer. The data holder should respond with the highest supported version between [x-min-v](#request-headers) and [x-v](#request-headers). If the value of [x-min-v](#request-headers) is equal to or higher than the value of [x-v](#request-headers) then the [x-min-v](#request-headers) header should be treated as absent. If all versions requested are not supported then the data holder must respond with a 406 Not Acceptable. See [HTTP Headers](#request-headers)|
|x-min-v|header|string|false|Minimum version of the API end point requested by the client. Must be set to a positive integer if provided. The data holder should respond with the highest supported version between [x-min-v](#request-headers) and [x-v](#request-headers). If all versions requested are not supported then the data holder must respond with a 406 Not Acceptable.|
|body|body|any|true|Application data provided in accordance to a defined origination scheme|

> Example responses

> 200 Response

```json
null
```

<h3 id="applyforaccount-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful response|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|The following error codes MUST be supported:<br/><ul class="error-code-list"><li>[400 - Invalid Field](#error-400-field-invalid)</li><li>[400 - Missing Field](#error-400-field-missing)</li><li>[400 - Invalid Page Size](#error-400-field-invalid-page-size)</li><li>[400 - Invalid Version](#error-400-header-invalid-version)</li></ul>|[ResponseErrorListV2](#schemaresponseerrorlistv2)|
|406|[Not Acceptable](https://tools.ietf.org/html/rfc7231#section-6.5.6)|The following error codes MUST be supported:<br/><ul class="error-code-list"><li>[406 - Unsupported Version](#error-406-header-unsupported-version)</li></ul>|[ResponseErrorListV2](#schemaresponseerrorlistv2)|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|The following error codes MUST be supported:<br/><ul class="error-code-list"><li>[422 - Invalid Page](#error-422-field-invalid-page)</li></ul>|[ResponseErrorListV2](#schemaresponseerrorlistv2)|

<h3 id="applyforaccount-responseschema">Response Schema</h3>

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|200|x-v|string||none|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocS_OriginationSchemeResponseV1">OriginationSchemeResponseV1</h2>
<!-- backwards compatibility -->
<a id="schemaoriginationschemeresponsev1"></a>
<a id="schema_OriginationSchemeResponseV1"></a>
<a id="tocSoriginationschemeresponsev1"></a>
<a id="tocsoriginationschemeresponsev1"></a>

```json
{
  "data": {
    "schemeUType": "lixi2",
    "lixi2": {
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
|» lixi2|[Lixi2OriginationSchemeModelV1](#schemalixi2originationschememodelv1)|false|none|Provides the metadata for making an application using a LIXI2 gateway. Mandatory if schemeUType is set to 'lixi2'|
|» cdrApplyForBankAccountV1|[CdrOriginationSchemeModelV1](#schemacdroriginationschememodelv1)|false|none|Provides the metadata for making an application using version 1 of the CDR 'Apply For Bank Account' endpoint. Mandatory if schemeUType is set to 'cdrApplyForBankAccountV1'|
|links|[Links](#schemalinks)|true|none|none|
|meta|[Meta](#schemameta)|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|schemeUType|lixi2|
|schemeUType|cdrApplyForBankAccountV1|

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

<h2 id="tocS_Lixi2OriginationSchemeModelV1">Lixi2OriginationSchemeModelV1</h2>
<!-- backwards compatibility -->
<a id="schemalixi2originationschememodelv1"></a>
<a id="schema_Lixi2OriginationSchemeModelV1"></a>
<a id="tocSlixi2originationschememodelv1"></a>
<a id="tocslixi2originationschememodelv1"></a>

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

Provides the metadata for making an application using a LIXI2 gateway. Mandatory if schemeUType is set to 'lixi2'

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|submissionUri|string|true|none|Base path used to access the LIXI2 gateway|
|schemaUri|string|false|none|Location of file describing the supported LIXI schema.  Must be a file ending in .xsd (representing an XSD file) or .json (representing a JSON Schema file)|
|lixiCode|string|true|none|The LIXI participant code, assigned by LIXI, for the receiving organisation|
|lixiVersion|string|true|none|The supported version of the LIXI2 schema|
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
