.class public final Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "NwWebDAVRequest.kt"

# interfaces
.implements Lcom/metamoji/network/NwWebDAVPropResult;
.implements Lcom/metamoji/network/NwWebDAVBytesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/network/NwWebDAVRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DAVPropParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$Companion;,
        Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$InnerParser;,
        Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$ListingMode;,
        Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;,
        Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0019\n\u0002\u0008\u001b\u0018\u0000 \\2\u00020\u00012\u00020\u00022\u00020\u0003:\u0005XYZ[\\B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u00103\u001a\u000204H\u0002J\u0008\u00105\u001a\u000204H\u0002J\u0010\u00106\u001a\u0002042\u0006\u00107\u001a\u000208H\u0002J0\u00109\u001a\u0002042\u0008\u0010:\u001a\u0004\u0018\u00010\u000b2\u0008\u0010;\u001a\u0004\u0018\u00010\u000b2\u0008\u0010<\u001a\u0004\u0018\u00010\u000b2\u0008\u0010=\u001a\u0004\u0018\u00010>H\u0016J$\u0010?\u001a\u0002042\u0008\u0010:\u001a\u0004\u0018\u00010\u000b2\u0006\u0010;\u001a\u00020\u000b2\u0008\u0010<\u001a\u0004\u0018\u00010\u000bH\u0016J\"\u0010@\u001a\u0002042\u0008\u0010A\u001a\u0004\u0018\u00010B2\u0006\u0010C\u001a\u00020\u00112\u0006\u0010D\u001a\u00020\u0011H\u0016J$\u0010E\u001a\u00020\u00142\u0008\u0010F\u001a\u0004\u0018\u00010\u000b2\u0008\u0010:\u001a\u0004\u0018\u00010\u000b2\u0006\u0010;\u001a\u00020\u000bH\u0002J\u0012\u0010G\u001a\u00020\u00142\u0008\u0010:\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010H\u001a\u00020\u00142\u0008\u0010:\u001a\u0004\u0018\u00010\u000bH\u0002R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R,\u0010\t\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n0\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR,\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n0\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\rR,\u0010\u0010\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00110\n0\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\rR\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0015R\u001f\u0010\u001a\u001a\u00060\u001bj\u0002`\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001d\u0010\u001eR\u001c\u0010!\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0011\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R3\u0010%\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00110\n0\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010 \u001a\u0004\u0008&\u0010\rR3\u0010(\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\"0\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010 \u001a\u0004\u0008)\u0010\rR3\u0010+\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\"0\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010 \u001a\u0004\u0008,\u0010\rR\u000e\u0010.\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010I\u001a\u0004\u0018\u00010\u000bX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010KR\u0012\u0010L\u001a\u00020\u0014X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010\u0015R\u0012\u0010M\u001a\u00020\u0014X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010\u0015R\u0014\u0010N\u001a\u0004\u0018\u000108X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010PR\u001e\u0010Q\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\nX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008R\u0010\rR\u0012\u0010S\u001a\u00020\u0011X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010UR\u0014\u0010V\u001a\u0004\u0018\u00010\u000bX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010K\u00a8\u0006]"
    }
    d2 = {
        "Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;",
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/metamoji/network/NwWebDAVPropResult;",
        "Lcom/metamoji/network/NwWebDAVBytesResult;",
        "result",
        "<init>",
        "(Lcom/metamoji/network/NwWebDAVBytesResult;)V",
        "getResult",
        "()Lcom/metamoji/network/NwWebDAVBytesResult;",
        "liveProperties",
        "",
        "",
        "getLiveProperties",
        "()Ljava/util/Map;",
        "deadProperties",
        "getDeadProperties",
        "multiResponses",
        "",
        "getMultiResponses",
        "isValidMultiResponse",
        "",
        "()Z",
        "hrefs",
        "",
        "getItemTree",
        "Lcom/metamoji/network/NwWebDAVItem;",
        "_xmlChars",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "get_xmlChars",
        "()Ljava/lang/StringBuilder;",
        "_xmlChars$delegate",
        "Lkotlin/Lazy;",
        "_livePropBucket",
        "",
        "_deadPropBucket",
        "_proppatchResponsesBucket",
        "_multiResponses",
        "get_multiResponses",
        "_multiResponses$delegate",
        "_liveProperties",
        "get_liveProperties",
        "_liveProperties$delegate",
        "_deadProperties",
        "get_deadProperties",
        "_deadProperties$delegate",
        "_insidePropDepth",
        "_proppatchStatKeyName",
        "_innerParser",
        "Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$InnerParser;",
        "_completedFlags",
        "propertiesListing",
        "",
        "proppatchResponseListing",
        "parseXml",
        "xml",
        "",
        "startElement",
        "namespaceURI",
        "elementName",
        "qName",
        "attributes",
        "Lorg/xml/sax/Attributes;",
        "endElement",
        "characters",
        "ch",
        "",
        "start",
        "length",
        "isDAVElement",
        "element",
        "isDAVNamespaceURI",
        "isMetaMoJiPropNamespaceURI",
        "errorString",
        "getErrorString",
        "()Ljava/lang/String;",
        "isCancelled",
        "isSuccessful",
        "responseBytes",
        "getResponseBytes",
        "()[B",
        "responseHeader",
        "getResponseHeader",
        "responseStatusCode",
        "getResponseStatusCode",
        "()I",
        "responseString",
        "getResponseString",
        "ListingMode",
        "InnerParser",
        "PropertiesParser",
        "PropPatchResponseParser",
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
.field public static final Companion:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$Companion;

.field private static final ERROR$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;",
            ">;"
        }
    .end annotation
.end field

.field public static final ModeDIRECTORIES:I = 0x1

.field public static final ModeNONE:I = 0x0

.field public static final ModePATCH_RESPONSE:I = 0x4

.field public static final ModePROPERTIES:I = 0x2


# instance fields
.field private _completedFlags:I

.field private _deadPropBucket:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _deadProperties$delegate:Lkotlin/Lazy;

.field private _innerParser:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$InnerParser;

.field private _insidePropDepth:I

.field private _livePropBucket:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _liveProperties$delegate:Lkotlin/Lazy;

.field private final _multiResponses$delegate:Lkotlin/Lazy;

.field private _proppatchResponsesBucket:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _proppatchStatKeyName:Ljava/lang/String;

.field private final _xmlChars$delegate:Lkotlin/Lazy;

.field private final result:Lcom/metamoji/network/NwWebDAVBytesResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->Companion:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$Companion;

    .line 992
    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->ERROR$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/network/NwWebDAVBytesResult;)V
    .locals 1

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->result:Lcom/metamoji/network/NwWebDAVBytesResult;

    .line 659
    new-instance p1, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_xmlChars$delegate:Lkotlin/Lazy;

    .line 665
    new-instance p1, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_multiResponses$delegate:Lkotlin/Lazy;

    .line 666
    new-instance p1, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_liveProperties$delegate:Lkotlin/Lazy;

    .line 667
    new-instance p1, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_deadProperties$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final ERROR_delegate$lambda$8()Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;
    .locals 2

    .line 993
    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    sget-object v1, Lcom/metamoji/network/NwWebDAVRequest$Result;->Companion:Lcom/metamoji/network/NwWebDAVRequest$Result$Companion;

    invoke-virtual {v1}, Lcom/metamoji/network/NwWebDAVRequest$Result$Companion;->getERROR()Lcom/metamoji/network/NwWebDAVRequest$Result;

    move-result-object v1

    check-cast v1, Lcom/metamoji/network/NwWebDAVBytesResult;

    invoke-direct {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;-><init>(Lcom/metamoji/network/NwWebDAVBytesResult;)V

    return-object v0
.end method

.method static final _deadProperties_delegate$lambda$3()Ljava/util/Map;
    .locals 1

    .line 667
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static final _liveProperties_delegate$lambda$2()Ljava/util/Map;
    .locals 1

    .line 666
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static final _multiResponses_delegate$lambda$1()Ljava/util/Map;
    .locals 1

    .line 665
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static final _xmlChars_delegate$lambda$0()Ljava/lang/StringBuilder;
    .locals 1

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method

.method public static final synthetic access$getERROR$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 592
    sget-object v0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->ERROR$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$get_deadPropBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_deadPropBucket:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$get_deadProperties(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;
    .locals 0

    .line 592
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->get_deadProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)I
    .locals 0

    .line 592
    iget p0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_insidePropDepth:I

    return p0
.end method

.method public static final synthetic access$get_livePropBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_livePropBucket:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$get_liveProperties(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;
    .locals 0

    .line 592
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->get_liveProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_multiResponses(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;
    .locals 0

    .line 592
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->get_multiResponses()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_proppatchResponsesBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_proppatchResponsesBucket:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$get_xmlChars(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/lang/StringBuilder;
    .locals 0

    .line 592
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->get_xmlChars()Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isDAVElement(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 592
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->isDAVElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isDAVNamespaceURI(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;)Z
    .locals 0

    .line 592
    invoke-direct {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->isDAVNamespaceURI(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isMetaMoJiPropNamespaceURI(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;)Z
    .locals 0

    .line 592
    invoke-direct {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->isMetaMoJiPropNamespaceURI(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$set_deadPropBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/util/Map;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_deadPropBucket:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$set_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;I)V
    .locals 0

    .line 592
    iput p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_insidePropDepth:I

    return-void
.end method

.method public static final synthetic access$set_livePropBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/util/Map;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_livePropBucket:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$set_proppatchResponsesBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/util/Map;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_proppatchResponsesBucket:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$set_proppatchStatKeyName$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_proppatchStatKeyName:Ljava/lang/String;

    return-void
.end method

.method private final get_deadProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_deadProperties$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final get_liveProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_liveProperties$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final get_multiResponses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_multiResponses$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final get_xmlChars()Ljava/lang/StringBuilder;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_xmlChars$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private final isDAVElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 976
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 978
    const-string p1, "DAV:"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final isDAVNamespaceURI(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 982
    const-string v0, "DAV:"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final isMetaMoJiPropNamespaceURI(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 986
    const-string v0, "http://xmlns.metamoji.com/digitalcabinet/tinydotnote/1.0/"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final parseXml([B)V
    .locals 5

    .line 730
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 731
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 732
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object p1, v1

    check-cast p1, Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    :try_start_1
    const-string v2, "gzip"

    iget-object v3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->result:Lcom/metamoji/network/NwWebDAVBytesResult;

    invoke-interface {v3}, Lcom/metamoji/network/NwWebDAVBytesResult;->getResponseHeader()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Content-Encoding"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {v3, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v3, Ljava/io/InputStream;

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 737
    :cond_0
    new-instance v2, Lorg/xml/sax/InputSource;

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 739
    :goto_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    .line 740
    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    .line 741
    move-object v0, p0

    check-cast v0, Lorg/xml/sax/ContentHandler;

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 742
    invoke-interface {p1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 744
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/metamoji/network/NwLoggerKt;->getNwLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string v0, "Unable to parse xml."

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 746
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x0

    .line 732
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final propertiesListing()V
    .locals 11

    .line 679
    iget v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_completedFlags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    or-int/2addr v0, v2

    .line 682
    iput v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_completedFlags:I

    .line 683
    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;

    invoke-direct {v0, p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;-><init>(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)V

    check-cast v0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$InnerParser;

    iput-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_innerParser:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$InnerParser;

    const/4 v0, 0x0

    .line 684
    iput v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_insidePropDepth:I

    .line 685
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->get_deadProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 686
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->get_liveProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 688
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->result:Lcom/metamoji/network/NwWebDAVBytesResult;

    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVBytesResult;->getResponseBytes()[B

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 689
    :cond_1
    invoke-direct {p0, v0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->parseXml([B)V

    .line 692
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->get_deadProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 693
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 694
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->get_deadProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 696
    const-string v2, "create"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 697
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/16 v6, 0x2c

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_3

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v5, 0x2c

    const/16 v6, 0x2e

    const/4 v7, 0x0

    .line 698
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_3
    const-string v2, "lastSyncedRevision"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 702
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/16 v6, 0x2c

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_4

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v5, 0x2c

    const/16 v6, 0x2e

    const/4 v7, 0x0

    .line 703
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    :cond_4
    const-string/jumbo v2, "syncUpdate"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 707
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/16 v6, 0x2c

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v5, 0x2c

    const/16 v6, 0x2e

    const/4 v7, 0x0

    .line 708
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method private final proppatchResponseListing()V
    .locals 3

    .line 716
    iget v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_completedFlags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    or-int/2addr v0, v2

    .line 719
    iput v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_completedFlags:I

    .line 720
    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;

    invoke-direct {v0, p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;-><init>(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)V

    check-cast v0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$InnerParser;

    iput-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_innerParser:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$InnerParser;

    const/4 v0, 0x0

    .line 721
    iput-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_proppatchStatKeyName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 722
    iput v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_insidePropDepth:I

    .line 723
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->get_multiResponses()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 724
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->result:Lcom/metamoji/network/NwWebDAVBytesResult;

    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVBytesResult;->getResponseBytes()[B

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 725
    :cond_1
    invoke-direct {p0, v0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->parseXml([B)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 968
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->get_xmlChars()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "elementName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_innerParser:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$InnerParser;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$InnerParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getDeadProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 605
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->propertiesListing()V

    .line 606
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->get_deadProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->result:Lcom/metamoji/network/NwWebDAVBytesResult;

    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVBytesResult;->getErrorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemTree()Lcom/metamoji/network/NwWebDAVItem;
    .locals 3

    .line 642
    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->isValidMultiResponse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    sget-object v0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->Companion:Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;

    invoke-virtual {v0}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;->getINVALID()Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    move-result-object v0

    check-cast v0, Lcom/metamoji/network/NwWebDAVItem;

    return-object v0

    .line 645
    :cond_0
    sget-object v0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->Companion:Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;

    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->getLiveProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->getDeadProperties()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;->createTree(Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    move-result-object v0

    check-cast v0, Lcom/metamoji/network/NwWebDAVItem;

    return-object v0
.end method

.method public getLiveProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 599
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->propertiesListing()V

    .line 600
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->get_liveProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMultiResponses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 611
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->proppatchResponseListing()V

    .line 612
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->get_multiResponses()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->result:Lcom/metamoji/network/NwWebDAVBytesResult;

    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVBytesResult;->getResponseBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->result:Lcom/metamoji/network/NwWebDAVBytesResult;

    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVBytesResult;->getResponseHeader()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStatusCode()I
    .locals 1

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->result:Lcom/metamoji/network/NwWebDAVBytesResult;

    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVBytesResult;->getResponseStatusCode()I

    move-result v0

    return v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->result:Lcom/metamoji/network/NwWebDAVBytesResult;

    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVBytesResult;->getResponseString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResult()Lcom/metamoji/network/NwWebDAVBytesResult;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->result:Lcom/metamoji/network/NwWebDAVBytesResult;

    return-object v0
.end method

.method public hrefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 635
    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->getLiveProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->result:Lcom/metamoji/network/NwWebDAVBytesResult;

    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVBytesResult;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->result:Lcom/metamoji/network/NwWebDAVBytesResult;

    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVBytesResult;->isSuccessful()Z

    move-result v0

    return v0
.end method

.method public isValidMultiResponse()Z
    .locals 5

    .line 617
    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->getResponseStatusCode()I

    move-result v0

    const/16 v1, 0xcf

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->getMultiResponses()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 621
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 622
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_2

    const/16 v4, 0xc9

    if-eq v3, v4, :cond_2

    const/16 v4, 0xcc

    if-eq v3, v4, :cond_2

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .line 958
    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->get_xmlChars()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 959
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->_innerParser:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$InnerParser;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$InnerParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_0
    return-void
.end method
