.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$13;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->signOut(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 967
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$13;->this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 971
    new-instance p1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback;

    iget-object p2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$13;->this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    invoke-direct {p1, p2}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;)V

    .line 972
    new-instance p2, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    invoke-direct {p2}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;-><init>()V

    .line 973
    sget-object v0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->disconnectFromServer(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    return-void
.end method
