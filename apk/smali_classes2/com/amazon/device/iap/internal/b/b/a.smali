.class abstract Lcom/amazon/device/iap/internal/b/b/a;
.super Lcom/amazon/device/iap/internal/b/i;
.source "PurchaseItemCommandBase.java"


# static fields
.field private static final d:Ljava/lang/String; = "a"


# instance fields
.field protected a:Lcom/amazon/android/framework/task/TaskManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field protected b:Lcom/amazon/android/framework/context/ContextManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field protected final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/iap/internal/b/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    const-string v0, "purchase_item"

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/device/iap/internal/b/i;-><init>(Lcom/amazon/device/iap/internal/b/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p3, p0, Lcom/amazon/device/iap/internal/b/b/a;->c:Ljava/lang/String;

    .line 41
    const-string p1, "sku"

    invoke-virtual {p0, p1, p3}, Lcom/amazon/device/iap/internal/b/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/device/iap/internal/b/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/amazon/device/iap/internal/b/b/a;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/amazon/device/iap/internal/b/b/a;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/amazon/venezia/command/SuccessResult;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Lcom/amazon/venezia/command/SuccessResult;->getData()Ljava/util/Map;

    move-result-object p1

    .line 51
    sget-object v0, Lcom/amazon/device/iap/internal/b/b/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/iap/internal/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "purchaseItemIntent"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const-string p1, "did not find intent"

    invoke-static {v0, p1}, Lcom/amazon/device/iap/internal/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 57
    :cond_0
    const-string v2, "found intent"

    invoke-static {v0, v2}, Lcom/amazon/device/iap/internal/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/b/a;->a:Lcom/amazon/android/framework/task/TaskManager;

    sget-object v1, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->FOREGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    new-instance v2, Lcom/amazon/device/iap/internal/b/b/a$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/device/iap/internal/b/b/a$1;-><init>(Lcom/amazon/device/iap/internal/b/b/a;Landroid/content/Intent;)V

    invoke-interface {v0, v1, v2}, Lcom/amazon/android/framework/task/TaskManager;->enqueueAtFront(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V

    const/4 p1, 0x1

    return p1
.end method
