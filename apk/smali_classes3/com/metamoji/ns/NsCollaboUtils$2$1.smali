.class Lcom/metamoji/ns/NsCollaboUtils$2$1;
.super Ljava/lang/Object;
.source "NsCollaboUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboUtils$2;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboUtils$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboUtils$2$1;->this$0:Lcom/metamoji/ns/NsCollaboUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 187
    new-instance p1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    invoke-direct {p1}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;-><init>()V

    .line 188
    sget-object p2, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->openCabinetUserDialog(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    return-void
.end method
