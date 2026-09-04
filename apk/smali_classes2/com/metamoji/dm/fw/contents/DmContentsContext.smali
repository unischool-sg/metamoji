.class public Lcom/metamoji/dm/fw/contents/DmContentsContext;
.super Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;
.source "DmContentsContext.java"


# instance fields
.field private m_driver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance p1, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;

    const-string v0, "contents"

    invoke-static {v0}, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->getDatabaseHelper(Ljava/lang/String;)Lcom/metamoji/dm/fw/DmDatabaseHelper;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;

    invoke-direct {p1, v0, v1}, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;-><init>(Lcom/metamoji/dm/fw/DmDatabaseHelper;[Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)V

    iput-object p1, p0, Lcom/metamoji/dm/fw/contents/DmContentsContext;->m_driver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    return-void
.end method


# virtual methods
.method protected getDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsContext;->m_driver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    return-object v0
.end method
