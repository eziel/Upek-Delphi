unit bsapi;

interface
uses
  bstypes
  ;

const
  DLL_NAME = 'bsapi.dll';

(*******************************************************************************
ABS_STATUS BSAPI ABSVerify(
    IN ABS_CONNECTION hConnection,
    IN ABS_OPERATION* pOperation,
    IN ABS_DWORD dwTemplateCount,
    IN ABS_BIR** pTemplateArray,
    OUT ABS_LONG* pResult,
    IN ABS_DWORD dwFlags
);
*******************************************************************************)
  {$EXTERNALSYM ABSVerify}
  function ABSVerify(AConnection: ABS_CONNECTION;
                     var AOperation: TAbsOperation;
                     ATemplateCount: ABS_DWORD;
                     ATemplateArray:array of Pointer;  // PAbsBir;
                     var pResult: Integer;//ABS_CONNECTION ;
                     AFlags: ABS_DWORD): ABS_STATUS; stdcall; 

  function ABSEnroll(AConnection: ABS_CONNECTION;
                     var AOperation: TAbsOperation;
                     var ppEnrolledTemplate : Pointer;
                     AFlags: ABS_DWORD): ABS_STATUS; stdcall;
implementation

  function ABSVerify; stdcall; external DLL_NAME;
  function ABSEnroll; stdcall; external DLL_NAME;

 end.





