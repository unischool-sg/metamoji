.class final Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnImageUnitExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/image/direction/UnImageUnitExt;->addImageFromCamera(Lcom/metamoji/nt/NtDocument;)V
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
    value = "SMAP\nUnImageUnitExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnImageUnitExt.kt\ncom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1\n+ 2 UnImageUnitExt.kt\ncom/metamoji/un/image/direction/UnImageUnitExt\n+ 3 UnVideoUnitContainerExtender.kt\ncom/metamoji/un/video/UnVideoUnitContainerExtender$Companion\n+ 4 UtImmortalTaskDef.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskDefKt\n*L\n1#1,131:1\n26#2:132\n40#3:133\n41#3,6:135\n41#4:134\n*S KotlinDebug\n*F\n+ 1 UnImageUnitExt.kt\ncom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1\n*L\n43#1:132\n43#1:133\n43#1:135,6\n43#1:134\n*E\n"
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
    c = "com.metamoji.un.image.direction.UnImageUnitExt$addImageFromCamera$1"
    f = "UnImageUnitExt.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x86,
        0x2d,
        0x38
    }
    m = "invokeSuspend"
    n = {
        "this_$iv",
        "this_$iv$iv",
        "$this$withOwner$iv$iv$iv",
        "$i$f$withEditorActivity",
        "$i$f$withEditorActivity",
        "$i$f$withOwner",
        "camera",
        "picker",
        "$i$a$-use-UnImageUnitExt$addImageFromCamera$1$1",
        "camera",
        "picker",
        "context",
        "target",
        "$i$a$-use-UnImageUnitExt$addImageFromCamera$1$1"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "L$2",
        "I$0",
        "L$0",
        "L$2",
        "L$3",
        "L$4",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;

    invoke-direct {p1, p2}, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 42
    iget v1, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$4:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iget-object v0, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/cm/CmContext;

    iget-object v0, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ui/UiImageCameraPicker;

    iget-object v0, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    iget-object v1, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/ui/UiImageCameraBroker;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v5, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->I$0:I

    iget-object v1, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/ui/UiImageCameraPicker;

    iget-object v3, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v7, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/metamoji/ui/UiImageCameraBroker;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v3

    goto/16 :goto_6

    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    iget-object v1, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion;

    iget-object v1, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/un/image/direction/UnImageUnitExt;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    sget-object p1, Lcom/metamoji/un/image/direction/UnImageUnitExt;->INSTANCE:Lcom/metamoji/un/image/direction/UnImageUnitExt;

    .line 132
    sget-object v1, Lcom/metamoji/un/video/UnVideoUnitContainerExtender;->Companion:Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion;

    .line 133
    sget-object v7, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v7}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v7

    .line 134
    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$1:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$2:Ljava/lang/Object;

    iput v5, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->I$0:I

    iput v5, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->I$1:I

    iput v5, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->I$2:I

    iput v4, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->label:I

    invoke-interface {v7, v8}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto/16 :goto_4

    .line 42
    :cond_4
    :goto_0
    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    .line 135
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 136
    instance-of v1, p1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v1, :cond_5

    .line 137
    check-cast p1, Lcom/metamoji/noteanytime/EditorActivity;

    .line 43
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->getImageCameraBroker()Lcom/metamoji/ui/UiImageCameraBroker;

    move-result-object p1

    move-object v7, p1

    goto :goto_1

    :cond_5
    move-object v7, v6

    :goto_1
    if-nez v7, :cond_6

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 44
    :cond_6
    new-instance p1, Lcom/metamoji/ui/UiImageCameraPicker;

    invoke-direct {p1, v7}, Lcom/metamoji/ui/UiImageCameraPicker;-><init>(Lcom/metamoji/ui/UiImageCameraBroker;)V

    check-cast p1, Ljava/io/Closeable;

    :try_start_2
    move-object v1, p1

    check-cast v1, Lcom/metamoji/ui/UiImageCameraPicker;

    .line 45
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$2:Ljava/lang/Object;

    iput v5, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->I$0:I

    iput v3, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->label:I

    invoke-virtual {v1, p0}, Lcom/metamoji/ui/UiImageCameraPicker;->getSource(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v3, v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v11, v3

    move-object v3, p1

    move-object p1, v11

    :goto_2
    :try_start_3
    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_8

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 46
    :cond_8
    :try_start_4
    new-instance v8, Lcom/metamoji/cm/CmContext;

    invoke-direct {v8}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 47
    invoke-virtual {v1}, Lcom/metamoji/ui/UiImageCameraPicker;->getRetain()Z

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v10, "imageSource"

    if-nez v9, :cond_a

    .line 49
    :try_start_5
    sget-object v9, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {v9, p1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->fileFromUri(Landroid/net/Uri;)Lcom/metamoji/un/video/UnVideoUtils$WorkFile;

    move-result-object v9

    if-nez v9, :cond_9

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v3, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 50
    :cond_9
    :try_start_6
    invoke-virtual {v9}, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->detach()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    const-string v9, "deleteFile"

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 54
    :cond_a
    invoke-virtual {v8, v10, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    :goto_3
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/ns/NsCollaboManager;->getCommandSuspender()Lcom/metamoji/ns/NsCollaboCommandSuspender;

    move-result-object v4

    new-instance v9, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1$1$1;

    invoke-direct {v9, v8, v6}, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1$1$1;-><init>(Lcom/metamoji/cm/CmContext;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$1:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$2:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$3:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->L$4:Ljava/lang/Object;

    iput v5, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->I$0:I

    iput v2, p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;->label:I

    invoke-static {v4, v9, p0}, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt;->waitAndExecute(Lcom/metamoji/ns/NsCollaboCommandSuspender;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne p1, v0, :cond_b

    :goto_4
    return-object v0

    :cond_b
    move-object v0, v3

    .line 61
    :goto_5
    :try_start_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 44
    invoke-static {v0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 63
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_2
    move-exception v0

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    .line 44
    :goto_6
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
