.class final Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$4;
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

.field final synthetic this$0:Lcom/metamoji/li/driver/LoginDriver;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/li/driver/LoginDriver;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$4;->$resultBase:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iput-object p2, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$4;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/metamoji/li/driver/LoginError;
    .locals 3

    .line 246
    sget-object v0, Lcom/metamoji/li/driver/LoginError;->Companion:Lcom/metamoji/li/driver/LoginError$Companion;

    iget-object v1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$4;->$resultBase:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iget-object v2, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$4;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    invoke-virtual {v2}, Lcom/metamoji/li/driver/LoginDriver;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/li/driver/LoginError$Companion;->errorWithResponse(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/String;)Lcom/metamoji/li/driver/LoginError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$4;->invoke()Lcom/metamoji/li/driver/LoginError;

    move-result-object v0

    return-object v0
.end method
