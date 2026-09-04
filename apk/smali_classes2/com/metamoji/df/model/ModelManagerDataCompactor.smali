.class public Lcom/metamoji/df/model/ModelManagerDataCompactor;
.super Ljava/lang/Object;
.source "ModelManagerDataCompactor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;,
        Lcom/metamoji/df/model/ModelManagerDataCompactor$OpenSourceFileException;,
        Lcom/metamoji/df/model/ModelManagerDataCompactor$TooOldVersionException;,
        Lcom/metamoji/df/model/ModelManagerDataCompactor$TooRecentVersionException;,
        Lcom/metamoji/df/model/ModelManagerDataCompactor$OpenDestFileException;
    }
.end annotation


# instance fields
.field private destStateData:Lcom/metamoji/df/model/StateData;

.field private extraTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;>;"
        }
    .end annotation
.end field

.field private extraTablePos:J

.field private formatVersion:I

.field private modelTable:Lcom/metamoji/df/model/ByteData;

.field private modelTablePos:J

.field private modelTypeDicPosition:J

.field private modelTypeDictionary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

.field private rearrangers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModelManagerDataRearranger;",
            ">;"
        }
    .end annotation
.end field

.field private srcStateData:Lcom/metamoji/df/model/StateData;

.field private undoTablePos:J

.field private versionInfoPosition:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    .line 59
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    .line 60
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->rearrangers:Ljava/util/Map;

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->formatVersion:I

    .line 64
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTable:Ljava/util/Map;

    .line 65
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTypeDictionary:Ljava/util/List;

    .line 66
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    .line 67
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTable:Lcom/metamoji/df/model/ByteData;

    const-wide/16 v0, -0x1

    .line 69
    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTablePos:J

    .line 70
    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->undoTablePos:J

    .line 71
    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTablePos:J

    .line 72
    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTypeDicPosition:J

    .line 73
    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->versionInfoPosition:J

    return-void
.end method

.method private clearWorkIVars()V
    .locals 2

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->formatVersion:I

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTable:Ljava/util/Map;

    .line 108
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTypeDictionary:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    .line 110
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTable:Lcom/metamoji/df/model/ByteData;

    const-wide/16 v0, -0x1

    .line 112
    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTablePos:J

    .line 113
    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->undoTablePos:J

    .line 114
    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTablePos:J

    .line 115
    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTypeDicPosition:J

    .line 116
    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->versionInfoPosition:J

    return-void
.end method

.method private closeDestinationDataFile()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->flush()V

    .line 254
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->destroy()V

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    return-void
.end method

.method private closeSourceDataFile()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->destroy()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    return-void
.end method

.method private convertModelTableItem(Lcom/metamoji/df/model/ModelTableItem;Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;
        }
    .end annotation

    .line 495
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->dataPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$UInt64LEMember;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    .line 498
    new-instance v2, Lcom/metamoji/df/model/ByteData;

    iget-object v3, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v3, v0, v1}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    .line 501
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->rearrangers:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 503
    sget-object v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->typeIndex:Lcom/metamoji/cm/Structured$UInt16LEMember;

    invoke-virtual {p2, v0}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->get(Lcom/metamoji/cm/Structured$UInt16LEMember;)I

    move-result p2

    const v0, 0xffff

    if-eq v0, p2, :cond_0

    .line 504
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTypeDictionary:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 505
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 508
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->rearrangers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModelManagerDataRearranger;

    if-eqz v0, :cond_1

    .line 510
    invoke-interface {v0, v2, p2, p3}, Lcom/metamoji/df/model/IModelManagerDataRearranger;->rearrangeModelData(Lcom/metamoji/df/model/ByteData;Ljava/lang/String;I)Lcom/metamoji/df/model/ByteData;

    move-result-object v2

    :cond_1
    move-object v4, v2

    .line 516
    iget-object v3, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v4}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result p2

    int-to-long v7, p2

    const-wide/16 v5, -0x1

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide p2

    .line 517
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->dataPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {p1, v0, p2, p3}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$UInt64LEMember;J)V

    :cond_2
    return-void
.end method

.method private convertModels()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;
        }
    .end annotation

    .line 464
    iget v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->formatVersion:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    sget v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    goto :goto_0

    :cond_0
    move v0, v2

    .line 465
    :goto_0
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTable:Lcom/metamoji/df/model/ByteData;

    if-eqz v1, :cond_1

    .line 466
    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v1

    sget v3, Lcom/metamoji/df/model/ModelTableHeader;->SIZE:I

    sub-int/2addr v1, v3

    sget v3, Lcom/metamoji/df/model/ModelTableItem;->SIZE:I

    div-int/2addr v1, v3

    .line 467
    new-instance v3, Lcom/metamoji/df/model/ModelTableItem;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lcom/metamoji/df/model/ModelTableItem;-><init>([BI)V

    .line 468
    new-instance v5, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;

    invoke-direct {v5, v4, v2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;-><init>([BI)V

    :goto_1
    if-ge v2, v1, :cond_1

    .line 470
    iget-object v4, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTable:Lcom/metamoji/df/model/ByteData;

    .line 471
    invoke-virtual {v4}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v4

    sget v6, Lcom/metamoji/df/model/ModelTableHeader;->SIZE:I

    sget v7, Lcom/metamoji/df/model/ModelTableItem;->SIZE:I

    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    .line 470
    invoke-virtual {v3, v4, v6}, Lcom/metamoji/df/model/ModelTableItem;->reposition([BI)V

    .line 473
    iget-object v4, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    .line 474
    invoke-virtual {v4}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v4

    sget v6, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->SIZE:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v0

    .line 473
    invoke-virtual {v5, v4, v6}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->reposition([BI)V

    .line 476
    invoke-direct {p0, v3, v5, v2}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->convertModelTableItem(Lcom/metamoji/df/model/ModelTableItem;Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private convertUndoTable()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->getHeader()Lcom/metamoji/df/model/StateDataHeader;

    move-result-object v0

    const-wide/16 v1, -0x1

    .line 433
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getUndoTablePos()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getUndoTablePos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    new-instance v2, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v2, v0}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    array-length v0, v0

    int-to-long v5, v0

    const-wide/16 v3, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->undoTablePos:J

    :cond_0
    return-void
.end method

.method private convertVersionInfo()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;
        }
    .end annotation

    .line 338
    iget v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->formatVersion:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    if-eqz v0, :cond_2

    .line 346
    new-instance v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;

    sget v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    new-array v1, v1, [B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;-><init>([BI)V

    .line 347
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->getData()[B

    move-result-object v5

    sget v6, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    invoke-static {v1, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    sget-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->versionInfoPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->get(Lcom/metamoji/cm/Structured$UInt64LEMember;)J

    move-result-wide v0

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTable:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 353
    const-string v1, "vi"

    invoke-static {v0, v1}, Lcom/metamoji/df/model/ModelManager;->readExtraTable(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :goto_0
    cmp-long v2, v2, v0

    if-eqz v2, :cond_3

    .line 359
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v2, v0, v1}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 363
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    new-instance v2, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v2, v0}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    array-length v0, v0

    int-to-long v5, v0

    const-wide/16 v3, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->versionInfoPosition:J

    :cond_3
    :goto_1
    return-void
.end method

.method private loadAndConvertTypeDictionary()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;
        }
    .end annotation

    .line 298
    iget v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->formatVersion:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-ge v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    if-eqz v0, :cond_1

    .line 300
    new-instance v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;

    sget v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    new-array v1, v1, [B

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;-><init>([BI)V

    .line 301
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->getData()[B

    move-result-object v5

    sget v6, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    sget-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->modelTypeDicPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->get(Lcom/metamoji/cm/Structured$UInt64LEMember;)J

    move-result-wide v0

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTable:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 307
    const-string v1, "td"

    invoke-static {v0, v1}, Lcom/metamoji/df/model/ModelManager;->readExtraTable(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move-wide v0, v3

    :goto_0
    cmp-long v3, v3, v0

    if-eqz v3, :cond_3

    .line 313
    iget-object v3, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v3, v0, v1}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTypeDictionary:Ljava/util/List;

    .line 318
    new-instance v1, Lcom/metamoji/cm/mutable/MutableInt;

    invoke-direct {v1, v2}, Lcom/metamoji/cm/mutable/MutableInt;-><init>(I)V

    .line 319
    array-length v2, v0

    .line 320
    :goto_1
    invoke-virtual {v1}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 321
    invoke-static {v0, v1}, Lcom/metamoji/df/model/ByteData;->readZeroTerminatedUTF8String([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/String;

    move-result-object v3

    .line 322
    iget-object v4, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTypeDictionary:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 326
    :cond_2
    iget-object v5, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    new-instance v6, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v6, v0}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    array-length v0, v0

    int-to-long v9, v0

    const-wide/16 v7, -0x1

    invoke-virtual/range {v5 .. v10}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTypeDicPosition:J

    :cond_3
    return-void
.end method

.method private loadModelTable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->getHeader()Lcom/metamoji/df/model/StateDataHeader;

    move-result-object v0

    const-wide/16 v1, -0x1

    .line 451
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getModelTablePos()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 453
    new-instance v1, Lcom/metamoji/df/model/ByteData;

    iget-object v2, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getModelTablePos()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    iput-object v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTable:Lcom/metamoji/df/model/ByteData;

    :cond_0
    return-void
.end method

.method private loadPreloadedPropertyList()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->getHeader()Lcom/metamoji/df/model/StateDataHeader;

    move-result-object v0

    .line 267
    iget v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->formatVersion:I

    const/4 v2, 0x3

    const-wide/16 v3, -0x1

    if-ge v1, v2, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getExtraTablePos()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-eqz v1, :cond_2

    .line 270
    new-instance v1, Lcom/metamoji/df/model/ByteData;

    iget-object v2, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getExtraTablePos()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    iput-object v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    return-void

    .line 274
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getExtraTablePos()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getExtraTablePos()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v0

    .line 276
    new-instance v1, Lcom/metamoji/df/model/PlainValueSerializer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/metamoji/df/model/PlainValueSerializer;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 278
    invoke-virtual {v1, v0}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 279
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTable:Ljava/util/Map;

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTable:Ljava/util/Map;

    const-string v1, "pp"

    invoke-static {v0, v1}, Lcom/metamoji/df/model/ModelManager;->readExtraTable(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v3, v0

    if-eqz v2, :cond_2

    .line 285
    new-instance v2, Lcom/metamoji/df/model/ByteData;

    iget-object v3, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v3, v0, v1}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    iput-object v2, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    :cond_2
    return-void
.end method

.method private openDestinationDataFile(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;
        }
    .end annotation

    .line 242
    new-instance v0, Lcom/metamoji/df/model/StateData;

    invoke-direct {v0}, Lcom/metamoji/df/model/StateData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    .line 243
    invoke-virtual {v0, p1}, Lcom/metamoji/df/model/StateData;->createFile(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 244
    :cond_0
    new-instance p1, Lcom/metamoji/df/model/ModelManagerDataCompactor$OpenDestFileException;

    invoke-direct {p1}, Lcom/metamoji/df/model/ModelManagerDataCompactor$OpenDestFileException;-><init>()V

    throw p1
.end method

.method private openSourceDataFile(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/metamoji/df/model/StateData;

    invoke-direct {v0}, Lcom/metamoji/df/model/StateData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v0, p1, v1}, Lcom/metamoji/df/model/StateData;->openFile(Ljava/io/File;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 212
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {p1}, Lcom/metamoji/df/model/StateData;->getHeader()Lcom/metamoji/df/model/StateDataHeader;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lcom/metamoji/df/model/StateDataHeader;->getFormatVersion()I

    move-result p1

    iput p1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->formatVersion:I

    if-gt v1, p1, :cond_1

    const/4 v0, 0x3

    if-lt v0, p1, :cond_0

    return-void

    .line 220
    :cond_0
    new-instance p1, Lcom/metamoji/df/model/ModelManagerDataCompactor$TooRecentVersionException;

    invoke-direct {p1}, Lcom/metamoji/df/model/ModelManagerDataCompactor$TooRecentVersionException;-><init>()V

    throw p1

    .line 217
    :cond_1
    new-instance p1, Lcom/metamoji/df/model/ModelManagerDataCompactor$TooOldVersionException;

    invoke-direct {p1}, Lcom/metamoji/df/model/ModelManagerDataCompactor$TooOldVersionException;-><init>()V

    throw p1

    .line 208
    :cond_2
    new-instance p1, Lcom/metamoji/df/model/ModelManagerDataCompactor$OpenSourceFileException;

    invoke-direct {p1}, Lcom/metamoji/df/model/ModelManagerDataCompactor$OpenSourceFileException;-><init>()V

    throw p1
.end method

.method private saveHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->getHeader()Lcom/metamoji/df/model/StateDataHeader;

    move-result-object v0

    .line 543
    iget v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->formatVersion:I

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/StateDataHeader;->setFormatVersion(I)V

    .line 544
    iget-wide v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTablePos:J

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/model/StateDataHeader;->setModelTablePos(J)V

    .line 545
    iget-wide v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->undoTablePos:J

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/model/StateDataHeader;->setUndoTablePos(J)V

    .line 546
    iget-wide v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTablePos:J

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/model/StateDataHeader;->setExtraTablePos(J)V

    .line 547
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->updateHeader()V

    return-void
.end method

.method private saveModelTable()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;
        }
    .end annotation

    .line 529
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTable:Lcom/metamoji/df/model/ByteData;

    if-eqz v1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v2, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTablePos:J

    :cond_0
    return-void
.end method

.method private savePreloadedPropertyList()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;
        }
    .end annotation

    .line 376
    iget v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->formatVersion:I

    const-string v1, "vi"

    const-string v2, "td"

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 377
    new-instance v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;

    sget v4, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;-><init>([BI)V

    .line 378
    iget-object v4, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v4}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->getData()[B

    move-result-object v6

    sget v7, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    invoke-static {v4, v5, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    sget-object v4, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->modelTypeDicPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    iget-wide v6, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTypeDicPosition:J

    invoke-virtual {v0, v4, v6, v7}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->set(Lcom/metamoji/cm/Structured$UInt64LEMember;J)V

    .line 381
    sget-object v4, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->versionInfoPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    iget-wide v6, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->versionInfoPosition:J

    invoke-virtual {v0, v4, v6, v7}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->set(Lcom/metamoji/cm/Structured$UInt64LEMember;J)V

    .line 383
    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->getData()[B

    move-result-object v0

    iget-object v4, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v4}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v4

    sget v6, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    invoke-static {v0, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTable:Ljava/util/Map;

    iget-wide v4, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->modelTypeDicPosition:J

    invoke-static {v0, v2, v4, v5}, Lcom/metamoji/df/model/ModelManager;->writeExtraTable(Ljava/util/Map;Ljava/lang/String;J)V

    .line 386
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTable:Ljava/util/Map;

    iget-wide v4, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->versionInfoPosition:J

    invoke-static {v0, v1, v4, v5}, Lcom/metamoji/df/model/ModelManager;->writeExtraTable(Ljava/util/Map;Ljava/lang/String;J)V

    .line 390
    :goto_0
    iget-object v6, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    iget-object v7, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v7}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v0

    int-to-long v10, v0

    const-wide/16 v8, -0x1

    invoke-virtual/range {v6 .. v11}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v4

    .line 391
    iget v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->formatVersion:I

    if-ge v0, v3, :cond_1

    .line 392
    iput-wide v4, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTablePos:J

    return-void

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTable:Ljava/util/Map;

    const-string v3, "pp"

    invoke-static {v0, v3, v4, v5}, Lcom/metamoji/df/model/ModelManager;->writeExtraTable(Ljava/util/Map;Ljava/lang/String;J)V

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTable:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 398
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 399
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 404
    :cond_3
    iget-object v5, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTable:Ljava/util/Map;

    invoke-static {v5, v4}, Lcom/metamoji/df/model/ModelManager;->readExtraTable(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v7, v5

    if-eqz v9, :cond_2

    .line 406
    iget-object v9, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->srcStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v9, v5, v6}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v5

    if-eqz v5, :cond_4

    .line 411
    iget-object v9, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    new-instance v10, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v10, v5}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    array-length v5, v5

    int-to-long v13, v5

    const-wide/16 v11, -0x1

    invoke-virtual/range {v9 .. v14}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v7

    .line 413
    :cond_4
    iget-object v5, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTable:Ljava/util/Map;

    invoke-static {v5, v4, v7, v8}, Lcom/metamoji/df/model/ModelManager;->writeExtraTable(Ljava/util/Map;Ljava/lang/String;J)V

    goto :goto_1

    .line 418
    :cond_5
    new-instance v0, Lcom/metamoji/df/model/PlainValueSerializer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/df/model/PlainValueSerializer;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 419
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTable:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;)Lcom/metamoji/df/model/ByteData;

    move-result-object v3

    .line 420
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->destStateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v3}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->extraTablePos:J

    return-void
.end method


# virtual methods
.method public compactDataFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    .line 129
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->compactDataFileThrowsException(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public compactDataFileThrowsException(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;
        }
    .end annotation

    const-string v0, "compactDataFile:toDataFile:error: END: "

    .line 139
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->clearWorkIVars()V

    .line 143
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->openSourceDataFile(Ljava/io/File;)V

    .line 146
    invoke-direct {p0, p2}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->openDestinationDataFile(Ljava/io/File;)V

    .line 149
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->loadPreloadedPropertyList()V

    .line 153
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->loadAndConvertTypeDictionary()V

    .line 157
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->convertVersionInfo()V

    .line 161
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->convertUndoTable()V

    .line 165
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->loadModelTable()V

    .line 169
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->convertModels()V

    .line 173
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->saveModelTable()V

    .line 177
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->savePreloadedPropertyList()V

    .line 181
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->saveHeader()V
    :try_end_0
    .catch Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->closeDestinationDataFile()V

    .line 192
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->closeSourceDataFile()V

    .line 193
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->clearWorkIVars()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 186
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManagerDataCompactor$Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 187
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->closeDestinationDataFile()V

    .line 192
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->closeSourceDataFile()V

    .line 193
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->clearWorkIVars()V

    .line 194
    throw p1
.end method

.method public registerRearranger(Lcom/metamoji/df/model/IModelManagerDataRearranger;Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->rearrangers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->rearrangers:Ljava/util/Map;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->rearrangers:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterRearranger(Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerDataCompactor;->rearrangers:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
