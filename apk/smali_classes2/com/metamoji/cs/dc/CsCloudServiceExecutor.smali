.class public Lcom/metamoji/cs/dc/CsCloudServiceExecutor;
.super Ljava/lang/Object;
.source "CsCloudServiceExecutor.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsExecutor;


# static fields
.field private static methodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected executeMethod:Ljava/lang/reflect/Method;

.field protected params:Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

.field protected response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->methodCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1, p2}, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->getCloudServiceMethod(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->executeMethod:Ljava/lang/reflect/Method;

    .line 48
    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->params:Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

    return-void
.end method

.method public static declared-synchronized getCloudServiceMethod(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Ljava/lang/reflect/Method;
    .locals 4

    const-class v0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->methodCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 23
    monitor-exit v0

    return-object v1

    .line 28
    :cond_0
    :try_start_1
    const-class v1, Lcom/metamoji/cs/dc/CsCloudService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 29
    sget-object v1, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->methodCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p0

    .line 32
    :try_start_2
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->params:Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

    .line 74
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 75
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->executeMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public executeSync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->executeMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->params:Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method

.method public getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object v0
.end method

.method public onCancelSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    .line 102
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 103
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method

.method public onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    .line 86
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 87
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method

.method public onSuccessSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    .line 94
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 95
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method
