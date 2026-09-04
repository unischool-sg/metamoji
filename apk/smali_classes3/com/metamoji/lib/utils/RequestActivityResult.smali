.class public final Lcom/metamoji/lib/utils/RequestActivityResult;
.super Ljava/lang/Object;
.source "RequestActivityResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001d\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0008B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\tJ\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u000cH\u0002J\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0012R\u001d\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/RequestActivityResult;",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;)V",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "(Landroidx/fragment/app/Fragment;)V",
        "callback",
        "Lcom/metamoji/lib/utils/Callback;",
        "Landroidx/activity/result/ActivityResult;",
        "",
        "getCallback",
        "()Lcom/metamoji/lib/utils/Callback;",
        "launcher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "onActivityResult",
        "result",
        "launch",
        "intent",
        "utils"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final callback:Lcom/metamoji/lib/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Callback<",
            "Landroidx/activity/result/ActivityResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0, p1}, Lcom/metamoji/lib/utils/RequestActivityResult;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/metamoji/lib/utils/RequestActivityResult;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/metamoji/lib/utils/Callback;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/Callback;-><init>()V

    iput-object v0, p0, Lcom/metamoji/lib/utils/RequestActivityResult;->callback:Lcom/metamoji/lib/utils/Callback;

    if-eqz p1, :cond_0

    .line 25
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lcom/metamoji/lib/utils/RequestActivityResult$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/utils/RequestActivityResult$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/utils/RequestActivityResult;)V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    if-nez p1, :cond_1

    .line 28
    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast p1, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v0, Lcom/metamoji/lib/utils/RequestActivityResult$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/utils/RequestActivityResult$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/lib/utils/RequestActivityResult;)V

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    const-string p2, "registerForActivityResult(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    :cond_1
    iput-object p1, p0, Lcom/metamoji/lib/utils/RequestActivityResult;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method static final launcher$lambda$0(Lcom/metamoji/lib/utils/RequestActivityResult;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/metamoji/lib/utils/RequestActivityResult;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method static final launcher$lambda$1(Lcom/metamoji/lib/utils/RequestActivityResult;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/metamoji/lib/utils/RequestActivityResult;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method private final onActivityResult(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/lib/utils/RequestActivityResult;->callback:Lcom/metamoji/lib/utils/Callback;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/Callback;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/metamoji/lib/utils/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/Callback<",
            "Landroidx/activity/result/ActivityResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/metamoji/lib/utils/RequestActivityResult;->callback:Lcom/metamoji/lib/utils/Callback;

    return-object v0
.end method

.method public final launch(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/metamoji/lib/utils/RequestActivityResult;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
