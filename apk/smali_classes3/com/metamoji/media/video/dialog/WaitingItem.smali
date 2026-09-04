.class public final Lcom/metamoji/media/video/dialog/WaitingItem;
.super Ljava/lang/Object;
.source "MfFileListView.kt"

# interfaces
.implements Lcom/metamoji/media/video/dialog/IFileItem;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u001aH\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0016\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000f8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u000fX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\u00a8\u0006#"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/WaitingItem;",
        "Lcom/metamoji/media/video/dialog/IFileItem;",
        "<init>",
        "()V",
        "label",
        "",
        "getLabel",
        "()Ljava/lang/String;",
        "durationText",
        "getDurationText",
        "thumbnail",
        "Landroid/graphics/Bitmap;",
        "getThumbnail",
        "()Landroid/graphics/Bitmap;",
        "ready",
        "",
        "getReady",
        "()Z",
        "_",
        "selected",
        "getSelected",
        "setSelected",
        "(Z)V",
        "handling",
        "getHandling",
        "bind",
        "",
        "holder",
        "Lcom/metamoji/media/video/dialog/FileViewHolder;",
        "position",
        "",
        "selectable",
        "iconSupplier",
        "Lcom/metamoji/media/video/dialog/IFileItem$IconSupplier;",
        "dispose",
        "app"
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
.field private final durationText:Ljava/lang/String;

.field private final handling:Z

.field private final label:Ljava/lang/String;

.field private final ready:Z

.field private final thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/WaitingItem;->label:Ljava/lang/String;

    .line 643
    iput-object v0, p0, Lcom/metamoji/media/video/dialog/WaitingItem;->durationText:Ljava/lang/String;

    const/4 v0, 0x1

    .line 649
    iput-boolean v0, p0, Lcom/metamoji/media/video/dialog/WaitingItem;->handling:Z

    return-void
.end method


# virtual methods
.method public bind(Lcom/metamoji/media/video/dialog/FileViewHolder;IZLcom/metamoji/media/video/dialog/IFileItem$IconSupplier;)V
    .locals 0

    const-string p2, "iconSupplier"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 656
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getMainView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 657
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getProgressRing()Landroid/widget/ProgressBar;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setActivated(Z)V

    .line 658
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getProgressRing()Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getDurationText()Ljava/lang/String;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/WaitingItem;->durationText:Ljava/lang/String;

    return-object v0
.end method

.method public getHandling()Z
    .locals 1

    .line 649
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/WaitingItem;->handling:Z

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/WaitingItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getReady()Z
    .locals 1

    .line 645
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/WaitingItem;->ready:Z

    return v0
.end method

.method public getSelected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/WaitingItem;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setSelected(Z)V
    .locals 0

    return-void
.end method
