# Automatically generated using Clang.jl


# const CSFML_NETWORK_API = CSFML_API_IMPORT

@cenum(sfFtpTransferMode,
    sfFtpBinary = 0,
    sfFtpAscii = 1,
    sfFtpEbcdic = 2,
)
@cenum(sfFtpStatus,
    sfFtpRestartMarkerReply = 110,
    sfFtpServiceReadySoon = 120,
    sfFtpDataConnectionAlreadyOpened = 125,
    sfFtpOpeningDataConnection = 150,
    sfFtpOk = 200,
    sfFtpPointlessCommand = 202,
    sfFtpSystemStatus = 211,
    sfFtpDirectoryStatus = 212,
    sfFtpFileStatus = 213,
    sfFtpHelpMessage = 214,
    sfFtpSystemType = 215,
    sfFtpServiceReady = 220,
    sfFtpClosingConnection = 221,
    sfFtpDataConnectionOpened = 225,
    sfFtpClosingDataConnection = 226,
    sfFtpEnteringPassiveMode = 227,
    sfFtpLoggedIn = 230,
    sfFtpFileActionOk = 250,
    sfFtpDirectoryOk = 257,
    sfFtpNeedPassword = 331,
    sfFtpNeedAccountToLogIn = 332,
    sfFtpNeedInformation = 350,
    sfFtpServiceUnavailable = 421,
    sfFtpDataConnectionUnavailable = 425,
    sfFtpTransferAborted = 426,
    sfFtpFileActionAborted = 450,
    sfFtpLocalError = 451,
    sfFtpInsufficientStorageSpace = 452,
    sfFtpCommandUnknown = 500,
    sfFtpParametersUnknown = 501,
    sfFtpCommandNotImplemented = 502,
    sfFtpBadCommandSequence = 503,
    sfFtpParameterNotImplemented = 504,
    sfFtpNotLoggedIn = 530,
    sfFtpNeedAccountToStore = 532,
    sfFtpFileUnavailable = 550,
    sfFtpPageTypeUnknown = 551,
    sfFtpNotEnoughMemory = 552,
    sfFtpFilenameNotAllowed = 553,
    sfFtpInvalidResponse = 1000,
    sfFtpConnectionFailed = 1001,
    sfFtpConnectionClosed = 1002,
    sfFtpInvalidFile = 1003,
)
@cenum(sfHttpMethod,
    sfHttpGet = 0,
    sfHttpPost = 1,
    sfHttpHead = 2,
    sfHttpPut = 3,
    sfHttpDelete = 4,
)
@cenum(sfHttpStatus,
    sfHttpOk = 200,
    sfHttpCreated = 201,
    sfHttpAccepted = 202,
    sfHttpNoContent = 204,
    sfHttpResetContent = 205,
    sfHttpPartialContent = 206,
    sfHttpMultipleChoices = 300,
    sfHttpMovedPermanently = 301,
    sfHttpMovedTemporarily = 302,
    sfHttpNotModified = 304,
    sfHttpBadRequest = 400,
    sfHttpUnauthorized = 401,
    sfHttpForbidden = 403,
    sfHttpNotFound = 404,
    sfHttpRangeNotSatisfiable = 407,
    sfHttpInternalServerError = 500,
    sfHttpNotImplemented = 501,
    sfHttpBadGateway = 502,
    sfHttpServiceNotAvailable = 503,
    sfHttpGatewayTimeout = 504,
    sfHttpVersionNotSupported = 505,
    sfHttpInvalidResponse = 1000,
    sfHttpConnectionFailed = 1001,
)

struct sfIpAddress
    address::NTuple{16, UInt8}
end

@cenum(sfSocketStatus,
    sfSocketDone = 0,
    sfSocketNotReady = 1,
    sfSocketPartial = 2,
    sfSocketDisconnected = 3,
    sfSocketError = 4,
)

const sfFtpDirectoryResponse = Cvoid
const sfFtpListingResponse = Cvoid
const sfFtpResponse = Cvoid
const sfFtp = Cvoid
const sfHttpRequest = Cvoid
const sfHttpResponse = Cvoid
const sfHttp = Cvoid
const sfPacket = Cvoid
const sfSocketSelector = Cvoid
const sfTcpListener = Cvoid
const sfTcpSocket = Cvoid
const sfUdpSocket = Cvoid
