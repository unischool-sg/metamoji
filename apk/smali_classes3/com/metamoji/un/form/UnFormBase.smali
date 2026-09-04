.class public Lcom/metamoji/un/form/UnFormBase;
.super Lcom/metamoji/nt/NtUnitController;
.source "UnFormBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/form/UnFormBase$FormImageStyle;,
        Lcom/metamoji/un/form/UnFormBase$MMJHAlign;,
        Lcom/metamoji/un/form/UnFormBase$MMJVAlign;,
        Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;,
        Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ARC:Ljava/lang/String; = "arc"

.field static final CIRCLE:Ljava/lang/String; = "circle"

.field static final LINE:Ljava/lang/String; = "line"

.field static final PROP_BEZIERPATH:Ljava/lang/String; = "path"

.field static final PROP_END_X:Ljava/lang/String; = "ex"

.field static final PROP_END_Y:Ljava/lang/String; = "ey"

.field static final PROP_HALIGN:Ljava/lang/String; = "halign"

.field static final PROP_HEIGHT:Ljava/lang/String; = "height"

.field static final PROP_IMAGE:Ljava/lang/String; = "image"

.field static final PROP_IMAGES:Ljava/lang/String; = "images"

.field static final PROP_IMAGE_TICKET:Ljava/lang/String; = "imageTicket"

.field static final PROP_OTHER_X:Ljava/lang/String; = "ox"

.field static final PROP_OTHER_Y:Ljava/lang/String; = "oy"

.field static final PROP_RADIUS:Ljava/lang/String; = "r"

.field static final PROP_START_X:Ljava/lang/String; = "sx"

.field static final PROP_START_Y:Ljava/lang/String; = "sy"

.field static final PROP_VALIGN:Ljava/lang/String; = "valign"

.field static final PROP_WIDTH:Ljava/lang/String; = "width"

.field static final PROP_X:Ljava/lang/String; = "x"

.field static final PROP_Y:Ljava/lang/String; = "y"

.field static final RECT:Ljava/lang/String; = "rect"

.field static final SHAPE:Ljava/lang/String; = "shape"

.field static final SHAPES:Ljava/lang/String; = "shapes"


# instance fields
.field protected m_formSprite:Lcom/metamoji/df/sprite/Sprite;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtUnitController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 221
    iput-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    return-void
.end method

.method protected static boxOffsetX(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;FF)F
    .locals 1

    .line 767
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-float/2addr p1, p2

    return p1

    :cond_1
    sub-float/2addr p1, p2

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    return p1
.end method

.method protected static boxOffsetY(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;FF)F
    .locals 1

    .line 783
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-float/2addr p1, p2

    return p1

    :cond_1
    sub-float/2addr p1, p2

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    return p1
.end method

.method public static calcPaperSize(II)Lcom/metamoji/cm/Size;
    .locals 10

    const/4 v0, 0x0

    if-le p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 807
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 808
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x470

    if-ne v2, v4, :cond_2

    const/16 v4, 0x280

    if-ne v3, v4, :cond_2

    const/16 p0, 0x156

    const/16 p1, 0x260

    .line 811
    new-instance v0, Lcom/metamoji/cm/Size;

    if-eqz v1, :cond_1

    invoke-direct {v0, p0, p1}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v0

    :cond_1
    invoke-direct {v0, p1, p0}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v0

    .line 814
    :cond_2
    invoke-static {v2, v3}, Lcom/metamoji/un/form/UnFormBase;->gcd(II)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    .line 816
    div-int/2addr p0, v2

    .line 817
    div-int/2addr p1, v2

    .line 819
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ne v2, v3, :cond_5

    const/16 p0, 0x180

    const/16 p1, 0x240

    .line 821
    new-instance v0, Lcom/metamoji/cm/Size;

    if-eqz v1, :cond_4

    invoke-direct {v0, p0, p1}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v0

    :cond_4
    invoke-direct {v0, p1, p0}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v0

    :cond_5
    if-eqz v1, :cond_6

    move v9, p1

    move p1, p0

    move p0, v9

    :cond_6
    const/16 v2, 0x64

    .line 832
    rem-int v3, v2, p0

    int-to-double v4, p1

    int-to-double v6, p0

    div-double/2addr v4, v6

    sub-int v3, p0, v3

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    :goto_1
    const/16 v6, 0x3e8

    if-gt v3, v6, :cond_8

    int-to-double v6, v3

    mul-double/2addr v6, v4

    mul-int v8, v3, v3

    double-to-int v6, v6

    mul-int/2addr v6, v6

    add-int/2addr v8, v6

    const v6, 0x75ed1

    sub-int/2addr v8, v6

    .line 838
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_7

    move v0, v3

    move v2, v6

    :cond_7
    add-int/2addr v3, p0

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_a

    if-eqz v1, :cond_9

    .line 847
    new-instance v1, Lcom/metamoji/cm/Size;

    mul-int/2addr p1, v0

    div-int/2addr p1, p0

    invoke-direct {v1, p1, v0}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v1

    .line 849
    :cond_9
    new-instance v1, Lcom/metamoji/cm/Size;

    mul-int/2addr p1, v0

    div-int/2addr p1, p0

    invoke-direct {v1, v0, p1}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v1

    :cond_a
    if-eqz v1, :cond_b

    .line 854
    invoke-static {p1, p0}, Lcom/metamoji/un/form/UnFormBase;->calcPaperSize2InnerRough(II)Lcom/metamoji/cm/Size;

    move-result-object p0

    return-object p0

    .line 856
    :cond_b
    invoke-static {p0, p1}, Lcom/metamoji/un/form/UnFormBase;->calcPaperSize2InnerRough(II)Lcom/metamoji/cm/Size;

    move-result-object p0

    return-object p0
.end method

.method public static calcPaperSize2(II)Lcom/metamoji/cm/Size;
    .locals 3

    .line 862
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 863
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x470

    if-ne v0, v2, :cond_1

    const/16 v2, 0x280

    if-ne v1, v2, :cond_1

    const/16 v0, 0x260

    const/16 v1, 0x156

    if-le p0, p1, :cond_0

    .line 866
    new-instance p0, Lcom/metamoji/cm/Size;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/metamoji/cm/Size;

    invoke-direct {p0, v1, v0}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object p0

    .line 869
    :cond_1
    invoke-static {v0, v1}, Lcom/metamoji/un/form/UnFormBase;->gcd(II)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 871
    div-int/2addr p0, v0

    .line 872
    div-int/2addr p1, v0

    .line 874
    :cond_2
    invoke-static {p0, p1}, Lcom/metamoji/un/form/UnFormBase;->calcPaperSize2Inner(II)Lcom/metamoji/cm/Size;

    move-result-object p0

    return-object p0
.end method

.method private static calcPaperSize2Inner(II)Lcom/metamoji/cm/Size;
    .locals 14

    .line 885
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 886
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v0, v2, :cond_1

    if-ne v1, v3, :cond_1

    const/16 v0, 0x240

    const/16 v1, 0x180

    if-le p0, p1, :cond_0

    .line 889
    new-instance p0, Lcom/metamoji/cm/Size;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/metamoji/cm/Size;

    invoke-direct {p0, v1, v0}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object p0

    :cond_1
    const/16 v0, 0x64

    .line 894
    div-int v1, v0, p0

    rem-int/2addr v0, p0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    add-int/2addr v1, v0

    const/16 v0, 0x3e8

    .line 895
    div-int/2addr v0, p0

    if-ge v0, v1, :cond_3

    .line 898
    invoke-static {p0, p1}, Lcom/metamoji/un/form/UnFormBase;->calcPaperSize2InnerRough(II)Lcom/metamoji/cm/Size;

    move-result-object p0

    return-object p0

    :cond_3
    int-to-double v4, p1

    int-to-double v6, p0

    div-double/2addr v4, v6

    :goto_1
    if-gt v1, v0, :cond_9

    add-int v2, v1, v0

    .line 902
    div-int/2addr v2, v3

    sub-int v6, v0, v1

    const v7, 0x75ed1

    if-gt v6, v3, :cond_6

    mul-int v3, p0, p0

    mul-int v4, p1, p1

    add-int/2addr v3, v4

    mul-int v4, v1, v1

    mul-int/2addr v4, v3

    sub-int v4, v7, v4

    .line 907
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int v5, v2, v2

    mul-int/2addr v5, v3

    sub-int v5, v7, v5

    .line 909
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int v6, v0, v0

    mul-int/2addr v6, v3

    sub-int/2addr v7, v6

    .line 911
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v4, v5, :cond_4

    if-gt v4, v3, :cond_5

    mul-int v2, v1, p0

    goto :goto_3

    :cond_4
    if-gt v5, v3, :cond_5

    mul-int/2addr v2, p0

    goto :goto_3

    :cond_5
    mul-int v2, v0, p0

    goto :goto_3

    :cond_6
    mul-int v6, v2, p0

    mul-int v8, v6, v6

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double v12, v4, v4

    add-double/2addr v12, v10

    mul-double/2addr v8, v12

    double-to-int v8, v8

    if-ge v7, v8, :cond_7

    move v0, v2

    goto :goto_2

    :cond_7
    if-ge v8, v7, :cond_8

    move v1, v2

    :goto_2
    move v2, v6

    goto :goto_1

    :cond_8
    move v2, v6

    .line 938
    :cond_9
    :goto_3
    new-instance v0, Lcom/metamoji/cm/Size;

    mul-int/2addr p1, v2

    div-int/2addr p1, p0

    invoke-direct {v0, v2, p1}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v0
.end method

.method public static calcPaperSize2InnerRough(II)Lcom/metamoji/cm/Size;
    .locals 20

    move/from16 v0, p0

    move/from16 v1, p1

    mul-int v2, v0, v0

    int-to-double v2, v2

    mul-int v4, v1, v1

    int-to-double v4, v4

    add-double/2addr v4, v2

    const-wide v6, 0x411d7b4400000000L    # 483025.0

    mul-double/2addr v2, v6

    div-double/2addr v2, v4

    .line 954
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    int-to-double v4, v1

    mul-double v6, v2, v4

    int-to-double v0, v0

    div-double/2addr v6, v0

    .line 956
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v3, v2, 0x1

    .line 958
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v7, v6, 0x1

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x2

    if-ge v11, v14, :cond_4

    if-nez v11, :cond_0

    move v15, v2

    goto :goto_1

    :cond_0
    move v15, v3

    :goto_1
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v14, :cond_3

    if-nez v10, :cond_1

    move v14, v6

    goto :goto_3

    :cond_1
    move v14, v7

    :goto_3
    move-wide/from16 v16, v0

    int-to-double v0, v15

    move-wide/from16 v18, v0

    int-to-double v0, v14

    div-double v0, v18, v0

    div-double v18, v16, v4

    sub-double v0, v0, v18

    .line 967
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v14, v0, v8

    if-gez v14, :cond_2

    move-wide v8, v0

    move v13, v10

    move v12, v11

    :cond_2
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v0, v16

    const/4 v14, 0x2

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 975
    :cond_4
    new-instance v0, Lcom/metamoji/cm/Size;

    add-int/2addr v2, v12

    add-int/2addr v6, v13

    invoke-direct {v0, v2, v6}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v0
.end method

.method private static gcd(II)I
    .locals 0

    if-nez p1, :cond_0

    return p0

    .line 989
    :cond_0
    rem-int/2addr p0, p1

    invoke-static {p1, p0}, Lcom/metamoji/un/form/UnFormBase;->gcd(II)I

    move-result p0

    return p0
.end method

.method private updateFormArc(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/df/model/IModel;FLandroid/graphics/PointF;)V
    .locals 7

    .line 671
    const-string v0, "path"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 673
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 675
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x1

    .line 676
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 677
    sget-object v3, Lcom/metamoji/df/sprite/LineCap;->ROUND:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {p1, v3}, Lcom/metamoji/df/sprite/Graphics;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 678
    iget v3, p4, Landroid/graphics/PointF;->x:F

    .line 679
    iget p4, p4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, p3

    add-float/2addr v1, v3

    mul-float/2addr v2, p3

    add-float/2addr v2, p4

    .line 680
    invoke-virtual {p1, v1, v2}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    const/4 v1, 0x2

    :goto_0
    add-int/lit8 v2, v0, -0x3

    if-ge v1, v2, :cond_0

    .line 682
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-int/lit8 v4, v1, 0x1

    .line 683
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-int/lit8 v5, v1, 0x2

    .line 684
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-int/lit8 v6, v1, 0x3

    .line 685
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v5, p3

    add-float/2addr v5, v3

    mul-float/2addr v6, p3

    add-float/2addr v6, p4

    mul-float/2addr v2, p3

    add-float/2addr v2, v3

    mul-float/2addr v4, p3

    add-float/2addr v4, p4

    .line 686
    invoke-virtual {p1, v5, v6, v2, v4}, Lcom/metamoji/df/sprite/Graphics;->quadTo(FFFF)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 688
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    return-void
.end method

.method private updateFormCircle(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/df/model/IModel;FLandroid/graphics/PointF;)V
    .locals 5

    .line 706
    const-string/jumbo v0, "x"

    const-wide/16 v1, 0x0

    invoke-interface {p2, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 707
    const-string/jumbo v3, "y"

    invoke-interface {p2, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 708
    const-string v4, "r"

    invoke-interface {p2, v4, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float p2, v1

    mul-float/2addr v0, p3

    .line 709
    iget v1, p4, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    mul-float/2addr v3, p3

    iget p4, p4, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, p4

    mul-float/2addr p2, p3

    invoke-virtual {p1, v0, v3, p2}, Lcom/metamoji/df/sprite/Graphics;->drawCircle(FFF)V

    return-void
.end method

.method private updateFormImage(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 10

    if-nez p1, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    sget-object p2, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->ORGSIZE:Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    invoke-static {p2}, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->-$$Nest$mgetIntValue(Lcom/metamoji/un/form/UnFormBase$FormImageStyle;)I

    move-result p2

    const-string/jumbo v0, "style"

    invoke-interface {p1, v0, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p2

    .line 533
    invoke-static {p2}, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    move-result-object p2

    .line 534
    sget-object v0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->CENTER:Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    invoke-static {v0}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->-$$Nest$mgetIntValue(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;)I

    move-result v0

    const-string v1, "halign"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v0

    .line 535
    sget-object v1, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->CENTER:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    invoke-static {v1}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->-$$Nest$mgetIntValue(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;)I

    move-result v1

    const-string/jumbo v2, "valign"

    invoke-interface {p1, v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v1

    .line 537
    iget-object v2, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v3

    .line 538
    const-string v2, "imageTicket"

    invoke-interface {p1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/metamoji/df/controller/AttachmentsManager;->getAttachment(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 547
    invoke-static {v2, v5, v5, v4}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_3

    :goto_0
    return-void

    .line 551
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 552
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 553
    invoke-virtual {p2}, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->ordinal()I

    move-result p2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq p2, v7, :cond_7

    const/4 v5, 0x2

    if-eq p2, v5, :cond_4

    .line 597
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result p1

    int-to-float p2, v2

    invoke-static {v0, p1, p2}, Lcom/metamoji/un/form/UnFormBase;->boxOffsetX(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;FF)F

    move-result p1

    .line 598
    iget-object p2, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result p2

    int-to-float v0, v4

    invoke-static {v1, p2, v0}, Lcom/metamoji/un/form/UnFormBase;->boxOffsetY(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;FF)F

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move v4, p1

    .line 599
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    return-void

    .line 577
    :cond_4
    sget-object p2, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->XY:Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    invoke-static {p2}, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->-$$Nest$mgetIntValue(Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;)I

    move-result p2

    const-string v0, "repeat"

    invoke-interface {p1, v0, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    move-result-object p1

    .line 579
    invoke-virtual {p1}, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->ordinal()I

    move-result p1

    if-eq p1, v7, :cond_6

    if-eq p1, v5, :cond_5

    .line 588
    new-instance p1, Lcom/metamoji/cm/RectEx;

    iget-object p2, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result p2

    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v0

    invoke-direct {p1, v8, v8, p2, v0}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    goto :goto_1

    .line 584
    :cond_5
    new-instance p1, Lcom/metamoji/cm/RectEx;

    int-to-float p2, v2

    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v0

    invoke-direct {p1, v8, v8, p2, v0}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    goto :goto_1

    .line 581
    :cond_6
    new-instance p1, Lcom/metamoji/cm/RectEx;

    iget-object p2, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result p2

    int-to-float v0, v4

    invoke-direct {p1, v8, v8, p2, v0}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 591
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v3, p1, v6, p2, p2}, Lcom/metamoji/df/sprite/Graphics;->drawTiledImage(Landroid/graphics/RectF;Landroid/graphics/Bitmap;FF)V

    return-void

    .line 559
    :cond_7
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result p1

    int-to-float p2, v2

    div-float/2addr p1, p2

    int-to-float v2, v4

    mul-float v4, v2, p1

    .line 560
    iget-object v9, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v9}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v9

    cmpl-float v4, v4, v9

    if-lez v4, :cond_8

    .line 563
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result p1

    div-float/2addr p1, v2

    goto :goto_2

    :cond_8
    move v5, v7

    :goto_2
    move v7, p1

    .line 570
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v5, :cond_9

    .line 568
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result p1

    mul-float/2addr v2, v7

    invoke-static {v1, p1, v2}, Lcom/metamoji/un/form/UnFormBase;->boxOffsetY(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;FF)F

    move-result p1

    move v5, p1

    move v4, v8

    goto :goto_3

    .line 570
    :cond_9
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result p1

    mul-float/2addr p2, v7

    invoke-static {v0, p1, p2}, Lcom/metamoji/un/form/UnFormBase;->boxOffsetX(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;FF)F

    move-result p1

    move v4, p1

    move v5, v8

    :goto_3
    move v8, v7

    .line 572
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    return-void
.end method

.method private updateFormImages(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "images"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 517
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 520
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 521
    check-cast v1, Lcom/metamoji/df/model/IModel;

    invoke-direct {p0, v1, p1}, Lcom/metamoji/un/form/UnFormBase;->updateFormImage(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateFormLine(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/df/model/IModel;FLandroid/graphics/PointF;)V
    .locals 6

    .line 693
    const-string/jumbo v0, "sx"

    const-wide/16 v1, 0x0

    invoke-interface {p2, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 694
    const-string/jumbo v3, "sy"

    invoke-interface {p2, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 695
    const-string v4, "ex"

    invoke-interface {p2, v4, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 696
    const-string v5, "ey"

    invoke-interface {p2, v5, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float p2, v1

    .line 697
    iget v1, p4, Landroid/graphics/PointF;->x:F

    .line 698
    iget p4, p4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p3

    add-float/2addr v0, v1

    mul-float/2addr v3, p3

    add-float/2addr v3, p4

    .line 699
    invoke-virtual {p1, v0, v3}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    mul-float/2addr v4, p3

    add-float/2addr v4, v1

    mul-float/2addr p2, p3

    add-float/2addr p2, p4

    .line 700
    invoke-virtual {p1, v4, p2}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 701
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    return-void
.end method

.method private updateFormRect(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/df/model/IModel;FLandroid/graphics/PointF;)V
    .locals 6

    .line 660
    const-string/jumbo v0, "x"

    const-wide/16 v1, 0x0

    invoke-interface {p2, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 661
    const-string/jumbo v3, "y"

    invoke-interface {p2, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 662
    const-string/jumbo v4, "width"

    invoke-interface {p2, v4, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 663
    const-string v5, "height"

    invoke-interface {p2, v5, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float p2, v1

    mul-float/2addr v0, p3

    .line 664
    iget v1, p4, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    mul-float/2addr v3, p3

    iget p4, p4, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, p4

    mul-float/2addr v4, p3

    mul-float/2addr p2, p3

    invoke-virtual {p1, v0, v3, v4, p2}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    return-void
.end method

.method private updateFormShapes(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 9

    .line 608
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v0, "shapes"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    .line 615
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getWidth()F

    move-result v1

    .line 616
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getHeight()F

    move-result v2

    .line 617
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getMarginLeft()F

    move-result v3

    sub-float v3, v1, v3

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getMarginRight()F

    move-result v4

    sub-float/2addr v3, v4

    .line 618
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getMarginTop()F

    move-result v4

    sub-float v4, v2, v4

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getMarginBottom()F

    move-result v5

    sub-float/2addr v4, v5

    .line 619
    const-string/jumbo v5, "width"

    float-to-double v6, v3

    invoke-interface {p1, v5, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 620
    const-string v6, "height"

    float-to-double v7, v4

    invoke-interface {p1, v6, v7, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v3, v5

    div-float/2addr v4, v6

    .line 621
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 622
    sget-object v4, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->CENTER:Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    invoke-static {v4}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->-$$Nest$mgetIntValue(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;)I

    move-result v4

    const-string v7, "halign"

    invoke-interface {p1, v7, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v4

    .line 623
    sget-object v7, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->CENTER:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    invoke-static {v7}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->-$$Nest$mgetIntValue(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;)I

    move-result v7

    const-string/jumbo v8, "valign"

    invoke-interface {p1, v8, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v7

    mul-float/2addr v5, v3

    .line 624
    invoke-static {v4, v1, v5}, Lcom/metamoji/un/form/UnFormBase;->boxOffsetX(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;FF)F

    move-result v1

    mul-float/2addr v6, v3

    .line 625
    invoke-static {v7, v2, v6}, Lcom/metamoji/un/form/UnFormBase;->boxOffsetY(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;FF)F

    move-result v2

    .line 626
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 627
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 628
    const-string/jumbo v2, "style"

    sget-object v5, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->SOLID:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object p1

    .line 630
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_6

    .line 633
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/df/model/IModel;

    .line 635
    new-instance v7, Lcom/metamoji/un/form/UnFormShapeStyle;

    const-string v8, ""

    invoke-direct {v7, v6, v8, v1}, Lcom/metamoji/un/form/UnFormShapeStyle;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    .line 636
    invoke-virtual {v7}, Lcom/metamoji/un/form/UnFormShapeStyle;->enabled()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 639
    :cond_1
    invoke-virtual {v7, v0}, Lcom/metamoji/un/form/UnFormShapeStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    .line 641
    invoke-interface {v6}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v7

    .line 642
    const-string v8, "rect"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 644
    invoke-direct {p0, v0, v6, v3, v4}, Lcom/metamoji/un/form/UnFormBase;->updateFormRect(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/df/model/IModel;FLandroid/graphics/PointF;)V

    goto :goto_1

    .line 645
    :cond_2
    const-string v8, "arc"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 647
    invoke-direct {p0, v0, v6, v3, v4}, Lcom/metamoji/un/form/UnFormBase;->updateFormArc(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/df/model/IModel;FLandroid/graphics/PointF;)V

    goto :goto_1

    .line 648
    :cond_3
    const-string v8, "line"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 650
    invoke-direct {p0, v0, v6, v3, v4}, Lcom/metamoji/un/form/UnFormBase;->updateFormLine(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/df/model/IModel;FLandroid/graphics/PointF;)V

    goto :goto_1

    .line 651
    :cond_4
    const-string v8, "circle"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 653
    invoke-direct {p0, v0, v6, v3, v4}, Lcom/metamoji/un/form/UnFormBase;->updateFormCircle(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/df/model/IModel;FLandroid/graphics/PointF;)V

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public static visitModelForAttachments(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/AttachmentsModelVisitContext;)V
    .locals 2

    .line 741
    sget-object v0, Lcom/metamoji/un/form/UnFormBase$1;->$SwitchMap$com$metamoji$df$controller$AttachmentsModelVisitContext$VisitorCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->getCommand()Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x2

    if-eq v0, p0, :cond_3

    .line 759
    const-string p0, "UnFormBase.visitModelForAttachments: unknown command."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 744
    :cond_0
    const-string v0, "images"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 745
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 748
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 749
    check-cast v0, Lcom/metamoji/df/model/IModel;

    const-string v1, "imageTicket"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 751
    invoke-virtual {p1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->getTickets()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public canFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 251
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 254
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method public getBgAlpha()F
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "background-alpha"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "background-color"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBorderAlpha()F
    .locals 4

    .line 415
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "border-alpha"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getBorderColor()Ljava/lang/String;
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "border-color"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 411
    :cond_0
    const-string v0, "#000000"

    return-object v0
.end method

.method public getBorderWeightBottom()F
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "border-weight-bottom"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getBorderWeightLeft()F
    .locals 4

    .line 403
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "border-weight-left"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getBorderWeightRight()F
    .locals 4

    .line 395
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "border-weight-right"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getBorderWeightTop()F
    .locals 4

    .line 391
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "border-weight-top"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getContentHeight()F
    .locals 2

    .line 350
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getMarginTop()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getMarginBottom()F

    move-result v1

    sub-float/2addr v0, v1

    .line 351
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getPaddingBottom()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getContentWidth()F
    .locals 2

    .line 340
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getMarginLeft()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getMarginRight()F

    move-result v1

    sub-float/2addr v0, v1

    .line 341
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getPaddingRight()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getHeight()F
    .locals 5

    .line 326
    invoke-super {p0}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v0

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperHeight()F

    move-result v0

    :cond_0
    return v0
.end method

.method public getMarginBottom()F
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "margin-bottom"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getMarginLeft()F
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "margin-left"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getMarginRight()F
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "margin-right"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getMarginTop()F
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "margin-top"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getMinSize()Lcom/metamoji/cm/SizeF;
    .locals 2

    .line 269
    new-instance v0, Lcom/metamoji/cm/SizeF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public getPaddingBottom()F
    .locals 4

    .line 379
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "padding-bottom"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getPaddingLeft()F
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "padding-left"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getPaddingRight()F
    .locals 4

    .line 375
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "padding-right"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getPaddingTop()F
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "padding-top"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getWidth()F
    .locals 5

    .line 316
    invoke-super {p0}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v0

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperWidth()F

    move-result v0

    :cond_0
    return v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    .line 226
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 228
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 234
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 236
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    .line 237
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 0

    .line 244
    invoke-super {p0, p1, p2}, Lcom/metamoji/nt/NtUnitController;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    return-void
.end method

.method public isContainer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected registHLineInfo(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 719
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 724
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 726
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->formPosData()Lcom/metamoji/un/form/UnFormPositionData;

    move-result-object p1

    .line 727
    iget-object v1, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getPaddingLeft()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getMarginLeft()F

    move-result v2

    add-float/2addr v1, v2

    .line 728
    iget-object v2, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getPaddingRight()F

    move-result v3

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getMarginRight()F

    move-result v4

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 729
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->spriteRect()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/metamoji/un/form/UnFormPositionData;->addInfoY(Lcom/metamoji/cm/RectEx;Ljava/util/ArrayList;FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V
    .locals 4

    .line 275
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 276
    iget-object p3, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    if-eqz p3, :cond_0

    .line 277
    iget-object p3, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    .line 278
    iget-object v0, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 279
    const-string/jumbo v1, "x"

    float-to-double v2, p3

    invoke-interface {p2, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 280
    const-string/jumbo v1, "y"

    float-to-double v2, v0

    invoke-interface {p2, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 281
    iget-object v1, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, p3}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 282
    iget-object p3, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p3, v0}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 284
    :cond_0
    iget-object p3, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz p3, :cond_1

    .line 285
    iget-object p3, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget p3, p3, Lcom/metamoji/cm/SizeF;->height:F

    .line 286
    iget-object v0, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 287
    const-string v1, "height"

    float-to-double v2, p3

    invoke-interface {p2, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 288
    const-string/jumbo v1, "width"

    float-to-double v2, v0

    invoke-interface {p2, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 289
    iget-object v1, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 290
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, p3}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 292
    :cond_1
    iget-object p3, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz p3, :cond_2

    .line 293
    const-string/jumbo p3, "rotation"

    iget-object v0, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-interface {p2, p3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 294
    iget-object p2, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object p1, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    .line 298
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getMarginLeft()F

    move-result p2

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getPaddingLeft()F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 299
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getMarginTop()F

    move-result p2

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getPaddingTop()F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 300
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getContentWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 301
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormBase;->getContentHeight()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 303
    sget-object p1, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/form/UnFormBase;->updateSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    .line 306
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->isVisible()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_3

    .line 307
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    .line 309
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->isVisible()Z

    move-result p1

    if-nez p1, :cond_4

    .line 310
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    :cond_4
    return-void
.end method

.method protected spriteRect()Lcom/metamoji/cm/RectEx;
    .locals 5

    .line 387
    new-instance v0, Lcom/metamoji/cm/RectEx;

    iget-object v1, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v0
.end method

.method protected updateFormSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 0

    return-void
.end method

.method protected updateSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 18

    move-object/from16 v0, p0

    .line 432
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase;->getWidth()F

    move-result v1

    .line 433
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase;->getHeight()F

    move-result v2

    .line 434
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase;->getMarginTop()F

    move-result v3

    .line 435
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase;->getMarginRight()F

    move-result v4

    .line 436
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase;->getMarginBottom()F

    move-result v5

    .line 437
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase;->getMarginLeft()F

    move-result v6

    .line 439
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase;->getBorderWeightTop()F

    move-result v7

    .line 440
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase;->getBorderWeightRight()F

    move-result v8

    .line 441
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase;->getBorderWeightBottom()F

    move-result v9

    .line 442
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase;->getBorderWeightLeft()F

    move-result v10

    .line 444
    iget-object v11, v0, Lcom/metamoji/un/form/UnFormBase;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v11

    .line 445
    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 446
    iget-object v12, v0, Lcom/metamoji/un/form/UnFormBase;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v12}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v12

    invoke-virtual {v12}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 449
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase;->getBgColor()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    const/4 v13, 0x0

    .line 451
    invoke-virtual {v11, v13}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 452
    invoke-static {v12}, Lcom/metamoji/cm/ColorUtils;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 453
    new-instance v14, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v14, v12}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v11, v14}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 454
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase;->getBgAlpha()F

    move-result v12

    invoke-virtual {v11, v12}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    .line 455
    invoke-virtual {v11, v13, v13, v1, v2}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    .line 459
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/un/form/UnFormBase;->updateFormImages(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    .line 462
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/un/form/UnFormBase;->updateFormShapes(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    .line 465
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/un/form/UnFormBase;->updateFormSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    float-to-double v12, v7

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    move-wide/from16 v16, v14

    if-gtz v12, :cond_2

    float-to-double v14, v8

    cmpl-double v13, v14, v16

    if-gtz v13, :cond_2

    float-to-double v13, v9

    cmpl-double v13, v13, v16

    if-gtz v13, :cond_2

    float-to-double v13, v10

    cmpl-double v13, v13, v16

    if-lez v13, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 470
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase;->getBorderColor()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/metamoji/cm/ColorUtils;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 471
    new-instance v14, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v14, v13}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v11, v14}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 472
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase;->getBorderAlpha()F

    move-result v13

    invoke-virtual {v11, v13}, Lcom/metamoji/df/sprite/Graphics;->setLineAlpha(F)V

    .line 473
    sget-object v13, Lcom/metamoji/df/sprite/LineCap;->ROUND:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v11, v13}, Lcom/metamoji/df/sprite/Graphics;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 474
    sget-object v13, Lcom/metamoji/df/sprite/LineJoin;->ROUND:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v11, v13}, Lcom/metamoji/df/sprite/Graphics;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    const/4 v13, 0x1

    if-lez v12, :cond_3

    .line 477
    invoke-virtual {v11, v7}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 478
    invoke-virtual {v11, v6, v3}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    sub-float v7, v1, v4

    .line 479
    invoke-virtual {v11, v7, v3}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    move v7, v13

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    :goto_1
    float-to-double v14, v8

    cmpl-double v12, v14, v16

    const/4 v14, 0x2

    if-lez v12, :cond_5

    .line 483
    invoke-virtual {v11, v8}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    if-eq v7, v13, :cond_4

    sub-float v7, v1, v4

    .line 485
    invoke-virtual {v11, v7, v3}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    :cond_4
    sub-float v7, v1, v4

    sub-float v8, v2, v5

    .line 487
    invoke-virtual {v11, v7, v8}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    move v7, v14

    :cond_5
    float-to-double v12, v9

    cmpl-double v8, v12, v16

    const/4 v12, 0x3

    if-lez v8, :cond_7

    .line 491
    invoke-virtual {v11, v9}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    if-eq v7, v14, :cond_6

    sub-float/2addr v1, v4

    sub-float v4, v2, v5

    .line 493
    invoke-virtual {v11, v1, v4}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    :cond_6
    sub-float v1, v2, v5

    .line 495
    invoke-virtual {v11, v6, v1}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    move v7, v12

    :cond_7
    float-to-double v8, v10

    cmpl-double v1, v8, v16

    if-lez v1, :cond_9

    .line 499
    invoke-virtual {v11, v10}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    if-eq v7, v12, :cond_8

    sub-float/2addr v2, v5

    .line 501
    invoke-virtual {v11, v6, v2}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    .line 503
    :cond_8
    invoke-virtual {v11, v6, v3}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 505
    :cond_9
    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    return-void
.end method
