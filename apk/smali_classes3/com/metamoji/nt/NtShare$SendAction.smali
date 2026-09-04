.class public Lcom/metamoji/nt/NtShare$SendAction;
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
    name = "SendAction"
.end annotation


# static fields
.field public static instance:Lcom/metamoji/nt/NtShare$ISendAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1070
    new-instance v0, Lcom/metamoji/nt/NtShare$SendAction;

    invoke-direct {v0}, Lcom/metamoji/nt/NtShare$SendAction;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtShare$SendAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 1083
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p3

    new-instance v0, Lcom/metamoji/nt/NtShare$SendAction$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/nt/NtShare$SendAction$1;-><init>(Lcom/metamoji/nt/NtShare$SendAction;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

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
