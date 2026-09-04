.class public final Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;
.super Ljava/lang/Object;
.source "UtDialogHost.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;
.implements Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtDialogHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NamedReceptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lcom/metamoji/lib/dialog/IUtDialog;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;",
        "Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission<",
        "TD;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B)\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0002H\u0016J,\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\u001c\u0010\u0018\u001a\u0018\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00028\u00000\u0000R\u00020\u0019\u0012\u0004\u0012\u00028\u00000\u0008J,\u0010\u0015\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001b2\u001c\u0010\u0018\u001a\u0018\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00028\u00000\u0000R\u00020\u0019\u0012\u0004\u0012\u00028\u00000\u0008J\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u0002H\u0002J\u0006\u0010\u001e\u001a\u00020\tR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00028\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;",
        "D",
        "Lcom/metamoji/lib/dialog/IUtDialog;",
        "Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;",
        "Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission;",
        "tag",
        "",
        "submit",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Lcom/metamoji/lib/dialog/UtDialogHostManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "getSubmit",
        "()Lkotlin/jvm/functions/Function1;",
        "dialogRef",
        "Ljava/lang/ref/WeakReference;",
        "dialog",
        "getDialog",
        "()Lcom/metamoji/lib/dialog/IUtDialog;",
        "onDialogResult",
        "caller",
        "showDialog",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "creator",
        "Lcom/metamoji/lib/dialog/UtDialogHostManager;",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "attachDialog",
        "dlg",
        "dispose"
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
.field private dialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/lib/dialog/IUtDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final submit:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission<",
            "TD;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/metamoji/lib/dialog/UtDialogHostManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/dialog/UtDialogHostManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission<",
            "TD;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "submit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->this$0:Lcom/metamoji/lib/dialog/UtDialogHostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->submit:Lkotlin/jvm/functions/Function1;

    .line 188
    move-object p3, p0

    check-cast p3, Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/lib/dialog/UtDialogHostManager;->setReceptor(Ljava/lang/String;Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;)V

    return-void
.end method

.method private final attachDialog(Lcom/metamoji/lib/dialog/IUtDialog;)V
    .locals 1

    .line 233
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->dialogRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->this$0:Lcom/metamoji/lib/dialog/UtDialogHostManager;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtDialogHostManager;->removeReceptor(Ljava/lang/String;)V

    return-void
.end method

.method public getDialog()Lcom/metamoji/lib/dialog/IUtDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->dialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/IUtDialog;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getSubmit()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission<",
            "TD;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->submit:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public onDialogResult(Lcom/metamoji/lib/dialog/IUtDialog;)V
    .locals 1

    const-string v0, "caller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->dialogRef:Ljava/lang/ref/WeakReference;

    .line 200
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->submit:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final showDialog(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor<",
            "TD;>;+TD;>;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "requireActivity(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->showDialog(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final showDialog(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor<",
            "TD;>;+TD;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->findDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/lib/dialog/IUtDialog;

    .line 225
    invoke-direct {p0, p2}, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->attachDialog(Lcom/metamoji/lib/dialog/IUtDialog;)V

    .line 226
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->tag:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/metamoji/lib/dialog/IUtDialog;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method
