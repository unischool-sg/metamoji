.class Lcom/metamoji/ui/cabinet/user/LoginUser$1;
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

    .line 196
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser$1;->this$0:Lcom/metamoji/ui/cabinet/user/LoginUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser$1;->this$0:Lcom/metamoji/ui/cabinet/user/LoginUser;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/LoginUser;->_this:Lcom/metamoji/ui/cabinet/user/LoginUser;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/LoginUser;->-$$Nest$monLogin(Lcom/metamoji/ui/cabinet/user/LoginUser;)Z

    return-void
.end method
