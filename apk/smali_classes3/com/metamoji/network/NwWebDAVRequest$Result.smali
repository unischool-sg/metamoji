.class final Lcom/metamoji/network/NwWebDAVRequest$Result;
.super Ljava/lang/Object;
.source "NwWebDAVRequest.kt"

# interfaces
.implements Lcom/metamoji/network/NwWebDAVFileResult;
.implements Lcom/metamoji/network/NwWebDAVBytesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/network/NwWebDAVRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/network/NwWebDAVRequest$Result$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0015\u0008\u0002\u0018\u0000 -2\u00020\u00012\u00020\u0002:\u0001-B,\u0012#\u0008\u0002\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bR,\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u000cR \u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u000fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0016\u0010#\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010 R\u001a\u0010%\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0014\u0010*\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0014\u0010,\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010+\u00a8\u0006."
    }
    d2 = {
        "Lcom/metamoji/network/NwWebDAVRequest$Result;",
        "Lcom/metamoji/network/NwWebDAVFileResult;",
        "Lcom/metamoji/network/NwWebDAVBytesResult;",
        "isSuccessfulStatus",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "status",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "()Lkotlin/jvm/functions/Function1;",
        "responseHeader",
        "",
        "",
        "getResponseHeader",
        "()Ljava/util/Map;",
        "responseFile",
        "Ljava/io/File;",
        "getResponseFile",
        "()Ljava/io/File;",
        "setResponseFile",
        "(Ljava/io/File;)V",
        "responseBytes",
        "",
        "getResponseBytes",
        "()[B",
        "setResponseBytes",
        "([B)V",
        "errorString",
        "getErrorString",
        "()Ljava/lang/String;",
        "setErrorString",
        "(Ljava/lang/String;)V",
        "responseString",
        "getResponseString",
        "responseStatusCode",
        "getResponseStatusCode",
        "()I",
        "setResponseStatusCode",
        "(I)V",
        "isSuccessful",
        "()Z",
        "isCancelled",
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
.field public static final Companion:Lcom/metamoji/network/NwWebDAVRequest$Result$Companion;

.field private static final ERROR$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/metamoji/network/NwWebDAVRequest$Result;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorString:Ljava/lang/String;

.field private final isSuccessfulStatus:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private responseBytes:[B

.field private responseFile:Ljava/io/File;

.field private final responseHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$Result$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest$Result$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/network/NwWebDAVRequest$Result;->Companion:Lcom/metamoji/network/NwWebDAVRequest$Result$Companion;

    .line 271
    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$Result$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/metamoji/network/NwWebDAVRequest$Result$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/metamoji/network/NwWebDAVRequest$Result;->ERROR$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/metamoji/network/NwWebDAVRequest$Result;-><init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "isSuccessfulStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$Result;->isSuccessfulStatus:Lkotlin/jvm/functions/Function1;

    .line 251
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$Result;->responseHeader:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 250
    new-instance p1, Lcom/metamoji/network/NwWebDAVRequest$Result$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/metamoji/network/NwWebDAVRequest$Result$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest$Result;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final ERROR_delegate$lambda$3()Lcom/metamoji/network/NwWebDAVRequest$Result;
    .locals 2

    .line 272
    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$Result;

    new-instance v1, Lcom/metamoji/network/NwWebDAVRequest$Result$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/metamoji/network/NwWebDAVRequest$Result$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest$Result;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/16 v1, 0x259

    .line 273
    invoke-virtual {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest$Result;->setResponseStatusCode(I)V

    return-object v0
.end method

.method static final ERROR_delegate$lambda$3$lambda$1(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static final _init_$lambda$0(I)Z
    .locals 1

    const/16 v0, 0x190

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final synthetic access$getERROR$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 250
    sget-object v0, Lcom/metamoji/network/NwWebDAVRequest$Result;->ERROR$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public getErrorString()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$Result;->errorString:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseBytes()[B
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$Result;->responseBytes:[B

    return-object v0
.end method

.method public getResponseFile()Ljava/io/File;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$Result;->responseFile:Ljava/io/File;

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

    .line 251
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$Result;->responseHeader:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseStatusCode()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/metamoji/network/NwWebDAVRequest$Result;->responseStatusCode:I

    return v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 3

    .line 260
    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$Result;->getResponseBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 268
    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$Result;->getResponseStatusCode()I

    move-result v0

    const/16 v1, 0x25a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSuccessful()Z
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$Result;->isSuccessfulStatus:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$Result;->getResponseStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isSuccessfulStatus()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$Result;->isSuccessfulStatus:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public setErrorString(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$Result;->errorString:Ljava/lang/String;

    return-void
.end method

.method public setResponseBytes([B)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$Result;->responseBytes:[B

    return-void
.end method

.method public setResponseFile(Ljava/io/File;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$Result;->responseFile:Ljava/io/File;

    return-void
.end method

.method public setResponseStatusCode(I)V
    .locals 0

    .line 262
    iput p1, p0, Lcom/metamoji/network/NwWebDAVRequest$Result;->responseStatusCode:I

    return-void
.end method
