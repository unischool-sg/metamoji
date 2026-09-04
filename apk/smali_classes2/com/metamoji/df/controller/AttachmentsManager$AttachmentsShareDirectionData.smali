.class Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "AttachmentsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/AttachmentsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttachmentsShareDirectionData"
.end annotation


# instance fields
.field m_ticketModelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 65
    const-string v0, "t"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 68
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;->m_ticketModelMap:Ljava/util/HashMap;

    return-void

    .line 70
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;->m_ticketModelMap:Ljava/util/HashMap;

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 101
    const-string v0, "attachsharedirection"

    invoke-static {p0, v0}, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;
    .locals 1

    .line 78
    const-string v0, "attachsharedirection"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 79
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 80
    new-instance v0, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object v0
.end method


# virtual methods
.method public addAttachmentModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;->m_ticketModelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p0}, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/metamoji/df/model/IModel;

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_0

    .line 91
    const-string p2, "t"

    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;->m_ticketModelMap:Ljava/util/HashMap;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public forEachAttachmentModel(Lcom/metamoji/df/controller/AttachmentsManager$IForeachAttachmentModelDelegate;)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;->m_ticketModelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    .line 111
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    iget-object v3, p0, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;->m_ticketModelMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {p1, v1, v2}, Lcom/metamoji/df/controller/AttachmentsManager$IForeachAttachmentModelDelegate;->action(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method
