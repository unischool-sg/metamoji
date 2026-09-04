.class public Lcom/metamoji/nt/NtShare$PrintAction;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Lcom/metamoji/nt/NtShare$ISendAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrintAction"
.end annotation


# static fields
.field public static instance:Lcom/metamoji/nt/NtShare$ISendAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1291
    new-instance v0, Lcom/metamoji/nt/NtShare$PrintAction;

    invoke-direct {v0}, Lcom/metamoji/nt/NtShare$PrintAction;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtShare$PrintAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1304
    invoke-static {}, Lcom/metamoji/nt/NtPrintPDF;->canPrint()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 1311
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    .line 1312
    invoke-virtual {p2}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 1313
    new-instance p3, Lcom/metamoji/nt/NtShare$PrintAction$1;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/nt/NtShare$PrintAction$1;-><init>(Lcom/metamoji/nt/NtShare$PrintAction;Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p3, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public sendFiles(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method
