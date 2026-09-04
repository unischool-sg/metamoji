.class Lcom/metamoji/noteanytime/NoteAnytimeApplication$3;
.super Ljava/lang/Object;
.source "NoteAnytimeApplication.java"

# interfaces
.implements Lcom/metamoji/lib/utils/IUtExternalLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/NoteAnytimeApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/NoteAnytimeApplication;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/NoteAnytimeApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 362
    iput-object p1, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$3;->this$0:Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupportLogEnabled()Z
    .locals 1

    .line 388
    invoke-static {}, Lcom/metamoji/cm/ErrorInfo;->isSupportLogEnabled()Z

    move-result v0

    return v0
.end method

.method public writeLog(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 381
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 376
    :cond_0
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-void

    .line 373
    :cond_1
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    return-void

    .line 370
    :cond_2
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 367
    :cond_3
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->verbose(Ljava/lang/String;)V

    return-void
.end method
