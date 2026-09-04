.class public final Lcom/metamoji/network/NwResponseStream$Companion;
.super Ljava/lang/Object;
.source "NwHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/network/NwResponseStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J&\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\tH\u0007J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000bH\u0007J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007R#\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u0003\u001a\u0004\u0008\u000e\u0010\u000fR#\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\u0003\u001a\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/network/NwResponseStream$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/network/NwResponseStream;",
        "response",
        "Lokhttp3/Response;",
        "check",
        "Lkotlin/Function1;",
        "",
        "Lcom/metamoji/network/NwResponseStream$IResponseCheck;",
        "successfulChecker",
        "getSuccessfulChecker$annotations",
        "getSuccessfulChecker",
        "()Lkotlin/jvm/functions/Function1;",
        "status200Checker",
        "getStatus200Checker$annotations",
        "getStatus200Checker",
        "createIfSuccessful",
        "createIfStatus200",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/network/NwResponseStream$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getStatus200Checker$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSuccessfulChecker$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final create(Lokhttp3/Response;)Lcom/metamoji/network/NwResponseStream;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    new-instance v0, Lcom/metamoji/network/NwResponseStream;

    invoke-direct {v0, p1}, Lcom/metamoji/network/NwResponseStream;-><init>(Lokhttp3/Response;)V

    return-object v0
.end method

.method public final create(Lokhttp3/Response;Lcom/metamoji/network/NwResponseStream$IResponseCheck;)Lcom/metamoji/network/NwResponseStream;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "check"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 810
    invoke-interface {p2, p1}, Lcom/metamoji/network/NwResponseStream$IResponseCheck;->check(Lokhttp3/Response;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/metamoji/network/NwResponseStream$Companion;->create(Lokhttp3/Response;)Lcom/metamoji/network/NwResponseStream;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final create(Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/network/NwResponseStream;
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

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "check"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/metamoji/network/NwResponseStream$Companion;->create(Lokhttp3/Response;)Lcom/metamoji/network/NwResponseStream;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final createIfStatus200(Lokhttp3/Response;)Lcom/metamoji/network/NwResponseStream;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    invoke-virtual {p0}, Lcom/metamoji/network/NwResponseStream$Companion;->getStatus200Checker()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/network/NwResponseStream$Companion;->create(Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/network/NwResponseStream;

    move-result-object p1

    return-object p1
.end method

.method public final createIfSuccessful(Lokhttp3/Response;)Lcom/metamoji/network/NwResponseStream;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0}, Lcom/metamoji/network/NwResponseStream$Companion;->getSuccessfulChecker()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/network/NwResponseStream$Companion;->create(Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/network/NwResponseStream;

    move-result-object p1

    return-object p1
.end method

.method public final getStatus200Checker()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lokhttp3/Response;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 816
    invoke-static {}, Lcom/metamoji/network/NwResponseStream;->access$getStatus200Checker$cp()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public final getSuccessfulChecker()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lokhttp3/Response;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 813
    invoke-static {}, Lcom/metamoji/network/NwResponseStream;->access$getSuccessfulChecker$cp()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method
