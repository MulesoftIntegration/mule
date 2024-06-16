%dw 2.0
output application/json skipNullOn="everywhere"
---
{
	success: false,
	httpStatus: vars.httpStatus,
	errors: [
		{
			errorCode: vars.errorDetails.errorCode,
			errorType: if(vars.errorObject.errorType.identifier?) (vars.errorObject.errorType.identifier) else (error.errorType.identifier),
            errorMessage: error.detailedDescription
            }
	]
}
