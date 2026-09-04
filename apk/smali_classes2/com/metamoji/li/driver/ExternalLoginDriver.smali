.class public final Lcom/metamoji/li/driver/ExternalLoginDriver;
.super Lcom/metamoji/li/driver/LoginDriver;
.source "ExternalLoginDriver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0094@\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/li/driver/ExternalLoginDriver;",
        "Lcom/metamoji/li/driver/LoginDriver;",
        "credential",
        "Lcom/metamoji/cs/dc/params/CsGetCredentialParam;",
        "<init>",
        "(Lcom/metamoji/cs/dc/params/CsGetCredentialParam;)V",
        "getCredential",
        "()Lcom/metamoji/cs/dc/params/CsGetCredentialParam;",
        "loginProc",
        "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# instance fields
.field private final credential:Lcom/metamoji/cs/dc/params/CsGetCredentialParam;


# direct methods
.method public constructor <init>(Lcom/metamoji/cs/dc/params/CsGetCredentialParam;)V
    .locals 1

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/metamoji/li/model/LoginParams;->Companion:Lcom/metamoji/li/model/LoginParams$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginParams$Companion;->getEmpty()Lcom/metamoji/li/model/LoginParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/li/driver/LoginDriver;-><init>(Lcom/metamoji/li/model/LoginParams;)V

    iput-object p1, p0, Lcom/metamoji/li/driver/ExternalLoginDriver;->credential:Lcom/metamoji/cs/dc/params/CsGetCredentialParam;

    return-void
.end method


# virtual methods
.method public final getCredential()Lcom/metamoji/cs/dc/params/CsGetCredentialParam;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/metamoji/li/driver/ExternalLoginDriver;->credential:Lcom/metamoji/cs/dc/params/CsGetCredentialParam;

    return-object v0
.end method

.method protected loginProc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/li/driver/ExternalLoginDriver$loginProc$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/metamoji/li/driver/ExternalLoginDriver$loginProc$2;-><init>(Lcom/metamoji/li/driver/ExternalLoginDriver;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
