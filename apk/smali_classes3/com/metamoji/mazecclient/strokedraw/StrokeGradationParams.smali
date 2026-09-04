.class public Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;
.super Ljava/lang/Object;
.source "StrokeGradationParams.java"


# instance fields
.field colors_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field points_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field type_:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;


# direct methods
.method public constructor <init>(Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->type_:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;

    .line 22
    iput-object p2, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->points_:Ljava/util/List;

    .line 23
    iput-object p3, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->colors_:Ljava/util/List;

    return-void
.end method

.method public static linearGradation(Landroid/graphics/PointF;Landroid/graphics/PointF;II)Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;
    .locals 1

    .line 36
    new-instance v0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams$1;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 40
    new-instance p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams$2;

    invoke-direct {p0, p2, p3}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams$2;-><init>(II)V

    .line 44
    new-instance p1, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;

    sget-object p2, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;->Linear:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;

    invoke-direct {p1, p2, v0, p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;-><init>(Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public applyDrawAttribute(Landroid/graphics/Paint;)V
    .locals 11

    .line 98
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->getLinearGradationStartPoint()Landroid/graphics/PointF;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->getLinearGradationEndPoint()Landroid/graphics/PointF;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->getLinearGradationStartColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->getLinearGradationEndColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 102
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public getLinearGradationEndColor()Ljava/lang/Integer;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->colors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->colors_:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getLinearGradationEndPoint()Landroid/graphics/PointF;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->points_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->points_:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/metamoji/cm/PointUtils;->PointF(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getLinearGradationStartColor()Ljava/lang/Integer;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->colors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->colors_:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getLinearGradationStartPoint()Landroid/graphics/PointF;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->points_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->points_:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/metamoji/cm/PointUtils;->PointF(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
