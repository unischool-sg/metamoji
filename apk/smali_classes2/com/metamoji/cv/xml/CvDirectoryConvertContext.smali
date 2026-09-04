.class public Lcom/metamoji/cv/xml/CvDirectoryConvertContext;
.super Lcom/metamoji/cv/CvConvertContext;
.source "CvDirectoryConvertContext.java"


# instance fields
.field public directory:Ljava/io/File;

.field public sequenceNumDict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModelManager;Ljava/io/File;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/metamoji/cv/CvConvertContext;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 27
    iput-object p2, p0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->directory:Ljava/io/File;

    .line 28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->sequenceNumDict:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public fillIncomingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iput-object p2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method public fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->sequenceNumDict:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->sequenceNumDict:Ljava/util/Map;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%s.%d.%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    return-void
.end method

.method public makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;
    .locals 2

    .line 94
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->directory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_0
    return-object v0
.end method

.method public makeExternalFilePathRelative(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 110
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public subconverterKeyOfItem(Lcom/metamoji/cv/CvConvertItem;)Ljava/lang/String;
    .locals 2

    .line 35
    sget-object v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext$1;->$SwitchMap$com$metamoji$cv$CvConvertType:[I

    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->convertType:Lcom/metamoji/cv/CvConvertType;

    invoke-virtual {v1}, Lcom/metamoji/cv/CvConvertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x2e

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 37
    :cond_1
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_2

    .line 38
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
