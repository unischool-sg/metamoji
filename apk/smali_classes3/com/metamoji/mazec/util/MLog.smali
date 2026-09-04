.class public Lcom/metamoji/mazec/util/MLog;
.super Ljava/lang/Object;
.source "MLog.java"


# static fields
.field public static INFO:Z

.field private static loggers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/mazec/util/MLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/metamoji/mazec/util/MLog;->loggers:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lcom/metamoji/mazec/util/MLog;->INFO:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/util/MLog;-><init>(Ljava/util/logging/Logger;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Logger;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/metamoji/mazec/util/MLog;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/metamoji/mazec/util/MLog;->getLogger(Ljava/lang/String;)Lcom/metamoji/mazec/util/MLog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/util/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/metamoji/mazec/util/MLog;
    .locals 2

    .line 18
    sget-object v0, Lcom/metamoji/mazec/util/MLog;->loggers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/metamoji/mazec/util/MLog;->loggers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazec/util/MLog;

    return-object p0

    .line 21
    :cond_0
    new-instance v0, Lcom/metamoji/mazec/util/MLog;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/util/MLog;-><init>(Ljava/lang/String;)V

    .line 22
    sget-object v1, Lcom/metamoji/mazec/util/MLog;->loggers:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/metamoji/mazec/util/MLog;->getLogger(Ljava/lang/String;)Lcom/metamoji/mazec/util/MLog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/util/MLog;->w(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/mazec/util/MLog;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/mazec/util/MLog;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/metamoji/mazec/util/MLog;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/mazec/util/MLog;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/mazec/util/MLog;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method
