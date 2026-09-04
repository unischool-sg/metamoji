.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1$1;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 464
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1$1;->this$2:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1$1;->this$2:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1$1;->this$2:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-interface {v0, p1}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_0
    return-void
.end method
