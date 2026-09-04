.class public Lcom/metamoji/un/form/UnRuledlineUnit;
.super Lcom/metamoji/un/form/UnFormBase;
.source "UnRuledlineUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/form/UnRuledlineUnit$ModelDef;
    }
.end annotation


# static fields
.field public static final MODELTYPE:Ljava/lang/String; = "$ruledline"


# instance fields
.field m_cb_style:Lcom/metamoji/un/form/UnFormLineStyle;

.field m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

.field m_dl_style:Lcom/metamoji/un/form/UnFormLineStyle;

.field m_ml_style:Lcom/metamoji/un/form/UnFormLineStyle;

.field m_rl_style:Lcom/metamoji/un/form/UnFormLineStyle;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/form/UnFormBase;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method

.method public static collectDescription(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;
    .locals 3
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

    .line 36
    const-string v0, "ar-repeat"

    const/16 v1, 0x400

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 40
    :cond_0
    sget-object v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->SOLID:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->getIntValue()I

    move-result v0

    const-string/jumbo v1, "rl-style"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    .line 41
    sget-object v1, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->NONE:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->getIntValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-object v2

    :cond_1
    const/high16 v0, 0x41000000    # 8.0f

    .line 45
    invoke-static {v0}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "ar-pitch"

    invoke-interface {p0, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float p0, v0

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_RULEDLINE:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p0}, Lcom/metamoji/df/controller/DfUtility;->mmFromPoint(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "lsp"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public box_height()F
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const/high16 v1, 0x40800000    # 4.0f

    .line 166
    invoke-static {v1}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v1

    float-to-double v1, v1

    .line 165
    const-string v3, "cb-height"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public box_margin_bottom()F
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const/high16 v1, 0x40000000    # 2.0f

    .line 181
    invoke-static {v1}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v1

    float-to-double v1, v1

    .line 180
    const-string v3, "cb-margin-bottom"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public box_margin_left()F
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const/high16 v1, 0x40000000    # 2.0f

    .line 171
    invoke-static {v1}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v1

    float-to-double v1, v1

    .line 170
    const-string v3, "cb-margin-left"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public box_margin_right()F
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const/high16 v1, 0x40000000    # 2.0f

    .line 176
    invoke-static {v1}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v1

    float-to-double v1, v1

    .line 175
    const-string v3, "cb-margin-right"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public box_width()F
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const/high16 v1, 0x40800000    # 4.0f

    .line 161
    invoke-static {v1}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v1

    float-to-double v1, v1

    .line 160
    const-string v3, "cb-width"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 105
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/un/form/UnFormBase;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method public dl_angle()D
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "dl-angle"

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/form/UnRuledlineUnit;->toRad(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public dl_offset()F
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "dl-offset"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public dl_pitch()F
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const/high16 v1, 0x41000000    # 8.0f

    .line 187
    invoke-static {v1}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v1

    float-to-double v1, v1

    .line 186
    const-string v3, "dl-pitch"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected drawDiagonalLine()V
    .locals 20

    move-object/from16 v0, p0

    .line 299
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->getContentWidth()F

    move-result v4

    .line 300
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->getContentHeight()F

    move-result v5

    .line 301
    iget-object v1, v0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, v4}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 302
    iget-object v1, v0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, v5}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 304
    iget-object v1, v0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 307
    iget-object v2, v0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_dl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/form/UnFormLineStyle;->enabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_a

    .line 311
    :cond_0
    iget-object v2, v0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_dl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v2, v1}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    .line 313
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->dl_pitch()F

    move-result v8

    .line 314
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->dl_angle()D

    move-result-wide v2

    .line 315
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->dl_offset()F

    move-result v6

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v9, v2, v9

    .line 317
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v7, v9, v11

    const/4 v10, 0x1

    if-gez v7, :cond_2

    div-float/2addr v4, v8

    float-to-double v2, v4

    .line 319
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v10, v2

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_1

    int-to-float v2, v9

    mul-float/2addr v2, v8

    const/4 v3, 0x0

    const/4 v7, 0x0

    move v4, v2

    .line 321
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnRuledlineUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    return-void

    :cond_2
    const-wide v13, 0x400921fb54442d18L    # Math.PI

    sub-double v13, v2, v13

    .line 326
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpg-double v0, v13, v11

    if-ltz v0, :cond_d

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpg-double v0, v13, v11

    if-gez v0, :cond_3

    goto/16 :goto_a

    .line 331
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    double-to-float v0, v11

    div-float v7, v5, v4

    float-to-double v11, v7

    const/4 v7, 0x0

    cmpg-float v7, v0, v7

    if-gez v7, :cond_4

    move v7, v10

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    .line 334
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    float-to-double v9, v8

    .line 335
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    div-double v16, v9, v16

    move/from16 v18, v0

    move-object v8, v1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 336
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    div-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-float v9, v1

    div-float v1, v4, v0

    float-to-double v1, v1

    .line 337
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v10, v1

    div-float v1, v5, v9

    float-to-double v1, v1

    .line 338
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    cmpg-double v2, v11, v13

    if-gez v2, :cond_5

    div-float v3, v5, v18

    move v11, v3

    move v12, v5

    goto :goto_2

    :cond_5
    mul-float v3, v4, v18

    move v12, v3

    move v11, v4

    :goto_2
    if-gez v2, :cond_9

    if-eqz v7, :cond_7

    const/4 v9, 0x0

    :goto_3
    mul-int/lit8 v1, v10, 0x2

    if-ge v9, v1, :cond_6

    int-to-float v1, v9

    mul-float v2, v0, v1

    add-float v4, v11, v2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v8

    move v8, v0

    move-object/from16 v0, p0

    .line 353
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnRuledlineUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    move-object v0, v1

    add-int/lit8 v9, v9, 0x1

    move/from16 v19, v8

    move-object v8, v0

    move/from16 v0, v19

    goto :goto_3

    :cond_6
    move-object v1, v8

    goto/16 :goto_9

    :cond_7
    move-object/from16 v19, v8

    move v8, v0

    move-object/from16 v0, v19

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v10, :cond_8

    int-to-float v2, v9

    mul-float/2addr v2, v8

    add-float v4, v11, v2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v13, v1

    move-object v1, v0

    move-object/from16 v0, p0

    .line 358
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnRuledlineUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    add-int/lit8 v9, v9, 0x1

    move-object v0, v1

    move v1, v13

    goto :goto_4

    :cond_8
    move v13, v1

    move-object v1, v0

    const/4 v10, 0x1

    :goto_5
    if-ge v10, v13, :cond_c

    neg-float v0, v8

    int-to-float v2, v10

    mul-float/2addr v2, v0

    neg-int v0, v10

    int-to-float v0, v0

    mul-float/2addr v0, v8

    add-float v4, v11, v0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    .line 362
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnRuledlineUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_9
    move v13, v1

    move-object v1, v8

    move v8, v0

    if-eqz v7, :cond_a

    const/4 v8, 0x0

    :goto_6
    mul-int/lit8 v0, v13, 0x2

    if-ge v8, v0, :cond_c

    int-to-float v0, v8

    mul-float v3, v9, v0

    add-float v5, v12, v3

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    .line 369
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnRuledlineUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v13, :cond_b

    int-to-float v0, v11

    mul-float v3, v9, v0

    add-float v5, v12, v3

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    .line 373
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnRuledlineUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_b
    const/4 v15, 0x1

    :goto_8
    if-ge v15, v10, :cond_c

    int-to-float v0, v15

    mul-float v2, v8, v0

    mul-float/2addr v0, v9

    sub-float v5, v12, v0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    .line 376
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnRuledlineUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 380
    :cond_c
    :goto_9
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    :cond_d
    :goto_a
    return-void
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lcom/metamoji/un/form/UnFormBase;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 70
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string/jumbo v0, "style"

    sget-object v1, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->SOLID:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle;

    iget-object v1, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v2, "rl-"

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/un/form/UnFormLineStyle;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_rl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    .line 76
    new-instance p1, Lcom/metamoji/un/form/UnFormLineStyle;

    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "ml-"

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/metamoji/un/form/UnFormLineStyle;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_ml_style:Lcom/metamoji/un/form/UnFormLineStyle;

    .line 79
    new-instance p1, Lcom/metamoji/un/form/UnFormLineStyle;

    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "cb-"

    invoke-direct {p1, v0, v1, v2}, Lcom/metamoji/un/form/UnFormLineStyle;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_cb_style:Lcom/metamoji/un/form/UnFormLineStyle;

    .line 82
    new-instance p1, Lcom/metamoji/un/form/UnFormLineStyle;

    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "dl-"

    invoke-direct {p1, v0, v1, v2}, Lcom/metamoji/un/form/UnFormLineStyle;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_dl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    .line 85
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 87
    iget-object p1, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    .line 88
    iget-object p1, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 89
    iget-object p1, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 90
    iget-object p1, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 91
    iget-object p1, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 93
    iget-object p1, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_diagonalSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 0

    .line 98
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/form/UnFormBase;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    return-void
.end method

.method protected line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V
    .locals 0

    add-float/2addr p2, p6

    add-float/2addr p3, p7

    .line 385
    invoke-virtual {p1, p2, p3}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    add-float/2addr p6, p4

    add-float/2addr p7, p5

    .line 386
    invoke-virtual {p1, p6, p7}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    return-void
.end method

.method public max_repeat()I
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "ar-repeat"

    const/16 v2, 0x400

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ml_offset()F
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "ml-offset"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public ml_offsettype()Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;
    .locals 3

    .line 152
    sget-object v0, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->PERCENT:Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->getIntValue()I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "ml-offset-type"

    invoke-interface {v1, v2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public ml_type()I
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "ml-type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public pitch()F
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const/high16 v1, 0x41000000    # 8.0f

    .line 116
    invoke-static {v1}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v1

    float-to-double v1, v1

    .line 115
    const-string v3, "ar-pitch"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public rl_type()I
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/metamoji/un/form/UnRuledlineUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "rl-type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public toRad(D)D
    .locals 4

    const-wide v0, 0x4066800000000000L    # 180.0

    rem-double/2addr p1, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    sub-double p1, v0, p1

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    return-wide p1
.end method

.method protected updateFormSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 16

    move-object/from16 v0, p0

    .line 207
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->getContentWidth()F

    move-result v4

    .line 208
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->getContentHeight()F

    move-result v8

    .line 210
    iget-object v1, v0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v1

    .line 213
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->drawDiagonalLine()V

    .line 215
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->pitch()F

    move-result v9

    .line 216
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->max_repeat()I

    move-result v2

    .line 220
    iget-object v3, v0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_cb_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/form/UnFormLineStyle;->enabled()Z

    move-result v3

    const/4 v10, 0x0

    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->box_width()F

    move-result v3

    .line 222
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->box_height()F

    move-result v5

    .line 223
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->box_margin_left()F

    move-result v6

    .line 224
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->box_margin_right()F

    move-result v7

    .line 225
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->box_margin_bottom()F

    move-result v11

    add-float v12, v6, v3

    add-float/2addr v12, v7

    add-float/2addr v11, v5

    neg-float v7, v11

    .line 231
    iget-object v11, v0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_cb_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v11, v1}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    move v11, v2

    move v13, v9

    :goto_0
    if-lez v11, :cond_1

    cmpg-float v14, v13, v8

    if-gtz v14, :cond_1

    add-float v14, v13, v7

    .line 234
    invoke-virtual {v1, v6, v14, v3, v5}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    add-float/2addr v13, v9

    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_0
    move v12, v10

    .line 239
    :cond_1
    iget-object v3, v0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_rl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/form/UnFormLineStyle;->enabled()Z

    move-result v3

    const/4 v11, 0x1

    if-eqz v3, :cond_5

    .line 241
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->rl_type()I

    move-result v3

    if-eq v3, v11, :cond_2

    move v3, v10

    goto :goto_1

    :cond_2
    move v3, v9

    .line 249
    :goto_1
    iget-object v5, v0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_rl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v5, v1}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    .line 251
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 252
    iget-object v5, v0, Lcom/metamoji/un/form/UnRuledlineUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v5}, Lcom/metamoji/df/sprite/Sprite;->getY()F

    move-result v5

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->getMarginTop()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->getPaddingTop()F

    move-result v6

    add-float v14, v5, v6

    move v15, v2

    :goto_2
    if-lez v15, :cond_4

    cmpg-float v2, v3, v8

    if-gtz v2, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v3

    move v2, v12

    .line 254
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnRuledlineUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v5, v5, v9

    if-gez v5, :cond_3

    add-float v5, v14, v3

    .line 257
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-float/2addr v3, v9

    add-int/lit8 v15, v15, -0x1

    move v12, v2

    goto :goto_2

    .line 260
    :cond_4
    invoke-virtual {v0, v13}, Lcom/metamoji/un/form/UnRuledlineUnit;->registHLineInfo(Ljava/util/HashSet;)V

    .line 261
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    .line 265
    :cond_5
    iget-object v2, v0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_ml_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/form/UnFormLineStyle;->enabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 267
    sget-object v2, Lcom/metamoji/un/form/UnRuledlineUnit$1;->$SwitchMap$com$metamoji$un$form$UnFormBase$MMJUNFORM_LENGTH_TYPE:[I

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->ml_offsettype()Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v11, :cond_7

    if-eq v2, v3, :cond_6

    :goto_3
    move v2, v10

    goto :goto_4

    .line 272
    :cond_6
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->ml_offset()F

    move-result v2

    mul-float/2addr v4, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v10, v4, v2

    goto :goto_3

    .line 269
    :cond_7
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->ml_offset()F

    move-result v10

    goto :goto_3

    .line 275
    :goto_4
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->ml_type()I

    move-result v4

    if-eq v4, v11, :cond_9

    if-eq v4, v3, :cond_8

    goto :goto_5

    .line 287
    :cond_8
    iget-object v3, v0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_ml_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v3, v1}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v8

    .line 288
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnRuledlineUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    .line 289
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    return-void

    :cond_9
    move v5, v8

    .line 278
    iget-object v3, v0, Lcom/metamoji/un/form/UnRuledlineUnit;->m_ml_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v3, v1}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    .line 279
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->getMarginTop()F

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->getPaddingTop()F

    move-result v4

    add-float/2addr v3, v4

    .line 280
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->getMarginBottom()F

    move-result v4

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnRuledlineUnit;->getPaddingBottom()F

    move-result v6

    add-float/2addr v4, v6

    neg-float v3, v3

    add-float/2addr v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v2

    .line 281
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnRuledlineUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    .line 283
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    :cond_a
    :goto_5
    return-void
.end method
