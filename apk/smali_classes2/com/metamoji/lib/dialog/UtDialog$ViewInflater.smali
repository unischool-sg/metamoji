.class final Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;
.super Ljava/lang/Object;
.source "UtDialog.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewInflater"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "bodyContainer",
        "Landroid/view/ViewGroup;",
        "<init>",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V",
        "getLayoutInflater",
        "()Landroid/view/LayoutInflater;",
        "getBodyContainer",
        "()Landroid/view/ViewGroup;",
        "inflate",
        "Landroid/view/View;",
        "id",
        "",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field private final bodyContainer:Landroid/view/ViewGroup;

.field private final layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bodyContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->layoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->bodyContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->layoutInflater:Landroid/view/LayoutInflater;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->bodyContainer:Landroid/view/ViewGroup;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->copy(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final component2()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->bodyContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final copy(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;
    .locals 1

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bodyContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v3, p1, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->bodyContainer:Landroid/view/ViewGroup;

    iget-object p1, p1, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->bodyContainer:Landroid/view/ViewGroup;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBodyContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->bodyContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->bodyContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public inflate(I)Landroid/view/View;
    .locals 3

    .line 1138
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->bodyContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;->bodyContainer:Landroid/view/ViewGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ViewInflater(layoutInflater="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", bodyContainer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
