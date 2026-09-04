.class final Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnVideoUnitContainerExtender.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/video/UnVideoUnitContainerExtender;->handleChangeThumbnail(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
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
        "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;"
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
    c = "com.metamoji.un.video.UnVideoUnitContainerExtender$handleChangeThumbnail$1"
    f = "UnVideoUnitContainerExtender.kt"
    i = {
        0x0
    }
    l = {
        0xb8
    }
    m = "invokeSuspend"
    n = {
        "$this$UtImmortalSimpleTask"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $ticket:Ljava/lang/String;

.field final synthetic $videoUnit:Lcom/metamoji/un/video/UnVideoUnit;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/video/UnVideoUnit;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->$videoUnit:Lcom/metamoji/un/video/UnVideoUnit;

    iput-object p2, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->$ticket:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Ljava/lang/String;Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/un/video/dialog/SelectFrameDialog;
    .locals 2

    .line 184
    sget-object p3, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->Companion:Lcom/metamoji/un/video/dialog/SelectFrameDialog$Companion;

    check-cast p0, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    invoke-virtual {p2}, Lcom/metamoji/un/video/UnVideoUnit;->getThumbnailTime$app()D

    move-result-wide v0

    invoke-virtual {p3, p0, p1, v0, v1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$Companion;->newInstance(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Ljava/lang/String;D)Lcom/metamoji/un/video/dialog/SelectFrameDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->$videoUnit:Lcom/metamoji/un/video/UnVideoUnit;

    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->$ticket:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 183
    iget v2, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->getTaskName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->$ticket:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->$videoUnit:Lcom/metamoji/un/video/UnVideoUnit;

    new-instance v5, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v2, v4}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Ljava/lang/String;Lcom/metamoji/un/video/UnVideoUnit;)V

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->label:I

    invoke-virtual {v0, p1, v5, v2}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 183
    :cond_2
    :goto_0
    check-cast p1, Lcom/metamoji/un/video/dialog/SelectFrameDialog;

    .line 185
    invoke-virtual {p1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getPositive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$handleChangeThumbnail$1;->$videoUnit:Lcom/metamoji/un/video/UnVideoUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getViewModel()Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->getThumbnailBlob()Lcom/metamoji/cm/Blob;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getViewModel()Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->getThumbnailPosition()J

    move-result-wide v4

    long-to-double v4, v4

    const/16 p1, 0x3e8

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/cm/Blob;D)V

    .line 187
    invoke-virtual {v0}, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;->perform()V

    .line 189
    :cond_3
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
