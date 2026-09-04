.class public final Lcom/metamoji/ui/UiCurrentActivityManagerExtKt;
.super Ljava/lang/Object;
.source "UiCurrentActivityManagerExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUiCurrentActivityManagerExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UiCurrentActivityManagerExt.kt\ncom/metamoji/ui/UiCurrentActivityManagerExtKt\n*L\n1#1,47:1\n24#1,4:48\n*S KotlinDebug\n*F\n+ 1 UiCurrentActivityManagerExt.kt\ncom/metamoji/ui/UiCurrentActivityManagerExtKt\n*L\n44#1:48,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00022!\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u00010\u0004\u001aA\u0010\t\u001a\u00020\u0001\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\u0005*\u00020\u00022#\u0008\u0004\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u0011H\n\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\u0008\u00f8\u0001\u0000\u001a\u0012\u0010\u000b\u001a\u00020\u0005*\u00020\u0002H\u0086@\u00a2\u0006\u0002\u0010\u000c\u001a\u001e\u0010\r\u001a\u0002H\n\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\u0005*\u00020\u0002H\u0086H\u00a2\u0006\u0002\u0010\u000c\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000e"
    }
    d2 = {
        "withActivity",
        "",
        "Lcom/metamoji/ui/UiCurrentActivityManager;",
        "fn",
        "Lkotlin/Function1;",
        "Landroidx/fragment/app/FragmentActivity;",
        "Lkotlin/ParameterName;",
        "name",
        "activity",
        "withSpecificActivity",
        "T",
        "requireActivity",
        "(Lcom/metamoji/ui/UiCurrentActivityManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "requireSpecificActivity",
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
.method public static final requireActivity(Lcom/metamoji/ui/UiCurrentActivityManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/UiCurrentActivityManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 33
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 34
    new-instance v2, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt$requireActivity$2$1;

    invoke-direct {v2, v1}, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt$requireActivity$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v2}, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt;->withActivity(Lcom/metamoji/ui/UiCurrentActivityManager;Lkotlin/jvm/functions/Function1;)V

    .line 33
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic requireSpecificActivity(Lcom/metamoji/ui/UiCurrentActivityManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/FragmentActivity;",
            ">(",
            "Lcom/metamoji/ui/UiCurrentActivityManager;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 43
    move-object v0, p1

    check-cast v0, Lkotlin/coroutines/Continuation;

    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x4

    .line 48
    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Landroidx/fragment/app/FragmentActivity;

    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v3, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt$requireSpecificActivity$lambda$3$$inlined$withSpecificActivity$1;

    invoke-direct {v3, v1}, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt$requireSpecificActivity$lambda$3$$inlined$withSpecificActivity$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Ljava/lang/Class;Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    .line 47
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p0
.end method

.method public static final withActivity(Lcom/metamoji/ui/UiCurrentActivityManager;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/UiCurrentActivityManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method

.method static final withActivity$lambda$0(Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic withSpecificActivity(Lcom/metamoji/ui/UiCurrentActivityManager;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/FragmentActivity;",
            ">(",
            "Lcom/metamoji/ui/UiCurrentActivityManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 24
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Landroidx/fragment/app/FragmentActivity;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt$withSpecificActivity$1;

    invoke-direct {v1, p1}, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt$withSpecificActivity$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Ljava/lang/Class;Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
