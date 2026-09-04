.class public final Lcom/amazon/device/iap/internal/b/g/b;
.super Lcom/amazon/device/iap/internal/b/e;
.source "NotifyFulfillmentRequest.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/amazon/device/iap/model/FulfillmentResult;


# direct methods
.method public constructor <init>(Lcom/amazon/device/iap/model/RequestId;Ljava/lang/String;Lcom/amazon/device/iap/model/FulfillmentResult;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/device/iap/internal/b/e;-><init>(Lcom/amazon/device/iap/model/RequestId;)V

    .line 21
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 22
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    iput-object p2, p0, Lcom/amazon/device/iap/internal/b/g/b;->a:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/amazon/device/iap/internal/b/g/b;->b:Lcom/amazon/device/iap/model/FulfillmentResult;

    .line 25
    new-instance p2, Lcom/amazon/device/iap/internal/b/g/a;

    invoke-virtual {p3}, Lcom/amazon/device/iap/model/FulfillmentResult;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p1, p3}, Lcom/amazon/device/iap/internal/b/g/a;-><init>(Lcom/amazon/device/iap/internal/b/e;Ljava/util/Set;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/amazon/device/iap/internal/b/g/b;->a(Lcom/amazon/device/iap/internal/b/i;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 35
    sget-object v0, Lcom/amazon/device/iap/model/FulfillmentResult;->FULFILLED:Lcom/amazon/device/iap/model/FulfillmentResult;

    iget-object v1, p0, Lcom/amazon/device/iap/internal/b/g/b;->b:Lcom/amazon/device/iap/model/FulfillmentResult;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/amazon/device/iap/model/FulfillmentResult;->UNAVAILABLE:Lcom/amazon/device/iap/model/FulfillmentResult;

    iget-object v1, p0, Lcom/amazon/device/iap/internal/b/g/b;->b:Lcom/amazon/device/iap/model/FulfillmentResult;

    if-ne v0, v1, :cond_1

    .line 42
    :cond_0
    invoke-static {}, Lcom/amazon/device/iap/internal/c/a;->a()Lcom/amazon/device/iap/internal/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/iap/internal/b/g/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/iap/internal/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v1, Lcom/amazon/device/iap/internal/b/f/b;

    invoke-direct {v1, p0, v0}, Lcom/amazon/device/iap/internal/b/f/b;-><init>(Lcom/amazon/device/iap/internal/b/e;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Lcom/amazon/device/iap/internal/b/i;->a_()V

    .line 49
    invoke-static {}, Lcom/amazon/device/iap/internal/c/a;->a()Lcom/amazon/device/iap/internal/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/iap/internal/b/g/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/iap/internal/c/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
