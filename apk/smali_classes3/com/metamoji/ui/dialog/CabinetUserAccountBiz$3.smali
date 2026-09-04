.class Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$3;
.super Ljava/lang/Object;
.source "CabinetUserAccountBiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;

.field final synthetic val$csResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$3;->this$0:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$3;->val$csResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$3;->val$csResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method
