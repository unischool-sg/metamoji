.class Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$4;
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


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 346
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$4;->this$0:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$4;->this$0:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->-$$Nest$mupdateUserInfo(Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;)V

    return-void
.end method
