.class public Lcom/metamoji/rb/RbHandleStyle;
.super Ljava/lang/Object;
.source "RbHandleStyle.java"


# instance fields
.field private _center:[Landroid/graphics/PointF;

.field private _images:[Landroid/graphics/Bitmap;

.field private _radius:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/metamoji/rb/RbConstants$HandleType;->count()I

    move-result v0

    .line 27
    new-array v1, v0, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/metamoji/rb/RbHandleStyle;->_images:[Landroid/graphics/Bitmap;

    .line 28
    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/metamoji/rb/RbHandleStyle;->_center:[Landroid/graphics/PointF;

    .line 29
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/metamoji/rb/RbHandleStyle;->_radius:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 31
    iget-object v2, p0, Lcom/metamoji/rb/RbHandleStyle;->_radius:[F

    const/high16 v3, 0x41200000    # 10.0f

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public center()[Landroid/graphics/PointF;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/rb/RbHandleStyle;->_center:[Landroid/graphics/PointF;

    return-object v0
.end method

.method public images()[Landroid/graphics/Bitmap;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/rb/RbHandleStyle;->_images:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public radius()[F
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/rb/RbHandleStyle;->_radius:[F

    return-object v0
.end method

.method public setImage(Landroid/graphics/Bitmap;Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;F)V
    .locals 3

    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-static {}, Lcom/metamoji/rb/RbConstants$HandleType;->count()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 43
    invoke-virtual {p2}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/metamoji/rb/RbHandleStyle;->_images:[Landroid/graphics/Bitmap;

    aput-object p1, v1, v0

    .line 45
    iget-object v1, p0, Lcom/metamoji/rb/RbHandleStyle;->_center:[Landroid/graphics/PointF;

    aput-object p3, v1, v0

    .line 46
    iget-object v1, p0, Lcom/metamoji/rb/RbHandleStyle;->_radius:[F

    aput p4, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
