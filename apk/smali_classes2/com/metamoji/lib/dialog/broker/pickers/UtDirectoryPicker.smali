.class public Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;
.super Lcom/metamoji/lib/dialog/broker/UtActivityBroker;
.source "UtDirectoryPicker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker$Companion;,
        Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker$Contract;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/dialog/broker/UtActivityBroker<",
        "Landroid/net/Uri;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 \u00172\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0002\u0017\u0018B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0014J\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0086@\u00a2\u0006\u0002\u0010\u000eJH\u0010\u000c\u001a\u00020\u000f2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000226\u0010\u0010\u001a2\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000f0\u0011R$\u0010\u0008\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;",
        "Lcom/metamoji/lib/dialog/broker/UtActivityBroker;",
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
        "selectDirectory",
        "initialPath",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "callback",
        "Lkotlin/Function2;",
        "Landroidx/fragment/app/FragmentActivity;",
        "Lkotlin/ParameterName;",
        "name",
        "activity",
        "uri",
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
.field public static final Companion:Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;->Companion:Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/broker/UtActivityBroker;-><init>()V

    return-void
.end method

.method public static synthetic selectDirectory$default(Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;Landroid/net/Uri;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 34
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;->selectDirectory(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: selectDirectory"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final selectDirectory$lambda$0(Lkotlin/jvm/functions/Function2;Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 42
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
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
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker$Contract;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker$Contract;-><init>(Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;)V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    return-object v0
.end method

.method protected prepareChooserIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const-string v0, "Choose a folder"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "createChooser(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final selectDirectory(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;->invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final selectDirectory(Landroid/net/Uri;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;->invoke(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
