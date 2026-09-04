.class public abstract Lcom/metamoji/lib/dialog/connector/UtActivityConnector;
.super Ljava/lang/Object;
.source "UtActivityConnector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/connector/UtActivityConnector$ImmortalResultCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003:\u0001\u0010B\u001d\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00028\u0000H\u0007\u00a2\u0006\u0002\u0010\u000fR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnector;",
        "I",
        "O",
        "",
        "launcher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "defArg",
        "<init>",
        "(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;)V",
        "getDefArg",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "launch",
        "",
        "arg",
        "(Ljava/lang/Object;)V",
        "ImmortalResultCallback",
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


# instance fields
.field private final defArg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private final launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;TI;)V"
        }
    .end annotation

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;->defArg:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic launch$default(Lcom/metamoji/lib/dialog/connector/UtActivityConnector;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 19
    iget-object p1, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;->defArg:Ljava/lang/Object;

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;->launch(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: launch"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getDefArg()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;->defArg:Ljava/lang/Object;

    return-object v0
.end method

.method public final launch()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;->launch$default(Lcom/metamoji/lib/dialog/connector/UtActivityConnector;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final launch(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
