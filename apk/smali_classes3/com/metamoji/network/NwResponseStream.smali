.class public final Lcom/metamoji/network/NwResponseStream;
.super Ljava/io/InputStream;
.source "NwHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/network/NwResponseStream$Companion;,
        Lcom/metamoji/network/NwResponseStream$IResponseCheck;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0006\u0018\u0000 \u00192\u00020\u0001:\u0002\u0018\u0019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0010H\u0016J\u0008\u0010\u0017\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/network/NwResponseStream;",
        "Ljava/io/InputStream;",
        "response",
        "Lokhttp3/Response;",
        "<init>",
        "(Lokhttp3/Response;)V",
        "getResponse",
        "()Lokhttp3/Response;",
        "body",
        "Lokhttp3/ResponseBody;",
        "getBody",
        "()Lokhttp3/ResponseBody;",
        "stream",
        "getStream",
        "()Ljava/io/InputStream;",
        "read",
        "",
        "close",
        "",
        "sink",
        "",
        "offset",
        "byteCount",
        "available",
        "IResponseCheck",
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
.field public static final Companion:Lcom/metamoji/network/NwResponseStream$Companion;

.field private static final status200Checker:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lokhttp3/Response;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final successfulChecker:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lokhttp3/Response;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final body:Lokhttp3/ResponseBody;

.field private final response:Lokhttp3/Response;

.field private final stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/network/NwResponseStream$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/network/NwResponseStream$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/network/NwResponseStream;->Companion:Lcom/metamoji/network/NwResponseStream$Companion;

    .line 814
    new-instance v0, Lcom/metamoji/network/NwResponseStream$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/network/NwResponseStream$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/metamoji/network/NwResponseStream;->successfulChecker:Lkotlin/jvm/functions/Function1;

    .line 817
    new-instance v0, Lcom/metamoji/network/NwResponseStream$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/metamoji/network/NwResponseStream$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/metamoji/network/NwResponseStream;->status200Checker:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/metamoji/network/NwResponseStream;->response:Lokhttp3/Response;

    .line 758
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/network/NwResponseStream;->body:Lokhttp3/ResponseBody;

    .line 759
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/network/NwResponseStream;->stream:Ljava/io/InputStream;

    return-void
.end method

.method public static final synthetic access$getStatus200Checker$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 757
    sget-object v0, Lcom/metamoji/network/NwResponseStream;->status200Checker:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getSuccessfulChecker$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 757
    sget-object v0, Lcom/metamoji/network/NwResponseStream;->successfulChecker:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final create(Lokhttp3/Response;)Lcom/metamoji/network/NwResponseStream;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/network/NwResponseStream;->Companion:Lcom/metamoji/network/NwResponseStream$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/network/NwResponseStream$Companion;->create(Lokhttp3/Response;)Lcom/metamoji/network/NwResponseStream;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lokhttp3/Response;Lcom/metamoji/network/NwResponseStream$IResponseCheck;)Lcom/metamoji/network/NwResponseStream;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/network/NwResponseStream;->Companion:Lcom/metamoji/network/NwResponseStream$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/network/NwResponseStream$Companion;->create(Lokhttp3/Response;Lcom/metamoji/network/NwResponseStream$IResponseCheck;)Lcom/metamoji/network/NwResponseStream;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/network/NwResponseStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Response;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/metamoji/network/NwResponseStream;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/network/NwResponseStream;->Companion:Lcom/metamoji/network/NwResponseStream$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/network/NwResponseStream$Companion;->create(Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/network/NwResponseStream;

    move-result-object p0

    return-object p0
.end method

.method public static final createIfStatus200(Lokhttp3/Response;)Lcom/metamoji/network/NwResponseStream;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/network/NwResponseStream;->Companion:Lcom/metamoji/network/NwResponseStream$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/network/NwResponseStream$Companion;->createIfStatus200(Lokhttp3/Response;)Lcom/metamoji/network/NwResponseStream;

    move-result-object p0

    return-object p0
.end method

.method public static final createIfSuccessful(Lokhttp3/Response;)Lcom/metamoji/network/NwResponseStream;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/network/NwResponseStream;->Companion:Lcom/metamoji/network/NwResponseStream$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/network/NwResponseStream$Companion;->createIfSuccessful(Lokhttp3/Response;)Lcom/metamoji/network/NwResponseStream;

    move-result-object p0

    return-object p0
.end method

.method static final status200Checker$lambda$1(Lokhttp3/Response;)Z
    .locals 1

    const-string v0, "r"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static final successfulChecker$lambda$0(Lokhttp3/Response;)Z
    .locals 1

    const-string v0, "r"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/metamoji/network/NwResponseStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 766
    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 767
    iget-object v0, p0, Lcom/metamoji/network/NwResponseStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 768
    iget-object v0, p0, Lcom/metamoji/network/NwResponseStream;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 769
    iget-object v0, p0, Lcom/metamoji/network/NwResponseStream;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final getBody()Lokhttp3/ResponseBody;
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/metamoji/network/NwResponseStream;->body:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method public final getResponse()Lokhttp3/Response;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/metamoji/network/NwResponseStream;->response:Lokhttp3/Response;

    return-object v0
.end method

.method public final getStream()Ljava/io/InputStream;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/metamoji/network/NwResponseStream;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public read()I
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/metamoji/network/NwResponseStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/metamoji/network/NwResponseStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method
