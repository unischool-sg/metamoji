.class final Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$2$1$1;
.super Ljava/lang/Object;
.source "NwUserInfoUpdater.kt"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->getUserInfo(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/metamoji/media/video/VfCabinetUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/VfCabinetUserInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$2$1$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 2

    .line 47
    sget-object p1, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->INSTANCE:Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;

    invoke-virtual {p1}, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->getCachedUserInfo()Lcom/metamoji/media/video/VfCabinetUserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    sget-object v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->INSTANCE:Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->access$setMLastCheckTime$p(J)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$2$1$1;->$cont:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
