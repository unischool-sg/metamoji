.class public abstract Lcom/metamoji/un/draw2/library/style/DrStStyle;
.super Ljava/lang/Object;
.source "DrStStyle.java"


# static fields
.field protected static final MODEL_PROPERTY_ID:Ljava/lang/String; = "I"

.field protected static final MODEL_PROPERTY_TYPE:Ljava/lang/String; = "T"

.field public static final MODEL_TYPE:Ljava/lang/String; = "S"


# instance fields
.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_userCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStyleModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 230
    const-string v0, "S"

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->type(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getStyleIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 180
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->checkStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "I"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStyleTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyleType;
    .locals 2

    .line 169
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->checkStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 170
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 171
    sget-object p0, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->NONE:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    return-object p0

    .line 173
    :cond_0
    const-string v0, "T"

    sget-object v1, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->NONE:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    return-object p0
.end method

.method public static newEmptyStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 188
    const-string v0, "S"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 190
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static restoreStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;
    .locals 4

    .line 199
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->checkStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/style/DrStStyle$1;->$SwitchMap$com$metamoji$un$draw2$library$style$DrStStyleType:[I

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->getStyleTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/library/style/DrStStyle$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->getPenTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    .line 216
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_0
    return-object v1

    .line 214
    :cond_2
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;-><init>()V

    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->initWithModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p0

    return-object p0

    .line 212
    :cond_3
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;-><init>()V

    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->initWithModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p0

    return-object p0

    .line 210
    :cond_4
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;-><init>()V

    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->initWithModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p0

    return-object p0

    .line 208
    :cond_5
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;-><init>()V

    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->initWithModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 200
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->cloneWithFamily_(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p1

    return-object p1
.end method

.method protected abstract cloneWithFamily_(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;
.end method

.method public copyToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->copyToStyle_(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract copyToStyle_(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z
.end method

.method decrementUserCount()V
    .locals 1

    .line 143
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyle;->m_userCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 146
    iput v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyle;->m_userCount:I

    return-void
.end method

.method incrementUserCount()V
    .locals 1

    .line 140
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyle;->m_userCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyle;->m_userCount:I

    return-void
.end method

.method protected initWithModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;
    .locals 3

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyle;->m_userCount:I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 41
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->checkStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyle;->m_model:Lcom/metamoji/df/model/IModel;

    .line 48
    const-string v0, "I"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyle;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->init_()Z

    move-result p1

    if-nez p1, :cond_2

    .line 53
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyle;->m_model:Lcom/metamoji/df/model/IModel;

    .line 54
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyle;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v1

    :cond_2
    return-object p0
.end method

.method protected abstract init_()Z
.end method

.method public isEqualToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 105
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->isEqualToStyle_(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z

    move-result p1

    return p1
.end method

.method protected abstract isEqualToStyle_(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z
.end method

.method public model()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyle;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    .line 71
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyle;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 72
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyle;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    .line 73
    const-string v1, "I"

    if-eqz p1, :cond_0

    .line 74
    invoke-static {v1, p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 76
    :cond_0
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_1
    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/library/style/DrStStyleType;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->type_()Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    move-result-object v0

    return-object v0
.end method

.method protected abstract type_()Lcom/metamoji/un/draw2/library/style/DrStStyleType;
.end method

.method public uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyle;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method public userCount()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyle;->m_userCount:I

    return v0
.end method
