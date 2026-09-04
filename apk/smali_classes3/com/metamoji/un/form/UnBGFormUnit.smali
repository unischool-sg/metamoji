.class public Lcom/metamoji/un/form/UnBGFormUnit;
.super Lcom/metamoji/nt/NtUnitController;
.source "UnBGFormUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/form/UnBGFormUnit$ModelDef;,
        Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;,
        Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;,
        Lcom/metamoji/un/form/UnBGFormUnit$MMJUNFORM_LENGTH_TYPE;
    }
.end annotation


# static fields
.field public static final FORMDESC_KEY_CALENDER_TITLE:Ljava/lang/String; = "ct"

.field public static final FORMDESC_KEY_FONTSIZE:Ljava/lang/String; = "tfs"

.field public static final FORMDESC_KEY_LINEHEIGHT:Ljava/lang/String; = "tlh"

.field public static final FORMDESC_KEY_MONTH:Ljava/lang/String; = "cm"

.field public static final FORMDESC_KEY_SPACING:Ljava/lang/String; = "lsp"

.field public static final FORMDESC_KEY_STARTDAYOFTHEWEEK:Ljava/lang/String; = "csd"

.field public static final FORMDESC_KEY_STARTMONTHOFTHEYEAR:Ljava/lang/String; = "csm"

.field public static final FORMDESC_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final FORMDESC_KEY_YEAR:Ljava/lang/String; = "cy"

.field public static final FORM_REVISION:Ljava/lang/String; = "formRev"

.field public static final MODELTYPE:Ljava/lang/String; = "$bgform"


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtUnitController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method

.method public static collectFormDescription(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    const-string v1, "frame"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 129
    invoke-static {p0, v0}, Lcom/metamoji/un/form/UnBGFormUnit;->collectFrameDescription(Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;)V

    .line 133
    :cond_1
    invoke-static {p1}, Lcom/metamoji/nt/NtPageController;->textUnitSettingsModelFromPageModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 135
    const-string/jumbo p1, "textUnitLineHeight"

    invoke-interface {p0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 136
    const-string/jumbo v1, "textUnitFontSize"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 138
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 139
    const-string/jumbo v2, "type"

    sget-object v3, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_TEXTSETTINGS:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v2, "tfs"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo p0, "tlh"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method static collectFrameDescription(Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 149
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {p0, p1}, Lcom/metamoji/un/form/UnBGFormUnit;->collectUnitDescription(Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;)V

    return-void

    .line 152
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "rows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cols"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    :cond_1
    const-string v0, "frames"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 157
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 160
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    .line 161
    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    invoke-static {v3, p1}, Lcom/metamoji/un/form/UnBGFormUnit;->collectUnitDescription(Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 166
    :cond_2
    invoke-static {v3, p1}, Lcom/metamoji/un/form/UnBGFormUnit;->collectFrameDescription(Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static collectUnitDescription(Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$ruledline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-static {p0}, Lcom/metamoji/un/form/UnRuledlineUnit;->collectDescription(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 180
    :cond_1
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$squared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-static {p0}, Lcom/metamoji/un/form/UnSquaredUnit;->collectDescription(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 182
    :cond_2
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$schedule"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    invoke-static {p0}, Lcom/metamoji/un/form/UnScheduleUnit;->collectDescription(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 184
    :cond_3
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$table"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    invoke-static {p0}, Lcom/metamoji/un/form/UnTableUnit;->collectDescription(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 186
    :cond_4
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$labeledlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    invoke-static {p0}, Lcom/metamoji/un/form/UnLabeledlistUnit;->collectDescription(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_6

    .line 190
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method private doubleListFromObjectList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 412
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 413
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 414
    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private intListFromObjectList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 424
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 425
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 426
    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public canFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 208
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 0

    .line 213
    invoke-super {p0, p1, p2}, Lcom/metamoji/nt/NtUnitController;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    .line 214
    invoke-virtual {p1}, Lcom/metamoji/df/controller/ControllerContext;->isIgnoreLayoutFrames()Z

    move-result p1

    if-nez p1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnBGFormUnit;->layoutFrames()V

    :cond_0
    return-void
.end method

.method public isContainer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected layoutForModel(Lcom/metamoji/df/model/IModel;F)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "F)",
            "Ljava/util/List<",
            "Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 336
    const-string/jumbo v2, "types"

    .line 337
    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 336
    invoke-direct {v0, v2}, Lcom/metamoji/un/form/UnBGFormUnit;->intListFromObjectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 339
    const-string/jumbo v3, "values"

    .line 340
    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 339
    invoke-direct {v0, v1}, Lcom/metamoji/un/form/UnBGFormUnit;->doubleListFromObjectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 342
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v9, p2

    move v7, v4

    move v8, v7

    move v6, v5

    :goto_0
    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v11, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    if-ge v6, v3, :cond_3

    .line 349
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Lcom/metamoji/un/form/UnBGFormUnit$MMJUNFORM_LENGTH_TYPE;->valueOf(I)Lcom/metamoji/un/form/UnBGFormUnit$MMJUNFORM_LENGTH_TYPE;

    move-result-object v14

    .line 350
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 351
    invoke-virtual {v14}, Lcom/metamoji/un/form/UnBGFormUnit$MMJUNFORM_LENGTH_TYPE;->ordinal()I

    move-result v14

    if-eqz v14, :cond_2

    if-eq v14, v13, :cond_1

    if-eq v14, v11, :cond_0

    goto :goto_1

    :cond_0
    mul-float v15, v15, p2

    div-float/2addr v15, v10

    :cond_1
    sub-float/2addr v9, v15

    goto :goto_1

    :cond_2
    add-float/2addr v7, v12

    add-float/2addr v8, v15

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    cmpl-float v6, v7, v12

    if-lez v6, :cond_4

    cmpl-float v6, v8, v4

    if-nez v6, :cond_4

    div-float/2addr v9, v7

    :cond_4
    int-to-float v6, v3

    div-float v6, p2, v6

    .line 374
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v4

    :goto_2
    if-ge v5, v3, :cond_9

    .line 378
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Lcom/metamoji/un/form/UnBGFormUnit$MMJUNFORM_LENGTH_TYPE;->valueOf(I)Lcom/metamoji/un/form/UnBGFormUnit$MMJUNFORM_LENGTH_TYPE;

    move-result-object v14

    .line 379
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 380
    invoke-virtual {v14}, Lcom/metamoji/un/form/UnBGFormUnit$MMJUNFORM_LENGTH_TYPE;->ordinal()I

    move-result v14

    if-eqz v14, :cond_7

    if-eq v14, v13, :cond_6

    if-eq v14, v11, :cond_5

    goto :goto_4

    :cond_5
    mul-float v15, v15, p2

    div-float/2addr v15, v10

    :cond_6
    :goto_3
    move v6, v15

    goto :goto_4

    :cond_7
    cmpl-float v6, v8, v4

    if-nez v6, :cond_8

    move v6, v9

    goto :goto_4

    :cond_8
    mul-float/2addr v15, v9

    div-float/2addr v15, v8

    goto :goto_3

    .line 399
    :goto_4
    new-instance v14, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;

    invoke-direct {v14, v0, v12, v6}, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;-><init>(Lcom/metamoji/un/form/UnBGFormUnit;FF)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr v12, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    return-object v7
.end method

.method protected layoutFrame(Lcom/metamoji/df/model/IModel;FFFFLcom/metamoji/df/controller/EditContext;)V
    .locals 12

    .line 258
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v2

    .line 259
    const-string/jumbo v3, "rows"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "frames"

    const-string v7, "$"

    if-eqz v3, :cond_1

    move/from16 v3, p5

    .line 261
    invoke-virtual {p0, p1, v3}, Lcom/metamoji/un/form/UnBGFormUnit;->layoutForModel(Lcom/metamoji/df/model/IModel;F)Ljava/util/List;

    move-result-object v8

    .line 266
    invoke-interface {p1, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 267
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v11, v4

    :goto_0
    if-ge v11, v10, :cond_4

    .line 270
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;

    .line 272
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    .line 273
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    iget v3, v1, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;->offset:F

    add-float/2addr v3, p3

    iget v5, v1, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;->size:F

    move-object v0, p0

    move/from16 v4, p4

    move-object/from16 v6, p6

    move-object v1, v2

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/un/form/UnBGFormUnit;->layoutUnit(Lcom/metamoji/df/model/IModel;FFFFLcom/metamoji/df/controller/EditContext;)V

    goto :goto_1

    .line 279
    :cond_0
    iget v0, v1, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;->offset:F

    add-float v3, p3, v0

    iget v5, v1, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;->size:F

    move-object v0, p0

    move/from16 v4, p4

    move-object/from16 v6, p6

    move-object v1, v2

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/un/form/UnBGFormUnit;->layoutFrame(Lcom/metamoji/df/model/IModel;FFFFLcom/metamoji/df/controller/EditContext;)V

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    move/from16 v3, p5

    .line 283
    const-string v6, "cols"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move/from16 v6, p4

    .line 285
    invoke-virtual {p0, p1, v6}, Lcom/metamoji/un/form/UnBGFormUnit;->layoutForModel(Lcom/metamoji/df/model/IModel;F)Ljava/util/List;

    move-result-object v8

    .line 290
    invoke-interface {p1, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 291
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v11, v4

    :goto_2
    if-ge v11, v10, :cond_4

    .line 294
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;

    .line 296
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    .line 297
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    iget v4, v1, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;->offset:F

    add-float/2addr v4, p2

    move-object v5, v2

    move v2, v4

    iget v4, v1, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;->size:F

    move-object v0, p0

    move-object/from16 v6, p6

    move-object v1, v5

    move v5, v3

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/un/form/UnBGFormUnit;->layoutUnit(Lcom/metamoji/df/model/IModel;FFFFLcom/metamoji/df/controller/EditContext;)V

    goto :goto_3

    :cond_2
    move-object v5, v2

    .line 303
    iget v0, v1, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;->offset:F

    add-float v2, p2, v0

    iget v4, v1, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;->size:F

    move-object v0, p0

    move v3, p3

    move-object/from16 v6, p6

    move-object v1, v5

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/un/form/UnBGFormUnit;->layoutFrame(Lcom/metamoji/df/model/IModel;FFFFLcom/metamoji/df/controller/EditContext;)V

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, p5

    goto :goto_2

    :cond_3
    move/from16 v6, p4

    .line 307
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 309
    invoke-virtual/range {p0 .. p6}, Lcom/metamoji/un/form/UnBGFormUnit;->layoutUnit(Lcom/metamoji/df/model/IModel;FFFFLcom/metamoji/df/controller/EditContext;)V

    :cond_4
    return-void
.end method

.method public layoutFrames()V
    .locals 7

    .line 243
    new-instance v6, Lcom/metamoji/df/controller/EditContext;

    invoke-direct {v6}, Lcom/metamoji/df/controller/EditContext;-><init>()V

    .line 245
    iget-object v0, p0, Lcom/metamoji/un/form/UnBGFormUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "frame"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnBGFormUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v4

    .line 250
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 251
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/un/form/UnBGFormUnit;->layoutFrame(Lcom/metamoji/df/model/IModel;FFFFLcom/metamoji/df/controller/EditContext;)V

    .line 253
    :cond_0
    invoke-virtual {v6}, Lcom/metamoji/df/controller/EditContext;->destroy()V

    return-void
.end method

.method protected layoutUnit(Lcom/metamoji/df/model/IModel;FFFFLcom/metamoji/df/controller/EditContext;)V
    .locals 2

    .line 316
    invoke-virtual {p0, p1}, Lcom/metamoji/un/form/UnBGFormUnit;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    if-eqz p1, :cond_0

    .line 318
    new-instance v0, Lcom/metamoji/df/controller/GeometricProps;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p2, Lcom/metamoji/cm/SizeF;

    invoke-direct {p2, p4, p5}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    const/4 p3, 0x0

    invoke-direct {v0, v1, p2, p3, p3}, Lcom/metamoji/df/controller/GeometricProps;-><init>(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 320
    sget-object p2, Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;->None:Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;

    invoke-virtual {p1, v0, p6, p2}, Lcom/metamoji/nt/NtUnitController;->setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V

    :cond_0
    return-void
.end method

.method public paperSizeChanged(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 221
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnBGFormUnit;->layoutFrames()V

    return-void
.end method

.method public sampling()V
    .locals 5

    .line 435
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnBGFormUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 438
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 439
    const-string v4, "DEBUG_deviceInfo"

    invoke-interface {v0, v4, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v4, "DEBUG_width"

    invoke-interface {v0, v4, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 441
    const-string v4, "DEBUG_height"

    invoke-interface {v0, v4, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6a5f\u7a2e\u3068\u753b\u9762\u60c5\u5831\u3092\u8a18\u9332\u3057\u307e\u3057\u305f\u3002\uff08device:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u753b\u9762\u60c5\u5831"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
