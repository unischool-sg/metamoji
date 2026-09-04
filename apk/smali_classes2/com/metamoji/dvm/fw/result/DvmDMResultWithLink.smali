.class public Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;
.super Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.source "DvmDMResultWithLink.java"


# instance fields
.field private m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    return-void
.end method

.method private setUri(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;->m_uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUri()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;->m_uri:Ljava/lang/String;

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

    .line 20
    const-string v0, "uri"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;->setUri(Ljava/lang/String;)V

    return-object p0
.end method
