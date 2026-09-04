.class Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$1;
.super Ljava/lang/Object;
.source "CabinetUserUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->forgetPassword(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$listener:Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 482
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$1;->val$email:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$1;->val$listener:Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 486
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$1;->val$email:Ljava/lang/String;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isCheckForgotPassword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 487
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$1;->val$listener:Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;

    invoke-interface {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;->onSuccess()V

    :cond_0
    return-void

    .line 490
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$1;->val$listener:Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;

    invoke-interface {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;->onClose()V

    return-void
.end method
