.class public Lcom/metamoji/cm/BitmapEx;
.super Ljava/lang/Object;
.source "BitmapEx.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private _bitmap:Landroid/graphics/Bitmap;

.field public _cropRect:Landroid/graphics/Rect;

.field private _orgSize:Lcom/metamoji/cm/Size;

.field public clientData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/metamoji/cm/Size;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/metamoji/cm/BitmapEx;->_bitmap:Landroid/graphics/Bitmap;

    .line 24
    new-instance p1, Lcom/metamoji/cm/Size;

    invoke-direct {p1, p2}, Lcom/metamoji/cm/Size;-><init>(Lcom/metamoji/cm/Size;)V

    iput-object p1, p0, Lcom/metamoji/cm/BitmapEx;->_orgSize:Lcom/metamoji/cm/Size;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/metamoji/cm/BitmapEx;->_cropRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/metamoji/cm/Size;Landroid/graphics/Rect;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/metamoji/cm/BitmapEx;-><init>(Landroid/graphics/Bitmap;Lcom/metamoji/cm/Size;)V

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/metamoji/cm/BitmapEx;->_cropRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/metamoji/cm/BitmapEx;->_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/metamoji/cm/BitmapEx;->_bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/metamoji/cm/BitmapEx;->_bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/cm/BitmapEx;->_cropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOrgHeight()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/metamoji/cm/BitmapEx;->_orgSize:Lcom/metamoji/cm/Size;

    iget v0, v0, Lcom/metamoji/cm/Size;->height:I

    return v0
.end method

.method public getOrgWidth()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/cm/BitmapEx;->_orgSize:Lcom/metamoji/cm/Size;

    iget v0, v0, Lcom/metamoji/cm/Size;->width:I

    return v0
.end method

.method public getRatioX()F
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/metamoji/cm/BitmapEx;->_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/metamoji/cm/BitmapEx;->_orgSize:Lcom/metamoji/cm/Size;

    iget v1, v1, Lcom/metamoji/cm/Size;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getRatioY()F
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/metamoji/cm/BitmapEx;->_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/metamoji/cm/BitmapEx;->_orgSize:Lcom/metamoji/cm/Size;

    iget v1, v1, Lcom/metamoji/cm/Size;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isCropped()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/cm/BitmapEx;->_cropRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
