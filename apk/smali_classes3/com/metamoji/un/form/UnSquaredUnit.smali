.class public Lcom/metamoji/un/form/UnSquaredUnit;
.super Lcom/metamoji/un/form/UnFormBase;
.source "UnSquaredUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/form/UnSquaredUnit$ModelDef;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MODELTYPE:Ljava/lang/String; = "$squared"


# instance fields
.field m_gl_style:Lcom/metamoji/un/form/UnFormLineStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/form/UnFormBase;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method

.method public static collectDescription(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    sget-object v1, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->SOLID:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->getIntValue()I

    move-result v1

    const-string v2, "gl-style"

    invoke-interface {p0, v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    .line 34
    sget-object v2, Lcom/metamoji/un/form/UnSquaredUnit$1;->$SwitchMap$com$metamoji$un$form$UnFormLineStyle$LineStyle:[I

    invoke-static {v1}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->valueOf(I)Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const-string/jumbo v3, "type"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    sget-object v1, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_SQUARED_CROSS:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_1
    sget-object v1, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_SQUARED_DOT:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_2
    sget-object v1, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_SQUARED_GRID:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/high16 v1, 0x41000000    # 8.0f

    .line 51
    invoke-static {v1}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "gl-pitch"

    invoke-interface {p0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float p0, v1

    .line 52
    invoke-static {p0}, Lcom/metamoji/df/controller/DfUtility;->mmFromPoint(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "lsp"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public border()I
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/metamoji/un/form/UnSquaredUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "border"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public halign()Lcom/metamoji/un/form/UnFormBase$MMJHAlign;
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/metamoji/un/form/UnSquaredUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "gl-halign"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v0

    return-object v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Lcom/metamoji/un/form/UnFormBase;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 71
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 72
    const-string/jumbo v0, "style"

    sget-object v1, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->SOLID:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle;

    iget-object v1, p0, Lcom/metamoji/un/form/UnSquaredUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "gl-"

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/un/form/UnFormLineStyle;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/un/form/UnSquaredUnit;->m_gl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/form/UnFormBase;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    return-void
.end method

.method public pitch()F
    .locals 5

    const/high16 v0, 0x40a00000    # 5.0f

    .line 83
    invoke-static {v0}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/metamoji/un/form/UnSquaredUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "gl-pitch"

    float-to-double v3, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public radius()D
    .locals 5

    const v0, 0x3e4ccccd    # 0.2f

    .line 88
    invoke-static {v0}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/metamoji/un/form/UnSquaredUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "gl-radius"

    float-to-double v3, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method protected updateFormSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 17

    move-object/from16 v0, p0

    .line 107
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnSquaredUnit;->getContentWidth()F

    move-result v1

    .line 108
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnSquaredUnit;->getContentHeight()F

    move-result v2

    .line 110
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnSquaredUnit;->pitch()F

    move-result v3

    .line 111
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnSquaredUnit;->border()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    div-float v6, v1, v3

    float-to-double v6, v6

    .line 113
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    goto :goto_0

    :cond_0
    div-float v6, v1, v3

    float-to-double v6, v6

    .line 114
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    :goto_0
    double-to-float v6, v6

    if-ne v4, v5, :cond_1

    div-float v7, v2, v3

    float-to-double v7, v7

    .line 115
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    goto :goto_1

    :cond_1
    div-float v7, v2, v3

    float-to-double v7, v7

    .line 116
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    :goto_1
    double-to-float v7, v7

    mul-float v8, v6, v3

    mul-float v9, v7, v3

    const/4 v10, 0x0

    if-ne v4, v5, :cond_2

    .line 122
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnSquaredUnit;->halign()Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v11

    invoke-static {v11, v1, v8}, Lcom/metamoji/un/form/UnSquaredUnit;->boxOffsetX(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;FF)F

    move-result v1

    .line 123
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnSquaredUnit;->valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v11

    invoke-static {v11, v2, v9}, Lcom/metamoji/un/form/UnSquaredUnit;->boxOffsetY(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;FF)F

    move-result v2

    goto :goto_2

    :cond_2
    move v1, v10

    move v2, v1

    .line 126
    :goto_2
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 127
    iget-object v12, v0, Lcom/metamoji/un/form/UnSquaredUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v12}, Lcom/metamoji/df/sprite/Sprite;->getY()F

    move-result v12

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnSquaredUnit;->getMarginTop()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnSquaredUnit;->getPaddingTop()F

    move-result v13

    add-float/2addr v12, v13

    .line 129
    iget-object v13, v0, Lcom/metamoji/un/form/UnSquaredUnit;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v13}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v13

    .line 130
    iget-object v14, v0, Lcom/metamoji/un/form/UnSquaredUnit;->m_gl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v14, v13}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    .line 132
    iget-object v14, v0, Lcom/metamoji/un/form/UnSquaredUnit;->m_gl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v14}, Lcom/metamoji/un/form/UnFormLineStyle;->getStyle()Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    move-result-object v14

    .line 133
    sget-object v15, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->DOT:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    const/16 v16, 0x0

    if-eq v15, v14, :cond_9

    sget-object v15, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->CROSS:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    if-ne v15, v14, :cond_3

    goto :goto_5

    :cond_3
    if-ne v4, v5, :cond_4

    move/from16 v10, v16

    goto :goto_3

    :cond_4
    move v10, v5

    :goto_3
    int-to-float v14, v10

    cmpg-float v15, v14, v6

    if-gtz v15, :cond_5

    mul-float/2addr v14, v3

    add-float/2addr v14, v1

    .line 168
    invoke-virtual {v13, v14, v2}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    add-float v15, v2, v9

    .line 169
    invoke-virtual {v13, v14, v15}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    if-nez v4, :cond_6

    .line 172
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    if-ne v4, v5, :cond_7

    move/from16 v5, v16

    :cond_7
    :goto_4
    int-to-float v4, v5

    cmpg-float v6, v4, v7

    if-gtz v6, :cond_f

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    .line 176
    invoke-virtual {v13, v1, v4}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    add-float v6, v1, v8

    .line 177
    invoke-virtual {v13, v6, v4}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 179
    iget-object v6, v0, Lcom/metamoji/un/form/UnSquaredUnit;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v6}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v6

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_8

    add-float/2addr v4, v12

    .line 180
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 136
    :cond_9
    :goto_5
    sget-object v4, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->DOT:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    if-ne v4, v14, :cond_a

    .line 138
    invoke-virtual {v13}, Lcom/metamoji/df/sprite/Graphics;->getLinePaint()Lcom/metamoji/df/sprite/Paint;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 139
    invoke-virtual {v13, v10}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 141
    :cond_a
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnSquaredUnit;->radius()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v5, v16

    :goto_6
    int-to-float v8, v5

    cmpg-float v9, v8, v6

    if-gtz v9, :cond_f

    mul-float/2addr v8, v3

    add-float/2addr v8, v1

    move/from16 v9, v16

    :goto_7
    int-to-float v10, v9

    cmpg-float v15, v10, v7

    if-gtz v15, :cond_e

    mul-float/2addr v10, v3

    add-float/2addr v10, v2

    if-nez v5, :cond_b

    add-float v15, v10, v12

    .line 148
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_b
    sget-object v15, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->DOT:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    if-ne v15, v14, :cond_c

    .line 151
    invoke-virtual {v13, v8, v10, v4}, Lcom/metamoji/df/sprite/Graphics;->drawCircle(FFF)V

    goto :goto_8

    .line 152
    :cond_c
    sget-object v15, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->CROSS:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    if-ne v15, v14, :cond_d

    sub-float v15, v8, v4

    .line 154
    invoke-virtual {v13, v15, v10}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    add-float v15, v8, v4

    .line 155
    invoke-virtual {v13, v15, v10}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    sub-float v15, v10, v4

    .line 157
    invoke-virtual {v13, v8, v15}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    add-float/2addr v10, v4

    .line 158
    invoke-virtual {v13, v8, v10}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    :cond_d
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 184
    :cond_f
    invoke-virtual {v13}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    .line 187
    invoke-virtual {v0, v11}, Lcom/metamoji/un/form/UnSquaredUnit;->registHLineInfo(Ljava/util/HashSet;)V

    return-void
.end method

.method public valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/metamoji/un/form/UnSquaredUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "gl-valign"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v0

    return-object v0
.end method
