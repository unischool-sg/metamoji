.class public final Lcom/metamoji/ctold/CtTagUtil;
.super Ljava/lang/Object;
.source "CtTagUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getObjectType(Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;)Lcom/metamoji/ctold/object/CtObjectType;
    .locals 1

    .line 177
    sget-object v0, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$CtTaggedObjectFilter$CtObject:[I

    invoke-virtual {p0}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 193
    sget-object p0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNKNOWN:Lcom/metamoji/ctold/object/CtObjectType;

    return-object p0

    .line 191
    :pswitch_0
    sget-object p0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_GROUP:Lcom/metamoji/ctold/object/CtObjectType;

    return-object p0

    .line 188
    :pswitch_1
    sget-object p0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    return-object p0

    .line 185
    :pswitch_2
    sget-object p0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getObjectTypeString(Lcom/metamoji/ctold/object/CtObjectType;)Ljava/lang/String;
    .locals 0

    .line 269
    invoke-virtual {p0}, Lcom/metamoji/ctold/object/CtObjectType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOwnerId(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 152
    const-string p0, "CtTaggableObject must not be null"

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-object v0

    .line 155
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/ctold/CtTaggableObject;->getOwnerUnit()Lcom/metamoji/ctold/CtTaggableObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 156
    invoke-interface {p0}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getPageController(Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/nt/NtPageController;
    .locals 2

    .line 215
    sget-object v0, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    invoke-interface {p0}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 233
    :pswitch_0
    invoke-interface {p0}, Lcom/metamoji/ctold/CtTaggableObject;->getOwnerUnit()Lcom/metamoji/ctold/CtTaggableObject;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtUnitController;

    if-eqz p0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p0

    return-object p0

    .line 227
    :pswitch_1
    check-cast p0, Lcom/metamoji/nt/NtUnitController;

    .line 228
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p0

    return-object p0

    .line 224
    :pswitch_2
    check-cast p0, Lcom/metamoji/nt/NtPageController;

    return-object p0

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getPropertyTypeString(Lcom/metamoji/ctold/property/CtPropertyType;)Ljava/lang/String;
    .locals 0

    .line 273
    invoke-virtual {p0}, Lcom/metamoji/ctold/property/CtPropertyType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Lcom/metamoji/ctold/search/CtDateValue;Lcom/metamoji/ctold/property/CtPropertyType;)Ljava/lang/String;
    .locals 5

    .line 309
    sget-object v0, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$search$CtValueType:[I

    invoke-virtual {p0}, Lcom/metamoji/ctold/search/CtDateValue;->getType()Lcom/metamoji/ctold/search/CtValueType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ctold/search/CtValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_c

    const/4 p1, 0x2

    const-string v1, "%s%s"

    const-string v3, "%s%d%s"

    const-string v4, "\u5b9f\u884c\u65e5\u306e"

    if-eq v0, p1, :cond_9

    if-eq v0, v2, :cond_6

    const/4 p1, 0x4

    if-eq v0, p1, :cond_3

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    .line 375
    const-string p0, ""

    return-object p0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/search/CtDateValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-lez p0, :cond_1

    .line 365
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "\u5e74\u5f8c\u306e1\u67081\u65e50\u66420\u5206"

    filled-new-array {v4, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-gez p0, :cond_2

    .line 368
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "\u5e74\u524d\u306e1\u67081\u65e50\u66420\u5206"

    filled-new-array {v4, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 371
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string p1, "\u5e74\u306e1\u67081\u65e50\u66420\u5206"

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 348
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ctold/search/CtDateValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-lez p0, :cond_4

    .line 351
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "\u30f6\u6708\u5f8c\u306e1\u65e50\u66420\u5206"

    filled-new-array {v4, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-gez p0, :cond_5

    .line 354
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "\u30f6\u6708\u524d\u306e1\u65e50\u66420\u5206"

    filled-new-array {v4, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 357
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string p1, "\u6708\u306e1\u65e50\u66420\u5206"

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 334
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/ctold/search/CtDateValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-lez p0, :cond_7

    .line 337
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "\u9031\u5f8c\u306e\u9031\u521d\u306e0\u66420\u5206"

    filled-new-array {v4, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-gez p0, :cond_8

    .line 340
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "\u9031\u524d\u306e\u9031\u521d\u306e0\u66420\u5206"

    filled-new-array {v4, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 343
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string p1, "\u9031\u521d\u306e0\u66420\u5206"

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 320
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/ctold/search/CtDateValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-lez p0, :cond_a

    .line 323
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "\u65e5\u5f8c\u306e0\u66420\u5206"

    filled-new-array {v4, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    if-gez p0, :cond_b

    .line 326
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "\u65e5\u524d\u306e0\u66420\u5206"

    filled-new-array {v4, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 329
    :cond_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string p1, "0\u66420\u5206"

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 311
    :cond_c
    sget-object v0, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATE:Lcom/metamoji/ctold/property/CtPropertyType;

    if-ne p1, v0, :cond_d

    .line 312
    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 314
    :cond_d
    invoke-static {v2, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p1

    .line 316
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/search/CtDateValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemTagId(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtSystemTagId;
    .locals 1

    .line 169
    invoke-static {p0}, Lcom/metamoji/ctold/CtTagUtil;->isSystemTagId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/metamoji/ctold/tag/CtSystemTagId;->enumOf(I)Lcom/metamoji/ctold/tag/CtSystemTagId;

    move-result-object p0

    return-object p0

    .line 172
    :cond_0
    sget-object p0, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_UNKNOWN:Lcom/metamoji/ctold/tag/CtSystemTagId;

    return-object p0
.end method

.method public static getTagId(Lcom/metamoji/ctold/tag/CtSystemTagId;)Ljava/lang/String;
    .locals 2

    .line 161
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/metamoji/ctold/tag/CtSystemTagId;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "\u200b%d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTransformRect(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/cm/RectEx;
    .locals 1

    if-nez p0, :cond_0

    .line 255
    invoke-interface {p1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    .line 257
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-ne v0, p0, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectApplyAffineTransform(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 263
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 264
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 265
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectApplyAffineTransform(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    .line 258
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static getUnitId(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 139
    const-string p0, "CtTaggableObject must not be null"

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-object v0

    .line 142
    :cond_0
    instance-of v1, p0, Lcom/metamoji/df/controller/DfUnitController;

    if-eqz v1, :cond_1

    .line 143
    invoke-interface {p0}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getValueString(Ljava/lang/Object;Lcom/metamoji/ctold/property/CtPropertyType;)Ljava/lang/String;
    .locals 2

    .line 277
    sget-object v0, Lcom/metamoji/ctold/CtTagUtil$1;->$SwitchMap$com$metamoji$ctold$property$CtPropertyType:[I

    invoke-virtual {p1}, Lcom/metamoji/ctold/property/CtPropertyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 303
    const-string p0, "\u4e0d\u660e\u306a\u578b\u306e\u5024"

    return-object p0

    .line 293
    :pswitch_0
    instance-of v0, p0, Lcom/metamoji/ctold/search/CtDateValue;

    if-eqz v0, :cond_0

    .line 294
    check-cast p0, Lcom/metamoji/ctold/search/CtDateValue;

    invoke-static {p0, p1}, Lcom/metamoji/ctold/CtTagUtil;->getString(Lcom/metamoji/ctold/search/CtDateValue;Lcom/metamoji/ctold/property/CtPropertyType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 296
    :cond_0
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p1

    .line 297
    check-cast p0, Ljava/util/Date;

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :pswitch_1
    instance-of v0, p0, Lcom/metamoji/ctold/search/CtDateValue;

    if-eqz v0, :cond_1

    .line 286
    check-cast p0, Lcom/metamoji/ctold/search/CtDateValue;

    invoke-static {p0, p1}, Lcom/metamoji/ctold/CtTagUtil;->getString(Lcom/metamoji/ctold/search/CtDateValue;Lcom/metamoji/ctold/property/CtPropertyType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 288
    :cond_1
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    .line 289
    check-cast p0, Ljava/util/Date;

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 283
    :pswitch_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 279
    :pswitch_3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "TRUE"

    return-object p0

    :cond_2
    const-string p0, "FALSE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isSystemTagId(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x200b

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static toObjectId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 81
    const-string v0, "invalid object id length: objectKey=%s"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 83
    const-string p0, "objectKey must not be null"

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-object v1

    .line 86
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 88
    const-string v0, "object Key must have object type number and object id length: objectKey=%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const/4 v1, 0x2

    .line 93
    :try_start_0
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v3

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 100
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_2
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toObjectKey(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;
    .locals 2

    .line 49
    invoke-interface {p0}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v0

    .line 50
    invoke-interface {p0}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {p0}, Lcom/metamoji/ctold/CtTagUtil;->getOwnerId(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-static {v0, v1, p0}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 42
    const-string p0, "objectId must not be null"

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d%02x%s%s"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toObjectKeys(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/CtTaggableObject;

    .line 59
    invoke-static {v1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toObjectType(Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectType;
    .locals 2

    if-nez p0, :cond_0

    .line 68
    const-string p0, "objectKey must not be null"

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 69
    sget-object p0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNKNOWN:Lcom/metamoji/ctold/object/CtObjectType;

    return-object p0

    .line 71
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 73
    const-string v0, "object Key must have object type number and object id length: objectKey=%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    sget-object p0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNKNOWN:Lcom/metamoji/ctold/object/CtObjectType;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 76
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/metamoji/ctold/object/CtObjectType;->enumOf(I)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object p0

    return-object p0
.end method

.method public static toOwnerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 106
    const-string v0, "invalid object id length: objectKey=%s"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 108
    const-string p0, "objectKey must not be null"

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-object v1

    .line 111
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 113
    const-string v0, "object Key must have object type number and object id length: objectKey=%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const/4 v2, 0x2

    .line 118
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    add-int/2addr v2, v3

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 125
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 127
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 129
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static updateTagSprite(Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 1

    .line 198
    instance-of v0, p0, Lcom/metamoji/nt/NtUnitController;

    if-eqz v0, :cond_0

    .line 199
    check-cast p0, Lcom/metamoji/nt/NtUnitController;

    .line 200
    sget-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtUnitController;->updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    return-void

    .line 201
    :cond_0
    instance-of v0, p0, Lcom/metamoji/nt/NtPageController;

    if-eqz v0, :cond_1

    .line 202
    check-cast p0, Lcom/metamoji/nt/NtPageController;

    .line 203
    sget-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    :cond_1
    return-void
.end method
