.class Lcom/metamoji/mazec/CheckUpdateActivity$1;
.super Ljava/lang/Object;
.source "CheckUpdateActivity.java"

# interfaces
.implements Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/CheckUpdateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/CheckUpdateActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/CheckUpdateActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/metamoji/mazec/CheckUpdateActivity$1;->this$0:Lcom/metamoji/mazec/CheckUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->initialize()V

    .line 30
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->setActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 31
    iget-object p1, p0, Lcom/metamoji/mazec/CheckUpdateActivity$1;->this$0:Lcom/metamoji/mazec/CheckUpdateActivity;

    invoke-virtual {p1}, Lcom/metamoji/mazec/CheckUpdateActivity;->finish()V

    return-void
.end method
