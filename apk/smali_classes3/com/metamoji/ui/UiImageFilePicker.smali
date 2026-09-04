.class public final Lcom/metamoji/ui/UiImageFilePicker;
.super Lcom/metamoji/ui/UiMediaFilePicker;
.source "UiMediaFilePicker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0096@\u00a2\u0006\u0002\u0010\u0008J\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\nH\u0096@\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/ui/UiImageFilePicker;",
        "Lcom/metamoji/ui/UiMediaFilePicker;",
        "pickerStore",
        "Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;",
        "<init>",
        "(Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;)V",
        "getSource",
        "Landroid/net/Uri;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getSources",
        "",
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


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;)V
    .locals 3

    const-string v0, "pickerStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/*"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/UiMediaFilePicker;-><init>(Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSource(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;

    iget v1, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;-><init>(Lcom/metamoji/ui/UiImageFilePicker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 32
    iget v2, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget v1, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->I$0:I

    iget-object v1, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget-object v0, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v2, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->I$0:I

    iget-object v5, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    iget-object v6, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->L$0:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    iput v6, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->label:I

    invoke-super {p0, v0}, Lcom/metamoji/ui/UiMediaFilePicker;->getSource(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_b

    .line 34
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v2, v6, :cond_a

    .line 36
    sget-object v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v2

    iput-object p1, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x0

    iput v6, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->I$0:I

    iput v5, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->label:I

    invoke-interface {v2, v0}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v5, p1

    move-object p1, v2

    move v2, v6

    move-object v6, v5

    :goto_2
    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v7, p1, Lcom/metamoji/ui/IPermissionBrokerSource;

    if-eqz v7, :cond_7

    move-object v3, p1

    check-cast v3, Lcom/metamoji/ui/IPermissionBrokerSource;

    :cond_7
    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/metamoji/ui/IPermissionBrokerSource;->getPermissionBroker()Lcom/metamoji/ui/UiPermissionBroker;

    move-result-object p1

    if-eqz p1, :cond_9

    iput-object v6, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->L$1:Ljava/lang/Object;

    iput v2, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->I$0:I

    iput v4, v0, Lcom/metamoji/ui/UiImageFilePicker$getSource$1;->label:I

    const-string v2, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-virtual {p1, v2, v0}, Lcom/metamoji/ui/UiPermissionBroker;->requestPermission(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    move-object v0, v6

    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    return-object v0

    :cond_9
    return-object v6

    :cond_a
    return-object p1

    :cond_b
    return-object v3
.end method

.method public getSources(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;

    iget v1, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;-><init>(Lcom/metamoji/ui/UiImageFilePicker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 41
    iget v2, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget v1, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->I$0:I

    iget-object v1, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v2, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->I$0:I

    iget-object v4, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    iput v5, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->label:I

    invoke-super {p0, v0}, Lcom/metamoji/ui/UiMediaFilePicker;->getSources(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_4

    .line 41
    :cond_5
    :goto_1
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 43
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_a

    .line 45
    sget-object v5, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v5}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v5

    iput-object p1, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x0

    iput v6, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->I$0:I

    iput v4, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->label:I

    invoke-interface {v5, v0}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v5, p1

    move-object p1, v4

    move-object v4, v2

    move v2, v6

    :goto_2
    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v6, p1, Lcom/metamoji/ui/IPermissionBrokerSource;

    if-eqz v6, :cond_7

    check-cast p1, Lcom/metamoji/ui/IPermissionBrokerSource;

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/metamoji/ui/IPermissionBrokerSource;->getPermissionBroker()Lcom/metamoji/ui/UiPermissionBroker;

    move-result-object p1

    if-eqz p1, :cond_9

    iput-object v5, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->L$1:Ljava/lang/Object;

    iput v2, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->I$0:I

    iput v3, v0, Lcom/metamoji/ui/UiImageFilePicker$getSources$1;->label:I

    const-string v2, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-virtual {p1, v2, v0}, Lcom/metamoji/ui/UiPermissionBroker;->requestPermission(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_4
    return-object v1

    :cond_8
    move-object v0, v5

    :goto_5
    check-cast p1, Ljava/lang/Boolean;

    return-object v0

    :cond_9
    return-object v5

    :cond_a
    return-object p1
.end method
