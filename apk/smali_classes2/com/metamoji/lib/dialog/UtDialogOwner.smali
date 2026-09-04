.class public final Lcom/metamoji/lib/dialog/UtDialogOwner;
.super Ljava/lang/Object;
.source "UtDialogOwner.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\tJ\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bJ\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "getLifecycleOwner",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "asContext",
        "Landroid/content/Context;",
        "asActivity",
        "Landroidx/fragment/app/FragmentActivity;",
        "asFragment",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialogOwner;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 19
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_1

    instance-of p1, p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DialogOwner must be FragmentActivity or Fragment"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/lib/dialog/UtDialogOwner;Landroidx/lifecycle/LifecycleOwner;ILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtDialogOwner;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtDialogOwner;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->copy(Landroidx/lifecycle/LifecycleOwner;)Lcom/metamoji/lib/dialog/UtDialogOwner;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogOwner;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 37
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    return-object v0

    .line 38
    :cond_0
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final asContext()Landroid/content/Context;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogOwner;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 25
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 26
    :cond_0
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 27
    :cond_1
    instance-of v1, v0, Landroid/content/Context;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid lifecycleOwner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final asFragment()Landroidx/fragment/app/FragmentActivity;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogOwner;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 46
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final component1()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogOwner;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public final copy(Landroidx/lifecycle/LifecycleOwner;)Lcom/metamoji/lib/dialog/UtDialogOwner;
    .locals 1

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialogOwner;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object p1, p1, Lcom/metamoji/lib/dialog/UtDialogOwner;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogOwner;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogOwner;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogOwner;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UtDialogOwner(lifecycleOwner="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
