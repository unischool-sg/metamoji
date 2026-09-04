.class Lcom/metamoji/noteanytime/MainActivity$40$1;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$40;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$40;

.field final synthetic val$docId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$40;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2615
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$40$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$40;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$40$1;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2615
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity$40$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2619
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$40$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$40$1$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$40$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method
