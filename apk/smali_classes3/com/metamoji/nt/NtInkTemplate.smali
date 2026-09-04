.class public Lcom/metamoji/nt/NtInkTemplate;
.super Ljava/lang/Object;
.source "NtInkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtInkTemplate$ModelProp;
    }
.end annotation


# instance fields
.field private m_colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_createdDate:Ljava/util/Date;

.field private m_group:Ljava/lang/String;

.field private m_id:Ljava/lang/String;

.field private m_maxQuantity:I

.field private m_name:Ljava/lang/String;

.field private m_type:Ljava/lang/String;

.field private m_updatedDate:Ljava/util/Date;

.field private m_usedDate:Ljava/util/Date;

.field private m_version:I


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtInkTemplate;->initialize(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private initialize(Lcom/metamoji/df/model/IModel;)V
    .locals 10

    .line 67
    const-string v0, "id"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_id:Ljava/lang/String;

    .line 69
    const-string v0, "group"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_group:Ljava/lang/String;

    .line 71
    const-string v0, "name"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_name:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_type:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_version:I

    .line 77
    const-string v0, "colors"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/nt/NtInkTemplate;->m_colors:Ljava/util/List;

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 80
    instance-of v3, v2, Ljava/util/List;

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 84
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 85
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    .line 86
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v4, v3, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 87
    iget-object v3, p0, Lcom/metamoji/nt/NtInkTemplate;->m_colors:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    div-int/2addr v7, v6

    mul-int/2addr v7, v6

    :goto_1
    if-ge v5, v7, :cond_2

    .line 92
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v9, v5, 0x2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v4, v6, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 93
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x3

    goto :goto_1

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/metamoji/nt/NtInkTemplate;->m_colors:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 100
    :cond_3
    :goto_2
    const-string v0, "maxQuantity"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_maxQuantity:I

    .line 102
    const-string v0, "createdDate"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 103
    invoke-static {v3, v4}, Lcom/metamoji/cm/TimeUtils;->unixtime2datetime(D)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_createdDate:Ljava/util/Date;

    .line 105
    const-string/jumbo v0, "usedDate"

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 106
    invoke-static {v3, v4}, Lcom/metamoji/cm/TimeUtils;->unixtime2datetime(D)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_usedDate:Ljava/util/Date;

    .line 108
    const-string/jumbo v0, "updatedDate"

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 109
    invoke-static {v0, v1}, Lcom/metamoji/cm/TimeUtils;->unixtime2datetime(D)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtInkTemplate;->m_updatedDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_colors:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_colors:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatedDate()Ljava/util/Date;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_createdDate:Ljava/util/Date;

    return-object v0
.end method

.method public getCurrentQuantity()I
    .locals 2

    .line 165
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtSystemInkSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtSystemInkSettings;

    .line 166
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInkTemplate;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentQuantityById(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentQuantityRate()F
    .locals 2

    .line 174
    iget v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_maxQuantity:I

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInkTemplate;->getCurrentQuantity()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtInkTemplate;->getMaxQuantity()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_group:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxQuantity()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_maxQuantity:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()Ljava/util/Date;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_updatedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUsedDate()Ljava/util/Date;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_usedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/metamoji/nt/NtInkTemplate;->m_version:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInkTemplate;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInkTemplate;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, ",group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInkTemplate;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtInkTemplate;->getGroup()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "(null)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInkTemplate;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, ",currentQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInkTemplate;->getCurrentQuantityRate()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ",colors=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 214
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInkTemplate;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const/16 v2, 0x2c

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInkTemplate;->getColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_2
    const-string v1, "],maxQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInkTemplate;->getMaxQuantity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
