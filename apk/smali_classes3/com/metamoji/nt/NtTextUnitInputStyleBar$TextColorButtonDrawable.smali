.class public Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextColorButtonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NtTextUnitInputStyleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtTextUnitInputStyleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextColorButtonDrawable"
.end annotation


# instance fields
.field private _baseButton:Landroid/widget/ImageButton;

.field final synthetic this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtTextUnitInputStyleBar;Landroid/widget/ImageButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextColorButtonDrawable;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextColorButtonDrawable;->_baseButton:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 208
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->tuisb_font_status:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 213
    iget-object v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextColorButtonDrawable;->_baseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getWidth()I

    move-result v1

    .line 214
    iget-object v2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextColorButtonDrawable;->_baseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    .line 216
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 218
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 219
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 220
    invoke-virtual {p1, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
