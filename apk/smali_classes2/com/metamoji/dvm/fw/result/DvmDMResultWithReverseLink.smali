.class public Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;
.super Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.source "DvmDMResultWithReverseLink.java"


# instance fields
.field private m_docId:Ljava/lang/String;

.field private m_driveId:Ljava/lang/String;

.field private m_pageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    return-void
.end method

.method private setDocId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->m_docId:Ljava/lang/String;

    return-void
.end method

.method private setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->m_driveId:Ljava/lang/String;

    return-void
.end method

.method private setPageId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->m_pageId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDocId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->m_docId:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->m_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->m_pageId:Ljava/lang/String;

    return-object v0
.end method

.method public initWithDictionary(Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 22
    const-string v0, "driveId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/sd/SdUtils;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->setDriveId(Ljava/lang/String;)V

    .line 23
    const-string v0, "docId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/sd/SdUtils;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->setDocId(Ljava/lang/String;)V

    .line 24
    const-string v0, "pageId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/metamoji/sd/SdUtils;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->setPageId(Ljava/lang/String;)V

    return-object p0
.end method
