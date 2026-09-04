.class public final Lcom/metamoji/ui/UiCurrentActivityManagerExtKt$requireSpecificActivity$lambda$3$$inlined$withSpecificActivity$1;
.super Ljava/lang/Object;
.source "UiCurrentActivityManagerExt.kt"

# interfaces
.implements Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/UiCurrentActivityManagerExtKt;->requireSpecificActivity(Lcom/metamoji/ui/UiCurrentActivityManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUiCurrentActivityManagerExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UiCurrentActivityManagerExt.kt\ncom/metamoji/ui/UiCurrentActivityManagerExtKt$withSpecificActivity$1\n+ 2 UiCurrentActivityManagerExt.kt\ncom/metamoji/ui/UiCurrentActivityManagerExtKt\n*L\n1#1,47:1\n45#2,2:48\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $cont$inlined:Lkotlin/coroutines/Continuation;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt$requireSpecificActivity$lambda$3$$inlined$withSpecificActivity$1;->$cont$inlined:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 25
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 48
    iget-object v0, p0, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt$requireSpecificActivity$lambda$3$$inlined$withSpecificActivity$1;->$cont$inlined:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
