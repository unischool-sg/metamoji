.class Lcom/metamoji/noteanytime/MainActivity$49$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$49;->syncEnd(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$49;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$49;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3187
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$49$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$49;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncEnd(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 3191
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$49$1$1;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/MainActivity$49$1$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$49$1;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
