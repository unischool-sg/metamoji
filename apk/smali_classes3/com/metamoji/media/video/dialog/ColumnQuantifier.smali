.class public final Lcom/metamoji/media/video/dialog/ColumnQuantifier;
.super Ljava/lang/Object;
.source "RecyclerViewUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\u000c\u001a\u00020\u0005J\u0006\u0010\r\u001a\u00020\u0005R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/ColumnQuantifier;",
        "",
        "context",
        "Landroid/content/Context;",
        "resourceId",
        "",
        "listViewWidth",
        "<init>",
        "(Landroid/content/Context;II)V",
        "width",
        "height",
        "remaining",
        "calculateNoOfColumns",
        "calculateSpacing",
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
.field private final height:I

.field private final listViewWidth:I

.field private remaining:I

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/metamoji/media/video/dialog/ColumnQuantifier;->listViewWidth:I

    const/4 p3, 0x0

    .line 193
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 194
    invoke-virtual {p1, p2, p2}, Landroid/view/View;->measure(II)V

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iput p2, p0, Lcom/metamoji/media/video/dialog/ColumnQuantifier;->width:I

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/metamoji/media/video/dialog/ColumnQuantifier;->height:I

    return-void
.end method


# virtual methods
.method public final calculateNoOfColumns()I
    .locals 3

    .line 207
    iget v0, p0, Lcom/metamoji/media/video/dialog/ColumnQuantifier;->listViewWidth:I

    iget v1, p0, Lcom/metamoji/media/video/dialog/ColumnQuantifier;->width:I

    div-int v2, v0, v1

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 211
    iput v0, p0, Lcom/metamoji/media/video/dialog/ColumnQuantifier;->remaining:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 213
    iput v0, p0, Lcom/metamoji/media/video/dialog/ColumnQuantifier;->remaining:I

    :cond_1
    return v2
.end method

.method public final calculateSpacing()I
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/ColumnQuantifier;->calculateNoOfColumns()I

    move-result v0

    .line 220
    iget v1, p0, Lcom/metamoji/media/video/dialog/ColumnQuantifier;->remaining:I

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr v1, v0

    return v1
.end method
