.class public Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;
.super Ljava/lang/Object;
.source "NsCollaboSettingsSendingDataHandle.java"


# instance fields
.field public dataModel:Lcom/metamoji/df/model/IModel;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->dataModel:Lcom/metamoji/df/model/IModel;

    return-void
.end method


# virtual methods
.method public getBoothID()Ljava/lang/String;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->dataModel:Lcom/metamoji/df/model/IModel;

    const-string v1, "boothID"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->dataModel:Lcom/metamoji/df/model/IModel;

    const-string v1, "data"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandleID()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->dataModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result v0

    return v0
.end method

.method public getRipOffSize()Ljava/lang/String;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->dataModel:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "ripOffSize"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSendBack()Z
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->dataModel:Lcom/metamoji/df/model/IModel;

    const-string v1, "data"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
