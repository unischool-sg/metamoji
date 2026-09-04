.class public Lcom/metamoji/nt/NtShare$ViewAction;
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
    name = "ViewAction"
.end annotation


# static fields
.field public static instance:Lcom/metamoji/nt/NtShare$ISendAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1132
    new-instance v0, Lcom/metamoji/nt/NtShare$ViewAction;

    invoke-direct {v0}, Lcom/metamoji/nt/NtShare$ViewAction;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtShare$ViewAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1144
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p3

    new-instance p4, Lcom/metamoji/nt/NtShare$ViewAction$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/metamoji/nt/NtShare$ViewAction$1;-><init>(Lcom/metamoji/nt/NtShare$ViewAction;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

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
