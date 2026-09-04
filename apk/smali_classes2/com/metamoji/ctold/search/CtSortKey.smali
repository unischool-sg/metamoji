.class public Lcom/metamoji/ctold/search/CtSortKey;
.super Ljava/lang/Object;
.source "CtSortKey.java"


# static fields
.field private static final CT_SORT_KEY_MODEL_ASCENDING:Ljava/lang/String; = "a"

.field private static final CT_SORT_KEY_MODEL_KEY:Ljava/lang/String; = "k"

.field private static final CT_SORT_KEY_MODEL_TYPE:Ljava/lang/String; = "CTSK"

.field private static final CT_SORT_KEY_MODEL_VERSION:I = 0x1


# instance fields
.field private ascending:Z

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 39
    const-string v0, "k"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/search/CtSortKey;->key:Ljava/lang/String;

    .line 40
    const-string v0, "a"

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/ctold/search/CtSortKey;->ascending:Z

    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Unknown version: %d"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CT0039"

    invoke-direct {v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/metamoji/ctold/search/CtSortKey;->key:Ljava/lang/String;

    .line 31
    iput-boolean p2, p0, Lcom/metamoji/ctold/search/CtSortKey;->ascending:Z

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtSortKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 52
    const-string v0, "CTSK"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x1

    .line 53
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 54
    const-string v0, "k"

    iget-object v1, p0, Lcom/metamoji/ctold/search/CtSortKey;->key:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "a"

    iget-boolean v1, p0, Lcom/metamoji/ctold/search/CtSortKey;->ascending:Z

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public isAscending()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/metamoji/ctold/search/CtSortKey;->ascending:Z

    return v0
.end method
