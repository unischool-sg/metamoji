.class Lcom/metamoji/ui/cabinet/user/LoginUser$3;
.super Ljava/lang/Object;
.source "LoginUser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/LoginUser;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/LoginUser;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/LoginUser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser$3;->this$0:Lcom/metamoji/ui/cabinet/user/LoginUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 227
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser$3;->this$0:Lcom/metamoji/ui/cabinet/user/LoginUser;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/LoginUser;->_this:Lcom/metamoji/ui/cabinet/user/LoginUser;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/LoginUser;->-$$Nest$mgetMailaddress(Lcom/metamoji/ui/cabinet/user/LoginUser;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/cabinet/user/LoginUser$3$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/LoginUser$3$1;-><init>(Lcom/metamoji/ui/cabinet/user/LoginUser$3;)V

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->forgetPassword(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;)V

    return-void
.end method
