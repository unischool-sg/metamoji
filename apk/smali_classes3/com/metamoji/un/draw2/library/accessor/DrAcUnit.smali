.class public Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;
.super Ljava/lang/Object;
.source "DrAcUnit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static angleInDegrees(Lcom/metamoji/nt/NtUnitController;)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 113
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getRotation()D

    move-result-wide v2

    double-to-float p0, v2

    .line 117
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x1

    .line 118
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 121
    :cond_1
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p0

    return p0
.end method

.method public static angleInRadians(Lcom/metamoji/nt/NtUnitController;)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 126
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getRotation()D

    move-result-wide v2

    double-to-float p0, v2

    .line 130
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x1

    .line 131
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    :cond_1
    return p0
.end method

.method public static checkUnit(Lcom/metamoji/nt/NtUnitController;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static contentScale(Lcom/metamoji/nt/NtUnitController;)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 139
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getContentScale()D

    move-result-wide v2

    double-to-float p0, v2

    .line 143
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x1

    .line 144
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    :cond_1
    return p0
.end method

.method public static doesNotConcernAboutHitTestPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;ZZZLcom/metamoji/nt/NtUnitController;)Z
    .locals 1

    if-nez p5, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 304
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 307
    invoke-virtual {p5}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->globalPointFromLocalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {p5}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object p0

    .line 310
    :cond_1
    invoke-virtual {p5, p0, p2, p3, p4}, Lcom/metamoji/nt/NtUnitController;->doesNotConcernAboutHitTestPoint(Landroid/graphics/PointF;ZZZ)Z

    move-result p0

    return p0
.end method

.method public static extractText(Lcom/metamoji/nt/NtUnitController;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 318
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 319
    const-string p0, ""

    return-object p0

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->extractText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static focusable(Lcom/metamoji/nt/NtUnitController;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 205
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->canFocus()Z

    move-result p0

    return p0
.end method

.method public static height(Lcom/metamoji/nt/NtUnitController;)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 72
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result p0

    .line 76
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x1

    .line 77
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    :cond_1
    return p0
.end method

.method public static ignoreFocusRestrictionsByOthers(Lcom/metamoji/nt/NtUnitController;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 281
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->ignoreFocusRestrictionsByOthers()Z

    move-result p0

    return p0
.end method

.method public static ignoreRemoveRestrictionsByOthers(Lcom/metamoji/nt/NtUnitController;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 270
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->ignoreRemoveRestrictionsByOthers()Z

    move-result p0

    return p0
.end method

.method public static ignoreSelectRestrictionsByOthers(Lcom/metamoji/nt/NtUnitController;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 259
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->ignoreSelectRestrictionsByOthers()Z

    move-result p0

    return p0
.end method

.method public static linkStringAtPoint(Landroid/graphics/PointF;Lcom/metamoji/nt/NtUnitController;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 331
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    .line 334
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/nt/NtUnitController;->linkHitTest(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makePasteboardData(Ljava/util/Map;Lcom/metamoji/nt/NtUnitController;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/metamoji/nt/NtUnitController;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 350
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static minSize(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/cm/SizeF;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 152
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 153
    new-instance p0, Lcom/metamoji/cm/SizeF;

    invoke-direct {p0, v1, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object p0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getMinSize()Lcom/metamoji/cm/SizeF;

    move-result-object p0

    .line 156
    iget v2, p0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 157
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 158
    iput v1, p0, Lcom/metamoji/cm/SizeF;->width:F

    .line 160
    :cond_1
    iget v2, p0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 161
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 162
    iput v1, p0, Lcom/metamoji/cm/SizeF;->height:F

    :cond_2
    return-object p0
.end method

.method public static model(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 183
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static noFocusing(Lcom/metamoji/nt/NtUnitController;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 248
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->noFocusing()Z

    move-result p0

    return p0
.end method

.method public static noResizing(Lcom/metamoji/nt/NtUnitController;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 216
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->noResizing()Z

    move-result p0

    return p0
.end method

.method public static noResizingX(Lcom/metamoji/nt/NtUnitController;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 224
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->noResizingX()Z

    move-result p0

    return p0
.end method

.method public static noResizingY(Lcom/metamoji/nt/NtUnitController;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 232
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->noResizingY()Z

    move-result p0

    return p0
.end method

.method public static noRotating(Lcom/metamoji/nt/NtUnitController;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 240
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->noRotating()Z

    move-result p0

    return p0
.end method

.method public static rect(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/cm/RectEx;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 85
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getX()F

    move-result v1

    .line 89
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 90
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move v1, v3

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getY()F

    move-result v2

    .line 94
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x2

    .line 95
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move v2, v3

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v4

    .line 99
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x3

    .line 100
    invoke-static {v4, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move v4, v3

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result p0

    .line 104
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 p0, 0x4

    .line 105
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    move v3, p0

    .line 108
    :goto_0
    new-instance p0, Lcom/metamoji/cm/RectEx;

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object p0
.end method

.method public static sprite(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 194
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p0

    return-object p0
.end method

.method public static unitId(Lcom/metamoji/nt/NtUnitController;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 172
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getUnitId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static width(Lcom/metamoji/nt/NtUnitController;)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 59
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result p0

    .line 63
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x1

    .line 64
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    :cond_1
    return p0
.end method

.method public static x(Lcom/metamoji/nt/NtUnitController;)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 33
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getX()F

    move-result p0

    .line 37
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x1

    .line 38
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    :cond_1
    return p0
.end method

.method public static y(Lcom/metamoji/nt/NtUnitController;)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 46
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getY()F

    move-result p0

    .line 50
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x1

    .line 51
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    :cond_1
    return p0
.end method
