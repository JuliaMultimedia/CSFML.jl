# Julia wrapper for header: Network.h
# Automatically generated using Clang.jl

# Julia wrapper for header: Export.h
# Automatically generated using Clang.jl

# Julia wrapper for header: Ftp.h
# Automatically generated using Clang.jl


function sfFtpListingResponse_destroy(ftpListingResponse)
    ccall((:sfFtpListingResponse_destroy, libcsfml_network), Cvoid, (Ptr{sfFtpListingResponse},), ftpListingResponse)
end

function sfFtpListingResponse_isOk(ftpListingResponse)
    ccall((:sfFtpListingResponse_isOk, libcsfml_network), sfBool, (Ptr{sfFtpListingResponse},), ftpListingResponse)
end

function sfFtpListingResponse_getStatus(ftpListingResponse)
    ccall((:sfFtpListingResponse_getStatus, libcsfml_network), sfFtpStatus, (Ptr{sfFtpListingResponse},), ftpListingResponse)
end

function sfFtpListingResponse_getMessage(ftpListingResponse)
    ccall((:sfFtpListingResponse_getMessage, libcsfml_network), Cstring, (Ptr{sfFtpListingResponse},), ftpListingResponse)
end

function sfFtpListingResponse_getCount(ftpListingResponse)
    ccall((:sfFtpListingResponse_getCount, libcsfml_network), Csize_t, (Ptr{sfFtpListingResponse},), ftpListingResponse)
end

function sfFtpListingResponse_getName(ftpListingResponse, index)
    ccall((:sfFtpListingResponse_getName, libcsfml_network), Cstring, (Ptr{sfFtpListingResponse}, Csize_t), ftpListingResponse, index)
end

function sfFtpDirectoryResponse_destroy(ftpDirectoryResponse)
    ccall((:sfFtpDirectoryResponse_destroy, libcsfml_network), Cvoid, (Ptr{sfFtpDirectoryResponse},), ftpDirectoryResponse)
end

function sfFtpDirectoryResponse_isOk(ftpDirectoryResponse)
    ccall((:sfFtpDirectoryResponse_isOk, libcsfml_network), sfBool, (Ptr{sfFtpDirectoryResponse},), ftpDirectoryResponse)
end

function sfFtpDirectoryResponse_getStatus(ftpDirectoryResponse)
    ccall((:sfFtpDirectoryResponse_getStatus, libcsfml_network), sfFtpStatus, (Ptr{sfFtpDirectoryResponse},), ftpDirectoryResponse)
end

function sfFtpDirectoryResponse_getMessage(ftpDirectoryResponse)
    ccall((:sfFtpDirectoryResponse_getMessage, libcsfml_network), Cstring, (Ptr{sfFtpDirectoryResponse},), ftpDirectoryResponse)
end

function sfFtpDirectoryResponse_getDirectory(ftpDirectoryResponse)
    ccall((:sfFtpDirectoryResponse_getDirectory, libcsfml_network), Cstring, (Ptr{sfFtpDirectoryResponse},), ftpDirectoryResponse)
end

function sfFtpResponse_destroy(ftpResponse)
    ccall((:sfFtpResponse_destroy, libcsfml_network), Cvoid, (Ptr{sfFtpResponse},), ftpResponse)
end

function sfFtpResponse_isOk(ftpResponse)
    ccall((:sfFtpResponse_isOk, libcsfml_network), sfBool, (Ptr{sfFtpResponse},), ftpResponse)
end

function sfFtpResponse_getStatus(ftpResponse)
    ccall((:sfFtpResponse_getStatus, libcsfml_network), sfFtpStatus, (Ptr{sfFtpResponse},), ftpResponse)
end

function sfFtpResponse_getMessage(ftpResponse)
    ccall((:sfFtpResponse_getMessage, libcsfml_network), Cstring, (Ptr{sfFtpResponse},), ftpResponse)
end

function sfFtp_create()
    ccall((:sfFtp_create, libcsfml_network), Ptr{sfFtp}, ())
end

function sfFtp_destroy(ftp)
    ccall((:sfFtp_destroy, libcsfml_network), Cvoid, (Ptr{sfFtp},), ftp)
end

function sfFtp_connect(ftp, server, port, timeout)
    ccall((:sfFtp_connect, libcsfml_network), Ptr{sfFtpResponse}, (Ptr{sfFtp}, sfIpAddress, UInt16, sfTime), ftp, server, port, timeout)
end

function sfFtp_loginAnonymous(ftp)
    ccall((:sfFtp_loginAnonymous, libcsfml_network), Ptr{sfFtpResponse}, (Ptr{sfFtp},), ftp)
end

function sfFtp_login(ftp, name, password)
    ccall((:sfFtp_login, libcsfml_network), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Cstring, Cstring), ftp, name, password)
end

function sfFtp_disconnect(ftp)
    ccall((:sfFtp_disconnect, libcsfml_network), Ptr{sfFtpResponse}, (Ptr{sfFtp},), ftp)
end

function sfFtp_keepAlive(ftp)
    ccall((:sfFtp_keepAlive, libcsfml_network), Ptr{sfFtpResponse}, (Ptr{sfFtp},), ftp)
end

function sfFtp_getWorkingDirectory(ftp)
    ccall((:sfFtp_getWorkingDirectory, libcsfml_network), Ptr{sfFtpDirectoryResponse}, (Ptr{sfFtp},), ftp)
end

function sfFtp_getDirectoryListing(ftp, directory)
    ccall((:sfFtp_getDirectoryListing, libcsfml_network), Ptr{sfFtpListingResponse}, (Ptr{sfFtp}, Cstring), ftp, directory)
end

function sfFtp_changeDirectory(ftp, directory)
    ccall((:sfFtp_changeDirectory, libcsfml_network), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Cstring), ftp, directory)
end

function sfFtp_parentDirectory(ftp)
    ccall((:sfFtp_parentDirectory, libcsfml_network), Ptr{sfFtpResponse}, (Ptr{sfFtp},), ftp)
end

function sfFtp_createDirectory(ftp, name)
    ccall((:sfFtp_createDirectory, libcsfml_network), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Cstring), ftp, name)
end

function sfFtp_deleteDirectory(ftp, name)
    ccall((:sfFtp_deleteDirectory, libcsfml_network), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Cstring), ftp, name)
end

function sfFtp_renameFile(ftp, file, newName)
    ccall((:sfFtp_renameFile, libcsfml_network), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Cstring, Cstring), ftp, file, newName)
end

function sfFtp_deleteFile(ftp, name)
    ccall((:sfFtp_deleteFile, libcsfml_network), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Cstring), ftp, name)
end

function sfFtp_download(ftp, remoteFile, localPath, mode)
    ccall((:sfFtp_download, libcsfml_network), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Cstring, Cstring, sfFtpTransferMode), ftp, remoteFile, localPath, mode)
end

function sfFtp_upload(ftp, localFile, remotePath, mode, append)
    ccall((:sfFtp_upload, libcsfml_network), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Cstring, Cstring, sfFtpTransferMode, sfBool), ftp, localFile, remotePath, mode, append)
end

function sfFtp_sendCommand(ftp, command, parameter)
    ccall((:sfFtp_sendCommand, libcsfml_network), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Cstring, Cstring), ftp, command, parameter)
end
# Julia wrapper for header: Http.h
# Automatically generated using Clang.jl


function sfHttpRequest_create()
    ccall((:sfHttpRequest_create, libcsfml_network), Ptr{sfHttpRequest}, ())
end

function sfHttpRequest_destroy(httpRequest)
    ccall((:sfHttpRequest_destroy, libcsfml_network), Cvoid, (Ptr{sfHttpRequest},), httpRequest)
end

function sfHttpRequest_setField(httpRequest, field, value)
    ccall((:sfHttpRequest_setField, libcsfml_network), Cvoid, (Ptr{sfHttpRequest}, Cstring, Cstring), httpRequest, field, value)
end

function sfHttpRequest_setMethod(httpRequest, method)
    ccall((:sfHttpRequest_setMethod, libcsfml_network), Cvoid, (Ptr{sfHttpRequest}, sfHttpMethod), httpRequest, method)
end

function sfHttpRequest_setUri(httpRequest, uri)
    ccall((:sfHttpRequest_setUri, libcsfml_network), Cvoid, (Ptr{sfHttpRequest}, Cstring), httpRequest, uri)
end

function sfHttpRequest_setHttpVersion(httpRequest, major, minor)
    ccall((:sfHttpRequest_setHttpVersion, libcsfml_network), Cvoid, (Ptr{sfHttpRequest}, UInt32, UInt32), httpRequest, major, minor)
end

function sfHttpRequest_setBody(httpRequest, body)
    ccall((:sfHttpRequest_setBody, libcsfml_network), Cvoid, (Ptr{sfHttpRequest}, Cstring), httpRequest, body)
end

function sfHttpResponse_destroy(httpResponse)
    ccall((:sfHttpResponse_destroy, libcsfml_network), Cvoid, (Ptr{sfHttpResponse},), httpResponse)
end

function sfHttpResponse_getField(httpResponse, field)
    ccall((:sfHttpResponse_getField, libcsfml_network), Cstring, (Ptr{sfHttpResponse}, Cstring), httpResponse, field)
end

function sfHttpResponse_getStatus(httpResponse)
    ccall((:sfHttpResponse_getStatus, libcsfml_network), sfHttpStatus, (Ptr{sfHttpResponse},), httpResponse)
end

function sfHttpResponse_getMajorVersion(httpResponse)
    ccall((:sfHttpResponse_getMajorVersion, libcsfml_network), UInt32, (Ptr{sfHttpResponse},), httpResponse)
end

function sfHttpResponse_getMinorVersion(httpResponse)
    ccall((:sfHttpResponse_getMinorVersion, libcsfml_network), UInt32, (Ptr{sfHttpResponse},), httpResponse)
end

function sfHttpResponse_getBody(httpResponse)
    ccall((:sfHttpResponse_getBody, libcsfml_network), Cstring, (Ptr{sfHttpResponse},), httpResponse)
end

function sfHttp_create()
    ccall((:sfHttp_create, libcsfml_network), Ptr{sfHttp}, ())
end

function sfHttp_destroy(http)
    ccall((:sfHttp_destroy, libcsfml_network), Cvoid, (Ptr{sfHttp},), http)
end

function sfHttp_setHost(http, host, port)
    ccall((:sfHttp_setHost, libcsfml_network), Cvoid, (Ptr{sfHttp}, Cstring, UInt16), http, host, port)
end

function sfHttp_sendRequest(http, request, timeout)
    ccall((:sfHttp_sendRequest, libcsfml_network), Ptr{sfHttpResponse}, (Ptr{sfHttp}, Ptr{sfHttpRequest}, sfTime), http, request, timeout)
end
# Julia wrapper for header: IpAddress.h
# Automatically generated using Clang.jl


function sfIpAddress_fromString(address)
    ccall((:sfIpAddress_fromString, libcsfml_network), sfIpAddress, (Cstring,), address)
end

function sfIpAddress_fromBytes(byte0, byte1, byte2, byte3)
    ccall((:sfIpAddress_fromBytes, libcsfml_network), sfIpAddress, (sfUint8, sfUint8, sfUint8, sfUint8), byte0, byte1, byte2, byte3)
end

function sfIpAddress_fromInteger(address)
    ccall((:sfIpAddress_fromInteger, libcsfml_network), sfIpAddress, (sfUint32,), address)
end

function sfIpAddress_toString(address, string)
    ccall((:sfIpAddress_toString, libcsfml_network), Cvoid, (sfIpAddress, Cstring), address, string)
end

function sfIpAddress_toInteger(address)
    ccall((:sfIpAddress_toInteger, libcsfml_network), sfUint32, (sfIpAddress,), address)
end

function sfIpAddress_getLocalAddress()
    ccall((:sfIpAddress_getLocalAddress, libcsfml_network), sfIpAddress, ())
end

function sfIpAddress_getPublicAddress(timeout)
    ccall((:sfIpAddress_getPublicAddress, libcsfml_network), sfIpAddress, (sfTime,), timeout)
end
# Julia wrapper for header: Packet.h
# Automatically generated using Clang.jl


function sfPacket_create()
    ccall((:sfPacket_create, libcsfml_network), Ptr{sfPacket}, ())
end

function sfPacket_copy(packet)
    ccall((:sfPacket_copy, libcsfml_network), Ptr{sfPacket}, (Ptr{sfPacket},), packet)
end

function sfPacket_destroy(packet)
    ccall((:sfPacket_destroy, libcsfml_network), Cvoid, (Ptr{sfPacket},), packet)
end

function sfPacket_append(packet, data, sizeInBytes)
    ccall((:sfPacket_append, libcsfml_network), Cvoid, (Ptr{sfPacket}, Ptr{Cvoid}, Csize_t), packet, data, sizeInBytes)
end

function sfPacket_clear(packet)
    ccall((:sfPacket_clear, libcsfml_network), Cvoid, (Ptr{sfPacket},), packet)
end

function sfPacket_getData(packet)
    ccall((:sfPacket_getData, libcsfml_network), Ptr{Cvoid}, (Ptr{sfPacket},), packet)
end

function sfPacket_getDataSize(packet)
    ccall((:sfPacket_getDataSize, libcsfml_network), Csize_t, (Ptr{sfPacket},), packet)
end

function sfPacket_endOfPacket(packet)
    ccall((:sfPacket_endOfPacket, libcsfml_network), sfBool, (Ptr{sfPacket},), packet)
end

function sfPacket_canRead(packet)
    ccall((:sfPacket_canRead, libcsfml_network), sfBool, (Ptr{sfPacket},), packet)
end

function sfPacket_readBool(packet)
    ccall((:sfPacket_readBool, libcsfml_network), sfBool, (Ptr{sfPacket},), packet)
end

function sfPacket_readInt8(packet)
    ccall((:sfPacket_readInt8, libcsfml_network), sfInt8, (Ptr{sfPacket},), packet)
end

function sfPacket_readUint8(packet)
    ccall((:sfPacket_readUint8, libcsfml_network), sfUint8, (Ptr{sfPacket},), packet)
end

function sfPacket_readInt16(packet)
    ccall((:sfPacket_readInt16, libcsfml_network), sfInt16, (Ptr{sfPacket},), packet)
end

function sfPacket_readUint16(packet)
    ccall((:sfPacket_readUint16, libcsfml_network), sfUint16, (Ptr{sfPacket},), packet)
end

function sfPacket_readInt32(packet)
    ccall((:sfPacket_readInt32, libcsfml_network), sfInt32, (Ptr{sfPacket},), packet)
end

function sfPacket_readUint32(packet)
    ccall((:sfPacket_readUint32, libcsfml_network), sfUint32, (Ptr{sfPacket},), packet)
end

function sfPacket_readFloat(packet)
    ccall((:sfPacket_readFloat, libcsfml_network), Cfloat, (Ptr{sfPacket},), packet)
end

function sfPacket_readDouble(packet)
    ccall((:sfPacket_readDouble, libcsfml_network), Cdouble, (Ptr{sfPacket},), packet)
end

function sfPacket_readString(packet, string)
    ccall((:sfPacket_readString, libcsfml_network), Cvoid, (Ptr{sfPacket}, Cstring), packet, string)
end

function sfPacket_readWideString(packet, string)
    ccall((:sfPacket_readWideString, libcsfml_network), Cvoid, (Ptr{sfPacket}, Ptr{Cwchar_t}), packet, string)
end

function sfPacket_writeBool(packet, arg1)
    ccall((:sfPacket_writeBool, libcsfml_network), Cvoid, (Ptr{sfPacket}, sfBool), packet, arg1)
end

function sfPacket_writeInt8(packet, arg1)
    ccall((:sfPacket_writeInt8, libcsfml_network), Cvoid, (Ptr{sfPacket}, sfInt8), packet, arg1)
end

function sfPacket_writeUint8(packet, arg1)
    ccall((:sfPacket_writeUint8, libcsfml_network), Cvoid, (Ptr{sfPacket}, sfUint8), packet, arg1)
end

function sfPacket_writeInt16(packet, arg1)
    ccall((:sfPacket_writeInt16, libcsfml_network), Cvoid, (Ptr{sfPacket}, sfInt16), packet, arg1)
end

function sfPacket_writeUint16(packet, arg1)
    ccall((:sfPacket_writeUint16, libcsfml_network), Cvoid, (Ptr{sfPacket}, sfUint16), packet, arg1)
end

function sfPacket_writeInt32(packet, arg1)
    ccall((:sfPacket_writeInt32, libcsfml_network), Cvoid, (Ptr{sfPacket}, sfInt32), packet, arg1)
end

function sfPacket_writeUint32(packet, arg1)
    ccall((:sfPacket_writeUint32, libcsfml_network), Cvoid, (Ptr{sfPacket}, sfUint32), packet, arg1)
end

function sfPacket_writeFloat(packet, arg1)
    ccall((:sfPacket_writeFloat, libcsfml_network), Cvoid, (Ptr{sfPacket}, Cfloat), packet, arg1)
end

function sfPacket_writeDouble(packet, arg1)
    ccall((:sfPacket_writeDouble, libcsfml_network), Cvoid, (Ptr{sfPacket}, Cdouble), packet, arg1)
end

function sfPacket_writeString(packet, string)
    ccall((:sfPacket_writeString, libcsfml_network), Cvoid, (Ptr{sfPacket}, Cstring), packet, string)
end

function sfPacket_writeWideString(packet, string)
    ccall((:sfPacket_writeWideString, libcsfml_network), Cvoid, (Ptr{sfPacket}, Ptr{Cwchar_t}), packet, string)
end
# Julia wrapper for header: SocketSelector.h
# Automatically generated using Clang.jl


function sfSocketSelector_create()
    ccall((:sfSocketSelector_create, libcsfml_network), Ptr{sfSocketSelector}, ())
end

function sfSocketSelector_copy(selector)
    ccall((:sfSocketSelector_copy, libcsfml_network), Ptr{sfSocketSelector}, (Ptr{sfSocketSelector},), selector)
end

function sfSocketSelector_destroy(selector)
    ccall((:sfSocketSelector_destroy, libcsfml_network), Cvoid, (Ptr{sfSocketSelector},), selector)
end

function sfSocketSelector_addTcpListener(selector, socket)
    ccall((:sfSocketSelector_addTcpListener, libcsfml_network), Cvoid, (Ptr{sfSocketSelector}, Ptr{sfTcpListener}), selector, socket)
end

function sfSocketSelector_addTcpSocket(selector, socket)
    ccall((:sfSocketSelector_addTcpSocket, libcsfml_network), Cvoid, (Ptr{sfSocketSelector}, Ptr{sfTcpSocket}), selector, socket)
end

function sfSocketSelector_addUdpSocket(selector, socket)
    ccall((:sfSocketSelector_addUdpSocket, libcsfml_network), Cvoid, (Ptr{sfSocketSelector}, Ptr{sfUdpSocket}), selector, socket)
end

function sfSocketSelector_removeTcpListener(selector, socket)
    ccall((:sfSocketSelector_removeTcpListener, libcsfml_network), Cvoid, (Ptr{sfSocketSelector}, Ptr{sfTcpListener}), selector, socket)
end

function sfSocketSelector_removeTcpSocket(selector, socket)
    ccall((:sfSocketSelector_removeTcpSocket, libcsfml_network), Cvoid, (Ptr{sfSocketSelector}, Ptr{sfTcpSocket}), selector, socket)
end

function sfSocketSelector_removeUdpSocket(selector, socket)
    ccall((:sfSocketSelector_removeUdpSocket, libcsfml_network), Cvoid, (Ptr{sfSocketSelector}, Ptr{sfUdpSocket}), selector, socket)
end

function sfSocketSelector_clear(selector)
    ccall((:sfSocketSelector_clear, libcsfml_network), Cvoid, (Ptr{sfSocketSelector},), selector)
end

function sfSocketSelector_wait(selector, timeout)
    ccall((:sfSocketSelector_wait, libcsfml_network), sfBool, (Ptr{sfSocketSelector}, sfTime), selector, timeout)
end

function sfSocketSelector_isTcpListenerReady(selector, socket)
    ccall((:sfSocketSelector_isTcpListenerReady, libcsfml_network), sfBool, (Ptr{sfSocketSelector}, Ptr{sfTcpListener}), selector, socket)
end

function sfSocketSelector_isTcpSocketReady(selector, socket)
    ccall((:sfSocketSelector_isTcpSocketReady, libcsfml_network), sfBool, (Ptr{sfSocketSelector}, Ptr{sfTcpSocket}), selector, socket)
end

function sfSocketSelector_isUdpSocketReady(selector, socket)
    ccall((:sfSocketSelector_isUdpSocketReady, libcsfml_network), sfBool, (Ptr{sfSocketSelector}, Ptr{sfUdpSocket}), selector, socket)
end
# Julia wrapper for header: SocketStatus.h
# Automatically generated using Clang.jl

# Julia wrapper for header: TcpListener.h
# Automatically generated using Clang.jl


function sfTcpListener_create()
    ccall((:sfTcpListener_create, libcsfml_network), Ptr{sfTcpListener}, ())
end

function sfTcpListener_destroy(listener)
    ccall((:sfTcpListener_destroy, libcsfml_network), Cvoid, (Ptr{sfTcpListener},), listener)
end

function sfTcpListener_setBlocking(listener, blocking)
    ccall((:sfTcpListener_setBlocking, libcsfml_network), Cvoid, (Ptr{sfTcpListener}, sfBool), listener, blocking)
end

function sfTcpListener_isBlocking(listener)
    ccall((:sfTcpListener_isBlocking, libcsfml_network), sfBool, (Ptr{sfTcpListener},), listener)
end

function sfTcpListener_getLocalPort(listener)
    ccall((:sfTcpListener_getLocalPort, libcsfml_network), UInt16, (Ptr{sfTcpListener},), listener)
end

function sfTcpListener_listen(listener, port, address)
    ccall((:sfTcpListener_listen, libcsfml_network), sfSocketStatus, (Ptr{sfTcpListener}, UInt16, sfIpAddress), listener, port, address)
end

function sfTcpListener_accept(listener, connected)
    ccall((:sfTcpListener_accept, libcsfml_network), sfSocketStatus, (Ptr{sfTcpListener}, Ptr{Ptr{sfTcpSocket}}), listener, connected)
end
# Julia wrapper for header: TcpSocket.h
# Automatically generated using Clang.jl


function sfTcpSocket_create()
    ccall((:sfTcpSocket_create, libcsfml_network), Ptr{sfTcpSocket}, ())
end

function sfTcpSocket_destroy(socket)
    ccall((:sfTcpSocket_destroy, libcsfml_network), Cvoid, (Ptr{sfTcpSocket},), socket)
end

function sfTcpSocket_setBlocking(socket, blocking)
    ccall((:sfTcpSocket_setBlocking, libcsfml_network), Cvoid, (Ptr{sfTcpSocket}, sfBool), socket, blocking)
end

function sfTcpSocket_isBlocking(socket)
    ccall((:sfTcpSocket_isBlocking, libcsfml_network), sfBool, (Ptr{sfTcpSocket},), socket)
end

function sfTcpSocket_getLocalPort(socket)
    ccall((:sfTcpSocket_getLocalPort, libcsfml_network), UInt16, (Ptr{sfTcpSocket},), socket)
end

function sfTcpSocket_getRemoteAddress(socket)
    ccall((:sfTcpSocket_getRemoteAddress, libcsfml_network), sfIpAddress, (Ptr{sfTcpSocket},), socket)
end

function sfTcpSocket_getRemotePort(socket)
    ccall((:sfTcpSocket_getRemotePort, libcsfml_network), UInt16, (Ptr{sfTcpSocket},), socket)
end

function sfTcpSocket_connect(socket, remoteAddress, remotePort, timeout)
    ccall((:sfTcpSocket_connect, libcsfml_network), sfSocketStatus, (Ptr{sfTcpSocket}, sfIpAddress, UInt16, sfTime), socket, remoteAddress, remotePort, timeout)
end

function sfTcpSocket_disconnect(socket)
    ccall((:sfTcpSocket_disconnect, libcsfml_network), Cvoid, (Ptr{sfTcpSocket},), socket)
end

function sfTcpSocket_send(socket, data, size)
    ccall((:sfTcpSocket_send, libcsfml_network), sfSocketStatus, (Ptr{sfTcpSocket}, Ptr{Cvoid}, Csize_t), socket, data, size)
end

function sfTcpSocket_sendPartial(socket, data, size, sent)
    ccall((:sfTcpSocket_sendPartial, libcsfml_network), sfSocketStatus, (Ptr{sfTcpSocket}, Ptr{Cvoid}, Csize_t, Ptr{Csize_t}), socket, data, size, sent)
end

function sfTcpSocket_receive(socket, data, size, received)
    ccall((:sfTcpSocket_receive, libcsfml_network), sfSocketStatus, (Ptr{sfTcpSocket}, Ptr{Cvoid}, Csize_t, Ptr{Csize_t}), socket, data, size, received)
end

function sfTcpSocket_sendPacket(socket, packet)
    ccall((:sfTcpSocket_sendPacket, libcsfml_network), sfSocketStatus, (Ptr{sfTcpSocket}, Ptr{sfPacket}), socket, packet)
end

function sfTcpSocket_receivePacket(socket, packet)
    ccall((:sfTcpSocket_receivePacket, libcsfml_network), sfSocketStatus, (Ptr{sfTcpSocket}, Ptr{sfPacket}), socket, packet)
end
# Julia wrapper for header: Types.h
# Automatically generated using Clang.jl

# Julia wrapper for header: UdpSocket.h
# Automatically generated using Clang.jl


function sfUdpSocket_create()
    ccall((:sfUdpSocket_create, libcsfml_network), Ptr{sfUdpSocket}, ())
end

function sfUdpSocket_destroy(socket)
    ccall((:sfUdpSocket_destroy, libcsfml_network), Cvoid, (Ptr{sfUdpSocket},), socket)
end

function sfUdpSocket_setBlocking(socket, blocking)
    ccall((:sfUdpSocket_setBlocking, libcsfml_network), Cvoid, (Ptr{sfUdpSocket}, sfBool), socket, blocking)
end

function sfUdpSocket_isBlocking(socket)
    ccall((:sfUdpSocket_isBlocking, libcsfml_network), sfBool, (Ptr{sfUdpSocket},), socket)
end

function sfUdpSocket_getLocalPort(socket)
    ccall((:sfUdpSocket_getLocalPort, libcsfml_network), UInt16, (Ptr{sfUdpSocket},), socket)
end

function sfUdpSocket_bind(socket, port, address)
    ccall((:sfUdpSocket_bind, libcsfml_network), sfSocketStatus, (Ptr{sfUdpSocket}, UInt16, sfIpAddress), socket, port, address)
end

function sfUdpSocket_unbind(socket)
    ccall((:sfUdpSocket_unbind, libcsfml_network), Cvoid, (Ptr{sfUdpSocket},), socket)
end

function sfUdpSocket_send(socket, data, size, remoteAddress, remotePort)
    ccall((:sfUdpSocket_send, libcsfml_network), sfSocketStatus, (Ptr{sfUdpSocket}, Ptr{Cvoid}, Csize_t, sfIpAddress, UInt16), socket, data, size, remoteAddress, remotePort)
end

function sfUdpSocket_receive(socket, data, size, received, remoteAddress, remotePort)
    ccall((:sfUdpSocket_receive, libcsfml_network), sfSocketStatus, (Ptr{sfUdpSocket}, Ptr{Cvoid}, Csize_t, Ptr{Csize_t}, Ptr{sfIpAddress}, Ptr{UInt16}), socket, data, size, received, remoteAddress, remotePort)
end

function sfUdpSocket_sendPacket(socket, packet, remoteAddress, remotePort)
    ccall((:sfUdpSocket_sendPacket, libcsfml_network), sfSocketStatus, (Ptr{sfUdpSocket}, Ptr{sfPacket}, sfIpAddress, UInt16), socket, packet, remoteAddress, remotePort)
end

function sfUdpSocket_receivePacket(socket, packet, remoteAddress, remotePort)
    ccall((:sfUdpSocket_receivePacket, libcsfml_network), sfSocketStatus, (Ptr{sfUdpSocket}, Ptr{sfPacket}, Ptr{sfIpAddress}, Ptr{UInt16}), socket, packet, remoteAddress, remotePort)
end

function sfUdpSocket_maxDatagramSize()
    ccall((:sfUdpSocket_maxDatagramSize, libcsfml_network), UInt32, ())
end
