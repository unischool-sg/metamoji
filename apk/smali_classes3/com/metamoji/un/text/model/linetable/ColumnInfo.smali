.class public Lcom/metamoji/un/text/model/linetable/ColumnInfo;
.super Ljava/lang/Object;
.source "ColumnInfo.java"


# instance fields
.field public baseline:F

.field public combineColumnInfoNum:I

.field public origin:Landroid/graphics/PointF;

.field public size:Lcom/metamoji/cm/SizeF;

.field public unitNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    .line 24
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, v1, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->unitNum:I

    .line 26
    iput v0, p0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->combineColumnInfoNum:I

    return-void
.end method


# virtual methods
.method public translateX(F)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    return-void
.end method
