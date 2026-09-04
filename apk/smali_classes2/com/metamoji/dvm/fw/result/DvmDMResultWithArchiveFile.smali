.class public Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;
.super Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.source "DvmDMResultWithArchiveFile.java"


# instance fields
.field private m_archiveFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    return-void
.end method

.method private setArchiveFile(Ljava/io/File;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;->m_archiveFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getArchiveFile()Ljava/io/File;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;->m_archiveFile:Ljava/io/File;

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

    .line 22
    const-string v0, "archiveFile"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;->setArchiveFile(Ljava/io/File;)V

    return-object p0
.end method
