.class public Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;
.super Ljava/lang/Object;
.source "DrUtInformation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MODEL_PROPERTY_COLLABORATION_ROOM:Ljava/lang/String; = "uIR"

.field public static final MODEL_PROPERTY_CREATION_TIME:Ljava/lang/String; = "uIT"

.field public static final MODEL_PROPERTY_CREATOR:Ljava/lang/String; = "uIC"

.field public static final MODEL_PROPERTY_CREATOR_GROUP:Ljava/lang/String; = "uIG"

.field public static final MODEL_PROPERTY_CREATOR_ID:Ljava/lang/String; = "uII"

.field public static final MODEL_PROPERTY_CREATOR_NAME:Ljava/lang/String; = "uIN"


# instance fields
.field private m_collaborationRoom:Ljava/lang/String;

.field private m_creationTime:Ljava/lang/Double;

.field private m_creator:Ljava/lang/String;

.field private m_creatorGroup:Ljava/lang/String;

.field private m_creatorId:Ljava/lang/String;

.field private m_creatorName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeAllPropertiesFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 321
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 322
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 325
    :cond_0
    const-string/jumbo v0, "uIC"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 326
    const-string/jumbo v0, "uII"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 327
    const-string/jumbo v0, "uIN"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 328
    const-string/jumbo v0, "uIG"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 329
    const-string/jumbo v0, "uIT"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 330
    const-string/jumbo v0, "uIR"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static restoreFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;
    .locals 9

    .line 275
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 276
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 280
    :cond_0
    const-string/jumbo v0, "uIC"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v1, v3

    .line 284
    :cond_1
    const-string/jumbo v4, "uII"

    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move v1, v3

    .line 288
    :cond_2
    const-string/jumbo v5, "uIN"

    invoke-static {v5, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    move v1, v3

    .line 292
    :cond_3
    const-string/jumbo v6, "uIG"

    invoke-static {v6, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    move v1, v3

    .line 296
    :cond_4
    const-string/jumbo v7, "uIT"

    invoke-static {v7, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v7

    if-eqz v7, :cond_5

    move v1, v3

    .line 300
    :cond_5
    const-string/jumbo v8, "uIR"

    invoke-static {v8, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_0
    if-nez v3, :cond_7

    return-object v2

    .line 307
    :cond_7
    new-instance v1, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;-><init>()V

    .line 308
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->setCreator(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->setCreatorId(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->setCreatorName(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->setCreatorGroup(Ljava/lang/String;)V

    if-eqz v7, :cond_8

    .line 312
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_8
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->setCreationTime(Ljava/lang/Double;)V

    .line 313
    invoke-virtual {v1, p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->setCollaborationRoom(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public clone()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;
    .locals 2

    .line 196
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->clone()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object v0

    return-object v0
.end method

.method public collaborationRoom()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_collaborationRoom:Ljava/lang/String;

    return-object v0
.end method

.method public creationTime()Ljava/lang/Double;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_creationTime:Ljava/lang/Double;

    return-object v0
.end method

.method public creator()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_creator:Ljava/lang/String;

    return-object v0
.end method

.method public creatorGroup()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_creatorGroup:Ljava/lang/String;

    return-object v0
.end method

.method public creatorId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_creatorId:Ljava/lang/String;

    return-object v0
.end method

.method public creatorName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_creatorName:Ljava/lang/String;

    return-object v0
.end method

.method public isEqualToInformation(Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 213
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    return v0

    .line 217
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    return v0

    .line 221
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 222
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    return v0

    .line 226
    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    return v0

    .line 230
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 231
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    return v0

    .line 235
    :cond_9
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    return v0

    .line 239
    :cond_a
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 240
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    return v0

    .line 244
    :cond_c
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    return v0

    .line 248
    :cond_d
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creationTime()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 249
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creationTime()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creationTime()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creationTime()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    return v0

    .line 253
    :cond_f
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creationTime()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_10

    return v0

    .line 257
    :cond_10
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->collaborationRoom()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 258
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->collaborationRoom()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->collaborationRoom()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->collaborationRoom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    :cond_11
    return v0

    .line 262
    :cond_12
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->collaborationRoom()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    return v0

    :cond_13
    return v1
.end method

.method public saveCollaborationRoomToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 2

    .line 169
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 170
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_collaborationRoom:Ljava/lang/String;

    const-string/jumbo v1, "uIR"

    if-eqz v0, :cond_1

    .line 174
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 176
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_2
    return-void
.end method

.method public saveCreationTimeToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 2

    .line 157
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 158
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_creationTime:Ljava/lang/Double;

    const-string/jumbo v1, "uIT"

    if-eqz v0, :cond_1

    .line 162
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 164
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_2
    return-void
.end method

.method public saveCreatorGroupToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 2

    .line 145
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 146
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorGroup()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uIG"

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorGroup()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 152
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_2
    return-void
.end method

.method public saveCreatorIdToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 2

    .line 121
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 122
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uII"

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorId()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 128
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_2
    return-void
.end method

.method public saveCreatorNameToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 2

    .line 133
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 134
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uIN"

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 140
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_2
    return-void
.end method

.method public saveCreatorToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 2

    .line 109
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 110
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_creator:Ljava/lang/String;

    const-string/jumbo v1, "uIC"

    if-eqz v0, :cond_1

    .line 114
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 116
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_2
    return-void
.end method

.method public saveToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 2

    .line 72
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 73
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creator()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uIC"

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 79
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 81
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uII"

    if-eqz v0, :cond_3

    .line 82
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 84
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 86
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uIN"

    if-eqz v0, :cond_5

    .line 87
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    .line 89
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 91
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorGroup()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uIG"

    if-eqz v0, :cond_7

    .line 92
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_3

    :cond_7
    if-nez p2, :cond_8

    .line 94
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 96
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creationTime()Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v1, "uIT"

    if-eqz v0, :cond_9

    .line 97
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creationTime()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    goto :goto_4

    :cond_9
    if-nez p2, :cond_a

    .line 99
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 101
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->collaborationRoom()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uIR"

    if-eqz v0, :cond_b

    .line 102
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->collaborationRoom()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_b
    if-nez p2, :cond_c

    .line 104
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_c
    return-void
.end method

.method public setCollaborationRoom(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_collaborationRoom:Ljava/lang/String;

    return-void
.end method

.method public setCreationTime(Ljava/lang/Double;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_creationTime:Ljava/lang/Double;

    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_creator:Ljava/lang/String;

    return-void
.end method

.method public setCreatorGroup(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_creatorGroup:Ljava/lang/String;

    return-void
.end method

.method public setCreatorId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_creatorId:Ljava/lang/String;

    return-void
.end method

.method public setCreatorName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->m_creatorName:Ljava/lang/String;

    return-void
.end method
