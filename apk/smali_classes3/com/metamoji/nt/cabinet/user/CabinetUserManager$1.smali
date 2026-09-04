.class Lcom/metamoji/nt/cabinet/user/CabinetUserManager$1;
.super Ljava/lang/Object;
.source "CabinetUserManager.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->OpenCabinetUserDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/cabinet/user/CabinetUserManager;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/user/CabinetUserManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/CabinetUserManager$1;->this$0:Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 0

    return-void
.end method
