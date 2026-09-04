.class public final Lcom/metamoji/lib/dialog/UtDialogOwnerKt;
.super Ljava/lang/Object;
.source "UtDialogOwner.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0003\u001a\u001a\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t\u001aD\u0010\n\u001a\u00020\u0005\"\u0008\u0008\u0000\u0010\u000b*\u00020\u0006*\u000c\u0012\u0004\u0012\u0002H\u000b0\u000cR\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00012\u001c\u0010\u000e\u001a\u0018\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u0002H\u000b0\u000cR\u00020\r\u0012\u0004\u0012\u0002H\u000b0\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "toDialogOwner",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "Landroidx/fragment/app/FragmentActivity;",
        "Landroidx/fragment/app/Fragment;",
        "show",
        "",
        "Lcom/metamoji/lib/dialog/IUtDialog;",
        "owner",
        "tag",
        "",
        "showDialog",
        "D",
        "Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;",
        "Lcom/metamoji/lib/dialog/UtDialogHostManager;",
        "creator",
        "Lkotlin/Function1;",
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
.method public static final show(Lcom/metamoji/lib/dialog/IUtDialog;Lcom/metamoji/lib/dialog/UtDialogOwner;Ljava/lang/String;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    .line 68
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-interface {p0, p1, p2}, Lcom/metamoji/lib/dialog/IUtDialog;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    instance-of v0, v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "requireActivity(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lcom/metamoji/lib/dialog/IUtDialog;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static final showDialog(Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;Lcom/metamoji/lib/dialog/UtDialogOwner;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/metamoji/lib/dialog/IUtDialog;",
            ">(",
            "Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor<",
            "TD;>;",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor<",
            "TD;>;+TD;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    .line 85
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->showDialog(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 86
    :cond_0
    instance-of v0, v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->showDialog(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method

.method public static final toDialogOwner(Landroidx/fragment/app/Fragment;)Lcom/metamoji/lib/dialog/UtDialogOwner;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogOwner;

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/dialog/UtDialogOwner;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    return-object v0
.end method

.method public static final toDialogOwner(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/lib/dialog/UtDialogOwner;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogOwner;

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/dialog/UtDialogOwner;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    return-object v0
.end method
