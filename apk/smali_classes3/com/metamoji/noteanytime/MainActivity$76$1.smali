.class Lcom/metamoji/noteanytime/MainActivity$76$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$76;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$76;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$76;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5655
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$76$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$76;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;)V
    .locals 2

    .line 5658
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$76$1$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/MainActivity$76$1$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$76$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
