.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1$1;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;

.field final synthetic val$_this:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

.field final synthetic val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

.field final synthetic val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 754
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1$1;->this$3:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1$1;->val$_this:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    iput-object p3, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1$1;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    iput-object p4, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1$1;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 757
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1$1;->val$_this:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    iget-object p2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1$1;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1$1;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->deleteDirectMessage(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    return-void
.end method
