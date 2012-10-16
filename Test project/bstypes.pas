unit bstypes;

interface

type
  {$EXTERNALSYM ABS_WORD}
  ABS_WORD       = WORD;
  {$EXTERNALSYM ABS_DWORD}
  ABS_DWORD      = Cardinal;
  {$EXTERNALSYM ABS_CONNECTION}
  ABS_CONNECTION = ABS_DWORD;
  {$EXTERNALSYM ABS_LONG}
  ABS_LONG       = Integer;
  {$EXTERNALSYM ABS_BYTE}
  ABS_BYTE       = Byte;
  {$EXTERNALSYM ABS_CHAR}
  ABS_CHAR       = AnsiChar;
  {$EXTERNALSYM ABS_STATUS}
  ABS_STATUS     = ABS_LONG;

  PAbsData = ^TAbsData;
  {$EXTERNALSYM ABS_DATA}
  ABS_DATA = record
    Length: ABS_DWORD;
    Data  : array[0..0] of ABS_BYTE;
  end;
  TAbsData = ABS_DATA;


  PAbsOperation = ^TAbsOperation;

  // typedef void (BSAPI  *ABS_CALLBACK) ( const ABS_OPERATION*, ABS_DWORD, void*);
  {$EXTERNALSYM ABS_CALLBACK}
  ABS_CALLBACK = procedure(AOperation: PAbsOperation; AMsgID: ABS_DWORD; AMsgData: Pointer); stdcall;
  TAbsCallback = ABS_CALLBACK;

  {$EXTERNALSYM ABS_OPERATION}
  ABS_OPERATION = record
    OperationID: ABS_DWORD;     ///< Unique operation ID or zero.
    Context    : Pointer; 	    ///< User defined pointer, passed into the operation callback.
    Callback   : ABS_CALLBACK; 	///< Pointer to application-defined function, implementing operation callback.
    Timeout    : ABS_LONG; 	    ///< Timeout of user's inactivity in milliseconds
    Flags      : ABS_DWORD; 	  ///< Bitmask of flags, tuning the operation process.
  end;
  TAbsOperation = ABS_OPERATION;

//  TByteArray = array[0..32767] of Byte;

  {$EXTERNALSYM ABS_BIR_HEADER}
  ABS_BIR_HEADER = record
    Length       : ABS_DWORD; 	///< Length of Header + Opaque Data
    HeaderVersion: ABS_BYTE; 	  ///< HeaderVersion = 1
    Type_        : ABS_BYTE; 	  ///< Type = 4 (BioAPI_BIR_DATA_TYPE_PROCESSED)
    FormatOwner  : ABS_WORD; 	  ///< FormatOwner = 0x12 (STMicroelectronics)
    FormatID     : ABS_WORD; 	  ///< FormatID = 0
    Quality      : ABS_CHAR; 	  ///< Quality = -2 (BioAPI_QUALITY is not supported)
    Purpose      : ABS_BYTE; 	  ///< Purpose (BioAPI_PURPOSE_xxxx, ABS_PURPOSE_xxxx).
    FactorsMask  : ABS_DWORD; 	///< FactorsMask = 0x08 (BioAPI_FACTOR_FINGERPRINT)
  end;
  TAbsBirHeader=ABS_BIR_HEADER;

  PAbsBir=^TAbsBir;
  {$EXTERNALSYM ABS_BIR}
  ABS_BIR = record
    Header: ABS_BIR_HEADER; 	///< BIR header
    Data  : array[0..0] of ABS_BYTE;         {// Changed into this type to follow sample C# code}
  end;
  TAbsBir=ABS_BIR;

//  PAbsBirs=^TAbsBirs;
//  TAbsBirs=array[0..32767] of TAbsBir;

implementation

end.
