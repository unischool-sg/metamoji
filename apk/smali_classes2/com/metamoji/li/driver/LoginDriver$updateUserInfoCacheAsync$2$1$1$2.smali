.class final Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$2;
.super Ljava/lang/Object;
.source "LoginDriver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/metamoji/li/driver/LoginError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $resultBase:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$2;->$resultBase:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/metamoji/li/driver/LoginError;
    .locals 2

    .line 231
    new-instance v0, Lcom/metamoji/li/driver/LoginError;

    iget-object v1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$2;->$resultBase:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-direct {v0, v1}, Lcom/metamoji/li/driver/LoginError;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$2;->invoke()Lcom/metamoji/li/driver/LoginError;

    move-result-object v0

    return-object v0
.end method
