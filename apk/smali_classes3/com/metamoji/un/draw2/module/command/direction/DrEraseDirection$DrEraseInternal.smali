.class Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;
.super Ljava/lang/Object;
.source "DrEraseDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrEraseInternal"
.end annotation


# instance fields
.field m_angleInDegrees:F

.field m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field m_contentScale:F

.field m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field m_elementModel:Lcom/metamoji/df/model/IModel;

.field m_elementOrder:I

.field m_eraseIntervals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field m_eraseWhole:Z

.field m_executionType:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

.field m_groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field m_model:Lcom/metamoji/df/model/IModel;

.field m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

.field m_penStyleModel:Lcom/metamoji/df/model/IModel;

.field m_strokeEndIndex:D

.field m_strokeStartIndex:D

.field m_transform:Landroid/graphics/Matrix;

.field m_variation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_executionType:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_elementOrder:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 89
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_strokeStartIndex:D

    .line 90
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_strokeEndIndex:D

    .line 91
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_transform:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_angleInDegrees:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 93
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_contentScale:F

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_eraseWhole:Z

    return-void
.end method

.method static getBaseStrokeIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 413
    const-string v0, "b"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method static getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 409
    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method static getEraseWholeFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    .line 417
    const-string/jumbo v0, "w"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method static getExecutionTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;
    .locals 2

    .line 405
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    return-object p0
.end method


# virtual methods
.method angleInDegrees()F
    .locals 1

    .line 174
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_angleInDegrees:F

    return v0
.end method

.method baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method contentScale()F
    .locals 1

    .line 178
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_contentScale:F

    return v0
.end method

.method elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method elementModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_elementModel:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method elementOrder()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_elementOrder:I

    return v0
.end method

.method eraseIntervals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_eraseIntervals:Ljava/util/List;

    return-object v0
.end method

.method eraseWhole()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_eraseWhole:Z

    return v0
.end method

.method executionType()Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_executionType:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    return-object v0
.end method

.method groups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method model()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    return-object v0
.end method

.method penStyleModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_penStyleModel:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method restoreFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 7

    .line 212
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_model:Lcom/metamoji/df/model/IModel;

    .line 215
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_executionType:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    .line 218
    const-string v0, "i"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 221
    const-string/jumbo v0, "s"

    iget-wide v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_strokeStartIndex:D

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_strokeStartIndex:D

    .line 224
    const-string v0, "e"

    iget-wide v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_strokeEndIndex:D

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_strokeEndIndex:D

    .line 227
    const-string v0, "b"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 230
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_executionType:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 232
    const-string v0, "p"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_penStyleModel:Lcom/metamoji/df/model/IModel;

    .line 235
    const-string/jumbo v0, "v"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_variation:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_variation:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_variation:Ljava/util/List;

    const/4 v2, 0x1

    .line 238
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_variation:Ljava/util/List;

    const/4 v3, 0x2

    .line 239
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_variation:Ljava/util/List;

    const/4 v4, 0x3

    .line 240
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_variation:Ljava/util/List;

    const/4 v5, 0x4

    .line 241
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_variation:Ljava/util/List;

    const/4 v6, 0x5

    .line 242
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .line 237
    invoke-static/range {v1 .. v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMake(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_transform:Landroid/graphics/Matrix;

    .line 243
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_variation:Ljava/util/List;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_angleInDegrees:F

    .line 244
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_variation:Ljava/util/List;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_contentScale:F

    .line 248
    :cond_0
    const-string v0, "r"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_eraseIntervals:Ljava/util/List;

    return-void

    .line 251
    :cond_1
    const-string v0, "m"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_elementModel:Lcom/metamoji/df/model/IModel;

    .line 254
    const-string v0, "o"

    iget v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_elementOrder:I

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_elementOrder:I

    .line 257
    const-string v0, "g"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 258
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 261
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 263
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_2
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_3
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_groups:Ljava/util/ArrayList;

    .line 272
    :cond_4
    const-string/jumbo v0, "w"

    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_eraseWhole:Z

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_eraseWhole:Z

    return-void
.end method

.method saveBaseStrokeIdToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "b"

    if-eqz v0, :cond_0

    .line 366
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 368
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "i"

    if-eqz v0, :cond_0

    .line 309
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 311
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveElementModelToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_elementModel:Lcom/metamoji/df/model/IModel;

    const-string v1, "m"

    if-eqz v0, :cond_0

    .line 317
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 319
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveElementOrderToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 324
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_elementOrder:I

    const-string v1, "o"

    if-ltz v0, :cond_0

    .line 325
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    return-void

    .line 327
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveEraseIntervalsToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_eraseIntervals:Ljava/util/List;

    const-string v1, "r"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_eraseIntervals:Ljava/util/List;

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 392
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveEraseWholeToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 397
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_eraseWhole:Z

    const-string/jumbo v1, "w"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 398
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 400
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveExecutionTypeToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_executionType:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ordinal()I

    move-result v0

    const-string/jumbo v1, "t"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-void

    .line 300
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 297
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 294
    :cond_2
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveGroupsToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 5

    .line 332
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_groups:Ljava/util/ArrayList;

    const-string v1, "g"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 335
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 337
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 339
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_1
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 344
    :cond_2
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method savePenStyleModelToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_penStyleModel:Lcom/metamoji/df/model/IModel;

    const-string v1, "p"

    if-eqz v0, :cond_0

    .line 374
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 376
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveStrokeEndIndexToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 357
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_strokeEndIndex:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const-string v3, "e"

    if-ltz v2, :cond_0

    .line 358
    invoke-static {v3, v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    return-void

    .line 360
    :cond_0
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveStrokeStartIndexToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 349
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_strokeStartIndex:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const-string/jumbo v3, "s"

    if-ltz v2, :cond_0

    .line 350
    invoke-static {v3, v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    return-void

    .line 352
    :cond_0
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 277
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveExecutionTypeToModel(Lcom/metamoji/df/model/IModel;)V

    .line 278
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveElementModelToModel(Lcom/metamoji/df/model/IModel;)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveElementOrderToModel(Lcom/metamoji/df/model/IModel;)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveGroupsToModel(Lcom/metamoji/df/model/IModel;)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveStrokeStartIndexToModel(Lcom/metamoji/df/model/IModel;)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveStrokeEndIndexToModel(Lcom/metamoji/df/model/IModel;)V

    .line 284
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveBaseStrokeIdToModel(Lcom/metamoji/df/model/IModel;)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->savePenStyleModelToModel(Lcom/metamoji/df/model/IModel;)V

    .line 286
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveVariationToModel(Lcom/metamoji/df/model/IModel;)V

    .line 287
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveEraseIntervalsToModel(Lcom/metamoji/df/model/IModel;)V

    .line 288
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveEraseWholeToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveVariationToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_variation:Ljava/util/List;

    const-string/jumbo v1, "v"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_variation:Ljava/util/List;

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 384
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method setBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method setElementModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_elementModel:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method setElementOrder(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_elementOrder:I

    return-void
.end method

.method setEraseIntervals(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_eraseIntervals:Ljava/util/List;

    return-void
.end method

.method setEraseWhole(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_eraseWhole:Z

    return-void
.end method

.method setExecutionType(Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_executionType:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    return-void
.end method

.method setGroups(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_groups:Ljava/util/ArrayList;

    return-void
.end method

.method setModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_model:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_penStyleModel:Lcom/metamoji/df/model/IModel;

    :cond_0
    return-void
.end method

.method setPenStyleModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_penStyleModel:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method setStrokeEndIndex(D)V
    .locals 0

    .line 127
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_strokeEndIndex:D

    return-void
.end method

.method setStrokeStartIndex(D)V
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_strokeStartIndex:D

    return-void
.end method

.method setVariation(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_variation:Ljava/util/List;

    .line 159
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v0, 0x1

    .line 160
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v0, 0x2

    .line 161
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const/4 v0, 0x3

    .line 162
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v0, 0x4

    .line 163
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/4 v0, 0x5

    .line 164
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .line 159
    invoke-static/range {v1 .. v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMake(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_transform:Landroid/graphics/Matrix;

    const/4 v0, 0x6

    .line 165
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_angleInDegrees:F

    const/4 v0, 0x7

    .line 166
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_contentScale:F

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 155
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method setVariationWithTransform(Landroid/graphics/Matrix;FF)V
    .locals 3

    .line 182
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_transform:Landroid/graphics/Matrix;

    .line 183
    iput p2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_angleInDegrees:F

    .line 184
    iput p3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_contentScale:F

    .line 185
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;

    invoke-direct {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;-><init>(Landroid/graphics/Matrix;)V

    const/16 p1, 0x8

    .line 186
    new-array p1, p1, [Ljava/lang/Number;

    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    .line 187
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p1, v2

    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    .line 188
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, p1, v2

    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    .line 189
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, p1, v2

    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    .line 190
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, p1, v2

    iget v0, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    .line 191
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p1, v1

    const/4 v0, 0x6

    .line 192
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x7

    .line 193
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p1, p2

    .line 186
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_variation:Ljava/util/List;

    return-void
.end method

.method strokeEndIndex()D
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_strokeEndIndex:D

    return-wide v0
.end method

.method strokeStartIndex()D
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_strokeStartIndex:D

    return-wide v0
.end method

.method transform()Landroid/graphics/Matrix;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_transform:Landroid/graphics/Matrix;

    return-object v0
.end method

.method variation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->m_variation:Ljava/util/List;

    return-object v0
.end method
