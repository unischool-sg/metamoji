.class public Lcom/metamoji/cv/CvModelConverter;
.super Ljava/lang/Object;
.source "CvModelConverter.java"


# instance fields
.field _convertQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/cv/CvConvertItem;",
            ">;"
        }
    .end annotation
.end field

.field _incomingSubconvertersDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/cv/ICvSubconverter;",
            ">;>;"
        }
    .end annotation
.end field

.field _lastConvertItemId:I

.field _outgoingSubconvertersDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/cv/ICvSubconverter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cv/CvModelConverter;->_outgoingSubconvertersDict:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cv/CvModelConverter;->_incomingSubconvertersDict:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cv/CvModelConverter;->_convertQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/metamoji/cv/CvModelConverter;->_lastConvertItemId:I

    return-void
.end method

.method private findSubconverterAndConvert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 7

    .line 104
    iget-object v0, p0, Lcom/metamoji/cv/CvModelConverter;->_convertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 107
    :goto_0
    iget-object v3, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    invoke-virtual {v3, p1}, Lcom/metamoji/cv/CvConvertContext;->subconverterKeyOfItem(Lcom/metamoji/cv/CvConvertItem;)Ljava/lang/String;

    move-result-object v3

    .line 110
    const-string v4, "CV0046"

    if-eqz v3, :cond_6

    .line 115
    iget-object v5, p1, Lcom/metamoji/cv/CvConvertItem;->convertType:Lcom/metamoji/cv/CvConvertType;

    invoke-direct {p0, v5}, Lcom/metamoji/cv/CvModelConverter;->subconvertersDictForType(Lcom/metamoji/cv/CvConvertType;)Ljava/util/HashMap;

    move-result-object v5

    .line 116
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_5

    .line 122
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/cv/ICvSubconverter;

    .line 123
    invoke-interface {v5, p1}, Lcom/metamoji/cv/ICvSubconverter;->accept(Lcom/metamoji/cv/CvConvertItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    iput-object v5, p1, Lcom/metamoji/cv/CvConvertItem;->subconverter:Lcom/metamoji/cv/ICvSubconverter;

    .line 135
    iget v3, p0, Lcom/metamoji/cv/CvModelConverter;->_lastConvertItemId:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/metamoji/cv/CvModelConverter;->_lastConvertItemId:I

    .line 136
    iput v3, p1, Lcom/metamoji/cv/CvConvertItem;->itemId:I

    .line 137
    iget-object v3, p0, Lcom/metamoji/cv/CvModelConverter;->_convertQueue:Ljava/util/ArrayList;

    new-instance v4, Lcom/metamoji/cv/CvModelConverter$1;

    invoke-direct {v4, p0}, Lcom/metamoji/cv/CvModelConverter$1;-><init>(Lcom/metamoji/cv/CvModelConverter;)V

    invoke-static {v3, p1, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    if-gez v3, :cond_2

    neg-int v3, v3

    sub-int/2addr v3, v1

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/metamoji/cv/CvModelConverter;->_convertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-nez v0, :cond_3

    .line 155
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/cv/CvModelConverter;->_convertQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 156
    iget-object p1, p0, Lcom/metamoji/cv/CvModelConverter;->_convertQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cv/CvConvertItem;

    .line 157
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    iput-object p0, v0, Lcom/metamoji/cv/CvConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 159
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "converting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/metamoji/cv/CvConvertItem;->subconverter:Lcom/metamoji/cv/ICvSubconverter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 160
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    invoke-virtual {v1, p1}, Lcom/metamoji/cv/CvConvertContext;->beginSubconverting(Lcom/metamoji/cv/CvConvertItem;)V

    .line 161
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->subconverter:Lcom/metamoji/cv/ICvSubconverter;

    invoke-interface {v1, p1}, Lcom/metamoji/cv/ICvSubconverter;->convert(Lcom/metamoji/cv/CvConvertItem;)V

    .line 162
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    invoke-virtual {v1, p1}, Lcom/metamoji/cv/CvConvertContext;->endSubconverting(Lcom/metamoji/cv/CvConvertItem;)V

    .line 163
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    invoke-virtual {v1}, Lcom/metamoji/cv/CvConvertContext;->updateProgress()V

    .line 164
    iget-object v1, p0, Lcom/metamoji/cv/CvModelConverter;->_convertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :try_start_2
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    iput-object v0, p1, Lcom/metamoji/cv/CvConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    iput-object v0, p1, Lcom/metamoji/cv/CvConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    .line 167
    throw v1
    :try_end_2
    .catch Lcom/metamoji/cm/CmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 175
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 176
    iget-object v0, p0, Lcom/metamoji/cv/CvModelConverter;->_convertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "CV0048"

    const-string v2, "error in conversion loop."

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 170
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 171
    iget-object v0, p0, Lcom/metamoji/cv/CvModelConverter;->_convertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 172
    throw p1

    :cond_3
    return-void

    .line 130
    :cond_4
    const-string p1, "convert item is not accepted by any converters (key = \'%s\')"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 131
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "CV0047"

    invoke-direct {v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_5
    const-string p1, "subconverter not found for \'%s\'"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 119
    new-instance v0, Lcom/metamoji/cm/CmException;

    invoke-direct {v0, v4, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_6
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "unknown subconverter"

    invoke-direct {p1, v4, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private subconvertersDictForType(Lcom/metamoji/cv/CvConvertType;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cv/CvConvertType;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/cv/ICvSubconverter;",
            ">;>;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/metamoji/cv/CvModelConverter$2;->$SwitchMap$com$metamoji$cv$CvConvertType:[I

    invoke-virtual {p1}, Lcom/metamoji/cv/CvConvertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown converter type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/metamoji/cv/CvConvertType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/metamoji/cv/CvModelConverter;->_incomingSubconvertersDict:Ljava/util/HashMap;

    return-object p1

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/metamoji/cv/CvModelConverter;->_outgoingSubconvertersDict:Ljava/util/HashMap;

    return-object p1
.end method


# virtual methods
.method public exportModels(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/CvConvertContext;)Ljava/lang/Object;
    .locals 2

    .line 190
    new-instance v0, Lcom/metamoji/cv/CvConvertItem;

    invoke-direct {v0}, Lcom/metamoji/cv/CvConvertItem;-><init>()V

    .line 191
    sget-object v1, Lcom/metamoji/cv/CvConvertType;->Outgoing:Lcom/metamoji/cv/CvConvertType;

    iput-object v1, v0, Lcom/metamoji/cv/CvConvertItem;->convertType:Lcom/metamoji/cv/CvConvertType;

    .line 192
    iput-object p2, v0, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    .line 193
    iput-object p1, v0, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 195
    invoke-direct {p0, v0}, Lcom/metamoji/cv/CvModelConverter;->findSubconverterAndConvert(Lcom/metamoji/cv/CvConvertItem;)V

    .line 196
    iget-object p1, v0, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    return-object p1
.end method

.method public importModels(Ljava/lang/Object;Lcom/metamoji/cv/CvConvertContext;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 207
    new-instance v0, Lcom/metamoji/cv/CvConvertItem;

    invoke-direct {v0}, Lcom/metamoji/cv/CvConvertItem;-><init>()V

    .line 208
    sget-object v1, Lcom/metamoji/cv/CvConvertType;->Incoming:Lcom/metamoji/cv/CvConvertType;

    iput-object v1, v0, Lcom/metamoji/cv/CvConvertItem;->convertType:Lcom/metamoji/cv/CvConvertType;

    .line 209
    iput-object p2, v0, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    .line 210
    iput-object p1, v0, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    .line 212
    invoke-direct {p0, v0}, Lcom/metamoji/cv/CvModelConverter;->findSubconverterAndConvert(Lcom/metamoji/cv/CvConvertItem;)V

    .line 213
    iget-object p1, v0, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    return-object p1
.end method

.method public registerSubconverter(Lcom/metamoji/cv/ICvSubconverter;Lcom/metamoji/cv/CvConvertType;Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0, p2}, Lcom/metamoji/cv/CvModelConverter;->subconvertersDictForType(Lcom/metamoji/cv/CvConvertType;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "unknown converter type at registerSubconverter: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/metamoji/cv/CvConvertType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_1

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterSubconverter(Lcom/metamoji/cv/ICvSubconverter;Lcom/metamoji/cv/CvConvertType;Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-direct {p0, p2}, Lcom/metamoji/cv/CvModelConverter;->subconvertersDictForType(Lcom/metamoji/cv/CvConvertType;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "unknown converter type at unregisterSubconverter:ofType: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/metamoji/cv/CvConvertType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 89
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1

    .line 91
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
