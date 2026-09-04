.class Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$2;
.super Ljava/lang/Object;
.source "CabinetUserSelectDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 914
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$2;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$2;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_indicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$2;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->changeSelectGroupButtonDisable(Z)V

    return-void
.end method
