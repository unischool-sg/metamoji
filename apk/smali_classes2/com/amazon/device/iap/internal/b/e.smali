.class public Lcom/amazon/device/iap/internal/b/e;
.super Ljava/lang/Object;
.source "KiwiRequest.java"


# static fields
.field private static final a:Ljava/lang/String; = "e"


# instance fields
.field private final b:Lcom/amazon/device/iap/model/RequestId;

.field private final c:Lcom/amazon/device/iap/internal/b/h;

.field private d:Lcom/amazon/device/iap/internal/b/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/iap/model/RequestId;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/device/iap/internal/b/e;->b:Lcom/amazon/device/iap/model/RequestId;

    .line 27
    new-instance p1, Lcom/amazon/device/iap/internal/b/h;

    invoke-direct {p1}, Lcom/amazon/device/iap/internal/b/h;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/iap/internal/b/e;->c:Lcom/amazon/device/iap/internal/b/h;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/amazon/device/iap/internal/b/e;->d:Lcom/amazon/device/iap/internal/b/i;

    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/device/iap/internal/b/e;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected a(Lcom/amazon/device/iap/internal/b/i;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/device/iap/internal/b/e;->d:Lcom/amazon/device/iap/internal/b/i;

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/iap/internal/b/e;->a(Ljava/lang/Object;Lcom/amazon/device/iap/internal/b/i;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;Lcom/amazon/device/iap/internal/b/i;)V
    .locals 3

    .line 40
    const-string v0, "response"

    invoke-static {p1, v0}, Lcom/amazon/device/iap/internal/util/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/amazon/device/iap/internal/d;->d()Lcom/amazon/device/iap/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/iap/internal/d;->b()Landroid/content/Context;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/amazon/device/iap/internal/d;->d()Lcom/amazon/device/iap/internal/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/internal/d;->a()Lcom/amazon/device/iap/PurchasingListener;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v2, Lcom/amazon/device/iap/internal/b/e$1;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/amazon/device/iap/internal/b/e$1;-><init>(Lcom/amazon/device/iap/internal/b/e;Ljava/lang/Object;Lcom/amazon/device/iap/PurchasingListener;Lcom/amazon/device/iap/internal/b/i;)V

    .line 82
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 45
    :cond_1
    :goto_0
    sget-object p2, Lcom/amazon/device/iap/internal/b/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchasingListener is not set. Dropping response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/device/iap/internal/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Lcom/amazon/device/iap/model/RequestId;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/e;->b:Lcom/amazon/device/iap/model/RequestId;

    return-object v0
.end method

.method public d()Lcom/amazon/device/iap/internal/b/h;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/e;->c:Lcom/amazon/device/iap/internal/b/h;

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/e;->d:Lcom/amazon/device/iap/internal/b/i;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/amazon/device/iap/internal/b/i;->a_()V

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/iap/internal/b/e;->a()V

    return-void
.end method
