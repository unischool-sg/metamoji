.class Lcom/metamoji/un/image/UnImageUnit$2;
.super Ljava/lang/Object;
.source "UnImageUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/image/UnImageUnit;->updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/image/UnImageUnit;

.field final synthetic val$mediatype:Lcom/metamoji/df/controller/ControllerContext$MediaType;

.field final synthetic val$pointArray:Lcom/metamoji/cm/PointArray;


# direct methods
.method constructor <init>(Lcom/metamoji/un/image/UnImageUnit;Lcom/metamoji/df/controller/ControllerContext$MediaType;Lcom/metamoji/cm/PointArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 671
    iput-object p1, p0, Lcom/metamoji/un/image/UnImageUnit$2;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    iput-object p2, p0, Lcom/metamoji/un/image/UnImageUnit$2;->val$mediatype:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iput-object p3, p0, Lcom/metamoji/un/image/UnImageUnit$2;->val$pointArray:Lcom/metamoji/cm/PointArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 674
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit$2;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    invoke-static {v0}, Lcom/metamoji/un/image/UnImageUnit;->access$000(Lcom/metamoji/un/image/UnImageUnit;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 675
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit$2;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    invoke-static {v0}, Lcom/metamoji/un/image/UnImageUnit;->access$100(Lcom/metamoji/un/image/UnImageUnit;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit$2;->val$mediatype:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    sget-object v2, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-ne v0, v2, :cond_3

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit$2;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/image/UnImageUnit;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    .line 678
    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnit$2;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    invoke-interface {v0, v2}, Lcom/metamoji/ctold/CtDocTagManager;->getTagInstances(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 679
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 681
    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnit$2;->val$pointArray:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v2}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez v2, :cond_0

    .line 682
    iget-object v5, p0, Lcom/metamoji/un/image/UnImageUnit$2;->val$pointArray:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v5, v3}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v5

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    move v6, v1

    :goto_1
    if-ge v6, v2, :cond_2

    .line 684
    iget-object v7, p0, Lcom/metamoji/un/image/UnImageUnit$2;->val$pointArray:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v7, v6}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v7

    .line 685
    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v9, v5, Landroid/graphics/PointF;->x:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    move-object v5, v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 689
    :cond_2
    iget v2, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v5, Landroid/graphics/PointF;->x:F

    .line 690
    iget v2, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v5, Landroid/graphics/PointF;->y:F

    .line 693
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 694
    iget-object v4, p0, Lcom/metamoji/un/image/UnImageUnit$2;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    invoke-virtual {v4}, Lcom/metamoji/un/image/UnImageUnit;->getRotation()D

    move-result-wide v6

    const-wide v8, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v6, v8

    double-to-float v4, v6

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 695
    iget v4, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/metamoji/un/image/UnImageUnit$2;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    .line 696
    invoke-virtual {v6}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetX()F

    move-result v6

    sub-float/2addr v4, v6

    iget-object v6, p0, Lcom/metamoji/un/image/UnImageUnit$2;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    invoke-static {v6}, Lcom/metamoji/un/image/UnImageUnit;->-$$Nest$fget_pictureSprite(Lcom/metamoji/un/image/UnImageUnit;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v6

    iget-object v7, p0, Lcom/metamoji/un/image/UnImageUnit$2;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    invoke-virtual {v7}, Lcom/metamoji/un/image/UnImageUnit;->getMaskWidth()F

    move-result v7

    div-float/2addr v6, v7

    mul-float/2addr v4, v6

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/metamoji/un/image/UnImageUnit$2;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    .line 697
    invoke-virtual {v6}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetY()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/metamoji/un/image/UnImageUnit$2;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    invoke-static {v6}, Lcom/metamoji/un/image/UnImageUnit;->-$$Nest$fget_pictureSprite(Lcom/metamoji/un/image/UnImageUnit;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v6

    iget-object v7, p0, Lcom/metamoji/un/image/UnImageUnit$2;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    invoke-virtual {v7}, Lcom/metamoji/un/image/UnImageUnit;->getMaskHeight()F

    move-result v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v4, v6, v3

    aput v5, v6, v1

    .line 699
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 700
    aget v2, v6, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    sub-double/2addr v2, v4

    .line 701
    aget v1, v6, v1

    float-to-double v6, v1

    sub-double/2addr v6, v4

    .line 704
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 705
    new-instance v4, Lcom/metamoji/cm/RectEx;

    double-to-float v5, v2

    double-to-float v8, v6

    const-wide/high16 v9, 0x4030000000000000L    # 16.0

    double-to-float v9, v9

    invoke-direct {v4, v5, v8, v9, v9}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 710
    iget-object v5, p0, Lcom/metamoji/un/image/UnImageUnit$2;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    invoke-static {v5}, Lcom/metamoji/un/image/UnImageUnit;->access$200(Lcom/metamoji/un/image/UnImageUnit;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/metamoji/ctold/tag/CtTagInstance;->drawForSprite(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/cm/RectEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/high16 v4, 0x4031000000000000L    # 17.0

    sub-double/2addr v6, v4

    goto :goto_2

    :catchall_0
    :cond_3
    return-void
.end method
