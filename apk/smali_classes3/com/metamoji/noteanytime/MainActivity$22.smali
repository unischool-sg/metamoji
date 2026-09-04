.class Lcom/metamoji/noteanytime/MainActivity$22;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->showAlertIfHiddenNoteExist(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity;

.field final synthetic val$boxName:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1250
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$22;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$22;->val$driveId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$22;->val$boxName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1253
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$22;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$22;->val$driveId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$mexistHiddenNotes(Lcom/metamoji/noteanytime/MainActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$22$1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$22$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$22;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
