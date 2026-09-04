.class public Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditorAndDocId;
.super Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
.source "DvmDMResultWithEditorAndDocId.java"


# instance fields
.field private m_documentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;-><init>()V

    return-void
.end method

.method private setDocumentId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditorAndDocId;->m_documentId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDocumentId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditorAndDocId;->m_documentId:Ljava/lang/String;

    return-object v0
.end method

.method public initWithDictionary(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
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

    .line 19
    invoke-super {p0, p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->initWithDictionary(Ljava/util/Map;)Ljava/lang/Object;

    .line 20
    const-string v0, "documentId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditorAndDocId;->setDocumentId(Ljava/lang/String;)V

    return-object p0
.end method
