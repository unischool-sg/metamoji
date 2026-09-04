.class public abstract Lcom/metamoji/media/video/dialog/FileItemBase;
.super Ljava/lang/Object;
.source "MfFileListView.kt"

# interfaces
.implements Lcom/metamoji/media/video/dialog/IFileItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/FileItemBase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 %2\u00020\u0001:\u0001%B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u0008\u0010\"\u001a\u00020\u001fH\u0016J\u000e\u0010#\u001a\u00020\u001fH\u00a6@\u00a2\u0006\u0002\u0010$R\u001a\u0010\u0002\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u0014X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0014X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0016\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0014X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0016\"\u0004\u0008\u001d\u0010\u001a\u00a8\u0006&"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/FileItemBase;",
        "Lcom/metamoji/media/video/dialog/IFileItem;",
        "label",
        "",
        "durationText",
        "thumbnail",
        "Landroid/graphics/Bitmap;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V",
        "getLabel",
        "()Ljava/lang/String;",
        "setLabel",
        "(Ljava/lang/String;)V",
        "getDurationText",
        "setDurationText",
        "getThumbnail",
        "()Landroid/graphics/Bitmap;",
        "setThumbnail",
        "(Landroid/graphics/Bitmap;)V",
        "ready",
        "",
        "getReady",
        "()Z",
        "selected",
        "getSelected",
        "setSelected",
        "(Z)V",
        "handling",
        "getHandling",
        "setHandling",
        "applyThumbnail",
        "",
        "holder",
        "Lcom/metamoji/media/video/dialog/FileViewHolder;",
        "dispose",
        "deleteItem",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/media/video/dialog/FileItemBase$Companion;

.field public static fitter:Lcom/metamoji/video/AmvFitter;


# instance fields
.field private durationText:Ljava/lang/String;

.field private handling:Z

.field private label:Ljava/lang/String;

.field private final ready:Z

.field private selected:Z

.field private thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/dialog/FileItemBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/dialog/FileItemBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/dialog/FileItemBase;->Companion:Lcom/metamoji/media/video/dialog/FileItemBase$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "durationText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->durationText:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->thumbnail:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 678
    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->ready:Z

    return-void
.end method


# virtual methods
.method public final applyThumbnail(Lcom/metamoji/media/video/dialog/FileViewHolder;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/FileItemBase;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 688
    new-instance v2, Lcom/metamoji/video/MuSize;

    invoke-direct {v2}, Lcom/metamoji/video/MuSize;-><init>()V

    .line 689
    sget-object v3, Lcom/metamoji/media/video/dialog/FileItemBase;->Companion:Lcom/metamoji/media/video/dialog/FileItemBase$Companion;

    invoke-virtual {v3}, Lcom/metamoji/media/video/dialog/FileItemBase$Companion;->getFitter()Lcom/metamoji/video/AmvFitter;

    move-result-object v3

    new-instance v4, Lcom/metamoji/video/MuSize;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lcom/metamoji/video/MuSize;-><init>(FF)V

    invoke-virtual {v3, v4, v2}, Lcom/metamoji/video/AmvFitter;->fit(Lcom/metamoji/video/MuSize;Lcom/metamoji/video/MuSize;)V

    .line 690
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v3, v4, v2}, Lcom/metamoji/video/AmvUtilsKt;->setLayoutSize(Landroid/view/View;II)V

    .line 691
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 692
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 694
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 696
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 697
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getProgressRing()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setActivated(Z)V

    .line 698
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getProgressRing()Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public abstract deleteItem(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public dispose()V
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/FileItemBase;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 703
    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/FileItemBase;->setThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getDurationText()Ljava/lang/String;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->durationText:Ljava/lang/String;

    return-object v0
.end method

.method public getHandling()Z
    .locals 1

    .line 680
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->handling:Z

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getReady()Z
    .locals 1

    .line 678
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->ready:Z

    return v0
.end method

.method public getSelected()Z
    .locals 1

    .line 679
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->selected:Z

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setDurationText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->durationText:Ljava/lang/String;

    return-void
.end method

.method public setHandling(Z)V
    .locals 0

    .line 680
    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->handling:Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->label:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 679
    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->selected:Z

    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileItemBase;->thumbnail:Landroid/graphics/Bitmap;

    return-void
.end method
