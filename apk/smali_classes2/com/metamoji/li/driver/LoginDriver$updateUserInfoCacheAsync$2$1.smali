.class final Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1;
.super Ljava/lang/Object;
.source "LoginDriver.kt"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/li/driver/LoginDriver;->updateUserInfoCacheAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
.field final synthetic $cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/li/driver/LoginDriver;


# direct methods
.method constructor <init>(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/li/driver/LoginDriver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    iput-object p2, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 7

    .line 201
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;

    iget-object v2, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    iget-object v3, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1;->$cont:Lkotlin/coroutines/Continuation;

    const/4 v4, 0x0

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
