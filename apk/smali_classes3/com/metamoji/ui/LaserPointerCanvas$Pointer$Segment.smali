.class Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;
.super Ljava/lang/Object;
.source "LaserPointerCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/LaserPointerCanvas$Pointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Segment"
.end annotation


# instance fields
.field private _head:Landroid/graphics/PointF;

.field private _headVector:Landroid/graphics/PointF;

.field private final _path:Lcom/metamoji/df/sprite/Path;

.field private _prevSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

.field private _start:J

.field private _step:J

.field private _tail:Landroid/graphics/PointF;

.field private _tailVector:Landroid/graphics/PointF;

.field private _tick:I

.field private final _width:F

.field public count:I

.field public created:J

.field final synthetic this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;DLcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1042
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_head:Landroid/graphics/PointF;

    .line 1031
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tail:Landroid/graphics/PointF;

    .line 1032
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_headVector:Landroid/graphics/PointF;

    .line 1033
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tailVector:Landroid/graphics/PointF;

    .line 1043
    iget-wide v0, p1, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->width:D

    div-double/2addr v0, p2

    double-to-float p2, v0

    iput p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_width:F

    const/4 p3, -0x1

    .line 1044
    iput p3, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tick:I

    .line 1045
    new-instance p3, Lcom/metamoji/df/sprite/Path;

    invoke-direct {p3}, Lcom/metamoji/df/sprite/Path;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_path:Lcom/metamoji/df/sprite/Path;

    .line 1046
    invoke-static {p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_paint(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Lcom/metamoji/df/sprite/PaintSolid;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/metamoji/df/sprite/Path;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 1048
    invoke-virtual {p3, p2}, Lcom/metamoji/df/sprite/Path;->setLineWidth(F)V

    .line 1049
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->getAlpha()F

    move-result p2

    invoke-virtual {p3, p2}, Lcom/metamoji/df/sprite/Path;->setLineAlpha(F)V

    .line 1050
    sget-object p2, Lcom/metamoji/df/sprite/LineCap;->BUTT:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {p3, p2}, Lcom/metamoji/df/sprite/Path;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    const/4 p2, 0x0

    .line 1051
    iput p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->count:I

    .line 1052
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fput_lastTick(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;J)V

    iput-wide p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->created:J

    if-eqz p4, :cond_1

    .line 1054
    iget-object p1, p4, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_headVector:Landroid/graphics/PointF;

    .line 1055
    iget p2, p1, Landroid/graphics/PointF;->x:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-nez p2, :cond_0

    iget p2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p2, p2, p3

    if-nez p2, :cond_0

    .line 1056
    iput-object p4, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_prevSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    goto :goto_0

    .line 1058
    :cond_0
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_headVector:Landroid/graphics/PointF;

    .line 1059
    new-instance p2, Landroid/graphics/PointF;

    iget p3, p1, Landroid/graphics/PointF;->x:F

    neg-float p3, p3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    neg-float p1, p1

    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tailVector:Landroid/graphics/PointF;

    .line 1061
    :goto_0
    iget-object p1, p4, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_head:Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->moveTo(Landroid/graphics/PointF;)V

    :cond_1
    return-void
.end method

.method private createCap(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/df/sprite/Path;
    .locals 6

    .line 1170
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1171
    iget v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 1172
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v1

    iget v4, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v1

    iget v5, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v1

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1173
    iget p1, p2, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    iget p1, p2, Landroid/graphics/PointF;->y:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    .line 1174
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 1176
    :cond_0
    iget p1, p2, Landroid/graphics/PointF;->y:F

    float-to-double v3, p1

    iget p1, p2, Landroid/graphics/PointF;->x:F

    float-to-double p1, p1

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v3

    double-to-float p1, p1

    const/high16 p2, 0x42b40000    # 90.0f

    sub-float/2addr p1, p2

    const/high16 p2, 0x43340000    # 180.0f

    .line 1177
    invoke-virtual {v0, v2, p1, p2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 1180
    :goto_0
    new-instance p1, Lcom/metamoji/df/sprite/Path;

    invoke-direct {p1, v0}, Lcom/metamoji/df/sprite/Path;-><init>(Landroid/graphics/Path;)V

    .line 1181
    iget-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Path;->getLinePaint()Lcom/metamoji/df/sprite/Paint;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Path;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 1182
    iget-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Path;->getLineAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Path;->setFillAlpha(F)V

    .line 1183
    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Path;->setLineWidth(F)V

    return-object p1
.end method

.method private getAlpha()F
    .locals 2

    .line 1111
    iget v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tick:I

    .line 1114
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    if-gez v0, :cond_0

    .line 1112
    invoke-static {v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_alpha(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)F

    move-result v0

    return v0

    .line 1114
    :cond_0
    invoke-static {v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_alpha(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)F

    move-result v0

    iget v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tick:I

    rsub-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private setTailVector(Landroid/graphics/PointF;)V
    .locals 1

    .line 1066
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tailVector:Landroid/graphics/PointF;

    .line 1067
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_prevSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    if-eqz v0, :cond_0

    .line 1068
    invoke-direct {v0, p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->setTailVector(Landroid/graphics/PointF;)V

    const/4 p1, 0x0

    .line 1069
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_prevSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    :cond_0
    return-void
.end method


# virtual methods
.method draw(Lcom/metamoji/df/sprite/Graphics;ZZ)V
    .locals 2

    .line 1152
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->drawPath(Lcom/metamoji/df/sprite/Path;)V

    if-eqz p3, :cond_0

    .line 1155
    iget-object p3, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {p3}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_tailCap(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Lcom/metamoji/df/sprite/Path;

    move-result-object p3

    if-nez p3, :cond_0

    .line 1156
    iget-object p3, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tail:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tailVector:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->createCap(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/df/sprite/Path;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fput_tailCap(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Lcom/metamoji/df/sprite/Path;)V

    .line 1157
    iget-object p3, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {p3}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_tailCap(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Lcom/metamoji/df/sprite/Path;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/metamoji/df/sprite/Graphics;->drawPath(Lcom/metamoji/df/sprite/Path;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 1161
    iget-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {p2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_headCap(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Lcom/metamoji/df/sprite/Path;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1162
    iget-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {p2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_headCap(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Lcom/metamoji/df/sprite/Path;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Graphics;->removeInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    .line 1164
    :cond_1
    iget-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    iget-object p3, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_head:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_headVector:Landroid/graphics/PointF;

    invoke-direct {p0, p3, v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->createCap(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/df/sprite/Path;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fput_headCap(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Lcom/metamoji/df/sprite/Path;)V

    .line 1165
    iget-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {p2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_headCap(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Lcom/metamoji/df/sprite/Path;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Graphics;->drawPath(Lcom/metamoji/df/sprite/Path;)V

    :cond_2
    return-void
.end method

.method erase(Lcom/metamoji/df/sprite/Graphics;)V
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->removeInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    return-void
.end method

.method lineTo(Landroid/graphics/PointF;)V
    .locals 3

    .line 1079
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_path:Lcom/metamoji/df/sprite/Path;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/sprite/Path;->lineTo(FF)V

    .line 1080
    iget v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->count:I

    .line 1082
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_head:Landroid/graphics/PointF;

    .line 1083
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1084
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {v2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {v2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_headVector:Landroid/graphics/PointF;

    .line 1085
    iget-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tailVector:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tailVector:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 1086
    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_headVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_headVector:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->setTailVector(Landroid/graphics/PointF;)V

    :cond_1
    return-void
.end method

.method moveTo(Landroid/graphics/PointF;)V
    .locals 3

    .line 1074
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_path:Lcom/metamoji/df/sprite/Path;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/sprite/Path;->moveTo(FF)V

    .line 1075
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_head:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tail:Landroid/graphics/PointF;

    return-void
.end method

.method quadTo(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 5

    .line 1092
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_path:Lcom/metamoji/df/sprite/Path;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/metamoji/df/sprite/Path;->quadTo(FFFF)V

    .line 1093
    iget v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->count:I

    .line 1095
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_head:Landroid/graphics/PointF;

    .line 1096
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 1099
    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {v2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {v3}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_headVector:Landroid/graphics/PointF;

    goto :goto_1

    .line 1097
    :cond_2
    :goto_0
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_headVector:Landroid/graphics/PointF;

    .line 1101
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tailVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tailVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    .line 1102
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    goto :goto_2

    .line 1104
    :cond_4
    iget-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {p2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {p2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_7

    .line 1105
    :cond_5
    new-instance p2, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    invoke-direct {p2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, p2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->setTailVector(Landroid/graphics/PointF;)V

    return-void

    .line 1103
    :cond_6
    :goto_2
    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-static {v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->setTailVector(Landroid/graphics/PointF;)V

    :cond_7
    return-void
.end method

.method startFadeout(D)V
    .locals 6

    const/4 v0, 0x0

    .line 1122
    iput v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tick:I

    .line 1123
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->this$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    iget-wide v0, v0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->fadeoutDuration:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v4

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_step:J

    .line 1124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-double/2addr p1, v2

    double-to-int p1, p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_start:J

    return-void
.end method

.method tick(J)Z
    .locals 8

    .line 1133
    iget v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tick:I

    const/16 v1, 0x10

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_start:J

    sub-long v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    sub-long/2addr p1, v2

    .line 1134
    iget-wide v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_step:J

    div-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1135
    iget p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tick:I

    if-eq p1, p2, :cond_0

    .line 1136
    iput p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tick:I

    if-ge p1, v1, :cond_0

    .line 1138
    iget-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_path:Lcom/metamoji/df/sprite/Path;

    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Path;->setLineAlpha(F)V

    .line 1142
    :cond_0
    iget p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->_tick:I

    if-lt p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
