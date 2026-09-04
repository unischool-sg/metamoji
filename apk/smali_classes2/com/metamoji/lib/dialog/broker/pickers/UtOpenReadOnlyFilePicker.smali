.class public Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;
.super Lcom/metamoji/lib/dialog/broker/UtActivityBroker;
.source "UtOpenReadOnlyFilePicker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$Companion;,
        Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$Contract;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/dialog/broker/UtActivityBroker<",
        "Ljava/lang/String;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u001b2\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001:\u0002\u001b\u001cB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0014J\u001a\u0010\r\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0002H\u0086@\u00a2\u0006\u0002\u0010\u000fJF\u0010\r\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u000226\u0010\u0011\u001a2\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00100\u0012Ji\u0010\r\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u000226\u0010\u0018\u001a2\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00100\u00122!\u0010\u0019\u001a\u001d\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00100\u001aR\"\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;",
        "Lcom/metamoji/lib/dialog/broker/UtActivityBroker;",
        "",
        "Landroid/net/Uri;",
        "<init>",
        "()V",
        "prepareChooserIntent",
        "Landroid/content/Intent;",
        "intent",
        "contract",
        "Landroidx/activity/result/contract/ActivityResultContract;",
        "getContract",
        "()Landroidx/activity/result/contract/ActivityResultContract;",
        "selectFile",
        "mimeType",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "callback",
        "Lkotlin/Function2;",
        "Landroidx/fragment/app/FragmentActivity;",
        "Lkotlin/ParameterName;",
        "name",
        "activity",
        "uri",
        "done",
        "canceled",
        "Lkotlin/Function1;",
        "Companion",
        "Contract",
        "dialog"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$Companion;

.field public static final defaultMimeType:Ljava/lang/String; = "*/*"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;->Companion:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/broker/UtActivityBroker;-><init>()V

    return-void
.end method

.method public static final launcher(Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultCallback;)Lcom/metamoji/lib/dialog/broker/IUtActivityLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/metamoji/lib/dialog/broker/IUtActivityLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;->Companion:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$Companion;->launcher(Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultCallback;)Lcom/metamoji/lib/dialog/broker/IUtActivityLauncher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic selectFile$default(Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 44
    const-string p1, "*/*"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;->selectFile(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: selectFile"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final selectFile$lambda$0(Lkotlin/jvm/functions/Function2;Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 51
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final selectFile$lambda$1(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 1

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 59
    invoke-interface {p0, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getContract()Landroidx/activity/result/contract/ActivityResultContract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$Contract;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$Contract;-><init>(Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;)V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    return-object v0
.end method

.method protected prepareChooserIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-string v0, "Choose a file"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "createChooser(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final selectFile(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;->invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final selectFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mimeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;->invoke(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final selectFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mimeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "done"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canceled"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;->invoke(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
