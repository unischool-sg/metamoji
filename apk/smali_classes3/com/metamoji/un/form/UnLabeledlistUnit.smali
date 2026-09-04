.class public Lcom/metamoji/un/form/UnLabeledlistUnit;
.super Lcom/metamoji/un/form/UnFormBase;
.source "UnLabeledlistUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/form/UnLabeledlistUnit$ModelDef;
    }
.end annotation


# static fields
.field public static final MODELTYPE:Ljava/lang/String; = "$labeledlist"


# instance fields
.field private m_hLines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field m_hl_style:Lcom/metamoji/un/form/UnFormLineStyle;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/form/UnFormBase;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method

.method public static collectDescription(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;
    .locals 0
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

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/metamoji/un/form/UnFormBase;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 57
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 58
    const-string/jumbo v0, "style"

    sget-object v1, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->SOLID:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle;

    iget-object v1, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "hl-"

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/un/form/UnFormLineStyle;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_hl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/form/UnFormBase;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    return-void
.end method

.method public lb_fontName()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-fontName"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lb_fontSize()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-fontSize"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lb_halign()Lcom/metamoji/un/form/UnFormBase$MMJHAlign;
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-halign"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v0

    return-object v0
.end method

.method public lb_label()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-label"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lb_margin_left()F
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_model:Lcom/metamoji/df/model/IModel;

    const/4 v1, 0x0

    .line 91
    invoke-static {v1}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v1

    float-to-double v1, v1

    .line 90
    const-string v3, "lb-margin-left"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public lb_margin_right()F
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_model:Lcom/metamoji/df/model/IModel;

    const/4 v1, 0x0

    .line 97
    invoke-static {v1}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v1

    float-to-double v1, v1

    .line 96
    const-string v3, "lb-margin-right"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public lb_textAlpha()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-textAlpha"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lb_textColor()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-textColor"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lb_valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-valign"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v0

    return-object v0
.end method

.method public lb_width()F
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-width"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V
    .locals 1

    add-float/2addr p2, p6

    add-float v0, p7, p3

    .line 173
    invoke-virtual {p1, p2, v0}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    add-float/2addr p6, p4

    add-float/2addr p7, p5

    .line 174
    invoke-virtual {p1, p6, p7}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    cmpl-float p1, p3, p5

    if-nez p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->getMarginTop()F

    move-result p2

    add-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->getPaddingTop()F

    move-result p2

    add-float/2addr p1, p2

    .line 178
    iget-object p2, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_hLines:Ljava/util/HashSet;

    add-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public pitch()F
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "ar-pitch"

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public style()I
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "ar-style"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected updateFormSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 2

    .line 137
    iget-object p1, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_hLines:Ljava/util/HashSet;

    if-nez p1, :cond_0

    .line 138
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_hLines:Ljava/util/HashSet;

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->style()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 160
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->updateFormSpriteEncloseRuledline(Z)V

    goto :goto_0

    .line 157
    :pswitch_1
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->updateFormSpriteEncloseTable()V

    goto :goto_0

    .line 154
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/metamoji/un/form/UnLabeledlistUnit;->updateFormSpriteEncloseRuledline(Z)V

    goto :goto_0

    .line 151
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->updateFormSpriteUniformLabels(Z)V

    goto :goto_0

    .line 148
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/metamoji/un/form/UnLabeledlistUnit;->updateFormSpriteUniformLabels(Z)V

    goto :goto_0

    .line 145
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->updateFormSpriteLeaderType(Z)V

    goto :goto_0

    .line 142
    :pswitch_6
    invoke-virtual {p0, v1}, Lcom/metamoji/un/form/UnLabeledlistUnit;->updateFormSpriteLeaderType(Z)V

    .line 167
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_hLines:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/form/UnLabeledlistUnit;->registHLineInfo(Ljava/util/HashSet;)V

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_hLines:Ljava/util/HashSet;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateFormSpriteEncloseRuledline(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 316
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->getContentWidth()F

    move-result v4

    .line 317
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->getContentHeight()F

    move-result v1

    .line 319
    new-instance v5, Lcom/metamoji/un/form/UnFormTextStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_label()Ljava/util/List;

    move-result-object v6

    .line 320
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_fontName()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_fontSize()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_textColor()Ljava/util/List;

    move-result-object v9

    .line 321
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_textAlpha()Ljava/util/List;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/metamoji/un/form/UnFormTextStyle;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 322
    invoke-virtual {v5}, Lcom/metamoji/un/form/UnFormTextStyle;->getCount()I

    move-result v8

    .line 324
    iget-object v2, v0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v2

    .line 327
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v3

    .line 328
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->pitch()F

    move-result v6

    int-to-float v7, v8

    mul-float v9, v6, v7

    cmpl-float v9, v9, v1

    if-lez v9, :cond_0

    .line 330
    sget-object v3, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->EQUALLY:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    .line 332
    :cond_0
    sget-object v9, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->EQUALLY:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    if-ne v3, v9, :cond_1

    div-float v6, v1, v7

    .line 337
    :cond_1
    new-array v9, v8, [Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v10, 0x0

    move v7, v1

    move v3, v10

    :goto_0
    if-ge v3, v8, :cond_2

    .line 340
    new-instance v11, Landroid/graphics/RectF;

    add-float v12, v7, v6

    invoke-direct {v11, v1, v7, v4, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v11, v9, v3

    add-int/lit8 v3, v3, 0x1

    move v7, v12

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {v5, v2}, Lcom/metamoji/un/form/UnFormTextStyle;->maxLabelWidth(Lcom/metamoji/df/sprite/Graphics;)F

    move-result v1

    .line 346
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_width()F

    move-result v3

    .line 347
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_margin_left()F

    move-result v6

    .line 348
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_halign()Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v7

    .line 349
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v11

    float-to-double v12, v3

    const-wide v14, 0x3cd203af9ee75616L    # 1.0E-15

    cmpg-double v12, v12, v14

    if-gez v12, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    move v3, v10

    :goto_2
    if-ge v3, v8, :cond_4

    .line 357
    invoke-virtual {v5, v2, v3}, Lcom/metamoji/un/form/UnFormTextStyle;->textWidth(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v12

    .line 358
    invoke-virtual {v5, v2, v3}, Lcom/metamoji/un/form/UnFormTextStyle;->textHeight(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v13

    .line 359
    invoke-static {v7, v1, v12}, Lcom/metamoji/un/form/UnLabeledlistUnit;->boxOffsetX(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;FF)F

    move-result v12

    .line 360
    aget-object v14, v9, v3

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    invoke-static {v11, v14, v13}, Lcom/metamoji/un/form/UnLabeledlistUnit;->boxOffsetY(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;FF)F

    move-result v13

    .line 361
    invoke-virtual {v5, v2, v3}, Lcom/metamoji/un/form/UnFormTextStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;I)V

    add-float/2addr v12, v6

    .line 363
    aget-object v14, v9, v3

    iget v14, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v13, v14

    .line 364
    invoke-virtual {v5, v2, v3, v12, v13}, Lcom/metamoji/un/form/UnFormTextStyle;->drawString(Lcom/metamoji/df/sprite/Graphics;IFF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 367
    :cond_4
    iget-object v1, v0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_hl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    if-eqz p1, :cond_5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 369
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnLabeledlistUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    if-ge v10, v8, :cond_6

    .line 372
    aget-object v0, v9, v10

    iget v0, v0, Landroid/graphics/RectF;->top:F

    aget-object v2, v9, v10

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float v3, v0, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move v5, v3

    move-object/from16 v0, p0

    .line 373
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnLabeledlistUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    .line 374
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method updateFormSpriteEncloseTable()V
    .locals 18

    move-object/from16 v0, p0

    .line 382
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->getContentWidth()F

    move-result v4

    .line 383
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->getContentHeight()F

    move-result v1

    .line 385
    new-instance v5, Lcom/metamoji/un/form/UnFormTextStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_label()Ljava/util/List;

    move-result-object v6

    .line 386
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_fontName()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_fontSize()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_textColor()Ljava/util/List;

    move-result-object v9

    .line 387
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_textAlpha()Ljava/util/List;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/metamoji/un/form/UnFormTextStyle;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 388
    invoke-virtual {v5}, Lcom/metamoji/un/form/UnFormTextStyle;->getCount()I

    move-result v8

    .line 390
    iget-object v2, v0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v2

    .line 393
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v3

    .line 394
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->pitch()F

    move-result v6

    int-to-float v7, v8

    mul-float v9, v6, v7

    cmpl-float v9, v9, v1

    if-lez v9, :cond_0

    .line 396
    sget-object v3, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->EQUALLY:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    .line 398
    :cond_0
    sget-object v9, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->EQUALLY:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    if-ne v3, v9, :cond_1

    div-float v6, v1, v7

    .line 403
    :cond_1
    new-array v9, v8, [Landroid/graphics/RectF;

    const/4 v10, 0x0

    move v7, v10

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_2

    .line 406
    new-instance v11, Landroid/graphics/RectF;

    add-float v12, v7, v6

    invoke-direct {v11, v10, v7, v4, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v11, v9, v3

    add-int/lit8 v3, v3, 0x1

    move v7, v12

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v5, v2}, Lcom/metamoji/un/form/UnFormTextStyle;->maxLabelWidth(Lcom/metamoji/df/sprite/Graphics;)F

    move-result v3

    .line 412
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_width()F

    move-result v6

    .line 413
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_margin_left()F

    move-result v11

    .line 414
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_margin_right()F

    move-result v12

    .line 415
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_halign()Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v7

    .line 416
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v13

    float-to-double v14, v6

    const-wide v16, 0x3cd203af9ee75616L    # 1.0E-15

    cmpg-double v14, v14, v16

    if-gez v14, :cond_3

    move v14, v3

    goto :goto_1

    :cond_3
    move v14, v6

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_4

    .line 424
    invoke-virtual {v5, v2, v3}, Lcom/metamoji/un/form/UnFormTextStyle;->textWidth(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v6

    .line 425
    invoke-virtual {v5, v2, v3}, Lcom/metamoji/un/form/UnFormTextStyle;->textHeight(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v15

    .line 426
    invoke-static {v7, v14, v6}, Lcom/metamoji/un/form/UnLabeledlistUnit;->boxOffsetX(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;FF)F

    move-result v6

    .line 427
    aget-object v16, v9, v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v13, v1, v15}, Lcom/metamoji/un/form/UnLabeledlistUnit;->boxOffsetY(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;FF)F

    move-result v1

    add-float/2addr v6, v11

    .line 429
    aget-object v15, v9, v3

    iget v15, v15, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v15

    .line 430
    invoke-virtual {v5, v2, v3}, Lcom/metamoji/un/form/UnFormTextStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;I)V

    .line 431
    invoke-virtual {v5, v2, v3, v6, v1}, Lcom/metamoji/un/form/UnFormTextStyle;->drawString(Lcom/metamoji/df/sprite/Graphics;IFF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 434
    :cond_4
    iget-object v1, v0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_hl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    .line 435
    iget-object v1, v0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getY()F

    move-result v1

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->getMarginTop()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->getPaddingTop()F

    move-result v3

    add-float v13, v1, v3

    .line 436
    iget-object v1, v0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_hLines:Ljava/util/HashSet;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    :goto_3
    add-int/lit8 v1, v8, -0x1

    if-ge v15, v1, :cond_5

    .line 438
    aget-object v1, v9, v15

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aget-object v3, v9, v15

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v3, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v2

    const/4 v2, 0x0

    move v5, v3

    .line 439
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnLabeledlistUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    move-object v0, v1

    add-int/lit8 v15, v15, 0x1

    move-object v2, v0

    move-object/from16 v0, p0

    goto :goto_3

    :cond_5
    move-object v0, v2

    add-float/2addr v14, v11

    add-float v2, v14, v12

    .line 442
    aget-object v3, v9, v1

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aget-object v1, v9, v1

    .line 443
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float v5, v3, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v1, v4

    move v4, v2

    move v8, v1

    move-object v1, v0

    move-object/from16 v0, p0

    .line 444
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnLabeledlistUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    .line 445
    invoke-virtual {v1, v10, v10, v8, v5}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    .line 446
    iget-object v2, v0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_hLines:Ljava/util/HashSet;

    add-float/2addr v13, v5

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    return-void
.end method

.method updateFormSpriteLeaderType(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 185
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->getContentWidth()F

    move-result v4

    .line 186
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->getContentHeight()F

    move-result v1

    .line 188
    new-instance v5, Lcom/metamoji/un/form/UnFormTextStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_label()Ljava/util/List;

    move-result-object v6

    .line 189
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_fontName()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_fontSize()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_textColor()Ljava/util/List;

    move-result-object v9

    .line 190
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_textAlpha()Ljava/util/List;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/metamoji/un/form/UnFormTextStyle;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object v8, v5

    .line 191
    invoke-virtual {v8}, Lcom/metamoji/un/form/UnFormTextStyle;->getCount()I

    move-result v9

    .line 193
    iget-object v2, v0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v2

    .line 196
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v3

    .line 197
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->pitch()F

    move-result v5

    int-to-float v6, v9

    mul-float v7, v5, v6

    cmpl-float v7, v7, v1

    if-lez v7, :cond_0

    .line 199
    sget-object v3, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->EQUALLY:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    .line 201
    :cond_0
    sget-object v7, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->EQUALLY:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    if-ne v3, v7, :cond_1

    div-float v5, v1, v6

    .line 205
    :cond_1
    new-array v10, v9, [Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v11, 0x0

    move v3, v1

    move v6, v11

    :goto_0
    if-ge v3, v9, :cond_2

    .line 208
    new-instance v7, Landroid/graphics/RectF;

    add-float v12, v6, v5

    invoke-direct {v7, v11, v6, v4, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v7, v10, v3

    add-int/lit8 v3, v3, 0x1

    move v6, v12

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_margin_left()F

    move-result v12

    .line 214
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_margin_right()F

    move-result v13

    .line 216
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v14

    .line 218
    iget-object v3, v0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_hl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v3, v2}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    move v15, v1

    :goto_1
    if-ge v15, v9, :cond_4

    .line 220
    invoke-virtual {v8, v2, v15}, Lcom/metamoji/un/form/UnFormTextStyle;->textWidth(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v1

    .line 221
    invoke-virtual {v8, v2, v15}, Lcom/metamoji/un/form/UnFormTextStyle;->textHeight(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v3

    .line 223
    aget-object v5, v10, v15

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v14, v5, v3}, Lcom/metamoji/un/form/UnLabeledlistUnit;->boxOffsetY(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;FF)F

    move-result v3

    add-float v5, v12, v11

    .line 225
    aget-object v6, v10, v15

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    .line 226
    invoke-virtual {v8, v2, v15}, Lcom/metamoji/un/form/UnFormTextStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;I)V

    .line 227
    invoke-virtual {v8, v2, v15, v5, v3}, Lcom/metamoji/un/form/UnFormTextStyle;->drawString(Lcom/metamoji/df/sprite/Graphics;IFF)V

    .line 231
    aget-object v3, v10, v15

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    add-float/2addr v3, v12

    add-float/2addr v3, v13

    if-eqz p1, :cond_3

    .line 234
    aget-object v1, v10, v15

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aget-object v5, v10, v15

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    goto :goto_2

    .line 236
    :cond_3
    aget-object v1, v10, v15

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aget-object v5, v10, v15

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    :goto_2
    add-float/2addr v1, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v1

    move/from16 v16, v3

    move v3, v1

    move-object v1, v2

    move/from16 v2, v16

    .line 238
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnLabeledlistUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    .line 239
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object v2, v1

    goto :goto_1

    :cond_4
    return-void
.end method

.method updateFormSpriteUniformLabels(Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 246
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->getContentWidth()F

    move-result v4

    .line 247
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->getContentHeight()F

    move-result v1

    .line 249
    iget-object v2, v0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v2

    .line 251
    new-instance v5, Lcom/metamoji/un/form/UnFormTextStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_label()Ljava/util/List;

    move-result-object v6

    .line 252
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_fontName()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_fontSize()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_textColor()Ljava/util/List;

    move-result-object v9

    .line 253
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_textAlpha()Ljava/util/List;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/metamoji/un/form/UnFormTextStyle;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 254
    invoke-virtual {v5}, Lcom/metamoji/un/form/UnFormTextStyle;->getCount()I

    move-result v8

    .line 257
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v3

    .line 258
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->pitch()F

    move-result v6

    int-to-float v7, v8

    mul-float v9, v6, v7

    cmpl-float v9, v9, v1

    if-lez v9, :cond_0

    .line 260
    sget-object v3, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->EQUALLY:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    .line 262
    :cond_0
    sget-object v9, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->EQUALLY:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    if-ne v3, v9, :cond_1

    div-float v6, v1, v7

    .line 267
    :cond_1
    new-array v9, v8, [Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v10, v1

    move v7, v3

    :goto_0
    if-ge v7, v8, :cond_2

    .line 270
    new-instance v11, Landroid/graphics/RectF;

    add-float v12, v10, v6

    invoke-direct {v11, v1, v10, v4, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v11, v9, v7

    add-int/lit8 v7, v7, 0x1

    move v10, v12

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {v5, v2}, Lcom/metamoji/un/form/UnFormTextStyle;->maxLabelWidth(Lcom/metamoji/df/sprite/Graphics;)F

    move-result v1

    .line 276
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_width()F

    move-result v6

    .line 277
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_margin_left()F

    move-result v10

    .line 278
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_margin_right()F

    move-result v11

    .line 279
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_halign()Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v7

    .line 280
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->lb_valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v12

    float-to-double v13, v6

    const-wide v15, 0x3cd203af9ee75616L    # 1.0E-15

    cmpg-double v13, v13, v15

    if-gez v13, :cond_3

    move v13, v1

    goto :goto_1

    :cond_3
    move v13, v6

    :goto_1
    move v1, v3

    :goto_2
    if-ge v1, v8, :cond_4

    .line 288
    invoke-virtual {v5, v2, v1}, Lcom/metamoji/un/form/UnFormTextStyle;->textWidth(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v6

    .line 289
    invoke-virtual {v5, v2, v1}, Lcom/metamoji/un/form/UnFormTextStyle;->textHeight(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v14

    .line 290
    invoke-static {v7, v13, v6}, Lcom/metamoji/un/form/UnLabeledlistUnit;->boxOffsetX(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;FF)F

    move-result v6

    .line 291
    aget-object v15, v9, v1

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    invoke-static {v12, v15, v14}, Lcom/metamoji/un/form/UnLabeledlistUnit;->boxOffsetY(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;FF)F

    move-result v14

    add-float/2addr v6, v10

    .line 293
    aget-object v15, v9, v1

    iget v15, v15, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v15

    .line 294
    invoke-virtual {v5, v2, v1}, Lcom/metamoji/un/form/UnFormTextStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;I)V

    .line 295
    invoke-virtual {v5, v2, v1, v6, v14}, Lcom/metamoji/un/form/UnFormTextStyle;->drawString(Lcom/metamoji/df/sprite/Graphics;IFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 297
    :cond_4
    iget-object v1, v0, Lcom/metamoji/un/form/UnLabeledlistUnit;->m_hl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    move v12, v3

    :goto_3
    if-ge v12, v8, :cond_6

    .line 300
    aget-object v1, v9, v12

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    add-float/2addr v1, v10

    add-float/2addr v1, v11

    if-eqz p1, :cond_5

    .line 303
    aget-object v3, v9, v12

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aget-object v5, v9, v12

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    goto :goto_4

    .line 305
    :cond_5
    aget-object v3, v9, v12

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aget-object v5, v9, v12

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    :goto_4
    add-float/2addr v3, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v3

    move-object/from16 v17, v2

    move v2, v1

    move-object/from16 v1, v17

    .line 307
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/form/UnLabeledlistUnit;->line(Lcom/metamoji/df/sprite/Graphics;FFFFFF)V

    .line 308
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object v2, v1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/metamoji/un/form/UnLabeledlistUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "ar-valign"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v0

    return-object v0
.end method
