.class public final Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt;
.super Ljava/lang/Object;
.source "UtImmortalTaskDef.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtImmortalTaskDef.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtImmortalTaskDef.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskDefKt\n*L\n1#1,60:1\n53#1:61\n*S KotlinDebug\n*F\n+ 1 UtImmortalTaskDef.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskDefKt\n*L\n57#1:61\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a,\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u00010\u0004H\u0086H\u00a2\u0006\u0002\u0010\u0006\u001a8\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u00010\u0004H\u0086H\u00a2\u0006\u0002\u0010\t\u001aB\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u0014\u0008\u0008\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\u00042\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u00010\u0004H\u0086H\u00a2\u0006\u0002\u0010\r\u001a\u001e\u0010\u000e\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u000f*\u00020\u0002H\u0086H\u00a2\u0006\u0002\u0010\u0010\u001a8\u0010\u0011\u001a\u0002H\u0012\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u000f\"\u0004\u0008\u0001\u0010\u0012*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002H\u00120\u0004H\u0086H\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0013"
    }
    d2 = {
        "withOwner",
        "T",
        "Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;",
        "fn",
        "Lkotlin/Function1;",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "(Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clazz",
        "Ljava/lang/Class;",
        "(Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ownerChooser",
        "Landroidx/lifecycle/LifecycleOwner;",
        "",
        "(Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getActivity",
        "Landroidx/fragment/app/FragmentActivity;",
        "(Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withActivity",
        "R",
        "dialog"
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
.method public static final synthetic getActivity(Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/FragmentActivity;",
            ">(",
            "Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 53
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Landroidx/fragment/app/FragmentActivity;

    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    invoke-interface {p0, v0, p1}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwnerOf(Ljava/lang/Class;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p0, :cond_0

    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not target activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic withActivity(Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/FragmentActivity;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 61
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Landroidx/fragment/app/FragmentActivity;

    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    invoke-interface {p0, v0, p2}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwnerOf(Ljava/lang/Class;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p2, 0x2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object p2, p0

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    if-eqz p0, :cond_0

    move-object p2, p0

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    .line 57
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not target activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final withOwner(Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;",
            "Ljava/lang/Class<",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;

    iget v1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;

    invoke-direct {v0, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 44
    iget v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->I$0:I

    iget-object p0, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->L$3:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Class;

    iget-object p0, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->L$1:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->L$3:Ljava/lang/Object;

    const/4 p3, 0x0

    iput p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->I$0:I

    iput v3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$2;->label:I

    invoke-interface {p0, p1, v0}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwnerOf(Ljava/lang/Class;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final withOwner(Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;

    iget v1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;

    invoke-direct {v0, p2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 40
    iget v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;->I$0:I

    iget-object p0, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;->L$2:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;->L$2:Ljava/lang/Object;

    const/4 p2, 0x0

    iput p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;->I$0:I

    iput v3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$1;->label:I

    invoke-interface {p0, v0}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final withOwner(Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;

    iget v1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;

    invoke-direct {v0, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 48
    iget v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->I$0:I

    iget-object p0, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->L$3:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->L$1:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->L$3:Ljava/lang/Object;

    const/4 p3, 0x0

    iput p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->I$0:I

    iput v3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskDefKt$withOwner$3;->label:I

    invoke-interface {p0, p1, v0}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwnerBy(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final withOwner$$forInline(Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;",
            "Ljava/lang/Class<",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 45
    invoke-interface {p0, p1, p3}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwnerOf(Ljava/lang/Class;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final withOwner$$forInline(Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    invoke-interface {p0, p2}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final withOwner$$forInline(Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 49
    invoke-interface {p0, p1, p3}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwnerBy(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
