.class final Lcom/metamoji/lib/dialog/UtDialog$DragParam;
.super Ljava/lang/Object;
.source "UtDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DragParam"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J>\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005J\u0016\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005J\u000e\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005J\u000e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialog$DragParam;",
        "",
        "<init>",
        "()V",
        "dialogSize",
        "",
        "screenSize",
        "paddingStart",
        "paddingEnd",
        "clip",
        "",
        "minPos",
        "maxPos",
        "orgDialogPos",
        "dragStartPos",
        "setup",
        "",
        "",
        "start",
        "dialogPos",
        "dragPos",
        "getPosition",
        "clipPosition",
        "pos",
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
.field private clip:Z

.field private dialogSize:F

.field private dragStartPos:F

.field private maxPos:F

.field private minPos:F

.field private orgDialogPos:F

.field private paddingEnd:F

.field private paddingStart:F

.field private screenSize:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clipPosition(F)F
    .locals 3

    .line 799
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->clip:Z

    if-eqz v0, :cond_0

    .line 800
    iget v0, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->paddingStart:F

    iget v1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->screenSize:F

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->paddingEnd:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->dialogSize:F

    sub-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    .line 802
    :cond_0
    iget v0, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->minPos:F

    iget v1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->screenSize:F

    iget v2, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->paddingStart:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->paddingEnd:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->maxPos:F

    sub-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public final getPosition(F)F
    .locals 2

    .line 791
    iget v0, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->orgDialogPos:F

    iget v1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->dragStartPos:F

    sub-float/2addr p1, v1

    add-float/2addr v0, p1

    .line 792
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->clipPosition(F)F

    move-result p1

    return p1
.end method

.method public final setup(FFIIZFF)V
    .locals 0

    int-to-float p3, p3

    .line 773
    iput p3, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->paddingStart:F

    int-to-float p3, p4

    .line 774
    iput p3, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->paddingEnd:F

    .line 775
    iput p1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->dialogSize:F

    .line 776
    iput p2, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->screenSize:F

    .line 777
    iput-boolean p5, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->clip:Z

    .line 778
    iput p6, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->minPos:F

    .line 779
    iput p7, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->maxPos:F

    return-void
.end method

.method public final start(FF)V
    .locals 0

    .line 783
    iput p2, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->dragStartPos:F

    .line 784
    iput p1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->orgDialogPos:F

    return-void
.end method
