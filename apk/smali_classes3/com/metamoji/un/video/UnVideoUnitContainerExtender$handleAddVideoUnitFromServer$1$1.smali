.class final Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnVideoUnitContainerExtender.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/video/UnVideoUnitContainerExtender;->handleAddVideoUnitFromServer(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.un.video.UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1"
    f = "UnVideoUnitContainerExtender.kt"
    i = {
        0x2
    }
    l = {
        0xe2,
        0xe3,
        0xe5
    }
    m = "invokeSuspend"
    n = {
        "videoTicket"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $context:Lcom/metamoji/cm/CmContext;

.field final synthetic $serverId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/metamoji/cm/CmContext;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/CmContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->$serverId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->$context:Lcom/metamoji/cm/CmContext;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;

    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->$serverId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->$context:Lcom/metamoji/cm/CmContext;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;-><init>(Ljava/lang/String;Lcom/metamoji/cm/CmContext;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 225
    iget v1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 226
    sget-object p1, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->label:I

    invoke-virtual {p1, v1}, Lcom/metamoji/media/video/network/VfCloud$Companion;->updateSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 227
    :cond_4
    :goto_0
    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->$serverId:Ljava/lang/String;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->label:I

    invoke-virtual {p1, v1, v5}, Lcom/metamoji/media/video/VfVideoFileManager;->createTicketForServerId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_2

    .line 225
    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 229
    sget-object v1, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v1}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->$serverId:Ljava/lang/String;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->label:I

    invoke-virtual {v1, v3, v5}, Lcom/metamoji/media/video/VfVideoFileManager;->getImageFromTicket(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    move-object v0, p1

    move-object p1, v1

    .line 225
    :goto_3
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_8

    .line 231
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->$context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v2, "videoSource"

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->$context:Lcom/metamoji/cm/CmContext;

    new-instance v1, Lcom/metamoji/cm/SizeF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    const-string/jumbo v2, "videoSize"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleAddVideoUnitFromServer$1$1;->$context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v1, "videoThumbnail"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    .line 237
    :cond_8
    :goto_4
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
