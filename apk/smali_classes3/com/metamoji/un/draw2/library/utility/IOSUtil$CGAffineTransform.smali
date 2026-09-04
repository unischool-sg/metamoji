.class public Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;
.super Ljava/lang/Object;
.source "IOSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/utility/IOSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CGAffineTransform"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public tx:F

.field public ty:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 530
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    const/4 v0, 0x0

    .line 531
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    .line 535
    iput p2, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    .line 536
    iput p3, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    .line 537
    iput p4, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    .line 538
    iput p5, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    .line 539
    iput p6, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Matrix;)V
    .locals 0

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->set(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public matrix()Landroid/graphics/Matrix;
    .locals 6

    .line 547
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    iget v2, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    iget v3, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    iget v4, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    iget v5, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMake(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/graphics/Matrix;)V
    .locals 1

    .line 560
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    .line 561
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p1, 0x0

    .line 564
    aget p1, v0, p1

    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    const/4 p1, 0x3

    .line 565
    aget p1, v0, p1

    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    const/4 p1, 0x1

    .line 566
    aget p1, v0, p1

    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    const/4 p1, 0x4

    .line 567
    aget p1, v0, p1

    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    const/4 p1, 0x2

    .line 568
    aget p1, v0, p1

    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    const/4 p1, 0x5

    .line 569
    aget p1, v0, p1

    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    return-void
.end method

.method public set(Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;)V
    .locals 1

    .line 551
    iget v0, p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    .line 552
    iget v0, p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    .line 553
    iget v0, p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    .line 554
    iget v0, p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    .line 555
    iget v0, p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    .line 556
    iget p1, p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    return-void
.end method

.method public setTo(Landroid/graphics/Matrix;)V
    .locals 3

    .line 573
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    const/4 v1, 0x0

    .line 576
    iget v2, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 577
    iget v2, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 578
    iget v2, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 579
    iget v2, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 580
    iget v2, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 581
    iget v2, p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 582
    aput v2, v0, v1

    const/4 v1, 0x7

    .line 583
    aput v2, v0, v1

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    .line 584
    aput v2, v0, v1

    .line 585
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method
