<h1 id="cdr-experimantal-simple-bank-account-origination-api">CDR Experimantal Simple Bank Account Origination API v0.0.4</h1>

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
    "schemeUType": "lixi1",
    "lixi1": {},
    "lixi2": {
      "baseUri": "string",
      "lixiCode": "string",
      "lixiVersion": "string",
      "lixiCustomVersion": "string",
      "apiVersion": "string",
      "productCodeMappings": [
        {
          "productId": "string",
          "productCode": "string"
        }
      ],
      "schematronUri": "string",
      "apiSpecificationUri": "string",
      "customVersionUri": "string"
    },
    "cdrApplyForBankAccountV1": {}
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

<h2 id="tocSoriginationschemeresponsev1">OriginationSchemeResponseV1</h2>

<a id="schemaoriginationschemeresponsev1"></a>

```json
{
  "data": {
    "schemeUType": "lixi1",
    "lixi1": {},
    "lixi2": {
      "baseUri": "string",
      "lixiCode": "string",
      "lixiVersion": "string",
      "lixiCustomVersion": "string",
      "apiVersion": "string",
      "productCodeMappings": [
        {
          "productId": "string",
          "productCode": "string"
        }
      ],
      "schematronUri": "string",
      "apiSpecificationUri": "string",
      "customVersionUri": "string"
    },
    "cdrApplyForBankAccountV1": {}
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
|» lixi1|object|false|none|Provides the metadata for making an application using a LIXI1 gateway. Mandatory if schemeUType is set to 'lixi1'|
|» lixi2|object|false|none|Provides the metadata for making an application using a LIXI2 gateway. Mandatory if schemeUType is set to 'lixi2'|
|»» baseUri|string|true|none|Base path used to access the LIXI2 gateway|
|»» lixiCode|string|true|none|The LIXI participant code, assigned by LIXI, for the receiving organisation|
|»» lixiVersion|string|true|none|The supported version of the LIXI2 schema|
|»» lixiCustomVersion|string|false|none|Optional identifier of a custom version of the LIXI payloads that are accepted if the receiving organisation has made custom extensions or modifications to the LIXI schema|
|»» apiVersion|string|false|none|Optional version of an API schema definition|
|»» productCodeMappings|[object]|false|none|Optional mapping of CDR product IDs to product codes used in LIXI applications via this origination scheme.  If absent, or if a mapping is not included, then the CDR product ID is expected to be used as the LIXI product code|
|»»» productId|string|true|none|The CDR product ID to map from|
|»»» productCode|string|true|none|The LIXI product code to map to|
|»» schematronUri|string|false|none|Optional reference to a Schematron file indicating the valid use of this LIXI gateway|
|»» apiSpecificationUri|string|false|none|Optional reference to an Open API Specification file describing the API version specified in the 'apiVersion' field|
|»» customVersionUri|string|false|none|Optional reference to additional information describing the customisations and extensions make to the LIXI scheams|
|» cdrApplyForBankAccountV1|object|false|none|Provides the metadata for making an application using version 1 of the CDR 'Apply For Bank Account' endpoint. Mandatory if schemeUType is set to 'cdrApplyForBankAccountV1'|
|links|[Links](#schemalinks)|true|none|none|
|meta|[Meta](#schemameta)|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|schemeUType|lixi1|
|schemeUType|lixi2|
|schemeUType|cdrApplyForBankAccountV1|

<h2 id="tocSresponseerrorlistv2">ResponseErrorListV2</h2>

<a id="schemaresponseerrorlistv2"></a>

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

<h2 id="tocSlinks">Links</h2>

<a id="schemalinks"></a>

```json
{
  "self": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|self|string|true|none|Fully qualified link that generated the current response document|

<h2 id="tocSmeta">Meta</h2>

<a id="schemameta"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocSlinkspaginated">LinksPaginated</h2>

<a id="schemalinkspaginated"></a>

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

<h2 id="tocSmetapaginated">MetaPaginated</h2>

<a id="schemametapaginated"></a>

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

<h2 id="tocSmetaerror">MetaError</h2>

<a id="schemametaerror"></a>

```json
{
  "urn": "string"
}

```

*Additional data for customised error codes*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|urn|string|false|none|The CDR error code URN which the application-specific error code extends. Mandatory if the error `code` is an application-specific error rather than a standardised error code.|

