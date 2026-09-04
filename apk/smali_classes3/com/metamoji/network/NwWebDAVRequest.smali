.class public final Lcom/metamoji/network/NwWebDAVRequest;
.super Ljava/lang/Object;
.source "NwWebDAVRequest.kt"

# interfaces
.implements Lokhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/network/NwWebDAVRequest$Companion;,
        Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;,
        Lcom/metamoji/network/NwWebDAVRequest$Depth;,
        Lcom/metamoji/network/NwWebDAVRequest$IBytesCompleted;,
        Lcom/metamoji/network/NwWebDAVRequest$ICompleted;,
        Lcom/metamoji/network/NwWebDAVRequest$IFileCompleted;,
        Lcom/metamoji/network/NwWebDAVRequest$IHeaderCompleted;,
        Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;,
        Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;,
        Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;,
        Lcom/metamoji/network/NwWebDAVRequest$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNwWebDAVRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NwWebDAVRequest.kt\ncom/metamoji/network/NwWebDAVRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1281:1\n221#2,2:1282\n*S KotlinDebug\n*F\n+ 1 NwWebDAVRequest.kt\ncom/metamoji/network/NwWebDAVRequest\n*L\n303#1:1282,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00cc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 m2\u00020\u0001:\u000bcdefghijklmB#\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u001d\u0008\u0016\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\tB\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\nB\u0011\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u000cJ\u0008\u0010\u0015\u001a\u00020\u0011H\u0002J3\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2!\u0010\'\u001a\u001d\u0012\u0013\u0012\u00110)\u00a2\u0006\u000c\u0008*\u0012\u0008\u0008+\u0012\u0004\u0008\u0008(,\u0012\u0004\u0012\u00020-0(H\u0002J\u0006\u0010.\u001a\u00020/J\u000e\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u0004J\u0016\u00103\u001a\u0002042\u0006\u00102\u001a\u00020\u00042\u0006\u00105\u001a\u000206J\u000e\u00107\u001a\u0002042\u0006\u00102\u001a\u00020\u0004J\u000e\u00108\u001a\u0002042\u0006\u00102\u001a\u00020\u0004J\u001e\u00109\u001a\u0002042\u0006\u00102\u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u00042\u0006\u0010;\u001a\u00020-J\u000e\u0010<\u001a\u00020=2\u0006\u00102\u001a\u00020\u0004J$\u0010>\u001a\u00020?2\u0006\u00102\u001a\u00020\u00042\u0008\u0008\u0002\u0010@\u001a\u00020)2\u0008\u0008\u0002\u0010A\u001a\u00020\u0004H\u0007J$\u0010B\u001a\u00020?2\u0006\u00102\u001a\u00020\u00042\u0008\u0008\u0002\u0010@\u001a\u00020C2\u0008\u0008\u0002\u0010A\u001a\u00020\u0004H\u0007J2\u0010D\u001a\u00020?2\u0006\u00102\u001a\u00020\u00042\u0014\u0010E\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040F2\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00040HJ \u0010I\u001a\u00020?2\u0006\u00102\u001a\u00020\u00042\u0006\u0010E\u001a\u00020\u00042\u0006\u0010G\u001a\u00020\u0004H\u0002J\u0016\u0010J\u001a\u0002012\u0006\u00102\u001a\u00020\u0004H\u0086@\u00a2\u0006\u0002\u0010KJ\u0016\u00100\u001a\u00020L2\u0006\u00102\u001a\u00020\u00042\u0006\u0010M\u001a\u00020NJ\u001e\u0010O\u001a\u0002042\u0006\u00102\u001a\u00020\u00042\u0006\u00105\u001a\u000206H\u0086@\u00a2\u0006\u0002\u0010PJ\u001e\u00103\u001a\u00020L2\u0006\u00102\u001a\u00020\u00042\u0006\u00105\u001a\u0002062\u0006\u0010M\u001a\u00020QJ\u0016\u0010R\u001a\u0002042\u0006\u00102\u001a\u00020\u0004H\u0086@\u00a2\u0006\u0002\u0010KJ\u0016\u00107\u001a\u00020L2\u0006\u00102\u001a\u00020\u00042\u0006\u0010M\u001a\u00020QJ\u0016\u0010S\u001a\u0002042\u0006\u00102\u001a\u00020\u0004H\u0086@\u00a2\u0006\u0002\u0010KJ\u0016\u00108\u001a\u00020L2\u0006\u00102\u001a\u00020\u00042\u0006\u0010M\u001a\u00020QJ&\u0010T\u001a\u0002042\u0006\u00102\u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u00042\u0006\u0010;\u001a\u00020-H\u0086@\u00a2\u0006\u0002\u0010UJ&\u00109\u001a\u00020L2\u0006\u00102\u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u00042\u0006\u0010;\u001a\u00020-2\u0006\u0010M\u001a\u00020QJ\u0016\u0010V\u001a\u00020=2\u0006\u00102\u001a\u00020\u0004H\u0086@\u00a2\u0006\u0002\u0010KJ\u0016\u0010<\u001a\u00020L2\u0006\u00102\u001a\u00020\u00042\u0006\u0010M\u001a\u00020WJ*\u0010X\u001a\u00020?2\u0006\u00102\u001a\u00020\u00042\u0008\u0008\u0002\u0010@\u001a\u00020C2\u0008\u0008\u0002\u0010A\u001a\u00020\u0004H\u0086@\u00a2\u0006\u0002\u0010YJ&\u0010B\u001a\u00020L2\u0006\u00102\u001a\u00020\u00042\u0006\u0010@\u001a\u00020C2\u0006\u0010A\u001a\u00020\u00042\u0006\u0010M\u001a\u00020ZJ\u001e\u0010B\u001a\u00020L2\u0006\u00102\u001a\u00020\u00042\u0006\u0010@\u001a\u00020C2\u0006\u0010M\u001a\u00020ZJ\u0016\u0010B\u001a\u00020L2\u0006\u00102\u001a\u00020\u00042\u0006\u0010M\u001a\u00020ZJ8\u0010[\u001a\u00020?2\u0006\u00102\u001a\u00020\u00042\u0012\u0010E\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040F2\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00040HH\u0086@\u00a2\u0006\u0002\u0010\\J8\u0010D\u001a\u00020L2\u0006\u00102\u001a\u00020\u00042\u0012\u0010E\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040F2\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00040H2\u0006\u0010M\u001a\u00020ZJ\u001c\u0010]\u001a\u0004\u0018\u00010^2\u0008\u0010_\u001a\u0004\u0018\u00010`2\u0006\u0010a\u001a\u00020bH\u0016R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0017\u0010\n\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR(\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0019\"\u0004\u0008\u001f\u0010\u001bR(\u0010 \u001a\u0004\u0018\u00010\u00042\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0019\"\u0004\u0008\"\u0010\u001b\u00a8\u0006n"
    }
    d2 = {
        "Lcom/metamoji/network/NwWebDAVRequest;",
        "Lokhttp3/Authenticator;",
        "lockTable",
        "",
        "",
        "connectionTimeoutInSec",
        "",
        "<init>",
        "(Ljava/util/Map;J)V",
        "(Ljava/util/Map;)V",
        "()V",
        "timeout",
        "(J)V",
        "requestHeader",
        "_call",
        "Lokhttp3/Call;",
        "_httpClient",
        "Lokhttp3/OkHttpClient;",
        "_lockObject",
        "",
        "_authTrialUrl",
        "httpClient",
        "appAuthKey",
        "getAppAuthKey$annotations",
        "getAppAuthKey",
        "()Ljava/lang/String;",
        "setAppAuthKey",
        "(Ljava/lang/String;)V",
        "v",
        "username",
        "getUsername",
        "setUsername",
        "password",
        "getPassword",
        "setPassword",
        "sendRequest",
        "Lcom/metamoji/network/NwWebDAVRequest$Result;",
        "reqBuilder",
        "Lokhttp3/Request$Builder;",
        "isSuccessfulStatus",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "status",
        "",
        "cancel",
        "",
        "get",
        "Lcom/metamoji/network/NwWebDAVFileResult;",
        "url",
        "put",
        "Lcom/metamoji/network/NwWebDAVResult;",
        "file",
        "Ljava/io/File;",
        "delete",
        "createDirectory",
        "moveToDestinationURL",
        "destUrl",
        "overwrite",
        "head",
        "Lcom/metamoji/network/NwWebDAVHeaderResult;",
        "fetchDirectoryListingWithDepth",
        "Lcom/metamoji/network/NwWebDAVPropResult;",
        "depth",
        "extra",
        "propfind",
        "Lcom/metamoji/network/NwWebDAVRequest$Depth;",
        "proppatch",
        "setProperties",
        "",
        "removeProperties",
        "",
        "proppatchWithString",
        "getAsync",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/Job;",
        "proc",
        "Lcom/metamoji/network/NwWebDAVRequest$IFileCompleted;",
        "putAsync",
        "(Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/metamoji/network/NwWebDAVRequest$ICompleted;",
        "deleteAsync",
        "createDirectoryAsync",
        "moveToDestinationURLAsync",
        "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "headAsync",
        "Lcom/metamoji/network/NwWebDAVRequest$IHeaderCompleted;",
        "propfindAsync",
        "(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;",
        "proppatchAsync",
        "(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "authenticate",
        "Lokhttp3/Request;",
        "route",
        "Lokhttp3/Route;",
        "response",
        "Lokhttp3/Response;",
        "Result",
        "Depth",
        "ICompleted",
        "IFileCompleted",
        "IHeaderCompleted",
        "IBytesCompleted",
        "IPropCompleted",
        "DAVPropParser",
        "NwDAVItemImpl",
        "ITempFileCreator",
        "Companion",
        "network"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AUTH_HEADER:Ljava/lang/String; = "Authorization"

.field private static final BUFFER_LENGTH_FOR_GET_RESPONSE:I = 0x2000

.field public static final Companion:Lcom/metamoji/network/NwWebDAVRequest$Companion;

.field private static final DEAD_PROPERTY_CREATE:Ljava/lang/String; = "create"

.field private static final DEAD_PROPERTY_LASTSYNCEDREVISION:Ljava/lang/String; = "lastSyncedRevision"

.field private static final DEAD_PROPERTY_SYNCUPDATE:Ljava/lang/String; = "syncUpdate"

.field private static final DECIMAL_POINT_COMMA:C = ','

.field private static final DECIMAL_POINT_PERIOD:C = '.'

.field private static final FILE_PREFIX_FOR_GET_RESPONSE:Ljava/lang/String; = "getResponse"

.field public static final FMWebDAVAcceptedStatusCode:I = 0xca

.field public static final FMWebDAVAlreadyReportedStatusCode:I = 0xd0

.field public static final FMWebDAVBadGateway:I = 0x1f6

.field public static final FMWebDAVBadRequest:I = 0x190

.field public static final FMWebDAVCancelled:I = 0x25a

.field private static final FMWebDAVCollectionKey:Ljava/lang/String; = "collection"

.field public static final FMWebDAVConflict:I = 0x199

.field public static final FMWebDAVConflictStatusCode:I = 0x199

.field public static final FMWebDAVConnectionError:I = 0x259

.field private static final FMWebDAVContentTypeKey:Ljava/lang/String; = "contenttype"

.field public static final FMWebDAVContinueStatusCode:I = 0x64

.field public static final FMWebDAVCreatedStatusCode:I = 0xc9

.field private static final FMWebDAVETagKey:Ljava/lang/String; = "etag"

.field public static final FMWebDAVExpectationFailed:I = 0x1a1

.field public static final FMWebDAVFailedDependency:I = 0x1a8

.field public static final FMWebDAVForbiddenStatusCode:I = 0x193

.field public static final FMWebDAVFoundStatusCode:I = 0x12e

.field public static final FMWebDAVGatewayTimeout:I = 0x1f8

.field public static final FMWebDAVGone:I = 0x19a

.field private static final FMWebDAVHREFKey:Ljava/lang/String; = "href"

.field public static final FMWebDAVHTTPVersionNotSupported:I = 0x1f9

.field public static final FMWebDAVIMUsedStatusCode:I = 0xe2

.field public static final FMWebDAVInsufficientStorage:I = 0x1fb

.field public static final FMWebDAVInternalServerError:I = 0x1f4

.field public static final FMWebDAVLengthRequired:I = 0x19b

.field public static final FMWebDAVLocked:I = 0x1a7

.field public static final FMWebDAVLoopDetected:I = 0x1fc

.field public static final FMWebDAVMethodNotAllowedStatusCode:I = 0x195

.field public static final FMWebDAVMovedPermanentlyStatusCode:I = 0x12d

.field public static final FMWebDAVMultiStatusStatusCode:I = 0xcf

.field public static final FMWebDAVMultipleChoicesStatusCode:I = 0x12c

.field public static final FMWebDAVNoContentStatusCode:I = 0xcc

.field public static final FMWebDAVNonAuthoritativeInformationStatusCode:I = 0xcb

.field public static final FMWebDAVNotAcceptable:I = 0x196

.field public static final FMWebDAVNotExtended:I = 0x1fe

.field public static final FMWebDAVNotFoundStatusCode:I = 0x194

.field public static final FMWebDAVNotImplementedErrorCode:I = 0x1f5

.field public static final FMWebDAVNotModifiedStatusCode:I = 0x130

.field public static final FMWebDAVOKStatusCode:I = 0xc8

.field public static final FMWebDAVPartialContentStatusCode:I = 0xce

.field public static final FMWebDAVPaymentRequired:I = 0x192

.field public static final FMWebDAVPreconditionFailed:I = 0x19c

.field public static final FMWebDAVProcessingStatusCode:I = 0x66

.field public static final FMWebDAVProxyAuthenticationRequired:I = 0x197

.field public static final FMWebDAVResetContentStatusCode:I = 0xcd

.field public static final FMWebDAVSeeOtherStatusCode:I = 0x12f

.field public static final FMWebDAVServiceUnavailable:I = 0x1f7

.field public static final FMWebDAVSwitchingProtocolsStatusCode:I = 0x65

.field public static final FMWebDAVTemporaryRedirectStatusCode:I = 0x133

.field private static final FMWebDAVURIKey:Ljava/lang/String; = "uri"

.field public static final FMWebDAVUnauthorized:I = 0x191

.field public static final FMWebDAVUnprocessableEntity:I = 0x1a6

.field public static final FMWebDAVUnsupportedMediaType:I = 0x19f

.field public static final FMWebDAVUpgradeRequired:I = 0x1aa

.field public static final FMWebDAVUseProxyStatusCode:I = 0x131

.field public static final FMWebDAVVariantAlsoNegotiates:I = 0x1fa

.field private static final MetaMoJiStorageNSURI:Ljava/lang/String; = "http://xmlns.metamoji.com/digitalcabinet/tinydotnote/1.0/"

.field public static final NwWebDAVRequestEntityTooLarge:I = 0x19d

.field public static final NwWebDAVRequestTimeout:I = 0x198

.field public static final NwWebDAVRequestURITooLong:I = 0x19e

.field public static final NwWebDAVRequestedRangeNotSatisfiable:I = 0x1a0

.field private static final TYPE_XML:Ljava/lang/String; = "application/xml; charset=utf-8"

.field private static final WebDAVNSURI:Ljava/lang/String; = "DAV:"

.field private static tempFileCreator:Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;


# instance fields
.field private _authTrialUrl:Ljava/lang/String;

.field private _call:Lokhttp3/Call;

.field private _httpClient:Lokhttp3/OkHttpClient;

.field private final _lockObject:Ljava/lang/Object;

.field private appAuthKey:Ljava/lang/String;

.field private final connectionTimeoutInSec:J

.field private final lockTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private password:Ljava/lang/String;

.field private final requestHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/network/NwWebDAVRequest;->Companion:Lcom/metamoji/network/NwWebDAVRequest$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 197
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/metamoji/network/NwConnectionTimeout;->MEDIUM:Lcom/metamoji/network/NwConnectionTimeout;

    invoke-virtual {v1}, Lcom/metamoji/network/NwConnectionTimeout;->getSeconds()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/metamoji/network/NwWebDAVRequest;-><init>(Ljava/util/Map;J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 198
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/metamoji/network/NwWebDAVRequest;-><init>(Ljava/util/Map;J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lockTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/metamoji/network/NwConnectionTimeout;->MEDIUM:Lcom/metamoji/network/NwConnectionTimeout;

    invoke-virtual {v0}, Lcom/metamoji/network/NwConnectionTimeout;->getSeconds()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/network/NwWebDAVRequest;-><init>(Ljava/util/Map;J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "lockTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest;->lockTable:Ljava/util/Map;

    iput-wide p2, p0, Lcom/metamoji/network/NwWebDAVRequest;->connectionTimeoutInSec:J

    .line 202
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest;->requestHeader:Ljava/util/Map;

    .line 205
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest;->_lockObject:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getTempFileCreator$cp()Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;
    .locals 1

    .line 195
    sget-object v0, Lcom/metamoji/network/NwWebDAVRequest;->tempFileCreator:Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;

    return-object v0
.end method

.method public static final synthetic access$setTempFileCreator$cp(Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;)V
    .locals 0

    .line 195
    sput-object p0, Lcom/metamoji/network/NwWebDAVRequest;->tempFileCreator:Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;

    return-void
.end method

.method static final createDirectory$lambda$17(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static final delete$lambda$16(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic fetchDirectoryListingWithDepth$default(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVPropResult;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 453
    const-string p3, ""

    .line 451
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/network/NwWebDAVRequest;->fetchDirectoryListingWithDepth(Ljava/lang/String;ILjava/lang/String;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object p0

    return-object p0
.end method

.method static final get$lambda$14(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic getAppAuthKey$annotations()V
    .locals 0

    return-void
.end method

.method public static final getTempFileCreator()Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;
    .locals 1

    sget-object v0, Lcom/metamoji/network/NwWebDAVRequest;->Companion:Lcom/metamoji/network/NwWebDAVRequest$Companion;

    invoke-virtual {v0}, Lcom/metamoji/network/NwWebDAVRequest$Companion;->getTempFileCreator()Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;

    move-result-object v0

    return-object v0
.end method

.method static final head$lambda$19(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final httpClient()Lokhttp3/OkHttpClient;
    .locals 11

    .line 209
    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest;->_lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest;->_httpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/metamoji/network/NwWebDAVRequest;->connectionTimeoutInSec:J

    const/16 v9, 0xe

    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/metamoji/network/NwHttpClient;->customClientBuilder$default(JJJLcom/metamoji/network/NwCookieJar;ILjava/lang/Object;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Lokhttp3/Authenticator;

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest;->_httpClient:Lokhttp3/OkHttpClient;

    .line 211
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit v1

    .line 212
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest;->_httpClient:Lokhttp3/OkHttpClient;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 209
    monitor-exit v1

    throw v0
.end method

.method static final moveToDestinationURL$lambda$18(I)Z
    .locals 1

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic propfind$default(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVPropResult;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 471
    sget-object p2, Lcom/metamoji/network/NwWebDAVRequest$Depth;->Single:Lcom/metamoji/network/NwWebDAVRequest$Depth;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    .line 470
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/network/NwWebDAVRequest;->propfind(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object p0

    return-object p0
.end method

.method static final propfind$lambda$20(I)Z
    .locals 1

    const/16 v0, 0xcf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic propfindAsync$default(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 572
    sget-object p2, Lcom/metamoji/network/NwWebDAVRequest$Depth;->Single:Lcom/metamoji/network/NwWebDAVRequest$Depth;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/network/NwWebDAVRequest;->propfindAsync(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final proppatchWithString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVPropResult;
    .locals 3

    .line 517
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 518
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest;->lockTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "If"

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 526
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\" ?><D:propertyupdate xmlns:D=\"DAV:\" xmlns:V=\"http://xmlns.metamoji.com/digitalcabinet/tinydotnote/1.0/\"><D:set><D:prop>"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</D:prop></D:set><D:remove><D:prop>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</D:prop></D:remove></D:propertyupdate>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 527
    invoke-static {}, Lcom/metamoji/network/NwLoggerKt;->getNwLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p2

    new-instance p3, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda4;

    invoke-direct {p3, p1}, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/lib/utils/UtLog;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 528
    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object p3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "application/xml; charset=utf-8"

    invoke-virtual {p3, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    const-string p2, "PROPPATCH"

    invoke-virtual {v0, p2, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 530
    new-instance p1, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/metamoji/network/NwWebDAVRequest;->sendRequest(Lokhttp3/Request$Builder;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/network/NwWebDAVRequest$Result;

    move-result-object p1

    .line 531
    new-instance p2, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    check-cast p1, Lcom/metamoji/network/NwWebDAVBytesResult;

    invoke-direct {p2, p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;-><init>(Lcom/metamoji/network/NwWebDAVBytesResult;)V

    check-cast p2, Lcom/metamoji/network/NwWebDAVPropResult;

    return-object p2
.end method

.method static final proppatchWithString$lambda$21(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String for proppatch : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final proppatchWithString$lambda$22(I)Z
    .locals 1

    const/16 v0, 0xcf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static final put$lambda$15(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final declared-synchronized sendRequest(Lokhttp3/Request$Builder;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/network/NwWebDAVRequest$Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request$Builder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/metamoji/network/NwWebDAVRequest$Result;"
        }
    .end annotation

    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest;->_lockObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    const/4 v1, 0x0

    .line 290
    :try_start_1
    iput-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest;->_authTrialUrl:Ljava/lang/String;

    .line 291
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 289
    :try_start_2
    monitor-exit v0

    .line 293
    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$Result;

    invoke-direct {v0, p2}, Lcom/metamoji/network/NwWebDAVRequest$Result;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 303
    iget-object p2, p0, Lcom/metamoji/network/NwWebDAVRequest;->requestHeader:Ljava/util/Map;

    .line 1282
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 304
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 307
    :cond_0
    iget-object p2, p0, Lcom/metamoji/network/NwWebDAVRequest;->appAuthKey:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 309
    const-string v2, "X-mmj-appcode"

    invoke-virtual {p1, v2, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 312
    :cond_1
    iget-object p2, p0, Lcom/metamoji/network/NwWebDAVRequest;->username:Ljava/lang/String;

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/metamoji/network/NwWebDAVRequest;->password:Ljava/lang/String;

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 313
    :cond_3
    iget-object p2, p0, Lcom/metamoji/network/NwWebDAVRequest;->username:Ljava/lang/String;

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    iget-object v2, p0, Lcom/metamoji/network/NwWebDAVRequest;->password:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    :cond_5
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v4, "UTF_8"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2, v3}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    .line 314
    const-string v2, "Authorization"

    invoke-virtual {p1, v2, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 317
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 318
    invoke-static {}, Lcom/metamoji/network/NwLoggerKt;->getNwLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p2

    new-instance v2, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda6;-><init>(Lokhttp3/Request;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 319
    invoke-static {}, Lcom/metamoji/network/NwLoggerKt;->getNwLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p2

    new-instance v2, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda7;-><init>(Lokhttp3/Request;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 328
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest;->httpClient()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    .line 329
    iput-object p2, p0, Lcom/metamoji/network/NwWebDAVRequest;->_call:Lokhttp3/Call;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 331
    :try_start_3
    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    :try_start_4
    move-object v3, v2

    check-cast v3, Lokhttp3/Response;

    .line 332
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/metamoji/network/NwWebDAVRequest$Result;->setResponseStatusCode(I)V

    .line 333
    invoke-virtual {v3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Headers;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    .line 334
    invoke-virtual {v0}, Lcom/metamoji/network/NwWebDAVRequest$Result;->getResponseHeader()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 336
    :cond_7
    invoke-virtual {v0}, Lcom/metamoji/network/NwWebDAVRequest$Result;->getResponseStatusCode()I

    move-result v4

    const/16 v5, 0x190

    if-ge v4, v5, :cond_c

    .line 337
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    const-string v4, "get"

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 339
    sget-object p1, Lcom/metamoji/network/NwWebDAVRequest;->tempFileCreator:Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;

    if-eqz p1, :cond_9

    .line 340
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_8

    check-cast v3, Ljava/io/Closeable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    move-object v4, v3

    check-cast v4, Lokhttp3/ResponseBody;

    .line 341
    const-string v5, "getResponse"

    invoke-interface {p1, v5, v1}, Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 342
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    move-object v5, v4

    check-cast v5, Ljava/io/InputStream;

    .line 343
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v6, Ljava/io/Closeable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    move-object v7, v6

    check-cast v7, Ljava/io/FileOutputStream;

    .line 344
    check-cast v7, Ljava/io/OutputStream;

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v5, v7, v8, v9, v1}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 345
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 343
    :try_start_8
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 346
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 342
    :try_start_9
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 340
    :try_start_a
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 343
    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_c
    invoke-static {v6, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception p1

    .line 342
    :try_start_d
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_e
    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception p1

    .line 340
    :try_start_f
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v1

    :try_start_10
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    move-object p1, v1

    :goto_3
    invoke-virtual {v0, p1}, Lcom/metamoji/network/NwWebDAVRequest$Result;->setResponseFile(Ljava/io/File;)V

    goto :goto_5

    .line 339
    :cond_9
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "cannot save downloaded data."

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 351
    :cond_a
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_b

    check-cast p1, Ljava/io/Closeable;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :try_start_11
    move-object v3, p1

    check-cast v3, Lokhttp3/ResponseBody;

    .line 352
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 351
    :try_start_12
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto :goto_4

    :catchall_6
    move-exception v1

    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :catchall_7
    move-exception v3

    :try_start_14
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_b
    move-object v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Lcom/metamoji/network/NwWebDAVRequest$Result;->setResponseBytes([B)V

    goto :goto_5

    .line 357
    :cond_c
    invoke-static {}, Lcom/metamoji/network/NwLoggerKt;->getNwLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-virtual {v3}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WebDAV error ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/metamoji/lib/utils/UtLog;->warn(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v3}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/network/NwWebDAVRequest$Result;->setErrorString(Ljava/lang/String;)V

    .line 360
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 331
    :try_start_15
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    goto :goto_7

    :catchall_8
    move-exception p1

    :try_start_16
    throw p1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    :catchall_9
    move-exception v1

    :try_start_17
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    :catchall_a
    move-exception p1

    .line 362
    :try_start_18
    invoke-static {}, Lcom/metamoji/network/NwLoggerKt;->getNwLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    const-string v2, "NwWebDAVRequest.sendRequest error"

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/lib/utils/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Lcom/metamoji/network/NwWebDAVRequest$Result;->getResponseStatusCode()I

    move-result p1

    if-nez p1, :cond_e

    .line 364
    invoke-interface {p2}, Lokhttp3/Call;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0x25a

    goto :goto_6

    :cond_d
    const/16 p1, 0x259

    :goto_6
    invoke-virtual {v0, p1}, Lcom/metamoji/network/NwWebDAVRequest$Result;->setResponseStatusCode(I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 367
    :cond_e
    :goto_7
    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception p1

    .line 289
    :try_start_19
    monitor-exit v0

    throw p1

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    throw p1
.end method

.method static final sendRequest$lambda$6(Lokhttp3/Request;)Ljava/lang/String;
    .locals 2

    .line 318
    invoke-virtual {p0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Method : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final sendRequest$lambda$7(Lokhttp3/Request;)Ljava/lang/String;
    .locals 2

    .line 319
    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URL : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setTempFileCreator(Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;)V
    .locals 1

    sget-object v0, Lcom/metamoji/network/NwWebDAVRequest;->Companion:Lcom/metamoji/network/NwWebDAVRequest$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/network/NwWebDAVRequest$Companion;->setTempFileCreator(Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;)V

    return-void
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 3

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1011
    invoke-virtual {p1}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 1013
    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest;->_lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1014
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/network/NwWebDAVRequest;->_authTrialUrl:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1015
    invoke-static {}, Lcom/metamoji/network/NwLoggerKt;->getNwLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string p2, "NwWebDAVRequest authentication error."

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    monitor-exit v1

    return-object v0

    .line 1018
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest;->_authTrialUrl:Ljava/lang/String;

    .line 1020
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    .line 1022
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest;->username:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest;->password:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "UTF_8"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 1023
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p2

    const-string v0, "Authorization"

    invoke-virtual {p2, v0, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public final cancel()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest;->_call:Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public final createDirectory(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVResult;
    .locals 2

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 410
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 411
    const-string v0, "MKCOL"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 412
    const-string v0, "Content-Type"

    const-string v1, "application/xml"

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 413
    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda10;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/metamoji/network/NwWebDAVRequest;->sendRequest(Lokhttp3/Request$Builder;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/network/NwWebDAVRequest$Result;

    move-result-object p1

    check-cast p1, Lcom/metamoji/network/NwWebDAVResult;

    return-object p1
.end method

.method public final createDirectory(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$ICompleted;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$createDirectory$2;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p0, p1, v2}, Lcom/metamoji/network/NwWebDAVRequest$createDirectory$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest$ICompleted;Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final createDirectoryAsync(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwWebDAVResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 563
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/network/NwWebDAVRequest$createDirectoryAsync$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/metamoji/network/NwWebDAVRequest$createDirectoryAsync$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final delete(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVResult;
    .locals 2

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 401
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 402
    invoke-static {p1, v0, v1, v0}, Lokhttp3/Request$Builder;->delete$default(Lokhttp3/Request$Builder;Lokhttp3/RequestBody;ILjava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 403
    const-string v0, "Content-Type"

    const-string v1, "application/xml"

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 404
    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/metamoji/network/NwWebDAVRequest;->sendRequest(Lokhttp3/Request$Builder;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/network/NwWebDAVRequest$Result;

    move-result-object p1

    check-cast p1, Lcom/metamoji/network/NwWebDAVResult;

    return-object p1
.end method

.method public final delete(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$ICompleted;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$delete$2;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p0, p1, v2}, Lcom/metamoji/network/NwWebDAVRequest$delete$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest$ICompleted;Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final deleteAsync(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwWebDAVResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 560
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/network/NwWebDAVRequest$deleteAsync$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/metamoji/network/NwWebDAVRequest$deleteAsync$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final fetchDirectoryListingWithDepth(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVPropResult;
    .locals 7
    .annotation runtime Lkotlin/Deprecated;
        message = "Use propfind() instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "propfind(url, Depth.fromInt(depth), extra)"
            imports = {
                "com.metamoji.network.NwWebDAVRequest.Depth"
            }
        .end subannotation
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/metamoji/network/NwWebDAVRequest;->fetchDirectoryListingWithDepth$default(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object p1

    return-object p1
.end method

.method public final fetchDirectoryListingWithDepth(Ljava/lang/String;I)Lcom/metamoji/network/NwWebDAVPropResult;
    .locals 7
    .annotation runtime Lkotlin/Deprecated;
        message = "Use propfind() instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "propfind(url, Depth.fromInt(depth), extra)"
            imports = {
                "com.metamoji.network.NwWebDAVRequest.Depth"
            }
        .end subannotation
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/metamoji/network/NwWebDAVRequest;->fetchDirectoryListingWithDepth$default(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object p1

    return-object p1
.end method

.method public final fetchDirectoryListingWithDepth(Ljava/lang/String;ILjava/lang/String;)Lcom/metamoji/network/NwWebDAVPropResult;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use propfind() instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "propfind(url, Depth.fromInt(depth), extra)"
            imports = {
                "com.metamoji.network.NwWebDAVRequest.Depth"
            }
        .end subannotation
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    sget-object v0, Lcom/metamoji/network/NwWebDAVRequest$Depth;->Companion:Lcom/metamoji/network/NwWebDAVRequest$Depth$Companion;

    invoke-virtual {v0, p2}, Lcom/metamoji/network/NwWebDAVRequest$Depth$Companion;->fromInt(I)Lcom/metamoji/network/NwWebDAVRequest$Depth;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/network/NwWebDAVRequest;->propfind(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVFileResult;
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 380
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 381
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 382
    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/metamoji/network/NwWebDAVRequest;->sendRequest(Lokhttp3/Request$Builder;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/network/NwWebDAVRequest$Result;

    move-result-object p1

    check-cast p1, Lcom/metamoji/network/NwWebDAVFileResult;

    return-object p1
.end method

.method public final get(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$IFileCompleted;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$get$2;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p0, p1, v2}, Lcom/metamoji/network/NwWebDAVRequest$get$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest$IFileCompleted;Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final getAppAuthKey()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest;->appAuthKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getAsync(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwWebDAVFileResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 554
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/network/NwWebDAVRequest$getAsync$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/metamoji/network/NwWebDAVRequest$getAsync$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final head(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVHeaderResult;
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 440
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 441
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 442
    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/metamoji/network/NwWebDAVRequest;->sendRequest(Lokhttp3/Request$Builder;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/network/NwWebDAVRequest$Result;

    move-result-object p1

    check-cast p1, Lcom/metamoji/network/NwWebDAVHeaderResult;

    return-object p1
.end method

.method public final head(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$IHeaderCompleted;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$head$2;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p0, p1, v2}, Lcom/metamoji/network/NwWebDAVRequest$head$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest$IHeaderCompleted;Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final headAsync(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwWebDAVHeaderResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 569
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/network/NwWebDAVRequest$headAsync$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/metamoji/network/NwWebDAVRequest$headAsync$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final moveToDestinationURL(Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/network/NwWebDAVResult;
    .locals 3

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 419
    const-string v1, "MOVE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 420
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 421
    const-string v1, "Destination"

    invoke-virtual {v0, v1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 422
    const-string p3, "T"

    goto :goto_0

    :cond_0
    const-string p3, "F"

    :goto_0
    const-string v1, "Overwrite"

    invoke-virtual {v0, v1, p3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    .line 424
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest;->lockTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest;->lockTable:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 427
    const-string v0, ")"

    const-string v1, "("

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 428
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 433
    const-string p1, "If"

    invoke-virtual {p3, p1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 435
    :cond_4
    new-instance p1, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/network/NwWebDAVRequest;->sendRequest(Lokhttp3/Request$Builder;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/network/NwWebDAVRequest$Result;

    move-result-object p1

    check-cast p1, Lcom/metamoji/network/NwWebDAVResult;

    return-object p1
.end method

.method public final moveToDestinationURL(Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/network/NwWebDAVRequest$ICompleted;)Lkotlinx/coroutines/Job;
    .locals 9

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proc"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/metamoji/network/NwWebDAVRequest$moveToDestinationURL$2;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v3, p4

    invoke-direct/range {v2 .. v8}, Lcom/metamoji/network/NwWebDAVRequest$moveToDestinationURL$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest$ICompleted;Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final moveToDestinationURLAsync(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwWebDAVResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 566
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/network/NwWebDAVRequest$moveToDestinationURLAsync$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/network/NwWebDAVRequest$moveToDestinationURLAsync$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final propfind(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVPropResult;
    .locals 7

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/metamoji/network/NwWebDAVRequest;->propfind$default(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object p1

    return-object p1
.end method

.method public final propfind(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;)Lcom/metamoji/network/NwWebDAVPropResult;
    .locals 7

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "depth"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/metamoji/network/NwWebDAVRequest;->propfind$default(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object p1

    return-object p1
.end method

.method public final propfind(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVPropResult;
    .locals 2

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "depth"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 473
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 488
    sget-object v0, Lcom/metamoji/network/NwWebDAVRequest$Depth;->AllDescendants:Lcom/metamoji/network/NwWebDAVRequest$Depth;

    const-string v1, "Depth"

    if-ne p2, v0, :cond_0

    .line 490
    const-string p2, "infinity"

    invoke-virtual {p1, v1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/network/NwWebDAVRequest$Depth;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 494
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<D:propfind xmlns:D=\"DAV:\"><D:allprop/>"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "</D:propfind>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 495
    sget-object p3, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "application/xml; charset=utf-8"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    const-string p3, "PROPFIND"

    invoke-virtual {p1, p3, p2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 496
    new-instance p2, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda8;

    invoke-direct {p2}, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda8;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/metamoji/network/NwWebDAVRequest;->sendRequest(Lokhttp3/Request$Builder;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/network/NwWebDAVRequest$Result;

    move-result-object p1

    .line 497
    new-instance p2, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    check-cast p1, Lcom/metamoji/network/NwWebDAVBytesResult;

    invoke-direct {p2, p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;-><init>(Lcom/metamoji/network/NwWebDAVBytesResult;)V

    check-cast p2, Lcom/metamoji/network/NwWebDAVPropResult;

    return-object p2
.end method

.method public final propfind(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;)Lkotlinx/coroutines/Job;
    .locals 8

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "depth"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/metamoji/network/NwWebDAVRequest$propfind$2;

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v3, p3

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/network/NwWebDAVRequest$propfind$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final propfind(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;)Lkotlinx/coroutines/Job;
    .locals 9

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "depth"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proc"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/metamoji/network/NwWebDAVRequest$propfind$1;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v3, p4

    invoke-direct/range {v2 .. v8}, Lcom/metamoji/network/NwWebDAVRequest$propfind$1;-><init>(Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final propfind(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$propfind$3;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p0, p1, v2}, Lcom/metamoji/network/NwWebDAVRequest$propfind$3;-><init>(Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final propfindAsync(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/network/NwWebDAVRequest$Depth;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwWebDAVPropResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 572
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/network/NwWebDAVRequest$propfindAsync$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/network/NwWebDAVRequest$propfindAsync$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final proppatch(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lcom/metamoji/network/NwWebDAVPropResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/network/NwWebDAVPropResult;"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "setProperties"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeProperties"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "<V:"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 506
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, ""

    .line 507
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</V:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 509
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, "/>"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 512
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "toString(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/network/NwWebDAVRequest;->proppatchWithString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object p1

    return-object p1
.end method

.method public final proppatch(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;)Lkotlinx/coroutines/Job;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;",
            ")",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "setProperties"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeProperties"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proc"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v3, p4

    invoke-direct/range {v2 .. v8}, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;-><init>(Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final proppatchAsync(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwWebDAVPropResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 577
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/network/NwWebDAVRequest$proppatchAsync$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/network/NwWebDAVRequest$proppatchAsync$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final put(Ljava/lang/String;Ljava/io/File;)Lcom/metamoji/network/NwWebDAVResult;
    .locals 4

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 387
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 388
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p2, v2, v3, v2}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;Ljava/io/File;Lokhttp3/MediaType;ILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 389
    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    invoke-virtual {p2, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 391
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest;->lockTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 394
    const-string v0, "If"

    invoke-virtual {p2, v0, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 396
    :cond_0
    new-instance p1, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/metamoji/network/NwWebDAVRequest$$ExternalSyntheticLambda9;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/metamoji/network/NwWebDAVRequest;->sendRequest(Lokhttp3/Request$Builder;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/network/NwWebDAVRequest$Result;

    move-result-object p1

    check-cast p1, Lcom/metamoji/network/NwWebDAVResult;

    return-object p1
.end method

.method public final put(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/network/NwWebDAVRequest$ICompleted;)Lkotlinx/coroutines/Job;
    .locals 8

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/metamoji/network/NwWebDAVRequest$put$2;

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v3, p3

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/network/NwWebDAVRequest$put$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest$ICompleted;Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final putAsync(Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwWebDAVResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 557
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/network/NwWebDAVRequest$putAsync$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/metamoji/network/NwWebDAVRequest$putAsync$2;-><init>(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setAppAuthKey(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest;->appAuthKey:Ljava/lang/String;

    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest;->password:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest;->password:Ljava/lang/String;

    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest;->_httpClient:Lokhttp3/OkHttpClient;

    .line 240
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest;->_authTrialUrl:Ljava/lang/String;

    .line 242
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest;->username:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest;->username:Ljava/lang/String;

    const/4 p1, 0x0

    .line 228
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest;->_httpClient:Lokhttp3/OkHttpClient;

    .line 229
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest;->_authTrialUrl:Ljava/lang/String;

    .line 231
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
