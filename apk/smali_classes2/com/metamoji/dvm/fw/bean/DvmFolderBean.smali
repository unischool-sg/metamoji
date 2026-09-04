.class public Lcom/metamoji/dvm/fw/bean/DvmFolderBean;
.super Lcom/metamoji/dvm/fw/bean/DvmBean;
.source "DvmFolderBean.java"


# instance fields
.field private m_absPath:Ljava/lang/String;

.field private m_childrenOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_folderName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/bean/DvmBean;-><init>()V

    return-void
.end method

.method public static beanWithAbsPath(Ljava/lang/String;Ljava/util/List;)Lcom/metamoji/dvm/fw/bean/DvmFolderBean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/dvm/fw/bean/DvmFolderBean;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    invoke-static {p0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->m_absPath:Ljava/lang/String;

    .line 24
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->m_folderName:Ljava/lang/String;

    .line 25
    iput-object p1, v0, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->m_childrenOrder:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getAbsPath()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->m_absPath:Ljava/lang/String;

    return-object v0
.end method

.method public getChildrenOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->m_childrenOrder:Ljava/util/List;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->m_folderName:Ljava/lang/String;

    return-object v0
.end method
