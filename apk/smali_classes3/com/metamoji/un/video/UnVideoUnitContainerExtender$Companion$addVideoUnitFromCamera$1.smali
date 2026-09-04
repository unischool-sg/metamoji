.class final Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnVideoUnitContainerExtender.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion;->addVideoUnitFromCamera(Lcom/metamoji/nt/NtDocument;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnVideoUnitContainerExtender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnVideoUnitContainerExtender.kt\ncom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1\n+ 2 UnVideoUnitContainerExtender.kt\ncom/metamoji/un/video/UnVideoUnitContainerExtender$Companion\n+ 3 UtImmortalTaskDef.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskDefKt\n*L\n1#1,803:1\n40#2:804\n41#2,6:806\n41#3:805\n*S KotlinDebug\n*F\n+ 1 UnVideoUnitContainerExtender.kt\ncom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1\n*L\n76#1:804\n76#1:806,6\n76#1:805\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.metamoji.un.video.UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1"
    f = "UnVideoUnitContainerExtender.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x325,
        0x4e
    }
    m = "invokeSuspend"
    n = {
        "this_$iv",
        "$this$withOwner$iv$iv",
        "$i$f$withEditorActivity",
        "$i$f$withOwner",
        "camera",
        "picker",
        "$i$a$-use-UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1$1"
    }
    s = {
        "L$0",
        "L$1",
        "I$0",
        "I$1",
        "L$0",
        "L$2",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$2$lambda$1(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 91
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_ADD_VIDEO_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p1, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;

    invoke-direct {p1, p2}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 75
    iget v1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ui/UiVideoCameraPicker;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/ui/UiVideoCameraBroker;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    sget-object p1, Lcom/metamoji/un/video/UnVideoUnitContainerExtender;->Companion:Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion;

    .line 804
    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v1

    .line 805
    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->I$0:I

    iput v3, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->I$1:I

    iput v4, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->label:I

    invoke-interface {v1, v6}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    .line 75
    :cond_3
    :goto_0
    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    .line 806
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 807
    instance-of v1, p1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v1, :cond_4

    .line 808
    check-cast p1, Lcom/metamoji/noteanytime/EditorActivity;

    .line 76
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->getVideoCameraBroker()Lcom/metamoji/ui/UiVideoCameraBroker;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v5

    :goto_1
    if-nez p1, :cond_5

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 77
    :cond_5
    new-instance v1, Lcom/metamoji/ui/UiVideoCameraPicker;

    invoke-direct {v1, p1}, Lcom/metamoji/ui/UiVideoCameraPicker;-><init>(Lcom/metamoji/ui/UiVideoCameraBroker;)V

    check-cast v1, Ljava/io/Closeable;

    :try_start_1
    move-object v6, v1

    check-cast v6, Lcom/metamoji/ui/UiVideoCameraPicker;

    .line 78
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->I$0:I

    iput v2, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;->label:I

    invoke-virtual {v6, p0}, Lcom/metamoji/ui/UiVideoCameraPicker;->getSource(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    move-object v0, v6

    :goto_3
    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_7

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 79
    :cond_7
    :try_start_2
    new-instance v2, Lcom/metamoji/cm/CmContext;

    invoke-direct {v2}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 80
    invoke-virtual {v0}, Lcom/metamoji/ui/UiVideoCameraPicker;->getRetain()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v3, "videoRawSource"

    if-nez v0, :cond_9

    .line 82
    :try_start_3
    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->fileFromUri(Landroid/net/Uri;)Lcom/metamoji/un/video/UnVideoUtils$WorkFile;

    move-result-object p1

    if-nez p1, :cond_8

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 83
    :cond_8
    :try_start_4
    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->detach()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string/jumbo p1, "videoDelOnClose"

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 87
    :cond_9
    invoke-virtual {v2, v3, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    :goto_4
    const-string/jumbo p1, "videoAddSub"

    const-string/jumbo v0, "trimming"

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;)V

    .line 93
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 94
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 77
    :goto_5
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
