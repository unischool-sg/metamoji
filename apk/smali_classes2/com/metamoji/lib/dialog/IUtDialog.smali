.class public interface abstract Lcom/metamoji/lib/dialog/IUtDialog;
.super Ljava/lang/Object;
.source "UtDialogDef.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/IUtDialog$DefaultImpls;,
        Lcom/metamoji/lib/dialog/IUtDialog$Status;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001:\u0001#J\u001a\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0007H&J\u0012\u0010\u001a\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u001b\u001a\u00020\u0016H&J\u0008\u0010\u001c\u001a\u00020\u0016H&J\u0008\u0010\u001d\u001a\u00020\u001eH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000c\u001a\u00020\rX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0012\u001a\u00020\rX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R\u0012\u0010\u001f\u001a\u00020 X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\u00a8\u0006$\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/IUtDialog;",
        "",
        "status",
        "Lcom/metamoji/lib/dialog/IUtDialog$Status;",
        "getStatus",
        "()Lcom/metamoji/lib/dialog/IUtDialog$Status;",
        "immortalTaskName",
        "",
        "getImmortalTaskName",
        "()Ljava/lang/String;",
        "setImmortalTaskName",
        "(Ljava/lang/String;)V",
        "doNotResumeTask",
        "",
        "getDoNotResumeTask",
        "()Z",
        "setDoNotResumeTask",
        "(Z)V",
        "cancellable",
        "getCancellable",
        "setCancellable",
        "show",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "tag",
        "complete",
        "cancel",
        "forceDismiss",
        "ensureArguments",
        "Landroid/os/Bundle;",
        "asFragment",
        "Landroidx/fragment/app/DialogFragment;",
        "getAsFragment",
        "()Landroidx/fragment/app/DialogFragment;",
        "Status",
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


# direct methods
.method public static synthetic complete$default(Lcom/metamoji/lib/dialog/IUtDialog;Lcom/metamoji/lib/dialog/IUtDialog$Status;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 53
    sget-object p1, Lcom/metamoji/lib/dialog/IUtDialog$Status;->POSITIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    :cond_0
    invoke-interface {p0, p1}, Lcom/metamoji/lib/dialog/IUtDialog;->complete(Lcom/metamoji/lib/dialog/IUtDialog$Status;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: complete"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract complete(Lcom/metamoji/lib/dialog/IUtDialog$Status;)V
.end method

.method public abstract ensureArguments()Landroid/os/Bundle;
.end method

.method public abstract forceDismiss()V
.end method

.method public abstract getAsFragment()Landroidx/fragment/app/DialogFragment;
.end method

.method public abstract getCancellable()Z
.end method

.method public abstract getDoNotResumeTask()Z
.end method

.method public abstract getImmortalTaskName()Ljava/lang/String;
.end method

.method public abstract getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;
.end method

.method public abstract setCancellable(Z)V
.end method

.method public abstract setDoNotResumeTask(Z)V
.end method

.method public abstract setImmortalTaskName(Ljava/lang/String;)V
.end method

.method public abstract show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
.end method
