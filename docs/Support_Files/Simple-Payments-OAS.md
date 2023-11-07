<!-- Generator: Widdershins v4.0.1 -->

<h1 id="cdr-experimantal-simple-payments-api">CDR Experimantal Simple Payments API v0.0.1</h1>

> Scroll down for example requests and responses.

Specification of endpoints defined in the Simple Payments experimental standard.  This is an experimental standard created by the Data Standards Body (DSB) as part of the Consumer Data Standards

Base URLs:

* <a href="https://data.holder.com.au/cds-au/v1">https://data.holder.com.au/cds-au/v1</a>

Email: <a href="mailto:contact@consumerdatastandards.gov.au">Consumer Data Standards</a> Web: <a href="https://consumerdatastandards.gov.au">Consumer Data Standards</a> 
License: <a href="https://opensource.org/licenses/MIT">MIT License</a>

<h1 id="cdr-experimantal-simple-payments-api-banking">Banking</h1>

## postPaymentInstruction

<a id="opIdpostPaymentInstruction"></a>

> Code samples

`POST /DSB/banking/payments`

Submit a payment instruction on behalf of a consumer.

> Body parameter

```json
{
  "data": {},
  "meta": {}
}
```

<h3 id="postpaymentinstruction-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|x-v|header|string|true|Version of the API end point requested by the client. Must be set to a positive integer. The data holder should respond with the highest supported version between [x-min-v](#request-headers) and [x-v](#request-headers). If the value of [x-min-v](#request-headers) is equal to or higher than the value of [x-v](#request-headers) then the [x-min-v](#request-headers) header should be treated as absent. If all versions requested are not supported then the data holder must respond with a 406 Not Acceptable. See [HTTP Headers](#request-headers)|
|x-min-v|header|string|false|Minimum version of the API end point requested by the client. Must be set to a positive integer if provided. The data holder should respond with the highest supported version between [x-min-v](#request-headers) and [x-v](#request-headers). If all versions requested are not supported then the data holder must respond with a 406 Not Acceptable.|
|body|body|[PostPaymentInstructionRequestV1](#schemapostpaymentinstructionrequestv1)|true|Payment instruction to submit for execution|

> Example responses

> 200 Response

```json
{
  "data": {},
  "links": {
    "self": "string"
  },
  "meta": {}
}
```

<h3 id="postpaymentinstruction-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful response|[PostPaymentInstructionResponseV1](#schemapostpaymentinstructionresponsev1)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|The following error codes MUST be supported:<br/><ul class="error-code-list"><li>[400 - Invalid Field](#error-400-field-invalid)</li><li>[400 - Missing Field](#error-400-field-missing)</li><li>[400 - Invalid Page Size](#error-400-field-invalid-page-size)</li><li>[400 - Invalid Version](#error-400-header-invalid-version)</li></ul>|[ResponseErrorListV2](#schemaresponseerrorlistv2)|
|406|[Not Acceptable](https://tools.ietf.org/html/rfc7231#section-6.5.6)|The following error codes MUST be supported:<br/><ul class="error-code-list"><li>[406 - Unsupported Version](#error-406-header-unsupported-version)</li></ul>|[ResponseErrorListV2](#schemaresponseerrorlistv2)|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|200|x-v|string||none|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocS_PostPaymentInstructionRequestV1">PostPaymentInstructionRequestV1</h2>
<!-- backwards compatibility -->
<a id="schemapostpaymentinstructionrequestv1"></a>
<a id="schema_PostPaymentInstructionRequestV1"></a>
<a id="tocSpostpaymentinstructionrequestv1"></a>
<a id="tocspostpaymentinstructionrequestv1"></a>

```json
{
  "data": {},
  "meta": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|data|object|true|none|none|
|meta|[Meta](#schemameta)|true|none|none|

<h2 id="tocS_PostPaymentInstructionResponseV1">PostPaymentInstructionResponseV1</h2>
<!-- backwards compatibility -->
<a id="schemapostpaymentinstructionresponsev1"></a>
<a id="schema_PostPaymentInstructionResponseV1"></a>
<a id="tocSpostpaymentinstructionresponsev1"></a>
<a id="tocspostpaymentinstructionresponsev1"></a>

```json
{
  "data": {},
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
|links|[Links](#schemalinks)|true|none|none|
|meta|[Meta](#schemameta)|true|none|none|

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

