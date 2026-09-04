.class public Lcom/metamoji/nt/NtShare$SaveAction;
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
    name = "SaveAction"
.end annotation


# static fields
.field public static instance:Lcom/metamoji/nt/NtShare$ISendAction;

.field static mFile:Ljava/io/File;

.field static mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1331
    new-instance v0, Lcom/metamoji/nt/NtShare$SaveAction;

    invoke-direct {v0}, Lcom/metamoji/nt/NtShare$SaveAction;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtShare$SaveAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 1345
    invoke-static {p2}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    .line 1347
    const-string p3, ""

    :cond_0
    move-object v3, p3

    .line 1349
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/metamoji/ui/task/SaveTypedFileTask;->saveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public sendFiles(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
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

    const/4 v0, 0x1

    .line 1417
    invoke-static {p1, p2, v0}, Lcom/metamoji/ui/task/SaveMultiFilesTask;->saveFiles(Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method
