.class public final Lcom/metamoji/ui/task/TaskExtensionKt;
.super Ljava/lang/Object;
.source "TaskExtension.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskExtension.kt\ncom/metamoji/ui/task/TaskExtensionKt\n+ 2 UtLib.kt\ncom/metamoji/lib/utils/UtLibKt\n*L\n1#1,42:1\n74#2,4:43\n*S KotlinDebug\n*F\n+ 1 TaskExtension.kt\ncom/metamoji/ui/task/TaskExtensionKt\n*L\n23#1:43,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007\u001a\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0086@\u00a2\u0006\u0002\u0010\n\u001a\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0086@\u00a2\u0006\u0002\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "fireOnMainThread",
        "",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;",
        "onBackgroundWithWaitScreen",
        "",
        "Lcom/metamoji/cm/CmTaskManager;",
        "fn",
        "Lkotlin/Function0;",
        "mmjGetFilePickerStore",
        "Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "mmjGetPermissionBroker",
        "Lcom/metamoji/ui/UiPermissionBroker;",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final fireOnMainThread(Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/ui/task/TaskExtensionKt$fireOnMainThread$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/metamoji/ui/task/TaskExtensionKt$fireOnMainThread$1;-><init>(Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final mmjGetFilePickerStore(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetFilePickerStore$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetFilePickerStore$1;

    iget v1, v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetFilePickerStore$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p0, v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetFilePickerStore$1;->label:I

    sub-int/2addr p0, v2

    iput p0, v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetFilePickerStore$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetFilePickerStore$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetFilePickerStore$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p0, v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetFilePickerStore$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34
    iget v2, v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetFilePickerStore$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    sget-object p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object p0

    iput v3, v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetFilePickerStore$1;->label:I

    invoke-interface {p0, v0}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p0, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of v0, p0, Lcom/metamoji/lib/dialog/broker/pickers/IUtFilePickerStoreProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p0, Lcom/metamoji/lib/dialog/broker/pickers/IUtFilePickerStoreProvider;

    goto :goto_2

    :cond_4
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/metamoji/lib/dialog/broker/pickers/IUtFilePickerStoreProvider;->getFilePickers()Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method

.method public static final mmjGetPermissionBroker(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/UiPermissionBroker;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetPermissionBroker$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetPermissionBroker$1;

    iget v1, v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetPermissionBroker$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p0, v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetPermissionBroker$1;->label:I

    sub-int/2addr p0, v2

    iput p0, v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetPermissionBroker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetPermissionBroker$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetPermissionBroker$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p0, v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetPermissionBroker$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget v2, v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetPermissionBroker$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    sget-object p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object p0

    iput v3, v0, Lcom/metamoji/ui/task/TaskExtensionKt$mmjGetPermissionBroker$1;->label:I

    invoke-interface {p0, v0}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p0, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of v0, p0, Lcom/metamoji/ui/IPermissionBrokerSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p0, Lcom/metamoji/ui/IPermissionBrokerSource;

    goto :goto_2

    :cond_4
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/metamoji/ui/IPermissionBrokerSource;->getPermissionBroker()Lcom/metamoji/ui/UiPermissionBroker;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method

.method public static final onBackgroundWithWaitScreen(Lcom/metamoji/cm/CmTaskManager;Lkotlin/jvm/functions/Function0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/CmTaskManager;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 23
    new-instance v0, Lcom/metamoji/ui/task/TaskExtensionKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/task/TaskExtensionKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnBackground(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    :cond_0
    return p1
.end method

.method static final onBackgroundWithWaitScreen$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 23
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
