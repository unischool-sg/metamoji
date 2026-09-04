.class public final Lcom/metamoji/li/driver/LoginError$Companion;
.super Ljava/lang/Object;
.source "LoginError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/li/driver/LoginError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u001e\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/li/driver/LoginError$Companion;",
        "",
        "<init>",
        "()V",
        "errorWithResponse",
        "Lcom/metamoji/li/driver/LoginError;",
        "response",
        "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
        "defaultErrorMessage",
        "",
        "Lkotlin/Function0;",
        "app"
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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/li/driver/LoginError$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final errorWithResponse(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/String;)Lcom/metamoji/li/driver/LoginError;
    .locals 2

    const-string v0, "defaultErrorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 43
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance p2, Lcom/metamoji/li/driver/LoginError;

    invoke-direct {p2, p1}, Lcom/metamoji/li/driver/LoginError;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-object p2

    .line 44
    :cond_1
    :goto_0
    new-instance p1, Lcom/metamoji/li/driver/LoginError;

    invoke-direct {p1, p2}, Lcom/metamoji/li/driver/LoginError;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final errorWithResponse(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lkotlin/jvm/functions/Function0;)Lcom/metamoji/li/driver/LoginError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/li/driver/LoginError;"
        }
    .end annotation

    const-string v0, "defaultErrorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 50
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p2, Lcom/metamoji/li/driver/LoginError;

    invoke-direct {p2, p1}, Lcom/metamoji/li/driver/LoginError;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-object p2

    .line 51
    :cond_1
    :goto_0
    new-instance p1, Lcom/metamoji/li/driver/LoginError;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/metamoji/li/driver/LoginError;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
