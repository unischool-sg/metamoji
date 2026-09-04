.class public Lcom/metamoji/cv/CvConvertContext;
.super Lcom/metamoji/cm/CmContext;
.source "CvConvertContext.java"


# static fields
.field public static final MMJCV_CONVERT_OPTION_UPLOAD_REQUIRED_MEDIAS:Ljava/lang/String; = "uploadRequiredMedias"


# instance fields
.field public converter:Lcom/metamoji/cv/CvModelConverter;

.field private modelManager:Lcom/metamoji/df/model/IModelManager;

.field public options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public progress:Lcom/metamoji/cv/CvConvertProgress;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModelManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/metamoji/cv/CvConvertContext;->modelManager:Lcom/metamoji/df/model/IModelManager;

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/metamoji/cv/CvConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    .line 31
    iput-object p1, p0, Lcom/metamoji/cv/CvConvertContext;->options:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lcom/metamoji/cv/CvConvertContext;->progress:Lcom/metamoji/cv/CvConvertProgress;

    return-void
.end method


# virtual methods
.method public beginSubconverting(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 0

    return-void
.end method

.method public endSubconverting(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 1

    .line 75
    sget-object v0, Lcom/metamoji/cv/CvConvertType;->Incoming:Lcom/metamoji/cv/CvConvertType;

    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->convertType:Lcom/metamoji/cv/CvConvertType;

    if-ne v0, p1, :cond_0

    .line 76
    new-instance p1, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {p1}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Lcom/metamoji/df/model/ModelManagerSaveContext;->setCramped(Z)V

    .line 78
    iget-object v0, p0, Lcom/metamoji/cv/CvConvertContext;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    :cond_0
    return-void
.end method

.method public fillProgress()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/cv/CvConvertContext;->progress:Lcom/metamoji/cv/CvConvertProgress;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/metamoji/cv/CvConvertProgress;->fill()V

    :cond_0
    return-void
.end method

.method public getModelManager()Lcom/metamoji/df/model/IModelManager;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/metamoji/cv/CvConvertContext;->modelManager:Lcom/metamoji/df/model/IModelManager;

    return-object v0
.end method

.method public subconverterKeyOfItem(Lcom/metamoji/cv/CvConvertItem;)Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->convertType:Lcom/metamoji/cv/CvConvertType;

    .line 44
    sget-object v1, Lcom/metamoji/cv/CvConvertType;->Outgoing:Lcom/metamoji/cv/CvConvertType;

    if-ne v1, v0, :cond_0

    .line 45
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    .line 46
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    sget-object v1, Lcom/metamoji/cv/CvConvertType;->Incoming:Lcom/metamoji/cv/CvConvertType;

    if-ne v1, v0, :cond_1

    .line 49
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 50
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public updateProgress()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/metamoji/cv/CvConvertContext;->progress:Lcom/metamoji/cv/CvConvertProgress;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/metamoji/cv/CvConvertProgress;->update()V

    :cond_0
    return-void
.end method
